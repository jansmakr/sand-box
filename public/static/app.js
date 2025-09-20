// 피부 성분 분석 앱 - 프론트엔드 JavaScript

class SkinAnalyzer {
  constructor() {
    this.video = null;
    this.canvas = null;
    this.currentStream = null;
    this.selectedFile = null;
    this.lastAnalysisResults = null;
    
    this.initEventListeners();
  }

  initEventListeners() {
    // 카메라 버튼
    document.getElementById('camera-btn')?.addEventListener('click', () => {
      this.startCamera();
    });

    // 파일 업로드 버튼
    document.getElementById('upload-btn')?.addEventListener('click', () => {
      document.getElementById('file-input').click();
    });

    // 파일 입력 변경
    document.getElementById('file-input')?.addEventListener('change', (e) => {
      this.handleFileSelect(e);
    });

    // 촬영 버튼
    document.getElementById('capture-btn')?.addEventListener('click', () => {
      this.capturePhoto();
    });

    // 카메라 닫기 버튼
    document.getElementById('stop-camera-btn')?.addEventListener('click', () => {
      this.stopCamera();
    });

    // 분석 시작 버튼
    document.getElementById('analyze-btn')?.addEventListener('click', () => {
      this.analyzeImage();
    });

    // 리셋 버튼
    document.getElementById('reset-btn')?.addEventListener('click', () => {
      this.reset();
    });

    // 분석 기록 버튼
    document.getElementById('history-btn')?.addEventListener('click', () => {
      this.showAnalysisHistory();
    });
  }

  async startCamera() {
    try {
      const stream = await navigator.mediaDevices.getUserMedia({ 
        video: { 
          facingMode: 'environment', // 후면 카메라 우선
          width: { ideal: 1280 },
          height: { ideal: 720 }
        } 
      });

      this.video = document.getElementById('video');
      this.canvas = document.getElementById('canvas');
      this.currentStream = stream;

      this.video.srcObject = stream;
      
      // 카메라 섹션 표시
      document.getElementById('camera-section').classList.remove('hidden');
      
      // 다른 섹션 숨기기
      this.hideAllSections();
      document.getElementById('camera-section').classList.remove('hidden');

      console.log('카메라가 시작되었습니다.');
    } catch (error) {
      console.error('카메라 접근 오류:', error);
      alert('카메라에 접근할 수 없습니다. 권한을 확인해주세요.');
    }
  }

  stopCamera() {
    if (this.currentStream) {
      this.currentStream.getTracks().forEach(track => track.stop());
      this.currentStream = null;
    }
    
    if (this.video) {
      this.video.srcObject = null;
    }

    document.getElementById('camera-section').classList.add('hidden');
  }

  capturePhoto() {
    if (!this.video || !this.canvas) return;

    const context = this.canvas.getContext('2d');
    this.canvas.width = this.video.videoWidth;
    this.canvas.height = this.video.videoHeight;
    
    context.drawImage(this.video, 0, 0);
    
    // Canvas를 Blob으로 변환
    this.canvas.toBlob((blob) => {
      this.selectedFile = new File([blob], 'camera-capture.jpg', { type: 'image/jpeg' });
      this.showPreview(URL.createObjectURL(blob));
      this.stopCamera();
    }, 'image/jpeg', 0.8);
  }

  handleFileSelect(event) {
    const file = event.target.files[0];
    if (file && file.type.startsWith('image/')) {
      this.selectedFile = file;
      const reader = new FileReader();
      reader.onload = (e) => {
        this.showPreview(e.target.result);
      };
      reader.readAsDataURL(file);
    } else {
      alert('올바른 이미지 파일을 선택해주세요.');
    }
  }

  showPreview(imageSrc) {
    const previewImg = document.getElementById('preview-image');
    previewImg.src = imageSrc;
    
    this.hideAllSections();
    document.getElementById('preview-section').classList.remove('hidden');
  }

  async analyzeImage() {
    if (!this.selectedFile) {
      alert('분석할 이미지를 선택해주세요.');
      return;
    }

    // 로딩 화면 표시
    this.hideAllSections();
    document.getElementById('loading-section').classList.remove('hidden');

    try {
      const formData = new FormData();
      formData.append('image', this.selectedFile);

      const response = await fetch('/api/analyze', {
        method: 'POST',
        body: formData
      });

      const data = await response.json();

      if (data.success) {
        this.displayResults(data.results);
      } else {
        throw new Error(data.error || '분석에 실패했습니다.');
      }
    } catch (error) {
      console.error('분석 오류:', error);
      alert('분석 중 오류가 발생했습니다: ' + error.message);
      this.hideAllSections();
      document.getElementById('preview-section').classList.remove('hidden');
    }
  }

  displayResults(results) {
    // 분석 결과 저장 (나중에 저장 기능에서 사용)
    this.lastAnalysisResults = results;
    
    const resultsContent = document.getElementById('results-content');
    
    const { ingredients, analysis } = results;

    // 안전성별로 성분 분류
    const safeIngredients = ingredients.filter(i => i.safety === 'safe');
    const cautionIngredients = ingredients.filter(i => i.safety === 'caution');
    const harmfulIngredients = ingredients.filter(i => i.safety === 'harmful');
    const unknownIngredients = ingredients.filter(i => i.safety === 'unknown');

    resultsContent.innerHTML = `
      <div class="mb-6">
        <h4 class="text-lg font-semibold mb-3">📈 분석 요약</h4>
        <div class="grid grid-cols-2 md:grid-cols-4 gap-3 text-center text-sm md:text-base">
          <div class="bg-blue-50 p-3 rounded-lg">
            <div class="text-xl md:text-2xl font-bold text-blue-600">${analysis.totalIngredients}</div>
            <div class="text-xs md:text-sm text-gray-600">총 성분</div>
          </div>
          <div class="bg-green-50 p-3 rounded-lg">
            <div class="text-xl md:text-2xl font-bold text-green-600">${analysis.safeIngredients}</div>
            <div class="text-xs md:text-sm text-gray-600">안전 성분</div>
          </div>
          <div class="bg-yellow-50 p-3 rounded-lg">
            <div class="text-xl md:text-2xl font-bold text-yellow-600">${analysis.cautionIngredients}</div>
            <div class="text-xs md:text-sm text-gray-600">주의 성분</div>
          </div>
          <div class="bg-red-50 p-3 rounded-lg">
            <div class="text-xl md:text-2xl font-bold text-red-600">${analysis.harmfulIngredients + (analysis.unknownIngredients || 0)}</div>
            <div class="text-xs md:text-sm text-gray-600">주의/확인필요</div>
          </div>
        </div>
      </div>

      ${safeIngredients.length > 0 ? `
      <div class="mb-6">
        <h4 class="text-lg font-semibold mb-3 text-green-700">✅ 안전한 성분 (${safeIngredients.length}개)</h4>
        <div class="space-y-2">
          ${safeIngredients.map(ingredient => `
            <div class="border rounded-lg p-3 bg-green-50 border-green-200">
              <div class="flex items-center justify-between mb-1">
                <h5 class="font-semibold text-green-800">${ingredient.name}</h5>
                <span class="px-2 py-1 rounded-full text-xs bg-green-100 text-green-800">
                  ✅ 안전
                </span>
              </div>
              <p class="text-green-700 text-sm">${ingredient.description}</p>
            </div>
          `).join('')}
        </div>
      </div>
      ` : ''}

      ${cautionIngredients.length > 0 ? `
      <div class="mb-6">
        <h4 class="text-lg font-semibold mb-3 text-yellow-700">⚠️ 주의가 필요한 성분 (${cautionIngredients.length}개)</h4>
        <div class="space-y-2">
          ${cautionIngredients.map(ingredient => `
            <div class="border rounded-lg p-3 bg-yellow-50 border-yellow-200">
              <div class="flex items-center justify-between mb-1">
                <h5 class="font-semibold text-yellow-800">${ingredient.name}</h5>
                <span class="px-2 py-1 rounded-full text-xs bg-yellow-100 text-yellow-800">
                  ⚠️ 주의
                </span>
              </div>
              <p class="text-yellow-700 text-sm">${ingredient.description}</p>
            </div>
          `).join('')}
        </div>
      </div>
      ` : ''}

      ${harmfulIngredients.length > 0 ? `
      <div class="mb-6">
        <h4 class="text-lg font-semibold mb-3 text-red-700">❌ 주의해야 할 성분 (${harmfulIngredients.length}개)</h4>
        <div class="space-y-2">
          ${harmfulIngredients.map(ingredient => `
            <div class="border rounded-lg p-3 bg-red-50 border-red-200">
              <div class="flex items-center justify-between mb-1">
                <h5 class="font-semibold text-red-800">${ingredient.name}</h5>
                <span class="px-2 py-1 rounded-full text-xs bg-red-100 text-red-800">
                  ❌ 주의
                </span>
              </div>
              <p class="text-red-700 text-sm">${ingredient.description}</p>
            </div>
          `).join('')}
        </div>
      </div>
      ` : ''}

      ${unknownIngredients.length > 0 ? `
      <div class="mb-6">
        <h4 class="text-lg font-semibold mb-3 text-gray-700">❓ 확인이 필요한 성분 (${unknownIngredients.length}개)</h4>
        <div class="space-y-2">
          ${unknownIngredients.map(ingredient => `
            <div class="border rounded-lg p-3 bg-gray-50 border-gray-200">
              <div class="flex items-center justify-between mb-1">
                <h5 class="font-semibold text-gray-800">${ingredient.name}</h5>
                <span class="px-2 py-1 rounded-full text-xs bg-gray-100 text-gray-800">
                  ❓ 미확인
                </span>
              </div>
              <p class="text-gray-700 text-sm">${ingredient.description}</p>
            </div>
          `).join('')}
        </div>
      </div>
      ` : ''}

      <div class="bg-blue-50 border border-blue-200 rounded-lg p-4 mb-6">
        <h4 class="text-lg font-semibold mb-2 text-blue-800">💡 분석 결과 해석</h4>
        <div class="text-sm text-blue-700 space-y-1">
          <p>• <strong>안전 성분:</strong> 일반적으로 문제없이 사용할 수 있는 성분</p>
          <p>• <strong>주의 성분:</strong> 피부 타입에 따라 자극이 있을 수 있으니 패치테스트 권장</p>
          <p>• <strong>주의해야 할 성분:</strong> 사용 시 각별한 주의가 필요한 성분</p>
          <p>• <strong>미확인 성분:</strong> 데이터베이스에 없는 성분으로 전문가 상담 권장</p>
        </div>
      </div>

      ${results.skinAnalysis && results.skinAnalysis.recommendedSkinTypes.length > 0 ? `
      <div class="bg-purple-50 border border-purple-200 rounded-lg p-4 mb-6">
        <h4 class="text-lg font-semibold mb-3 text-purple-800">🎯 피부 타입 맞춤 분석</h4>
        <div class="space-y-3">
          <div class="text-purple-700">
            <strong>추천 피부 타입:</strong> ${results.skinAnalysis.recommendedSkinTypes.join(', ')}
          </div>
          ${results.skinAnalysis.recommendations.map(rec => `
            <div class="bg-white p-3 rounded border border-purple-100">
              <p class="text-sm text-purple-600">${rec.description}</p>
              <div class="mt-2 text-xs text-purple-500">
                <strong>추천 성분:</strong> ${rec.recommended.join(', ')}
              </div>
              ${rec.avoid ? `<div class="text-xs text-red-500">
                <strong>주의 성분:</strong> ${rec.avoid.join(', ')}
              </div>` : ''}
            </div>
          `).join('')}
        </div>
      </div>
      ` : ''}

      ${results.similarProducts && results.similarProducts.length > 0 ? `
      <div class="bg-green-50 border border-green-200 rounded-lg p-4 mb-6">
        <h4 class="text-lg font-semibold mb-3 text-green-800">🛍️ 추천 제품</h4>
        <div class="grid grid-cols-1 md:grid-cols-2 gap-3">
          ${results.similarProducts.map(product => `
            <div class="bg-white p-3 rounded border border-green-100 hover:shadow-md transition-shadow">
              <div class="flex justify-between items-start mb-2">
                <div>
                  <h5 class="font-semibold text-sm text-green-800">${product.name}</h5>
                  <p class="text-xs text-green-600">${product.brand} | ${product.category}</p>
                </div>
                <div class="text-right">
                  <div class="text-sm font-bold text-green-700">${product.price.toLocaleString()}원</div>
                  <div class="text-xs text-yellow-600">⭐ ${product.rating} (${product.reviews})</div>
                </div>
              </div>
              <div class="text-xs text-green-600 mb-2">
                <strong>적합:</strong> ${product.suitableFor.join(', ')}
              </div>
              <div class="text-xs text-gray-600 mb-2">
                <strong>주요성분:</strong> ${product.ingredients.join(', ')}
              </div>
              <a href="${product.url}" target="_blank" 
                 class="inline-block bg-green-500 text-white text-xs px-3 py-1 rounded hover:bg-green-600 transition-colors">
                제품 보러가기 →
              </a>
            </div>
          `).join('')}
        </div>
        <div class="mt-3 text-center">
          <button onclick="skinAnalyzer.showMoreProducts()" 
                  class="text-green-600 text-sm hover:text-green-800 transition-colors">
            더 많은 제품 보기 →
          </button>
        </div>
      </div>
      ` : ''}

      ${results.homecareRecommendations ? `
      <div class="bg-orange-50 border border-orange-200 rounded-lg p-4 mb-6">
        <h4 class="text-lg font-semibold mb-3 text-orange-800">🏠 홈케어 추천 사이트</h4>
        <div class="grid grid-cols-2 md:grid-cols-4 gap-3">
          ${results.homecareRecommendations.map(site => `
            <a href="${site.url}" target="_blank" 
               class="bg-white p-3 rounded border border-orange-100 hover:shadow-md transition-shadow text-center block">
              <h5 class="font-semibold text-sm text-orange-800 mb-1">${site.name}</h5>
              <p class="text-xs text-orange-600 mb-2">${site.description}</p>
              <span class="text-xs bg-orange-100 text-orange-700 px-2 py-1 rounded">${site.category}</span>
            </a>
          `).join('')}
        </div>
      </div>
      ` : ''}

      <div class="bg-indigo-50 border border-indigo-200 rounded-lg p-4 mb-6">
        <h4 class="text-lg font-semibold mb-3 text-indigo-800">🗺️ 주변 피부 관리 서비스</h4>
        <div class="space-y-3">
          <button onclick="skinAnalyzer.findNearbyClinics()" 
                  class="w-full bg-indigo-500 text-white py-2 rounded-lg hover:bg-indigo-600 transition-colors">
            📍 근처 피부관리실 찾기
          </button>
          <div id="clinics-list" class="hidden space-y-2"></div>
        </div>
      </div>

      <div class="text-center space-y-3">
        <div class="flex flex-col md:flex-row gap-3 justify-center">
          <button onclick="skinAnalyzer.reset()" 
                  class="bg-blue-500 text-white px-6 py-3 rounded-lg hover:bg-blue-600 transition-colors">
            🔄 새로운 분석하기
          </button>
          <button onclick="skinAnalyzer.saveAnalysis()" 
                  class="bg-purple-500 text-white px-6 py-3 rounded-lg hover:bg-purple-600 transition-colors">
            💾 분석결과 저장
          </button>
        </div>
        <div class="text-xs text-gray-500">
          * 이 분석 결과는 일반적인 참고용이며, 개인의 피부 상태에 따라 다를 수 있습니다.
        </div>
      </div>
    `;

    this.hideAllSections();
    document.getElementById('results-section').classList.remove('hidden');
  }

  getSafetyColor(safety) {
    switch (safety) {
      case 'safe': return 'bg-green-50 border-green-200';
      case 'caution': return 'bg-yellow-50 border-yellow-200';
      case 'harmful': return 'bg-red-50 border-red-200';
      default: return 'bg-gray-50 border-gray-200';
    }
  }

  getSafetyBadgeClass(safety) {
    switch (safety) {
      case 'safe': return 'bg-green-100 text-green-800';
      case 'caution': return 'bg-yellow-100 text-yellow-800';
      case 'harmful': return 'bg-red-100 text-red-800';
      default: return 'bg-gray-100 text-gray-800';
    }
  }

  getSafetyText(safety) {
    switch (safety) {
      case 'safe': return '✅ 안전';
      case 'caution': return '⚠️ 주의';
      case 'harmful': return '❌ 유해';
      default: return '❓ 확인 필요';
    }
  }

  hideAllSections() {
    const sections = [
      'camera-section',
      'preview-section', 
      'loading-section',
      'results-section',
      'history-section'
    ];
    
    sections.forEach(sectionId => {
      document.getElementById(sectionId).classList.add('hidden');
    });
  }

  // 근처 피부관리실 찾기
  async findNearbyClinics() {
    if (!navigator.geolocation) {
      alert('위치 서비스를 사용할 수 없습니다.');
      return;
    }

    try {
      const position = await new Promise((resolve, reject) => {
        navigator.geolocation.getCurrentPosition(resolve, reject);
      });

      const { latitude, longitude } = position.coords;
      
      const response = await fetch(`/api/skincare-clinics?lat=${latitude}&lng=${longitude}&radius=5`);
      const data = await response.json();

      this.displayClinics(data.clinics);
    } catch (error) {
      console.error('위치 정보를 가져올 수 없습니다:', error);
      // Mock 데이터로 대체
      const response = await fetch('/api/skincare-clinics');
      const data = await response.json();
      this.displayClinics(data.clinics);
    }
  }

  // 피부관리실 목록 표시
  displayClinics(clinics) {
    const clinicsList = document.getElementById('clinics-list');
    
    if (clinics.length === 0) {
      clinicsList.innerHTML = '<p class="text-gray-500 text-sm">근처에 등록된 피부관리실이 없습니다.</p>';
    } else {
      clinicsList.innerHTML = clinics.map(clinic => `
        <div class="bg-white p-3 rounded border border-indigo-100">
          <div class="flex justify-between items-start mb-2">
            <div>
              <h5 class="font-semibold text-sm text-indigo-800">${clinic.name}</h5>
              <p class="text-xs text-indigo-600">${clinic.address}</p>
              <p class="text-xs text-gray-600">${clinic.phone}</p>
            </div>
            <div class="text-right">
              <div class="text-xs text-yellow-600">⭐ ${clinic.rating} (${clinic.reviews})</div>
              <div class="text-xs text-indigo-600">${clinic.distance}km</div>
            </div>
          </div>
          <div class="text-xs text-indigo-600 mb-2">
            <strong>전문분야:</strong> ${clinic.specialties.join(', ')}
          </div>
          <a href="${clinic.url}" target="_blank" 
             class="inline-block bg-indigo-500 text-white text-xs px-3 py-1 rounded hover:bg-indigo-600 transition-colors">
            상세보기 →
          </a>
        </div>
      `).join('');
    }

    clinicsList.classList.remove('hidden');
  }

  // 더 많은 제품 보기
  async showMoreProducts() {
    try {
      const response = await fetch('/api/products/recommend');
      const data = await response.json();
      
      // 새 탭에서 제품 목록 페이지 열기 (실제로는 별도 페이지로 구현)
      const productsWindow = window.open('', '_blank');
      productsWindow.document.write(`
        <html>
        <head>
          <title>추천 제품 목록</title>
          <script src="https://cdn.tailwindcss.com"></script>
        </head>
        <body class="bg-gray-50 p-4">
          <div class="max-w-6xl mx-auto">
            <h1 class="text-2xl font-bold mb-6">🛍️ 추천 제품 목록</h1>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
              ${data.products.map(product => `
                <div class="bg-white p-4 rounded-lg shadow hover:shadow-md transition-shadow">
                  <h3 class="font-semibold mb-2">${product.name}</h3>
                  <p class="text-sm text-gray-600 mb-2">${product.brand} | ${product.category}</p>
                  <p class="text-lg font-bold text-green-600 mb-2">${product.price.toLocaleString()}원</p>
                  <p class="text-sm text-yellow-600 mb-2">⭐ ${product.rating} (${product.reviews}개 리뷰)</p>
                  <p class="text-xs text-gray-500 mb-3">${product.suitableFor.join(', ')}에 적합</p>
                  <a href="${product.url}" class="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-600 transition-colors">
                    구매하기 →
                  </a>
                </div>
              `).join('')}
            </div>
          </div>
        </body>
        </html>
      `);
    } catch (error) {
      console.error('제품 정보를 가져올 수 없습니다:', error);
      alert('제품 정보를 가져오는데 실패했습니다.');
    }
  }

  // 분석 결과 저장 (로컬 스토리지)
  saveAnalysis() {
    const analysisData = {
      timestamp: new Date().toISOString(),
      results: this.lastAnalysisResults,
      imageDataUrl: document.getElementById('preview-image')?.src
    };

    try {
      let savedAnalyses = JSON.parse(localStorage.getItem('skinAnalyses') || '[]');
      savedAnalyses.unshift(analysisData); // 최신 순으로 저장
      
      // 최대 10개까지만 저장
      if (savedAnalyses.length > 10) {
        savedAnalyses = savedAnalyses.slice(0, 10);
      }
      
      localStorage.setItem('skinAnalyses', JSON.stringify(savedAnalyses));
      alert('분석 결과가 저장되었습니다! (최대 10개 저장)');
    } catch (error) {
      console.error('저장 실패:', error);
      alert('분석 결과 저장에 실패했습니다.');
    }
  }

  // 분석 기록 보기
  showAnalysisHistory() {
    try {
      const savedAnalyses = JSON.parse(localStorage.getItem('skinAnalyses') || '[]');
      const historyContent = document.getElementById('history-content');
      
      if (savedAnalyses.length === 0) {
        historyContent.innerHTML = `
          <div class="text-center py-8 text-gray-500">
            <div class="text-4xl mb-2">📝</div>
            <p>저장된 분석 기록이 없습니다.</p>
            <p class="text-sm mt-2">분석 후 '분석결과 저장' 버튼을 눌러 기록을 남겨보세요!</p>
          </div>
        `;
      } else {
        historyContent.innerHTML = `
          <div class="space-y-4">
            ${savedAnalyses.map((analysis, index) => `
              <div class="border rounded-lg p-4 hover:shadow-md transition-shadow">
                <div class="flex justify-between items-start mb-3">
                  <div>
                    <h4 class="font-semibold text-gray-800">분석 #${savedAnalyses.length - index}</h4>
                    <p class="text-sm text-gray-500">${new Date(analysis.timestamp).toLocaleString('ko-KR')}</p>
                  </div>
                  <button onclick="skinAnalyzer.deleteAnalysis(${index})" 
                          class="text-red-500 hover:text-red-700 text-sm">
                    🗑️ 삭제
                  </button>
                </div>
                
                ${analysis.imageDataUrl ? `
                  <img src="${analysis.imageDataUrl}" class="w-16 h-16 object-cover rounded border mb-3" />
                ` : ''}
                
                <div class="text-sm space-y-2">
                  <div class="flex flex-wrap gap-2">
                    <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded text-xs">
                      총 ${analysis.results.analysis.totalIngredients}개 성분
                    </span>
                    <span class="bg-green-100 text-green-800 px-2 py-1 rounded text-xs">
                      안전 ${analysis.results.analysis.safeIngredients}개
                    </span>
                    ${analysis.results.analysis.cautionIngredients > 0 ? `
                      <span class="bg-yellow-100 text-yellow-800 px-2 py-1 rounded text-xs">
                        주의 ${analysis.results.analysis.cautionIngredients}개
                      </span>
                    ` : ''}
                    ${analysis.results.skinAnalysis && analysis.results.skinAnalysis.recommendedSkinTypes ? `
                      <span class="bg-purple-100 text-purple-800 px-2 py-1 rounded text-xs">
                        ${analysis.results.skinAnalysis.recommendedSkinTypes[0]}
                      </span>
                    ` : ''}
                  </div>
                  
                  <div class="flex gap-2">
                    <button onclick="skinAnalyzer.viewAnalysisDetail(${index})" 
                            class="bg-blue-500 text-white px-3 py-1 rounded text-xs hover:bg-blue-600 transition-colors">
                      상세보기
                    </button>
                    <button onclick="skinAnalyzer.reAnalyze(${index})" 
                            class="bg-gray-500 text-white px-3 py-1 rounded text-xs hover:bg-gray-600 transition-colors">
                      재분석
                    </button>
                  </div>
                </div>
              </div>
            `).join('')}
          </div>
          
          <div class="text-center mt-6">
            <button onclick="skinAnalyzer.clearAllHistory()" 
                    class="bg-red-500 text-white px-4 py-2 rounded hover:bg-red-600 transition-colors">
              🗑️ 모든 기록 삭제
            </button>
          </div>
        `;
      }

      this.hideAllSections();
      document.getElementById('history-section').classList.remove('hidden');
    } catch (error) {
      console.error('기록 로드 실패:', error);
      alert('분석 기록을 불러오는데 실패했습니다.');
    }
  }

  // 특정 분석 기록 삭제
  deleteAnalysis(index) {
    if (confirm('이 분석 기록을 삭제하시겠습니까?')) {
      try {
        let savedAnalyses = JSON.parse(localStorage.getItem('skinAnalyses') || '[]');
        savedAnalyses.splice(index, 1);
        localStorage.setItem('skinAnalyses', JSON.stringify(savedAnalyses));
        this.showAnalysisHistory(); // 화면 새로고침
      } catch (error) {
        console.error('삭제 실패:', error);
        alert('기록 삭제에 실패했습니다.');
      }
    }
  }

  // 모든 분석 기록 삭제
  clearAllHistory() {
    if (confirm('모든 분석 기록을 삭제하시겠습니까? 이 작업은 되돌릴 수 없습니다.')) {
      try {
        localStorage.removeItem('skinAnalyses');
        this.showAnalysisHistory(); // 화면 새로고침
      } catch (error) {
        console.error('전체 삭제 실패:', error);
        alert('기록 삭제에 실패했습니다.');
      }
    }
  }

  // 분석 상세보기
  viewAnalysisDetail(index) {
    try {
      const savedAnalyses = JSON.parse(localStorage.getItem('skinAnalyses') || '[]');
      const analysis = savedAnalyses[index];
      
      if (analysis && analysis.results) {
        this.displayResults(analysis.results);
      }
    } catch (error) {
      console.error('상세보기 실패:', error);
      alert('분석 결과를 불러오는데 실패했습니다.');
    }
  }

  // 기록에서 재분석 (같은 이미지로)
  reAnalyze(index) {
    try {
      const savedAnalyses = JSON.parse(localStorage.getItem('skinAnalyses') || '[]');
      const analysis = savedAnalyses[index];
      
      if (analysis && analysis.imageDataUrl) {
        // 이미지를 미리보기에 설정하고 분석 화면으로 이동
        document.getElementById('preview-image').src = analysis.imageDataUrl;
        this.hideAllSections();
        document.getElementById('preview-section').classList.remove('hidden');
        
        // 이미지 데이터를 File 객체로 변환 (간단한 방법)
        fetch(analysis.imageDataUrl)
          .then(res => res.blob())
          .then(blob => {
            this.selectedFile = new File([blob], 'reanalysis.jpg', { type: 'image/jpeg' });
          });
      }
    } catch (error) {
      console.error('재분석 준비 실패:', error);
      alert('재분석 준비에 실패했습니다.');
    }
  }

  reset() {
    this.selectedFile = null;
    this.lastAnalysisResults = null;
    this.stopCamera();
    this.hideAllSections();
    
    // 파일 입력 리셋
    const fileInput = document.getElementById('file-input');
    if (fileInput) fileInput.value = '';
  }
}

// 앱 초기화
const skinAnalyzer = new SkinAnalyzer();

// 전역 함수로 노출 (HTML에서 직접 호출용)
window.skinAnalyzer = skinAnalyzer;
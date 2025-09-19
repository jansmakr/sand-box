// 피부 성분 분석 앱 - 프론트엔드 JavaScript

class SkinAnalyzer {
  constructor() {
    this.video = null;
    this.canvas = null;
    this.currentStream = null;
    this.selectedFile = null;
    
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

      <div class="text-center space-y-3">
        <button onclick="skinAnalyzer.reset()" class="bg-blue-500 text-white px-6 py-3 rounded-lg hover:bg-blue-600 transition-colors">
          🔄 새로운 분석하기
        </button>
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
      'results-section'
    ];
    
    sections.forEach(sectionId => {
      document.getElementById(sectionId).classList.add('hidden');
    });
  }

  reset() {
    this.selectedFile = null;
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
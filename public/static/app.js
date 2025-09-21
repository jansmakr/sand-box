// 피부 성분 분석 앱 - 프론트엔드 JavaScript

class SkinAnalyzer {
  constructor() {
    this.video = null;
    this.canvas = null;
    this.currentStream = null;
    this.selectedFile = null;
    this.lastAnalysisResults = null;
    this.currentFacingMode = 'environment'; // 'user' (전면) 또는 'environment' (후면)
    this.availableCameras = [];
    
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

    // 전면 카메라 버튼
    document.getElementById('front-camera-btn')?.addEventListener('click', () => {
      this.switchToCamera('user');
    });

    // 후면 카메라 버튼
    document.getElementById('back-camera-btn')?.addEventListener('click', () => {
      this.switchToCamera('environment');
    });

    // 카메라 전환 버튼
    document.getElementById('switch-camera-btn')?.addEventListener('click', () => {
      this.toggleCamera();
    });

    // 분석 시작 버튼
    document.getElementById('analyze-btn')?.addEventListener('click', () => {
      this.analyzeImage();
    });

    // 리셋 버튼
    document.getElementById('reset-btn')?.addEventListener('click', () => {
      this.reset();
    });

    // 분석 기록 버튼 (헤더와 네비게이션 둘 다)
    document.getElementById('history-btn')?.addEventListener('click', () => {
      this.showAnalysisHistory();
    });

    // 하단 네비게이션 바 이벤트
    document.getElementById('nav-home')?.addEventListener('click', () => {
      this.showMainPage();
      this.updateNavigation('home');
    });

    document.getElementById('nav-camera')?.addEventListener('click', () => {
      this.startCamera();
      this.updateNavigation('camera');
    });

    document.getElementById('nav-history')?.addEventListener('click', () => {
      this.showAnalysisHistory();
      this.updateNavigation('history');
    });

    document.getElementById('nav-info')?.addEventListener('click', () => {
      this.showInfoPage();
      this.updateNavigation('info');
    });

    // 터치 제스처 추가
    this.initTouchGestures();
  }

  async startCamera() {
    try {
      // 사용 가능한 카메라 목록 확인
      await this.detectAvailableCameras();
      
      // 카메라 섹션 표시
      this.hideAllSections();
      document.getElementById('camera-section').classList.remove('hidden');
      
      // 기본적으로 후면 카메라로 시작
      await this.switchToCamera('environment');
      
    } catch (error) {
      console.error('카메라 초기화 오류:', error);
      alert('카메라에 접근할 수 없습니다. 권한을 확인해주세요.');
    }
  }

  async detectAvailableCameras() {
    try {
      const devices = await navigator.mediaDevices.enumerateDevices();
      this.availableCameras = devices.filter(device => device.kind === 'videoinput');
      
      console.log(`감지된 카메라 개수: ${this.availableCameras.length}`, this.availableCameras);
      
      // 카메라 버튼 활성화/비활성화
      const frontBtn = document.getElementById('front-camera-btn');
      const backBtn = document.getElementById('back-camera-btn');
      const switchBtn = document.getElementById('switch-camera-btn');
      
      if (this.availableCameras.length === 0) {
        this.updateCameraStatus('카메라를 찾을 수 없습니다');
        frontBtn.disabled = true;
        backBtn.disabled = true;
        switchBtn.disabled = true;
      } else if (this.availableCameras.length === 1) {
        this.updateCameraStatus('카메라 1개 감지됨');
        switchBtn.disabled = true;
      } else {
        this.updateCameraStatus(`카메라 ${this.availableCameras.length}개 감지됨`);
        switchBtn.disabled = false;
      }
      
    } catch (error) {
      console.error('카메라 감지 오류:', error);
      this.updateCameraStatus('카메라 감지 실패');
    }
  }

  async switchToCamera(facingMode) {
    try {
      // 기존 스트림 정지
      if (this.currentStream) {
        this.currentStream.getTracks().forEach(track => track.stop());
      }

      this.currentFacingMode = facingMode;
      
      const constraints = {
        video: {
          facingMode: { ideal: facingMode },
          width: { ideal: 1280 },
          height: { ideal: 720 }
        }
      };

      // 특정 deviceId가 있는 경우 사용 (더 정확한 카메라 선택)
      if (this.availableCameras.length > 1) {
        // 전면/후면 카메라 구분을 위한 휴리스틱
        const targetCamera = this.availableCameras.find(camera => {
          const label = camera.label.toLowerCase();
          if (facingMode === 'user') {
            return label.includes('front') || label.includes('user') || label.includes('selfie');
          } else {
            return label.includes('back') || label.includes('rear') || label.includes('environment');
          }
        });

        if (targetCamera) {
          constraints.video.deviceId = { exact: targetCamera.deviceId };
          delete constraints.video.facingMode; // deviceId 사용 시 facingMode 제거
        }
      }

      const stream = await navigator.mediaDevices.getUserMedia(constraints);

      this.video = document.getElementById('video');
      this.canvas = document.getElementById('canvas');
      this.currentStream = stream;

      this.video.srcObject = stream;

      // 전면 카메라인 경우 좌우 반전 적용
      if (facingMode === 'user') {
        this.video.style.transform = 'scaleX(-1)';
        this.updateCameraStatus('🤳 전면 카메라 활성화');
      } else {
        this.video.style.transform = 'scaleX(1)';
        this.updateCameraStatus('📸 후면 카메라 활성화');
      }

      // 버튼 상태 업데이트
      this.updateCameraButtons(facingMode);

      console.log(`${facingMode === 'user' ? '전면' : '후면'} 카메라로 전환됨`);
      
    } catch (error) {
      console.error('카메라 전환 오류:', error);
      
      // 실패 시 기본 설정으로 재시도
      try {
        const fallbackStream = await navigator.mediaDevices.getUserMedia({
          video: { width: { ideal: 1280 }, height: { ideal: 720 } }
        });
        
        this.currentStream = fallbackStream;
        this.video.srcObject = fallbackStream;
        this.updateCameraStatus('⚠️ 기본 카메라로 연결됨');
        
      } catch (fallbackError) {
        console.error('기본 카메라도 실패:', fallbackError);
        this.updateCameraStatus('❌ 카메라 연결 실패');
        alert('카메라에 연결할 수 없습니다. 다른 앱이 카메라를 사용 중이거나 권한이 없을 수 있습니다.');
      }
    }
  }

  toggleCamera() {
    const newFacingMode = this.currentFacingMode === 'user' ? 'environment' : 'user';
    this.switchToCamera(newFacingMode);
  }

  updateCameraStatus(message) {
    const statusElement = document.getElementById('camera-status');
    if (statusElement) {
      statusElement.textContent = message;
    }
  }

  updateCameraButtons(activeFacingMode) {
    const frontBtn = document.getElementById('front-camera-btn');
    const backBtn = document.getElementById('back-camera-btn');
    
    // 버튼 스타일 초기화
    frontBtn.classList.remove('bg-blue-700', 'bg-blue-500');
    backBtn.classList.remove('bg-purple-700', 'bg-purple-500');
    
    if (activeFacingMode === 'user') {
      frontBtn.classList.add('bg-blue-700'); // 활성화된 상태
      backBtn.classList.add('bg-purple-500'); // 비활성화된 상태
    } else {
      frontBtn.classList.add('bg-blue-500'); // 비활성화된 상태
      backBtn.classList.add('bg-purple-700'); // 활성화된 상태
    }
  }

  stopCamera() {
    if (this.currentStream) {
      this.currentStream.getTracks().forEach(track => track.stop());
      this.currentStream = null;
    }
    
    if (this.video) {
      this.video.srcObject = null;
      this.video.style.transform = 'scaleX(1)'; // 변환 초기화
    }

    // 상태 초기화
    this.updateCameraStatus('카메라를 선택해주세요');
    this.currentFacingMode = 'environment';
    
    // 버튼 상태 초기화
    const frontBtn = document.getElementById('front-camera-btn');
    const backBtn = document.getElementById('back-camera-btn');
    frontBtn.classList.remove('bg-blue-700');
    backBtn.classList.remove('bg-purple-700');
    frontBtn.classList.add('bg-blue-500');
    backBtn.classList.add('bg-purple-500');

    document.getElementById('camera-section').classList.add('hidden');
  }

  capturePhoto() {
    if (!this.video || !this.canvas) return;

    const context = this.canvas.getContext('2d');
    this.canvas.width = this.video.videoWidth;
    this.canvas.height = this.video.videoHeight;
    
    // 전면 카메라인 경우 이미지를 좌우 반전하여 저장
    if (this.currentFacingMode === 'user') {
      context.save();
      context.scale(-1, 1);
      context.drawImage(this.video, -this.canvas.width, 0);
      context.restore();
    } else {
      context.drawImage(this.video, 0, 0);
    }
    
    // Canvas를 Blob으로 변환
    this.canvas.toBlob((blob) => {
      this.selectedFile = new File([blob], `camera-capture-${this.currentFacingMode}.jpg`, { type: 'image/jpeg' });
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
    
    // 로딩 단계 시뮬레이션
    this.updateLoadingStep(1, '이미지 품질 검사', '진행중');
    
    // 잠시 대기 (사용자가 과정을 볼 수 있도록)
    await new Promise(resolve => setTimeout(resolve, 800));
    
    this.updateLoadingStep(1, '이미지 품질 검사', '완료');
    this.updateLoadingStep(2, '텍스트 인식 (OCR)', '진행중');
    
    await new Promise(resolve => setTimeout(resolve, 600));

    try {
      const formData = new FormData();
      formData.append('image', this.selectedFile);

      const response = await fetch('/api/analyze', {
        method: 'POST',
        body: formData
      });

      const data = await response.json();

      if (data.success) {
        this.updateLoadingStep(2, '텍스트 인식 (OCR)', '완료');
        this.updateLoadingStep(3, '성분 안전성 분석', '진행중');
        
        await new Promise(resolve => setTimeout(resolve, 400));
        
        this.updateLoadingStep(3, '성분 안전성 분석', '완료');
        this.updateLoadingStep(4, '맞춤 제품 추천', '진행중');
        
        await new Promise(resolve => setTimeout(resolve, 400));
        
        this.updateLoadingStep(4, '맞춤 제품 추천', '완료');
        
        // 잠시 완료 상태를 보여준 후 결과 표시
        await new Promise(resolve => setTimeout(resolve, 300));
        
        this.displayResults(data.results);
      } else {
        // OCR 실패나 기타 오류 처리
        this.showAnalysisError(data);
      }
    } catch (error) {
      console.error('분석 오류:', error);
      this.showAnalysisError({
        error: '네트워크 오류가 발생했습니다',
        suggestions: ['인터넷 연결을 확인해주세요', '잠시 후 다시 시도해보세요']
      });
    }
  }

  // 분석 오류 표시
  showAnalysisError(errorData) {
    this.hideAllSections();
    
    const errorSection = document.createElement('div');
    errorSection.id = 'error-section';
    errorSection.className = 'bg-white rounded-2xl shadow-md p-4 mb-6';
    
    errorSection.innerHTML = `
      <div class="text-center">
        <div class="mb-4">
          <div class="w-16 h-16 bg-red-100 rounded-full flex items-center justify-center mx-auto mb-3">
            <i class="fas fa-exclamation-triangle text-2xl text-red-600"></i>
          </div>
          <h3 className="text-lg font-bold text-gray-800 mb-2">분석할 수 없습니다</h3>
          <p class="text-red-600 font-medium mb-4">${errorData.error}</p>
        </div>

        ${errorData.suggestions ? `
        <div class="bg-blue-50 border border-blue-200 rounded-xl p-4 mb-6 text-left">
          <h4 class="font-semibold text-blue-800 mb-3 flex items-center">
            <i class="fas fa-lightbulb mr-2"></i>
            개선 방법
          </h4>
          <ul class="space-y-2 text-sm text-blue-700">
            ${errorData.suggestions.map(suggestion => `
              <li class="flex items-start">
                <span class="text-blue-500 mr-2">•</span>
                <span>${suggestion}</span>
              </li>
            `).join('')}
          </ul>
        </div>
        ` : ''}

        <div class="space-y-3">
          <button onclick="skinAnalyzer.retakePhoto()" 
                  class="w-full bg-gradient-to-r from-blue-500 to-purple-500 text-white py-3 px-6 rounded-xl font-semibold hover:shadow-lg transition-all transform hover:scale-105 active:scale-95">
            📸 다시 촬영하기
          </button>
          <button onclick="skinAnalyzer.showPhotoTips()" 
                  class="w-full bg-green-100 text-green-700 py-3 px-6 rounded-xl font-medium hover:bg-green-200 transition-colors">
            💡 촬영 팁 보기
          </button>
          <button onclick="skinAnalyzer.reset()" 
                  class="w-full bg-gray-100 text-gray-700 py-3 px-6 rounded-xl font-medium hover:bg-gray-200 transition-colors">
            🏠 처음으로 돌아가기
          </button>
        </div>
      </div>
    `;

    // 기존 error-section이 있으면 제거
    const existingError = document.getElementById('error-section');
    if (existingError) {
      existingError.remove();
    }

    // 메인 컨텐츠에 추가
    const main = document.querySelector('main');
    if (main) {
      main.appendChild(errorSection);
    }
  }

  // 다시 촬영하기
  retakePhoto() {
    const errorSection = document.getElementById('error-section');
    if (errorSection) {
      errorSection.remove();
    }
    this.startCamera();
  }

  // 로딩 단계 업데이트
  updateLoadingStep(stepNumber, stepName, status) {
    const stepElement = document.getElementById(`step-${stepNumber}`);
    const statusElement = stepElement?.querySelector('div:last-child');
    const dotElement = stepElement?.querySelector('.w-4.h-4');
    
    if (!stepElement) return;
    
    // 단계 활성화
    stepElement.classList.remove('opacity-50');
    
    if (status === '진행중') {
      dotElement.className = 'w-4 h-4 bg-purple-500 rounded-full animate-pulse';
      statusElement.textContent = '진행중...';
      statusElement.className = 'text-purple-600 text-xs font-medium';
      
      // 로딩 상태 메시지 업데이트
      const loadingStatus = document.getElementById('loading-status');
      if (loadingStatus) {
        loadingStatus.textContent = `${stepName} 중입니다...`;
      }
    } else if (status === '완료') {
      dotElement.className = 'w-4 h-4 bg-green-500 rounded-full';
      statusElement.textContent = '✓ 완료';
      statusElement.className = 'text-green-600 text-xs font-medium';
    }
  }

  // 촬영 팁 표시
  showPhotoTips() {
    const tipsModal = document.createElement('div');
    tipsModal.className = 'fixed inset-0 bg-black/50 z-50 flex items-center justify-center p-4';
    tipsModal.innerHTML = `
      <div class="bg-white rounded-2xl p-6 max-w-sm w-full max-h-96 overflow-y-auto">
        <div class="text-center mb-4">
          <div class="text-2xl mb-2">📷</div>
          <h3 class="text-lg font-bold text-gray-800">성분표 촬영 가이드</h3>
        </div>
        
        <div class="space-y-4 text-sm">
          <div class="bg-green-50 border border-green-200 rounded-lg p-3">
            <h4 class="font-semibold text-green-800 mb-2">✅ 좋은 촬영법</h4>
            <ul class="space-y-1 text-green-700">
              <li>• 밝은 곳에서 촬영하세요</li>
              <li>• 성분표에 가까이 다가가세요</li>
              <li>• 글씨가 선명하게 보일 때까지 기다리세요</li>
              <li>• 성분 목록만 화면에 가득 채우세요</li>
            </ul>
          </div>
          
          <div class="bg-red-50 border border-red-200 rounded-lg p-3">
            <h4 class="font-semibold text-red-800 mb-2">❌ 피해야 할 것</h4>
            <ul class="space-y-1 text-red-700">
              <li>• 어두운 곳에서 촬영</li>
              <li>• 너무 멀리서 촬영</li>
              <li>• 카메라를 흔들며 촬영</li>
              <li>• 글씨가 흐릿한 상태에서 촬영</li>
            </ul>
          </div>
        </div>
        
        <button onclick="this.parentElement.parentElement.remove()" 
                class="w-full mt-6 bg-blue-500 text-white py-3 px-6 rounded-xl font-semibold hover:bg-blue-600 transition-colors">
          확인했어요
        </button>
      </div>
    `;
    
    document.body.appendChild(tipsModal);
    
    // 배경 클릭시 닫기
    tipsModal.addEventListener('click', (e) => {
      if (e.target === tipsModal) {
        tipsModal.remove();
      }
    });
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
      <!-- 부분 분석 경고 (있는 경우만 표시) -->
      ${results.partialAnalysis ? `
        <div class="bg-gradient-to-r from-amber-50 to-orange-50 border border-amber-200 rounded-xl p-4 mb-4">
          <div class="flex items-start space-x-3">
            <div class="text-amber-500 text-xl mt-0.5">⚠️</div>
            <div class="flex-1">
              <h4 class="text-sm font-bold text-amber-800 mb-2">${results.warningMessage || '일부 성분만 인식되었습니다'}</h4>
              <p class="text-xs text-amber-700 mb-3">현재 이미지 품질로는 ${results.ingredients.length}개 성분만 분석할 수 있었어요. 더 정확한 분석을 원하시면 아래 제안사항을 참고해주세요.</p>
              ${results.suggestions && results.suggestions.length > 0 ? `
                <div class="space-y-1">
                  ${results.suggestions.map(suggestion => `
                    <div class="flex items-start space-x-2">
                      <div class="text-amber-500 text-xs mt-0.5">•</div>
                      <p class="text-xs text-amber-700 leading-relaxed">${suggestion}</p>
                    </div>
                  `).join('')}
                </div>
              ` : ''}
            </div>
          </div>
        </div>
      ` : ''}

      <!-- 분석 요약 카드 -->
      <div class="bg-gradient-to-r from-purple-50 to-pink-50 rounded-xl p-4 mb-4">
        <div class="flex items-center justify-between mb-3">
          <h4 class="text-base font-bold text-gray-800 flex items-center space-x-2">
            <span>📈</span>
            <span>분석 요약</span>
            ${results.partialAnalysis ? '<span class="text-xs text-amber-600">(부분 분석)</span>' : ''}
          </h4>
          ${results.ocrConfidence ? `
            <div class="text-xs px-2 py-1 rounded-full ${
              results.ocrConfidence > 0.8 ? 'bg-green-100 text-green-700' :
              results.ocrConfidence > 0.6 ? 'bg-yellow-100 text-yellow-700' :
              'bg-orange-100 text-orange-700'
            }">
              인식률 ${Math.round(results.ocrConfidence * 100)}%
            </div>
          ` : ''}
        </div>
        <div class="grid grid-cols-2 gap-3">
          <div class="bg-white rounded-lg p-3 text-center shadow-sm">
            <div class="text-2xl font-bold text-blue-600 mb-1">${analysis.totalIngredients}</div>
            <div class="text-xs text-gray-600">총 성분</div>
          </div>
          <div class="bg-white rounded-lg p-3 text-center shadow-sm">
            <div class="text-2xl font-bold text-green-600 mb-1">${analysis.safeIngredients}</div>
            <div class="text-xs text-gray-600">안전 성분</div>
          </div>
          <div class="bg-white rounded-lg p-3 text-center shadow-sm">
            <div class="text-2xl font-bold text-yellow-600 mb-1">${analysis.cautionIngredients}</div>
            <div class="text-xs text-gray-600">주의 성분</div>
          </div>
          <div class="bg-white rounded-lg p-3 text-center shadow-sm">
            <div class="text-2xl font-bold text-red-600 mb-1">${analysis.harmfulIngredients + (analysis.unknownIngredients || 0)}</div>
            <div class="text-xs text-gray-600">확인 필요</div>
          </div>
        </div>
      </div>

      ${safeIngredients.length > 0 ? `
      <div class="bg-white rounded-xl p-4 mb-4 shadow-sm">
        <h4 class="text-base font-bold text-green-700 mb-3 flex items-center space-x-2">
          <span>✅</span>
          <span>안전한 성분 (${safeIngredients.length}개)</span>
        </h4>
        <div class="space-y-3">
          ${safeIngredients.map(ingredient => `
            <div class="bg-green-50 border border-green-100 rounded-lg p-3">
              <div class="flex items-start justify-between mb-2">
                <h5 class="font-semibold text-green-800 text-sm">${ingredient.name}</h5>
                <span class="px-2 py-1 rounded-full text-xs bg-green-100 text-green-700 flex-shrink-0 ml-2">
                  안전
                </span>
              </div>
              <p class="text-green-700 text-xs leading-relaxed">${ingredient.description}</p>
              ${ingredient.benefits && ingredient.benefits.length > 0 ? `
                <div class="mt-2 flex flex-wrap gap-1">
                  ${ingredient.benefits.map(benefit => `
                    <span class="px-2 py-0.5 bg-green-100 text-green-600 rounded-full text-xs">${benefit}</span>
                  `).join('')}
                </div>
              ` : ''}
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

      <!-- 액션 버튼 -->
      <div class="bg-white rounded-xl p-4 mb-4 shadow-sm">
        <div class="space-y-3">
          <button onclick="skinAnalyzer.saveAnalysis()" 
                  class="w-full bg-gradient-to-r from-purple-500 to-pink-500 text-white py-3 px-6 rounded-xl font-semibold hover:shadow-lg transition-all transform hover:scale-105 active:scale-95">
            💾 분석결과 저장하기
          </button>
          <button onclick="skinAnalyzer.reset()" 
                  class="w-full bg-gray-100 text-gray-700 py-3 px-6 rounded-xl font-medium hover:bg-gray-200 transition-colors">
            🔄 새로운 분석하기
          </button>
        </div>
      </div>

      <!-- 인식 품질 안내 -->
      ${results.ocrConfidence && results.ocrConfidence < 0.7 ? `
      <div class="bg-blue-50 border border-blue-200 rounded-xl p-3 mb-4">
        <div class="flex items-start space-x-2">
          <div class="text-blue-600 text-sm">💡</div>
          <div class="text-xs text-blue-700 leading-relaxed">
            <strong>인식 품질 안내:</strong> 일부 글씨가 명확하지 않아 완전하지 않을 수 있습니다. 
            더 정확한 분석을 원하시면 밝은 곳에서 성분표를 다시 촬영해보세요.
            <button onclick="skinAnalyzer.retakePhoto()" class="underline ml-1 hover:text-blue-800">
              다시 촬영하기
            </button>
          </div>
        </div>
      </div>
      ` : ''}

      <!-- 면책 조항 -->
      <div class="bg-amber-50 border border-amber-200 rounded-xl p-3 mb-4">
        <div class="flex items-start space-x-2">
          <div class="text-amber-600 text-sm">⚠️</div>
          <div class="text-xs text-amber-700 leading-relaxed">
            <strong>안내사항:</strong> 이 분석 결과는 일반적인 참고용이며, 개인의 피부 상태나 알레르기 반응은 다를 수 있습니다. 
            민감한 피부이거나 특이 반응이 있으신 분은 전문의와 상담하세요.
          </div>
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
      const element = document.getElementById(sectionId);
      if (element) {
        element.classList.add('hidden');
      }
    });

    // 동적 생성된 error-section도 제거
    const errorSection = document.getElementById('error-section');
    if (errorSection) {
      errorSection.remove();
    }
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

  // 네비게이션 업데이트
  updateNavigation(activeTab) {
    const navButtons = ['nav-home', 'nav-camera', 'nav-history', 'nav-info'];
    
    navButtons.forEach(navId => {
      const button = document.getElementById(navId);
      if (button) {
        button.classList.remove('nav-active', 'text-purple-600', 'bg-purple-50');
        button.classList.add('text-gray-400');
      }
    });

    const activeButton = document.getElementById(`nav-${activeTab}`);
    if (activeButton) {
      activeButton.classList.remove('text-gray-400');
      activeButton.classList.add('nav-active', 'text-purple-600', 'bg-purple-50');
    }
  }

  // 메인 페이지 표시
  showMainPage() {
    this.hideAllSections();
    // 메인 페이지는 기본적으로 표시되므로 특별한 처리 없음
  }

  // 정보 페이지 표시
  showInfoPage() {
    this.hideAllSections();
    
    // 정보 모달 생성
    const infoModal = document.createElement('div');
    infoModal.className = 'fixed inset-0 bg-black/50 z-50 flex items-center justify-center p-4';
    infoModal.innerHTML = `
      <div class="bg-white rounded-2xl max-w-sm w-full p-6 shadow-2xl">
        <!-- 헤더 -->
        <div class="text-center mb-6">
          <div class="w-16 h-16 mx-auto mb-3 bg-gradient-to-r from-purple-100 to-pink-100 rounded-full flex items-center justify-center">
            <svg width="32" height="32" viewBox="0 0 32 32">
              <circle cx="16" cy="16" r="15" fill="url(#infoLogoGradient)" stroke="#ffffff" stroke-width="1"/>
              <rect x="11" y="8" width="10" height="16" rx="2" fill="#ffffff" opacity="0.9"/>
              <rect x="12" y="9" width="8" height="14" rx="1" fill="url(#infoContainerGradient)"/>
              <path d="M13.5 15l2 2 3-4" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
              <defs>
                <linearGradient id="infoLogoGradient" x1="0%" y1="0%" x2="100%" y2="100%">
                  <stop offset="0%" stop-color="#9333ea"/>
                  <stop offset="100%" stop-color="#ec4899"/>
                </linearGradient>
                <linearGradient id="infoContainerGradient" x1="0%" y1="0%" x2="100%" y2="100%">
                  <stop offset="0%" stop-color="#a855f7"/>
                  <stop offset="100%" stop-color="#f472b6"/>
                </linearGradient>
              </defs>
            </svg>
          </div>
          <h3 class="text-xl font-bold bg-gradient-to-r from-purple-600 to-pink-600 bg-clip-text text-transparent">셀픽</h3>
          <p class="text-sm text-gray-600">"화장품도 스스로 픽!"</p>
        </div>

        <!-- 앱 정보 -->
        <div class="space-y-4 mb-6">
          <div class="bg-gradient-to-r from-purple-50 to-pink-50 rounded-lg p-4">
            <h4 class="text-sm font-bold text-gray-800 mb-2 flex items-center space-x-2">
              <span>📱</span>
              <span>셀픽 - AI 성분 분석기 v1.0</span>
            </h4>
            <p class="text-xs text-gray-600 leading-relaxed">화장품 성분표를 촬영하면 AI가 안전성을 분석하고 맞춤 제품을 추천해드립니다.</p>
          </div>

          <!-- 주요 기능 -->
          <div class="space-y-2">
            <div class="flex items-center space-x-3 text-sm">
              <span class="text-purple-500">🧴</span>
              <span class="text-gray-700">화장품 성분표 AI 분석</span>
            </div>
            <div class="flex items-center space-x-3 text-sm">
              <span class="text-pink-500">🎯</span>
              <span class="text-gray-700">피부타입별 맞춤 추천</span>
            </div>
            <div class="flex items-center space-x-3 text-sm">
              <span class="text-blue-500">🛍️</span>
              <span class="text-gray-700">제품 추천 및 가격 비교</span>
            </div>
            <div class="flex items-center space-x-3 text-sm">
              <span class="text-green-500">🗺️</span>
              <span class="text-gray-700">근처 피부관리실 찾기</span>
            </div>
          </div>

          <!-- 문의 정보 -->
          <div class="bg-gray-50 rounded-lg p-4 border border-gray-100">
            <h4 class="text-sm font-bold text-gray-800 mb-2 flex items-center space-x-2">
              <span>💬</span>
              <span>문의 및 지원</span>
            </h4>
            <div class="flex items-center justify-between">
              <span class="text-xs text-gray-600">이메일</span>
              <div class="flex items-center space-x-2">
                <span class="text-sm font-medium text-purple-600">utuber@kakao.com</span>
                <button onclick="navigator.clipboard?.writeText('utuber@kakao.com')" class="text-xs bg-purple-100 text-purple-600 px-2 py-1 rounded hover:bg-purple-200 transition-colors">
                  복사
                </button>
              </div>
            </div>
          </div>
        </div>

        <!-- 닫기 버튼 -->
        <button id="close-info-modal" class="w-full bg-gradient-to-r from-purple-500 to-pink-500 text-white py-3 rounded-xl font-medium hover:shadow-lg transition-all">
          확인
        </button>
      </div>
    `;

    document.body.appendChild(infoModal);

    // 닫기 이벤트
    const closeBtn = infoModal.querySelector('#close-info-modal');
    const closeModal = () => {
      infoModal.remove();
      this.showHomePage();
    };

    closeBtn?.addEventListener('click', closeModal);
    infoModal.addEventListener('click', (e) => {
      if (e.target === infoModal) {
        closeModal();
      }
    });

    // 이메일 복사 완료 메시지
    infoModal.addEventListener('click', (e) => {
      if (e.target?.textContent === '복사') {
        navigator.clipboard?.writeText('utuber@kakao.com').then(() => {
          e.target.textContent = '복사됨!';
          e.target.classList.add('bg-green-100', 'text-green-600');
          e.target.classList.remove('bg-purple-100', 'text-purple-600');
          setTimeout(() => {
            e.target.textContent = '복사';
            e.target.classList.remove('bg-green-100', 'text-green-600');
            e.target.classList.add('bg-purple-100', 'text-purple-600');
          }, 2000);
        });
      }
    });
  }

  // 터치 제스처 초기화
  initTouchGestures() {
    let touchStartY = 0;
    let touchEndY = 0;

    // 스와이프 제스처 감지
    document.addEventListener('touchstart', (e) => {
      touchStartY = e.changedTouches[0].screenY;
    }, { passive: true });

    document.addEventListener('touchend', (e) => {
      touchEndY = e.changedTouches[0].screenY;
      this.handleSwipeGesture();
    }, { passive: true });

    // 더블 탭으로 카메라 전환 (카메라 모드에서만)
    let lastTapTime = 0;
    document.getElementById('video')?.addEventListener('touchend', (e) => {
      const currentTime = new Date().getTime();
      const tapLength = currentTime - lastTapTime;
      
      if (tapLength < 500 && tapLength > 0) {
        // 더블 탭 감지
        this.toggleCamera();
        e.preventDefault();
      }
      lastTapTime = currentTime;
    });
  }

  // 스와이프 제스처 처리
  handleSwipeGesture() {
    const swipeThreshold = 100;
    const diff = touchStartY - touchEndY;

    // 위로 스와이프 (Pull up)
    if (diff > swipeThreshold) {
      // 결과 화면에서 위로 스와이프 시 상세 정보 표시
      if (!document.getElementById('results-section').classList.contains('hidden')) {
        this.showDetailedResults();
      }
    }
    
    // 아래로 스와이프 (Pull down)
    if (diff < -swipeThreshold) {
      // 카메라 화면에서 아래로 스와이프 시 카메라 닫기
      if (!document.getElementById('camera-section').classList.contains('hidden')) {
        this.stopCamera();
      }
    }
  }

  // 상세 결과 표시 (스와이프 업 시)
  showDetailedResults() {
    // 간단한 피드백 제공
    const resultsSection = document.getElementById('results-section');
    if (resultsSection && !resultsSection.classList.contains('hidden')) {
      // 부드러운 스크롤로 결과 상단으로 이동
      resultsSection.scrollIntoView({ 
        behavior: 'smooth', 
        block: 'start' 
      });
      
      // 햅틱 피드백 (지원되는 경우)
      if (navigator.vibrate) {
        navigator.vibrate(50);
      }
    }
  }

  reset() {
    this.selectedFile = null;
    this.lastAnalysisResults = null;
    this.stopCamera();
    this.hideAllSections();
    this.updateNavigation('home');
    
    // 파일 입력 리셋
    const fileInput = document.getElementById('file-input');
    if (fileInput) fileInput.value = '';
  }
}

// 앱 초기화
const skinAnalyzer = new SkinAnalyzer();

// 전역 함수로 노출 (HTML에서 직접 호출용)
window.skinAnalyzer = skinAnalyzer;
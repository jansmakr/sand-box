// 케어조아 - 프론트엔드 JavaScript
console.log('케어조아 시스템 로드됨');

// regionData는 index.tsx의 인라인 스크립트에서 이미 선언되어 있음

// DOM Ready 이벤트 처리 (성능 최적화)
if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', initApp);
} else {
  // DOM이 이미 로드되었으면 즉시 실행
  initApp();
}

// 앱 초기화 함수
function initApp() {
  // requestAnimationFrame을 사용하여 DOM 조작 최적화
  requestAnimationFrame(() => {
    initQuickEstimate();
    initKakaoButton();
    initReviews();
    initScrollEffects();
  });
}

// 간편 견적 폼 초기화
function initQuickEstimate() {
  const quickSidoSelect = document.getElementById('quickSido');
  const quickSigunguSelect = document.getElementById('quickSigungu');
  const quickEstimateForm = document.getElementById('quickEstimateForm');
  
  if (!quickSidoSelect || !quickSigunguSelect || !quickEstimateForm) return;

  // 시/도 선택 이벤트 핸들러 (캐스케이딩 드롭다운)
  quickSidoSelect.addEventListener('change', function() {
    const selectedSido = this.value;
    
    // 시/군/구 선택 초기화
    quickSigunguSelect.innerHTML = '<option value="">먼저 시/도를 선택하세요</option>';
    quickSigunguSelect.disabled = true;
    
    // 시/도가 선택된 경우
    if (selectedSido && regionData[selectedSido]) {
      // DocumentFragment로 배치 추가 (성능 최적화)
      const fragment = document.createDocumentFragment();
      const defaultOption = document.createElement('option');
      defaultOption.value = '';
      defaultOption.textContent = '시/군/구를 선택하세요';
      fragment.appendChild(defaultOption);
      
      // 시/군/구 옵션 추가
      regionData[selectedSido].forEach(sigungu => {
        const option = document.createElement('option');
        option.value = sigungu;
        option.textContent = sigungu;
        fragment.appendChild(option);
      });
      
      // 한 번에 DOM에 추가 (reflow 최소화)
      quickSigunguSelect.appendChild(fragment);
      quickSigunguSelect.disabled = false;
    }
  });

  // 폼 제출 핸들러
  quickEstimateForm.addEventListener('submit', async function(e) {
    e.preventDefault();
    
    const submitBtn = this.querySelector('button[type="submit"]');
    const originalText = submitBtn.innerHTML;
    
    // 버튼 상태 변경
    submitBtn.disabled = true;
    submitBtn.innerHTML = '<i class="fas fa-spinner fa-spin mr-2"></i>전송 중...';
    
    try {
      const formData = {
        name: document.getElementById('quickName').value.trim(),
        phone: document.getElementById('quickPhone').value.trim(),
        sido: document.getElementById('quickSido').value,
        sigungu: document.getElementById('quickSigungu').value,
        care_type: document.getElementById('quickCareType').value,
        message: document.getElementById('quickMessage').value.trim() || ''
      };
      
      // 유효성 검사
      if (!formData.name || !formData.phone || !formData.sido || !formData.sigungu || !formData.care_type) {
        alert('모든 필수 항목을 입력해주세요.');
        return;
      }
      
      // API 호출
      const response = await fetch('/api/estimates', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(formData)
      });
      
      if (response.ok) {
        alert('견적 요청이 접수되었습니다!\n곧 연락드리겠습니다.');
        this.reset();
        // 시/군/구 초기화
        quickSigunguSelect.innerHTML = '<option value="">먼저 시/도를 선택하세요</option>';
        quickSigunguSelect.disabled = true;
        
        // Google Analytics 이벤트 트래킹
        if (window.trackEvent) {
          window.trackEvent('quick_estimate', {
            care_type: formData.care_type,
            region: `${formData.sido} ${formData.sigungu}`
          });
        }
      } else {
        const errorData = await response.json();
        alert('견적 요청 중 오류가 발생했습니다.\n' + (errorData.error || '잠시 후 다시 시도해주세요.'));
      }
    } catch (error) {
      console.error('견적 요청 오류:', error);
      alert('네트워크 오류가 발생했습니다.\n인터넷 연결을 확인하고 다시 시도해주세요.');
    } finally {
      submitBtn.disabled = false;
      submitBtn.innerHTML = originalText;
    }
  });
}

// 카카오톡 플로팅 버튼 초기화
function initKakaoButton() {
  const kakaoBtn = document.getElementById('kakaoFloatingBtn');
  if (!kakaoBtn) return;
  
  kakaoBtn.addEventListener('click', function() {
    // 카카오톡 채널 URL (실제 채널 URL로 변경 필요)
    const kakaoChannelUrl = 'http://pf.kakao.com/_TxaxfmG'; // 예시 URL
    window.open(kakaoChannelUrl, '_blank', 'noopener,noreferrer');
    
    // Google Analytics 이벤트 트래킹
    if (window.trackEvent) {
      window.trackEvent('kakao_contact', {
        button_location: 'floating'
      });
    }
  });
}

// 고객 후기 초기화
function initReviews() {
  // 후기 데이터는 서버에서 로드할 수 있음
  // 현재는 정적 HTML로 표시됨
}

// 스크롤 효과 초기화 (성능 최적화)
function initScrollEffects() {
  let ticking = false;
  
  // Throttle scroll event using requestAnimationFrame
  window.addEventListener('scroll', function() {
    if (!ticking) {
      requestAnimationFrame(() => {
        handleScroll();
        ticking = false;
      });
      ticking = true;
    }
  }, { passive: true }); // passive 옵션으로 성능 향상
}

// 스크롤 이벤트 핸들러
function handleScroll() {
  const scrollTop = window.pageYOffset || document.documentElement.scrollTop;
  
  // 간단한 스크롤 효과 (예: 헤더 변경 등)
  // 필요한 경우 추가 구현
}

// 유틸리티 함수: 디바운스 (성능 최적화용)
function debounce(func, wait) {
  let timeout;
  return function executedFunction(...args) {
    const later = () => {
      clearTimeout(timeout);
      func(...args);
    };
    clearTimeout(timeout);
    timeout = setTimeout(later, wait);
  };
}

// 유틸리티 함수: 쓰로틀 (성능 최적화용)
function throttle(func, limit) {
  let inThrottle;
  return function(...args) {
    if (!inThrottle) {
      func.apply(this, args);
      inThrottle = true;
      setTimeout(() => inThrottle = false, limit);
    }
  };
}

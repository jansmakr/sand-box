// 케어조아 - 프론트엔드 JavaScript
console.log('케어조아 시스템 로드됨');

// 지역 데이터 (시/도별 시/군/구)
const regionData = {
  "서울특별시": ["강남구", "강동구", "강북구", "강서구", "관악구", "광진구", "구로구", "금천구", "노원구", "도봉구", "동대문구", "동작구", "마포구", "서대문구", "서초구", "성동구", "성북구", "송파구", "양천구", "영등포구", "용산구", "은평구", "종로구", "중구", "중랑구"],
  "부산광역시": ["강서구", "금정구", "기장군", "남구", "동구", "동래구", "부산진구", "북구", "사상구", "사하구", "서구", "수영구", "연제구", "영도구", "중구", "해운대구"],
  "대구광역시": ["남구", "달서구", "달성군", "동구", "북구", "서구", "수성구", "중구"],
  "인천광역시": ["강화군", "계양구", "남동구", "동구", "미추홀구", "부평구", "서구", "연수구", "옹진군", "중구"],
  "광주광역시": ["광산구", "남구", "동구", "북구", "서구"],
  "대전광역시": ["대덕구", "동구", "서구", "유성구", "중구"],
  "울산광역시": ["남구", "동구", "북구", "울주군", "중구"],
  "세종특별자치시": ["세종시"],
  "경기도": ["가평군", "고양시", "과천시", "광명시", "광주시", "구리시", "군포시", "김포시", "남양주시", "동두천시", "부천시", "성남시", "수원시", "시흥시", "안산시", "안성시", "안양시", "양주시", "양평군", "여주시", "연천군", "오산시", "용인시", "의왕시", "의정부시", "이천시", "파주시", "평택시", "포천시", "하남시", "화성시"],
  "강원도": ["강릉시", "고성군", "동해시", "삼척시", "속초시", "양구군", "양양군", "영월군", "원주시", "인제군", "정선군", "철원군", "춘천시", "태백시", "평창군", "홍천군", "화천군", "횡성군"],
  "충청북도": ["괴산군", "단양군", "보은군", "영동군", "옥천군", "음성군", "제천시", "증평군", "진천군", "청주시", "충주시"],
  "충청남도": ["계룡시", "공주시", "금산군", "논산시", "당진시", "보령시", "부여군", "서산시", "서천군", "아산시", "예산군", "천안시", "청양군", "태안군", "홍성군"],
  "전라북도": ["고창군", "군산시", "김제시", "남원시", "무주군", "부안군", "순창군", "완주군", "익산시", "임실군", "장수군", "전주시", "정읍시", "진안군"],
  "전라남도": ["강진군", "고흥군", "곡성군", "광양시", "구례군", "나주시", "담양군", "목포시", "무안군", "보성군", "순천시", "신안군", "여수시", "영광군", "영암군", "완도군", "장성군", "장흥군", "진도군", "함평군", "해남군", "화순군"],
  "경상북도": ["경산시", "경주시", "고령군", "구미시", "군위군", "김천시", "문경시", "봉화군", "상주시", "성주군", "안동시", "영덕군", "영양군", "영주시", "영천시", "예천군", "울릉군", "울진군", "의성군", "청도군", "청송군", "칠곡군", "포항시"],
  "경상남도": ["거제시", "거창군", "고성군", "김해시", "남해군", "밀양시", "사천시", "산청군", "양산시", "의령군", "진주시", "창녕군", "창원시", "통영시", "하동군", "함안군", "함양군", "합천군"],
  "제주특별자치도": ["서귀포시", "제주시"]
};

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

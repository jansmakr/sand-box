import { Hono } from 'hono';

const app = new Hono();

// 간편견적 페이지
app.get('/quote-simple', (c) => {
  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>간편견적 신청 - 케어조아</title>
      <script src="https://cdn.tailwindcss.com"></script>
      <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet">
    </head>
    <body class="bg-gray-50">
      <div class="container mx-auto px-4 py-8 max-w-2xl">
        <!-- 헤더 -->
        <div class="bg-white rounded-lg shadow-sm p-6 mb-6">
          <div class="flex items-center justify-between mb-4">
            <h1 class="text-2xl font-bold text-gray-800">
              <i class="fas fa-calculator text-blue-600 mr-2"></i>
              간편견적 신청
            </h1>
            <a href="/" class="text-blue-600 hover:text-blue-700">
              <i class="fas fa-home mr-1"></i>홈으로
            </a>
          </div>
          <p class="text-gray-600">5분 이내 빠른 견적 신청 (필수 정보만 입력)</p>
        </div>

        <!-- 견적 폼 -->
        <form id="simpleQuoteForm" class="bg-white rounded-lg shadow-sm p-6">
          <!-- 1. 지역 선택 -->
          <div class="mb-6">
            <label class="block text-sm font-bold text-gray-700 mb-2">
              <i class="fas fa-map-marker-alt text-red-500 mr-1"></i>
              지역 선택 <span class="text-red-500">*</span>
            </label>
            <div class="grid grid-cols-2 gap-4">
              <div>
                <select id="sido" name="sido" required
                  class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent">
                  <option value="">시/도 선택</option>
                  <option value="서울특별시">서울특별시</option>
                  <option value="부산광역시">부산광역시</option>
                  <option value="대구광역시">대구광역시</option>
                  <option value="인천광역시">인천광역시</option>
                  <option value="광주광역시">광주광역시</option>
                  <option value="대전광역시">대전광역시</option>
                  <option value="울산광역시">울산광역시</option>
                  <option value="세종특별자치시">세종특별자치시</option>
                  <option value="경기도">경기도</option>
                  <option value="강원도">강원도</option>
                  <option value="충청북도">충청북도</option>
                  <option value="충청남도">충청남도</option>
                  <option value="전라북도">전라북도</option>
                  <option value="전라남도">전라남도</option>
                  <option value="경상북도">경상북도</option>
                  <option value="경상남도">경상남도</option>
                  <option value="제주특별자치도">제주특별자치도</option>
                </select>
              </div>
              <div>
                <select id="sigungu" name="sigungu" required
                  class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent">
                  <option value="">시/군/구 선택</option>
                </select>
              </div>
            </div>
          </div>

          <!-- 2. 시설 종류 -->
          <div class="mb-6">
            <label class="block text-sm font-bold text-gray-700 mb-2">
              <i class="fas fa-building text-blue-500 mr-1"></i>
              이용 희망 시설 <span class="text-red-500">*</span>
            </label>
            <div class="grid grid-cols-2 gap-3">
              <label class="flex items-center p-4 border-2 border-gray-200 rounded-lg cursor-pointer hover:border-blue-500 transition">
                <input type="radio" name="facilityType" value="요양원" required class="mr-3">
                <div>
                  <div class="font-semibold text-gray-800">요양원</div>
                  <div class="text-xs text-gray-500">24시간 입소</div>
                </div>
              </label>
              <label class="flex items-center p-4 border-2 border-gray-200 rounded-lg cursor-pointer hover:border-blue-500 transition">
                <input type="radio" name="facilityType" value="요양병원" required class="mr-3">
                <div>
                  <div class="font-semibold text-gray-800">요양병원</div>
                  <div class="text-xs text-gray-500">의료 집중 케어</div>
                </div>
              </label>
              <label class="flex items-center p-4 border-2 border-gray-200 rounded-lg cursor-pointer hover:border-blue-500 transition">
                <input type="radio" name="facilityType" value="주야간보호센터" required class="mr-3">
                <div>
                  <div class="font-semibold text-gray-800">주야간보호</div>
                  <div class="text-xs text-gray-500">낮/밤 단기 이용</div>
                </div>
              </label>
              <label class="flex items-center p-4 border-2 border-gray-200 rounded-lg cursor-pointer hover:border-blue-500 transition">
                <input type="radio" name="facilityType" value="재가복지센터" required class="mr-3">
                <div>
                  <div class="font-semibold text-gray-800">재가복지</div>
                  <div class="text-xs text-gray-500">방문 요양/간호</div>
                </div>
              </label>
            </div>
          </div>

          <!-- 3. 신청자 정보 -->
          <div class="mb-6">
            <label class="block text-sm font-bold text-gray-700 mb-2">
              <i class="fas fa-user text-green-500 mr-1"></i>
              신청자 성함 <span class="text-red-500">*</span>
            </label>
            <input type="text" name="applicantName" required
              placeholder="홍길동"
              class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent">
          </div>

          <div class="mb-6">
            <label class="block text-sm font-bold text-gray-700 mb-2">
              <i class="fas fa-phone text-green-500 mr-1"></i>
              연락처 <span class="text-red-500">*</span>
            </label>
            <input type="tel" name="phone" required
              placeholder="010-0000-0000"
              pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}"
              class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent">
          </div>

          <!-- 4. 돌봄 대상자 정보 -->
          <div class="mb-6">
            <label class="block text-sm font-bold text-gray-700 mb-2">
              <i class="fas fa-heart text-red-500 mr-1"></i>
              돌봄 대상자
            </label>
            <div class="grid grid-cols-2 gap-4">
              <div>
                <label class="block text-xs text-gray-600 mb-1">성별</label>
                <select name="patientGender" required
                  class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500">
                  <option value="">선택</option>
                  <option value="남">남</option>
                  <option value="여">여</option>
                </select>
              </div>
              <div>
                <label class="block text-xs text-gray-600 mb-1">연령대</label>
                <select name="patientAge" required
                  class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500">
                  <option value="">선택</option>
                  <option value="60대">60대</option>
                  <option value="70대">70대</option>
                  <option value="80대">80대</option>
                  <option value="90대 이상">90대 이상</option>
                </select>
              </div>
            </div>
          </div>

          <!-- 5. 장기요양등급 -->
          <div class="mb-6">
            <label class="block text-sm font-bold text-gray-700 mb-2">
              <i class="fas fa-certificate text-purple-500 mr-1"></i>
              장기요양등급
            </label>
            <select name="careGrade"
              class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500">
              <option value="">등급 선택 (선택사항)</option>
              <option value="1등급">1등급 (95점 이상)</option>
              <option value="2등급">2등급 (75-94점)</option>
              <option value="3등급">3등급 (60-74점)</option>
              <option value="4등급">4등급 (51-59점)</option>
              <option value="5등급">5등급 (45-50점)</option>
              <option value="인지지원등급">인지지원등급</option>
              <option value="등급신청예정">등급신청예정</option>
            </select>
          </div>

          <!-- 6. 간단한 요청사항 -->
          <div class="mb-6">
            <label class="block text-sm font-bold text-gray-700 mb-2">
              <i class="fas fa-comment text-yellow-500 mr-1"></i>
              간단한 요청사항
            </label>
            <textarea name="additionalNotes" rows="3"
              placeholder="예: 치매 증상 있음, 식사 보조 필요 등"
              class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent resize-none"></textarea>
          </div>

          <!-- 개인정보 동의 -->
          <div class="mb-6">
            <label class="flex items-start">
              <input type="checkbox" name="privacyAgree" required class="mt-1 mr-2">
              <span class="text-sm text-gray-600">
                개인정보 수집 및 이용에 동의합니다. (필수)
                <a href="/privacy" class="text-blue-600 underline ml-1">상세보기</a>
              </span>
            </label>
          </div>

          <!-- 제출 버튼 -->
          <div class="flex gap-3">
            <button type="submit"
              class="flex-1 bg-blue-600 text-white py-4 rounded-lg font-bold hover:bg-blue-700 transition shadow-md">
              <i class="fas fa-paper-plane mr-2"></i>
              견적 신청하기
            </button>
            <a href="/quote-request"
              class="px-6 py-4 border-2 border-gray-300 text-gray-700 rounded-lg font-bold hover:bg-gray-50 transition text-center">
              상세 견적
            </a>
          </div>
        </form>

        <!-- 안내 메시지 -->
        <div class="mt-6 bg-blue-50 border-l-4 border-blue-500 p-4 rounded">
          <p class="text-sm text-blue-700">
            <i class="fas fa-info-circle mr-2"></i>
            <strong>견적 신청 후</strong> 선택하신 지역의 등록된 시설에서 견적서를 받으실 수 있습니다.
          </p>
        </div>
      </div>

      <script src="https://cdn.jsdelivr.net/npm/axios@1.6.0/dist/axios.min.js"></script>
      <script>
        // 시도별 시군구 데이터
        const sigunguData = {
          '서울특별시': ['강남구', '강동구', '강북구', '강서구', '관악구', '광진구', '구로구', '금천구', '노원구', '도봉구', '동대문구', '동작구', '마포구', '서대문구', '서초구', '성동구', '성북구', '송파구', '양천구', '영등포구', '용산구', '은평구', '종로구', '중구', '중랑구'],
          '부산광역시': ['강서구', '금정구', '기장군', '남구', '동구', '동래구', '부산진구', '북구', '사상구', '사하구', '서구', '수영구', '연제구', '영도구', '중구', '해운대구'],
          '대구광역시': ['남구', '달서구', '달성군', '동구', '북구', '서구', '수성구', '중구'],
          '인천광역시': ['강화군', '계양구', '남동구', '동구', '미추홀구', '부평구', '서구', '연수구', '옹진군', '중구'],
          '광주광역시': ['광산구', '남구', '동구', '북구', '서구'],
          '대전광역시': ['대덕구', '동구', '서구', '유성구', '중구'],
          '울산광역시': ['남구', '동구', '북구', '울주군', '중구'],
          '세종특별자치시': ['세종시'],
          '경기도': ['가평군', '고양시', '과천시', '광명시', '광주시', '구리시', '군포시', '김포시', '남양주시', '동두천시', '부천시', '성남시', '수원시', '시흥시', '안산시', '안성시', '안양시', '양주시', '양평군', '여주시', '연천군', '오산시', '용인시', '의왕시', '의정부시', '이천시', '파주시', '평택시', '포천시', '하남시', '화성시'],
          '강원도': ['강릉시', '고성군', '동해시', '삼척시', '속초시', '양구군', '양양군', '영월군', '원주시', '인제군', '정선군', '철원군', '춘천시', '태백시', '평창군', '홍천군', '화천군', '횡성군'],
          '충청북도': ['괴산군', '단양군', '보은군', '영동군', '옥천군', '음성군', '제천시', '증평군', '진천군', '청주시', '충주시'],
          '충청남도': ['계룡시', '공주시', '금산군', '논산시', '당진시', '보령시', '부여군', '서산시', '서천군', '아산시', '예산군', '천안시', '청양군', '태안군', '홍성군'],
          '전라북도': ['고창군', '군산시', '김제시', '남원시', '무주군', '부안군', '순창군', '완주군', '익산시', '임실군', '장수군', '전주시', '정읍시', '진안군'],
          '전라남도': ['강진군', '고흥군', '곡성군', '광양시', '구례군', '나주시', '담양군', '목포시', '무안군', '보성군', '순천시', '신안군', '여수시', '영광군', '영암군', '완도군', '장성군', '장흥군', '진도군', '함평군', '해남군', '화순군'],
          '경상북도': ['경산시', '경주시', '고령군', '구미시', '군위군', '김천시', '문경시', '봉화군', '상주시', '성주군', '안동시', '영덕군', '영양군', '영주시', '영천시', '예천군', '울릉군', '울진군', '의성군', '청도군', '청송군', '칠곡군', '포항시'],
          '경상남도': ['거제시', '거창군', '고성군', '김해시', '남해군', '밀양시', '사천시', '산청군', '양산시', '의령군', '진주시', '창녕군', '창원시', '통영시', '하동군', '함안군', '함양군', '합천군'],
          '제주특별자치도': ['서귀포시', '제주시']
        };

        // 시도 변경 시 시군구 업데이트
        document.getElementById('sido').addEventListener('change', function() {
          const sido = this.value;
          const sigunguSelect = document.getElementById('sigungu');
          
          sigunguSelect.innerHTML = '<option value="">시/군/구 선택</option>';
          
          if (sido && sigunguData[sido]) {
            sigunguData[sido].forEach(sigungu => {
              const option = document.createElement('option');
              option.value = sigungu;
              option.textContent = sigungu;
              sigunguSelect.appendChild(option);
            });
          }
        });

        // 폼 제출
        document.getElementById('simpleQuoteForm').addEventListener('submit', async function(e) {
          e.preventDefault();
          
          const formData = new FormData(this);
          const data = Object.fromEntries(formData.entries());
          
          try {
            const response = await axios.post('/api/quote-request', {
              ...data,
              quoteType: 'simple',
              createdAt: new Date().toISOString()
            });
            
            if (response.data.success) {
              alert('✅ 견적 신청이 완료되었습니다!\\n\\n선택하신 지역의 시설에서 곧 연락드릴 예정입니다.');
              window.location.href = '/';
            }
          } catch (error) {
            console.error('Error:', error);
            alert('❌ 견적 신청 중 오류가 발생했습니다. 다시 시도해주세요.');
          }
        });

        // 전화번호 자동 하이픈
        document.querySelector('input[name="phone"]').addEventListener('input', function(e) {
          let value = e.target.value.replace(/[^0-9]/g, '');
          if (value.length > 3 && value.length <= 7) {
            value = value.slice(0, 3) + '-' + value.slice(3);
          } else if (value.length > 7) {
            value = value.slice(0, 3) + '-' + value.slice(3, 7) + '-' + value.slice(7, 11);
          }
          e.target.value = value;
        });
      </script>
    </body>
    </html>
  `);
});

export default app;

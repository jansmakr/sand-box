import { Hono } from 'hono'
import { renderer } from './renderer'
import { cors } from 'hono/cors'
import { serveStatic } from 'hono/cloudflare-workers'
import { getCookie, setCookie } from 'hono/cookie'

const app = new Hono()

const ADMIN_CONFIG = { password: '5874', sessionKey: 'admin_session' }
const dataStore = { 
  partners: [] as any[], 
  familyCare: [] as any[],
  quoteRequests: [] as any[]
}
const sessions = new Set<string>()

function isAdmin(c: any) {
  const sessionId = getCookie(c, ADMIN_CONFIG.sessionKey)
  return sessionId && sessions.has(sessionId)
}

function generateSessionId() {
  return 'session_' + Date.now() + '_' + Math.random().toString(36).substring(2)
}

app.use('/api/*', cors())
app.use('/static/*', serveStatic({ root: './public' }))
app.use(renderer)

// 메인 페이지 (전체 디자인)
app.get('/', (c) => {
  return c.render(
    <div>
      {/* 헤더 */}
      <header class="bg-white shadow-sm border-b">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div class="flex justify-between items-center h-16">
            <div class="flex items-center">
              <img 
                src="https://page.gensparksite.com/v1/base64_upload/b39dca8586af1dacd6d8417554313896" 
                alt="케어조아 로고"
                class="h-8 w-auto mr-3"
              />
              <h1 class="text-2xl font-bold text-teal-600">케어조아</h1>
            </div>
            <nav class="hidden md:flex space-x-2 lg:space-x-3 text-sm">
              <a href="#partner-section" class="bg-red-600 text-white hover:bg-red-700 px-3 py-2 rounded-lg">
                <i class="fas fa-hospital mr-1"></i>상급병원담당자
              </a>
              <a href="#partner-section" class="bg-blue-600 text-white hover:bg-blue-700 px-3 py-2 rounded-lg">
                <i class="fas fa-building mr-1"></i>정부복지담당자
              </a>
              <a href="/family-care-register" class="bg-green-600 text-white hover:bg-green-700 px-3 py-2 rounded-lg">
                <i class="fas fa-heart mr-1"></i>가족간병등록
              </a>
              <a href="#partner-section" class="bg-gray-600 text-white hover:bg-gray-700 px-3 py-2 rounded-lg">
                <i class="fas fa-handshake mr-1"></i>입점신청
              </a>
              <a href="/admin" class="bg-gray-900 text-white hover:bg-black px-3 py-2 rounded-lg">
                <i class="fas fa-shield-alt mr-1"></i>관리자
              </a>
            </nav>
          </div>
        </div>
      </header>

      {/* 메인 섹션 */}
      <section class="relative bg-white">
        <div class="bg-gray-50 border-b border-gray-100 py-3 px-4">
          <div class="max-w-6xl mx-auto flex items-center justify-center">
            <div class="flex items-center text-sm text-gray-600">
              <div class="w-2 h-2 bg-orange-400 rounded-full mr-2"></div>
              <span class="font-medium">🏆 특허기반 실시간 요양 견적 및 상담 플랫폼</span>
            </div>
          </div>
        </div>

        <div class="max-w-6xl mx-auto px-4 py-8 md:py-16">
          <div class="grid grid-cols-1 lg:grid-cols-2 gap-8 lg:gap-16 items-center">
            <div class="space-y-6 md:space-y-8">
              <div>
                <h1 class="text-3xl md:text-5xl lg:text-6xl font-bold text-gray-900 mb-4 md:mb-6 leading-tight">
                  이젠 찾지 말고<br />
                  <span class="text-red-600">고르세요</span><br />
                  <span class="text-blue-600">케어조아</span>
                </h1>
                <p class="text-lg md:text-xl text-gray-600 mb-6 md:mb-8">
                  희망하는 지역의, 희망하는 시설만! 입력하면<br />
                  그 지역 <strong class="text-blue-600">모든 시설의 정보를</strong> 실시간으로 받아볼 수 있어요
                </p>
                
                <div class="bg-gradient-to-r from-blue-50 to-purple-50 border border-blue-200 rounded-xl p-4 mb-6">
                  <div class="flex items-center justify-center text-sm md:text-base">
                    <i class="fas fa-certificate text-blue-600 mr-2"></i>
                    <span class="text-blue-800 font-semibold">특허기반 실시간 요양 견적 및 상담 플랫폼</span>
                    <i class="fas fa-check-circle text-green-600 ml-2"></i>
                  </div>
                </div>
              </div>

              <div class="flex flex-col gap-3 md:gap-4 mb-8">
                <a href="https://play.google.com/store/apps/details?id=app.netlify.std_care_joa.twa" 
                   target="_blank" rel="noopener noreferrer"
                   class="flex items-center justify-center bg-blue-500 text-white py-4 px-6 rounded-xl shadow-lg hover:bg-blue-600 transition-all duration-300 transform hover:scale-105">
                  <i class="fas fa-download mr-3"></i>Android 앱 다운로드
                </a>
                <a href="/quote-request"
                   class="flex items-center justify-center bg-gradient-to-r from-teal-500 to-teal-600 text-white py-4 px-6 rounded-xl shadow-lg hover:from-teal-600 hover:to-teal-700 transition-all duration-300 transform hover:scale-105">
                  <i class="fas fa-calculator mr-3"></i>실시간 견적 플랫폼
                </a>
              </div>

              <div class="flex flex-col sm:flex-row items-start sm:items-center gap-4 sm:gap-6 text-sm md:text-base text-gray-600">
                <div class="flex items-center">
                  <i class="fas fa-users text-blue-500 mr-2"></i>
                  <span class="font-medium">월 10만+ 이용자</span>
                </div>
                <div class="flex items-center">
                  <i class="fas fa-building text-blue-500 mr-2"></i>
                  <span class="font-medium">3,000+ 등록 시설</span>
                </div>
                <div class="flex items-center">
                  <i class="fas fa-star text-yellow-500 mr-2"></i>
                  <span class="font-medium">평균 4.5점 우수</span>
                </div>
              </div>
            </div>

            <div class="relative flex justify-center">
              <img 
                src="https://page.gensparksite.com/v1/base64_upload/ede67a258a8e3e3dd08f322c99dbeda8" 
                alt="케어조아 앱"
                class="w-64 md:w-80 rounded-3xl shadow-2xl"
              />
            </div>
          </div>
        </div>
      </section>

      {/* 모바일 하단 네비게이션 */}
      <div class="fixed bottom-0 left-0 right-0 bg-white border-t border-gray-200 px-1 py-2 z-50 md:hidden">
        <div class="flex justify-around items-center">
          <a href="#partner-section" class="flex flex-col items-center py-2 bg-red-600 text-white rounded-lg px-1.5 shadow-md">
            <i class="fas fa-hospital text-base mb-1"></i>
            <span class="text-[10px] font-medium">상급병원</span>
          </a>
          <a href="#partner-section" class="flex flex-col items-center py-2 bg-blue-600 text-white rounded-lg px-1.5 shadow-md">
            <i class="fas fa-building text-base mb-1"></i>
            <span class="text-[10px] font-medium">정부복지</span>
          </a>
          <a href="/family-care-register" class="flex flex-col items-center py-2 bg-green-600 text-white rounded-lg px-1.5 shadow-md">
            <i class="fas fa-heart text-base mb-1"></i>
            <span class="text-[10px] font-medium">가족간병</span>
          </a>
          <a href="#partner-section" class="flex flex-col items-center py-2 bg-gray-600 text-white rounded-lg px-1.5 shadow-md">
            <i class="fas fa-handshake text-base mb-1"></i>
            <span class="text-[10px] font-medium">입점신청</span>
          </a>
          <a href="/admin" class="flex flex-col items-center py-2 bg-gray-900 text-white rounded-lg px-1.5 shadow-md">
            <i class="fas fa-shield-alt text-base mb-1"></i>
            <span class="text-[10px] font-medium">관리자</span>
          </a>
        </div>
      </div>

      {/* 서비스 특징 */}
      <section class="py-20">
        <div class="max-w-7xl mx-auto px-4">
          <div class="text-center mb-16">
            <h3 class="text-3xl font-bold text-gray-900 mb-4">
              <i class="fas fa-certificate text-blue-600 mr-3"></i>케어조아만의 특별함
            </h3>
          </div>
          
          <div class="grid md:grid-cols-4 gap-6">
            <div class="text-center p-6 bg-gradient-to-br from-blue-50 to-blue-100 rounded-xl">
              <div class="w-16 h-16 bg-gradient-to-r from-blue-500 to-blue-600 rounded-full flex items-center justify-center mx-auto mb-4">
                <i class="fas fa-calculator text-2xl text-white"></i>
              </div>
              <h4 class="text-xl font-bold mb-2">실시간 견적</h4>
              <p class="text-gray-600 text-sm">간단한 정보 입력으로 맞춤형 견적을 즉시 확인</p>
            </div>
            
            <div class="text-center p-6 bg-gradient-to-br from-green-50 to-green-100 rounded-xl">
              <div class="w-16 h-16 bg-gradient-to-r from-green-500 to-green-600 rounded-full flex items-center justify-center mx-auto mb-4">
                <i class="fas fa-shield-check text-2xl text-white"></i>
              </div>
              <h4 class="text-xl font-bold mb-2">검증된 시설</h4>
              <p class="text-gray-600 text-sm">정부 인증 및 전문가 방문을 통해 검증</p>
            </div>
            
            <div class="text-center p-6 bg-gradient-to-br from-purple-50 to-purple-100 rounded-xl">
              <div class="w-16 h-16 bg-gradient-to-r from-purple-500 to-purple-600 rounded-full flex items-center justify-center mx-auto mb-4">
                <i class="fas fa-user-md text-2xl text-white"></i>
              </div>
              <h4 class="text-xl font-bold mb-2">전문 상담</h4>
              <p class="text-gray-600 text-sm">자격을 보유한 전문 상담사가 24시간 상담</p>
            </div>
            
            <div class="text-center p-6 bg-gradient-to-br from-orange-50 to-orange-100 rounded-xl">
              <div class="w-16 h-16 bg-gradient-to-r from-orange-500 to-orange-600 rounded-full flex items-center justify-center mx-auto mb-4">
                <i class="fas fa-heart text-2xl text-white"></i>
              </div>
              <h4 class="text-xl font-bold mb-2">가족 같은 마음</h4>
              <p class="text-gray-600 text-sm">믿을 수 있는 곳을 찾기까지 끝까지 함께</p>
            </div>
          </div>
        </div>
      </section>

      {/* 3단계 프로세스 */}
      <section class="py-20 bg-gray-50">
        <div class="max-w-7xl mx-auto px-4">
          <div class="text-center mb-16">
            <h3 class="text-3xl font-bold text-gray-900 mb-4">
              간단한 3단계로 <span class="text-teal-600">완료!</span>
            </h3>
          </div>
          
          <div class="grid md:grid-cols-3 gap-8">
            <div class="text-center relative">
              <div class="w-20 h-20 bg-gradient-to-r from-blue-500 to-blue-600 rounded-full flex items-center justify-center mx-auto mb-6">
                <span class="text-2xl font-bold text-white">1</span>
              </div>
              <h4 class="text-xl font-bold mb-4">정보 입력</h4>
              <p class="text-gray-600">어르신의 기본 정보와 필요한 서비스를 입력</p>
            </div>
            
            <div class="text-center relative">
              <div class="w-20 h-20 bg-gradient-to-r from-green-500 to-green-600 rounded-full flex items-center justify-center mx-auto mb-6">
                <span class="text-2xl font-bold text-white">2</span>
              </div>
              <h4 class="text-xl font-bold mb-4">견적 비교</h4>
              <p class="text-gray-600">실시간으로 매칭된 시설들을 비교</p>
            </div>
            
            <div class="text-center">
              <div class="w-20 h-20 bg-gradient-to-r from-purple-500 to-purple-600 rounded-full flex items-center justify-center mx-auto mb-6">
                <span class="text-2xl font-bold text-white">3</span>
              </div>
              <h4 class="text-xl font-bold mb-4">전문 상담</h4>
              <p class="text-gray-600">전문 상담사와 1:1 맞춤 상담</p>
            </div>
          </div>
        </div>
      </section>

      {/* 파트너 입점 섹션 */}
      <section id="partner-section" class="py-20 bg-gradient-to-br from-teal-50 to-emerald-50">
        <div class="max-w-7xl mx-auto px-4">
          <div class="text-center mb-12">
            <h3 class="text-3xl font-bold text-gray-900 mb-4">
              <i class="fas fa-handshake text-teal-600 mr-3"></i>파트너 입점 및 등록 신청
            </h3>
            <p class="text-lg text-gray-600">케어조아와 함께 더 많은 고객을 만나보세요</p>
          </div>
          
          <div class="bg-white p-8 rounded-2xl shadow-lg max-w-4xl mx-auto">
            <form id="partnerForm" class="space-y-6">
              <div class="grid md:grid-cols-2 gap-6">
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-building mr-1 text-blue-500"></i>시설명*
                  </label>
                  <input type="text" id="facilityName" required 
                    class="w-full p-3 border rounded-lg"
                    placeholder="시설/서비스명" />
                </div>
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-tag mr-1 text-purple-500"></i>시설 유형*
                  </label>
                  <select id="facilityType" required class="w-full p-3 border rounded-lg">
                    <option value="">선택하세요</option>
                    <option value="상급종합병원">상급종합병원</option>
                    <option value="주민센터사회복지">주민센터사회복지</option>
                    <option value="요양원">요양원</option>
                    <option value="요양병원">요양병원</option>
                    <option value="주간보호센터">주간보호센터</option>
                    <option value="그룹홈">그룹홈</option>
                    <option value="재가복지센터">재가복지센터</option>
                    <option value="한의사왕진서비스">한의사왕진서비스</option>
                    <option value="기타">기타</option>
                  </select>
                </div>
              </div>
              
              {/* 주소 필드 추가 */}
              <div class="space-y-4">
                <label class="block text-sm font-medium text-gray-700">
                  <i class="fas fa-map-marker-alt mr-1 text-red-500"></i>시설 주소*
                </label>
                <div class="grid md:grid-cols-2 gap-4">
                  <div>
                    <select id="facilityS ido" required class="w-full p-3 border rounded-lg">
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
                    <select id="facilitySigungu" required class="w-full p-3 border rounded-lg">
                      <option value="">시/군/구 선택</option>
                    </select>
                  </div>
                </div>
                <div>
                  <input type="text" id="facilityDetailAddress" required 
                    class="w-full p-3 border rounded-lg" 
                    placeholder="상세주소 입력 (예: 강남대로 123, 3층)" />
                </div>
              </div>

              <div class="grid md:grid-cols-2 gap-6">
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-user mr-1 text-green-500"></i>담당자명*
                  </label>
                  <input type="text" id="managerName" required class="w-full p-3 border rounded-lg" />
                </div>
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-phone mr-1 text-purple-500"></i>연락처*
                  </label>
                  <input type="tel" id="managerPhone" required class="w-full p-3 border rounded-lg" placeholder="010-0000-0000" />
                </div>
              </div>
              
              <div class="text-center pt-6">
                <button type="submit" class="bg-gradient-to-r from-teal-600 to-emerald-600 text-white px-12 py-4 rounded-lg hover:from-teal-700 hover:to-emerald-700 transform hover:scale-105 font-bold">
                  <i class="fas fa-handshake mr-2"></i>파트너 등록 신청
                </button>
              </div>
            </form>
          </div>
        </div>
      </section>

      {/* 푸터 */}
      <footer class="bg-gray-900 text-white py-12">
        <div class="max-w-7xl mx-auto px-4">
          <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8">
            <div>
              <h4 class="text-lg font-bold mb-4 flex items-center">
                <i class="fas fa-heart mr-2 text-teal-400"></i>케어조아
              </h4>
              <p class="text-gray-400 text-sm">내 집처럼 편안한 곳, 내 가족처럼 믿을 수 있는 곳</p>
            </div>
            
            <div>
              <h5 class="font-semibold mb-4">서비스</h5>
              <ul class="space-y-2 text-sm text-gray-400">
                <li>실시간 견적</li>
                <li>시설 검색</li>
                <li>전문 상담</li>
                <li>파트너 등록</li>
              </ul>
            </div>
            
            <div>
              <h5 class="font-semibold mb-4">고객지원</h5>
              <ul class="space-y-3 text-sm text-gray-400">
                <li class="flex items-center">
                  <i class="fas fa-phone mr-2 text-teal-400"></i>
                  <a href="tel:0507-1310-5873">0507-1310-5873</a>
                </li>
                <li>
                  <a href="https://open.kakao.com/o/siR7YBUh" target="_blank" class="flex items-center">
                    <i class="fas fa-comment-dots mr-2 text-yellow-400"></i>카카오톡 상담
                  </a>
                </li>
                <li class="flex items-center">
                  <i class="fas fa-envelope mr-2 text-blue-400"></i>utuber@kakao.com
                </li>
              </ul>
            </div>
            
            <div>
              <h5 class="font-semibold mb-4">앱 다운로드</h5>
              <div class="space-y-3">
                <a href="https://play.google.com/store/apps/details?id=app.netlify.std_care_joa.twa" target="_blank" class="flex items-center text-sm text-gray-400">
                  <i class="fab fa-android mr-2 text-green-400"></i>안드로이드 앱
                </a>
                <a href="https://www.carejoa.com" target="_blank" class="flex items-center text-sm text-gray-400">
                  <i class="fas fa-globe mr-2 text-blue-400"></i>웹 서비스
                </a>
              </div>
            </div>
          </div>
          
          <div class="border-t border-gray-800 mt-8 pt-8 text-center">
            <p class="text-sm text-blue-400 font-medium mb-3">
              <i class="fas fa-certificate mr-1"></i>특허기반 실시간 요양 견적 및 상담 플랫폼
            </p>
            <p class="text-xs text-gray-400">© 2024 케어조아. All rights reserved.</p>
          </div>
        </div>
      </footer>

      <script dangerouslySetInnerHTML={{
        __html: `
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
        document.getElementById('facilitySido').addEventListener('change', function() {
          const sido = this.value;
          const sigunguSelect = document.getElementById('facilitySigungu');
          
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

        // 파트너 폼 제출
        document.getElementById('partnerForm').addEventListener('submit', async (e) => {
          e.preventDefault();
          const data = {
            facilityName: document.getElementById('facilityName').value,
            facilityType: document.getElementById('facilityType').value,
            facilitySido: document.getElementById('facilitySido').value,
            facilitySigungu: document.getElementById('facilitySigungu').value,
            facilityDetailAddress: document.getElementById('facilityDetailAddress').value,
            managerName: document.getElementById('managerName').value,
            managerPhone: document.getElementById('managerPhone').value,
          };
          
          try {
            const response = await axios.post('/api/partner', data);
            alert(response.data.message);
            e.target.reset();
          } catch (error) {
            alert('신청 중 오류가 발생했습니다.');
          }
        });
        `
      }} />
    </div>
  )
})

// 가족 간병 등록 페이지
app.get('/family-care-register', (c) => {
  return c.render(
    <div>
      <header class="bg-white shadow-sm border-b">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div class="flex justify-between items-center h-16">
            <a href="/" class="flex items-center">
              <img 
                src="https://page.gensparksite.com/v1/base64_upload/b39dca8586af1dacd6d8417554313896" 
                alt="케어조아 로고"
                class="h-8 w-auto mr-3"
              />
              <h1 class="text-2xl font-bold text-teal-600">케어조아</h1>
            </a>
            <a href="/" class="text-gray-600 hover:text-gray-900">
              <i class="fas fa-home mr-1"></i>홈으로
            </a>
          </div>
        </div>
      </header>

      <section class="py-16 bg-gradient-to-br from-green-50 to-emerald-50 min-h-screen">
        <div class="max-w-4xl mx-auto px-4">
          <div class="text-center mb-12">
            <h2 class="text-4xl font-bold text-gray-900 mb-4">
              <i class="fas fa-heart text-green-600 mr-3"></i>가족 간병 등록
            </h2>
            <p class="text-lg text-gray-600">우리 가족을 위한 최적의 간병 서비스를 찾아드립니다</p>
          </div>

          <div class="bg-white p-8 rounded-2xl shadow-lg">
            <form id="familyCareForm" class="space-y-6">
              <div class="grid md:grid-cols-2 gap-6">
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-user mr-1 text-blue-500"></i>보호자 이름*
                  </label>
                  <input type="text" id="guardianName" required class="w-full p-3 border rounded-lg" />
                </div>
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-phone mr-1 text-green-500"></i>연락처*
                  </label>
                  <input type="tel" id="guardianPhone" required class="w-full p-3 border rounded-lg" placeholder="010-0000-0000" />
                </div>
              </div>

              <div class="grid md:grid-cols-2 gap-6">
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-user-injured mr-1 text-purple-500"></i>환자 이름*
                  </label>
                  <input type="text" id="patientName" required class="w-full p-3 border rounded-lg" />
                </div>
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-calendar mr-1 text-orange-500"></i>환자 나이*
                  </label>
                  <input type="number" id="patientAge" required class="w-full p-3 border rounded-lg" placeholder="예: 75" />
                </div>
              </div>

              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">
                  <i class="fas fa-map-marker-alt mr-1 text-red-500"></i>지역*
                </label>
                <input type="text" id="region" required class="w-full p-3 border rounded-lg" placeholder="예: 서울시 강남구" />
              </div>

              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">
                  <i class="fas fa-notes-medical mr-1 text-teal-500"></i>상세 요청사항
                </label>
                <textarea id="requirements" rows="4" class="w-full p-3 border rounded-lg" placeholder="필요한 간병 서비스나 특별한 요구사항을 적어주세요"></textarea>
              </div>

              <div class="text-center pt-6">
                <button type="submit" class="bg-gradient-to-r from-green-600 to-emerald-600 text-white px-12 py-4 rounded-lg hover:from-green-700 hover:to-emerald-700 transform hover:scale-105 font-bold">
                  <i class="fas fa-heart mr-2"></i>가족 간병 등록 신청
                </button>
              </div>
            </form>
          </div>
        </div>
      </section>

      <script dangerouslySetInnerHTML={{
        __html: `
        document.getElementById('familyCareForm').addEventListener('submit', async (e) => {
          e.preventDefault();
          const data = {
            guardianName: document.getElementById('guardianName').value,
            guardianPhone: document.getElementById('guardianPhone').value,
            patientName: document.getElementById('patientName').value,
            patientAge: document.getElementById('patientAge').value,
            region: document.getElementById('region').value,
            requirements: document.getElementById('requirements').value,
          };
          
          try {
            const response = await axios.post('/api/family-care', data);
            alert(response.data.message);
            window.location.href = '/';
          } catch (error) {
            alert('등록 중 오류가 발생했습니다.');
          }
        });
        `
      }} />
    </div>
  )
})

// 관리자 로그인 페이지
app.get('/admin', (c) => {
  if (isAdmin(c)) {
    return c.redirect('/admin/dashboard')
  }
  
  return c.render(
    <div class="min-h-screen flex items-center justify-center bg-gradient-to-br from-gray-900 to-gray-800">
      <div class="bg-white p-8 rounded-2xl shadow-2xl w-full max-w-md">
        <div class="text-center mb-8">
          <div class="w-20 h-20 bg-gradient-to-r from-gray-800 to-gray-900 rounded-full flex items-center justify-center mx-auto mb-4">
            <i class="fas fa-shield-alt text-3xl text-white"></i>
          </div>
          <h2 class="text-3xl font-bold text-gray-900">관리자 로그인</h2>
          <p class="text-gray-600 mt-2">케어조아 관리 시스템</p>
        </div>

        <form id="adminLoginForm" class="space-y-6">
          <div>
            <label class="block text-sm font-medium text-gray-700 mb-2">
              <i class="fas fa-lock mr-1 text-gray-600"></i>비밀번호
            </label>
            <input 
              type="password" 
              id="password" 
              required 
              class="w-full p-4 border-2 border-gray-300 rounded-lg focus:border-gray-900 focus:outline-none"
              placeholder="관리자 비밀번호를 입력하세요"
            />
          </div>

          <button 
            type="submit" 
            class="w-full bg-gradient-to-r from-gray-800 to-gray-900 text-white py-4 rounded-lg hover:from-gray-900 hover:to-black transform hover:scale-105 transition-all duration-300 font-bold"
          >
            <i class="fas fa-sign-in-alt mr-2"></i>로그인
          </button>
        </form>

        <div class="mt-6 text-center">
          <a href="/" class="text-gray-600 hover:text-gray-900 text-sm">
            <i class="fas fa-arrow-left mr-1"></i>메인 페이지로 돌아가기
          </a>
        </div>
      </div>

      <script dangerouslySetInnerHTML={{
        __html: `
        document.getElementById('adminLoginForm').addEventListener('submit', async (e) => {
          e.preventDefault();
          const password = document.getElementById('password').value;
          
          try {
            const response = await axios.post('/api/admin/login', { password });
            if (response.data.success) {
              window.location.href = '/admin/dashboard';
            } else {
              alert(response.data.message || '로그인 실패');
            }
          } catch (error) {
            alert('로그인 중 오류가 발생했습니다.');
          }
        });
        `
      }} />
    </div>
  )
})

// 관리자 대시보드
app.get('/admin/dashboard', (c) => {
  if (!isAdmin(c)) {
    return c.redirect('/admin')
  }
  
  return c.render(
    <div class="min-h-screen bg-gray-100">
      <header class="bg-white shadow-sm border-b">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div class="flex justify-between items-center h-16">
            <div class="flex items-center">
              <i class="fas fa-shield-alt text-2xl text-gray-900 mr-3"></i>
              <h1 class="text-2xl font-bold text-gray-900">케어조아 관리자</h1>
            </div>
            <button id="logoutBtn" class="bg-red-600 text-white px-4 py-2 rounded-lg hover:bg-red-700">
              <i class="fas fa-sign-out-alt mr-2"></i>로그아웃
            </button>
          </div>
        </div>
      </header>

      <div class="max-w-7xl mx-auto px-4 py-8">
        <div class="grid md:grid-cols-2 gap-8 mb-8">
          <div class="bg-gradient-to-r from-blue-500 to-blue-600 p-6 rounded-xl shadow-lg text-white">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-blue-100 mb-1">파트너 신청</p>
                <p class="text-4xl font-bold" id="partnerCount">0</p>
              </div>
              <i class="fas fa-handshake text-5xl text-blue-300"></i>
            </div>
          </div>

          <div class="bg-gradient-to-r from-green-500 to-green-600 p-6 rounded-xl shadow-lg text-white">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-green-100 mb-1">가족 간병 신청</p>
                <p class="text-4xl font-bold" id="familyCareCount">0</p>
              </div>
              <i class="fas fa-heart text-5xl text-green-300"></i>
            </div>
          </div>
        </div>

        <div class="bg-white rounded-xl shadow-lg p-6 mb-8">
          <h3 class="text-2xl font-bold mb-6 flex items-center">
            <i class="fas fa-handshake text-blue-600 mr-3"></i>파트너 신청 목록
          </h3>
          <div class="overflow-x-auto">
            <table class="w-full">
              <thead class="bg-gray-50">
                <tr>
                  <th class="px-4 py-3 text-left">시설명</th>
                  <th class="px-4 py-3 text-left">유형</th>
                  <th class="px-4 py-3 text-left">담당자</th>
                  <th class="px-4 py-3 text-left">연락처</th>
                  <th class="px-4 py-3 text-left">신청일</th>
                </tr>
              </thead>
              <tbody id="partnerList"></tbody>
            </table>
          </div>
        </div>

        <div class="bg-white rounded-xl shadow-lg p-6">
          <h3 class="text-2xl font-bold mb-6 flex items-center">
            <i class="fas fa-heart text-green-600 mr-3"></i>가족 간병 신청 목록
          </h3>
          <div class="overflow-x-auto">
            <table class="w-full">
              <thead class="bg-gray-50">
                <tr>
                  <th class="px-4 py-3 text-left">보호자</th>
                  <th class="px-4 py-3 text-left">연락처</th>
                  <th class="px-4 py-3 text-left">환자명</th>
                  <th class="px-4 py-3 text-left">나이</th>
                  <th class="px-4 py-3 text-left">지역</th>
                  <th class="px-4 py-3 text-left">요청사항</th>
                  <th class="px-4 py-3 text-left">신청일</th>
                </tr>
              </thead>
              <tbody id="familyCareList"></tbody>
            </table>
          </div>
        </div>
      </div>

      <script dangerouslySetInnerHTML={{
        __html: `
        async function loadData() {
          try {
            const response = await axios.get('/api/admin/data');
            const { partners, familyCare } = response.data;
            
            document.getElementById('partnerCount').textContent = partners.length;
            document.getElementById('familyCareCount').textContent = familyCare.length;
            
            const partnerList = document.getElementById('partnerList');
            partnerList.innerHTML = partners.map(p => \`
              <tr class="border-t hover:bg-gray-50">
                <td class="px-4 py-3">\${p.facilityName}</td>
                <td class="px-4 py-3">\${p.facilityType}</td>
                <td class="px-4 py-3">\${p.managerName}</td>
                <td class="px-4 py-3">\${p.managerPhone}</td>
                <td class="px-4 py-3">\${new Date(p.createdAt).toLocaleDateString('ko-KR')}</td>
              </tr>
            \`).join('') || '<tr><td colspan="5" class="px-4 py-8 text-center text-gray-500">신청 내역이 없습니다</td></tr>';
            
            const familyCareList = document.getElementById('familyCareList');
            familyCareList.innerHTML = familyCare.map(f => \`
              <tr class="border-t hover:bg-gray-50">
                <td class="px-4 py-3">\${f.guardianName}</td>
                <td class="px-4 py-3">\${f.guardianPhone}</td>
                <td class="px-4 py-3">\${f.patientName}</td>
                <td class="px-4 py-3">\${f.patientAge}세</td>
                <td class="px-4 py-3">\${f.region}</td>
                <td class="px-4 py-3">\${f.requirements || '-'}</td>
                <td class="px-4 py-3">\${new Date(f.createdAt).toLocaleDateString('ko-KR')}</td>
              </tr>
            \`).join('') || '<tr><td colspan="7" class="px-4 py-8 text-center text-gray-500">신청 내역이 없습니다</td></tr>';
          } catch (error) {
            console.error('데이터 로드 실패:', error);
          }
        }
        
        document.getElementById('logoutBtn').addEventListener('click', async () => {
          try {
            await axios.post('/api/admin/logout');
            window.location.href = '/admin';
          } catch (error) {
            console.error('로그아웃 실패:', error);
          }
        });
        
        loadData();
        setInterval(loadData, 30000);
        `
      }} />
    </div>
  )
})

// API 라우트
app.post('/api/partner', async (c) => {
  try {
    const data = await c.req.json()
    dataStore.partners.push({
      ...data,
      createdAt: new Date().toISOString()
    })
    return c.json({ success: true, message: '파트너 등록이 완료되었습니다!' })
  } catch (error) {
    return c.json({ success: false, message: '등록 실패' }, 500)
  }
})

app.post('/api/family-care', async (c) => {
  try {
    const data = await c.req.json()
    dataStore.familyCare.push({
      ...data,
      createdAt: new Date().toISOString()
    })
    return c.json({ success: true, message: '가족 간병 신청이 완료되었습니다!' })
  } catch (error) {
    return c.json({ success: false, message: '신청 실패' }, 500)
  }
})

// 견적 요청 API
app.post('/api/quote-request', async (c) => {
  try {
    const data = await c.req.json()
    
    // 견적 요청 저장
    const quoteRequest = {
      ...data,
      id: 'Q' + Date.now(),
      status: 'pending',
      createdAt: new Date().toISOString()
    }
    
    dataStore.quoteRequests.push(quoteRequest)
    
    // TODO: 여기서 선택한 지역(sido, sigungu)의 시설에게만 견적 요청 전송
    // 현재는 메모리에 저장만 하고, 실제 D1 DB 연동 시 구현 예정
    
    return c.json({ 
      success: true, 
      message: '견적 신청이 완료되었습니다!',
      quoteId: quoteRequest.id
    })
  } catch (error) {
    console.error('Quote request error:', error)
    return c.json({ success: false, message: '견적 신청 실패' }, 500)
  }
})

app.post('/api/admin/login', async (c) => {
  try {
    const { password } = await c.req.json()
    if (password === ADMIN_CONFIG.password) {
      const sessionId = generateSessionId()
      sessions.add(sessionId)
      setCookie(c, ADMIN_CONFIG.sessionKey, sessionId, {
        httpOnly: true,
        maxAge: 3600
      })
      return c.json({ success: true })
    }
    return c.json({ success: false, message: '비밀번호가 올바르지 않습니다.' }, 401)
  } catch (error) {
    return c.json({ success: false, message: '로그인 실패' }, 500)
  }
})

app.post('/api/admin/logout', (c) => {
  const sessionId = getCookie(c, ADMIN_CONFIG.sessionKey)
  if (sessionId) {
    sessions.delete(sessionId)
  }
  setCookie(c, ADMIN_CONFIG.sessionKey, '', { maxAge: 0 })
  return c.json({ success: true })
})

app.get('/api/admin/data', (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  return c.json(dataStore)
})

// 실시간 견적 플랫폼 페이지
app.get('/quote-request', (c) => {
  return c.render(
    <div class="min-h-screen bg-gray-50">
      {/* 헤더 */}
      <header class="bg-white shadow-sm border-b">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div class="flex justify-between items-center h-16">
            <div class="flex items-center">
              <a href="/" class="flex items-center">
                <img 
                  src="https://page.gensparksite.com/v1/base64_upload/b39dca8586af1dacd6d8417554313896" 
                  alt="케어조아 로고"
                  class="h-8 w-auto mr-3"
                />
                <h1 class="text-2xl font-bold text-teal-600">케어조아</h1>
              </a>
            </div>
            <a href="/" class="text-gray-600 hover:text-gray-900">
              <i class="fas fa-home mr-2"></i>홈으로
            </a>
          </div>
        </div>
      </header>

      <div class="max-w-7xl mx-auto px-4 py-8">
        {/* 타이틀 */}
        <div class="text-center mb-8">
          <h2 class="text-4xl font-bold text-gray-900 mb-4">
            <i class="fas fa-calculator text-teal-600 mr-3"></i>
            실시간 요양 견적
          </h2>
          <p class="text-xl text-gray-600">
            3가지 방법으로 빠르고 정확한 견적을 받아보세요
          </p>
        </div>

        {/* 탭 네비게이션 */}
        <div class="flex justify-center mb-8 border-b border-gray-200">
          <button 
            id="tab-urgent" 
            class="tab-btn px-8 py-4 text-lg font-semibold border-b-4 border-teal-600 text-teal-600"
            onclick="switchTab('urgent')"
          >
            <i class="fas fa-bolt mr-2"></i>급한 견적 신청
          </button>
          <button 
            id="tab-calculate" 
            class="tab-btn px-8 py-4 text-lg font-semibold text-gray-500 hover:text-gray-700"
            onclick="switchTab('calculate')"
          >
            <i class="fas fa-calculator mr-2"></i>자가 견적 계산
          </button>
          <button 
            id="tab-matching" 
            class="tab-btn px-8 py-4 text-lg font-semibold text-gray-500 hover:text-gray-700"
            onclick="switchTab('matching')"
          >
            <i class="fas fa-robot mr-2"></i>AI 스마트 매칭
          </button>
        </div>

        {/* 탭 1: 급한 견적 신청 */}
        <div id="content-urgent" class="tab-content">
          <div class="bg-white rounded-xl shadow-lg p-8 max-w-4xl mx-auto">
            <div class="bg-gradient-to-r from-red-50 to-orange-50 border border-red-200 rounded-lg p-4 mb-6">
              <h3 class="text-lg font-bold text-red-800 mb-2">
                <i class="fas fa-bolt mr-2"></i>급한 견적 신청이란?
              </h3>
              <p class="text-red-700">
                간단한 정보만 입력하면 <strong>선택하신 지역의 모든 등록 시설</strong>에 자동으로 견적 요청이 전송됩니다. 
                시설들이 직접 견적서를 작성하여 회신하면 비교하실 수 있습니다.
              </p>
            </div>

            <form id="urgentForm" class="space-y-6">
              {/* 고객 정보 */}
              <div class="border-b pb-6">
                <h4 class="text-xl font-bold mb-4">
                  <i class="fas fa-user mr-2 text-teal-600"></i>고객 정보
                </h4>
                <div class="grid md:grid-cols-2 gap-4">
                  <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2">보호자 성함 *</label>
                    <input type="text" name="customer_name" required
                      class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-teal-500" />
                  </div>
                  <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2">연락처 *</label>
                    <input type="tel" name="customer_phone" required placeholder="010-1234-5678"
                      class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-teal-500" />
                  </div>
                  <div class="md:col-span-2">
                    <label class="block text-sm font-medium text-gray-700 mb-2">이메일 (선택)</label>
                    <input type="email" name="customer_email"
                      class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-teal-500" />
                  </div>
                </div>
              </div>

              {/* 환자 정보 */}
              <div class="border-b pb-6">
                <h4 class="text-xl font-bold mb-4">
                  <i class="fas fa-hospital-user mr-2 text-teal-600"></i>환자 정보
                </h4>
                <div class="grid md:grid-cols-2 gap-4">
                  <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2">환자 성함 *</label>
                    <input type="text" name="patient_name" required
                      class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-teal-500" />
                  </div>
                  <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2">나이 *</label>
                    <input type="number" name="patient_age" required min="1" max="120"
                      class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-teal-500" />
                  </div>
                  <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2">성별</label>
                    <select name="patient_gender" class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-teal-500">
                      <option value="">선택</option>
                      <option value="남성">남성</option>
                      <option value="여성">여성</option>
                    </select>
                  </div>
                  <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2">장기요양등급</label>
                    <select name="care_level" class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-teal-500">
                      <option value="">선택</option>
                      <option value="1등급">1등급</option>
                      <option value="2등급">2등급</option>
                      <option value="3등급">3등급</option>
                      <option value="4등급">4등급</option>
                      <option value="5등급">5등급</option>
                      <option value="인지지원등급">인지지원등급</option>
                    </select>
                  </div>
                  <div class="md:col-span-2">
                    <label class="block text-sm font-medium text-gray-700 mb-2">환자 상태 (상세하게 작성해주세요)</label>
                    <textarea name="patient_condition" rows="3" placeholder="예: 거동 가능 여부, 주요 질환, 특이사항 등"
                      class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-teal-500"></textarea>
                  </div>
                </div>
              </div>

              {/* 희망 시설 */}
              <div class="border-b pb-6">
                <h4 class="text-xl font-bold mb-4">
                  <i class="fas fa-building mr-2 text-teal-600"></i>희망 시설 정보
                </h4>
                <div class="grid md:grid-cols-2 gap-4">
                  <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2">시/도 *</label>
                    <select name="sido" id="urgent-sido" required 
                      class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-teal-500">
                      <option value="">선택</option>
                      <option value="서울특별시">서울특별시</option>
                      <option value="경기도">경기도</option>
                      <option value="인천광역시">인천광역시</option>
                      <option value="부산광역시">부산광역시</option>
                      <option value="대구광역시">대구광역시</option>
                      <option value="대전광역시">대전광역시</option>
                      <option value="광주광역시">광주광역시</option>
                      <option value="울산광역시">울산광역시</option>
                      <option value="세종특별자치시">세종특별자치시</option>
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
                    <label class="block text-sm font-medium text-gray-700 mb-2">시/군/구 *</label>
                    <select name="sigungu" id="urgent-sigungu" required
                      class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-teal-500">
                      <option value="">시/도를 먼저 선택해주세요</option>
                    </select>
                  </div>
                  <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2">시설 유형 *</label>
                    <select name="facility_type" required
                      class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-teal-500">
                      <option value="">선택</option>
                      <option value="요양병원">요양병원</option>
                      <option value="요양원">요양원</option>
                      <option value="주야간보호">주야간보호</option>
                      <option value="재가복지센터">재가복지센터</option>
                    </select>
                  </div>
                  <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2">희망 병실</label>
                    <select name="room_type" class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-teal-500">
                      <option value="">선택</option>
                      <option value="1인실">1인실</option>
                      <option value="2인실">2인실</option>
                      <option value="3인실">3인실</option>
                      <option value="4인실이상">4인실 이상</option>
                    </select>
                  </div>
                </div>
              </div>

              {/* 예산 */}
              <div class="border-b pb-6">
                <h4 class="text-xl font-bold mb-4">
                  <i class="fas fa-won-sign mr-2 text-teal-600"></i>예산 (선택)
                </h4>
                <div class="grid md:grid-cols-2 gap-4">
                  <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2">최소 예산 (월)</label>
                    <input type="number" name="budget_min" placeholder="1000000" step="100000"
                      class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-teal-500" />
                  </div>
                  <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2">최대 예산 (월)</label>
                    <input type="number" name="budget_max" placeholder="3000000" step="100000"
                      class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-teal-500" />
                  </div>
                </div>
              </div>

              {/* 기타 요구사항 */}
              <div>
                <h4 class="text-xl font-bold mb-4">
                  <i class="fas fa-clipboard-list mr-2 text-teal-600"></i>기타 요구사항
                </h4>
                <textarea name="special_requirements" rows="4" 
                  placeholder="특별히 원하시는 사항이나 문의사항을 자유롭게 작성해주세요"
                  class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-teal-500"></textarea>
              </div>

              {/* 제출 버튼 */}
              <div class="flex justify-center pt-6">
                <button type="submit" 
                  class="bg-gradient-to-r from-teal-500 to-teal-600 text-white px-12 py-4 rounded-xl text-lg font-bold hover:from-teal-600 hover:to-teal-700 shadow-lg transform hover:scale-105 transition-all">
                  <i class="fas fa-paper-plane mr-2"></i>
                  모든 시설에 견적 요청하기
                </button>
              </div>
            </form>
          </div>
        </div>

        {/* 탭 2: 자가 견적 계산 */}
        <div id="content-calculate" class="tab-content hidden">
          <div class="bg-white rounded-xl shadow-lg p-8 max-w-4xl mx-auto">
            <div class="bg-gradient-to-r from-blue-50 to-indigo-50 border border-blue-200 rounded-lg p-4 mb-6">
              <h3 class="text-lg font-bold text-blue-800 mb-2">
                <i class="fas fa-calculator mr-2"></i>자가 견적 계산이란?
              </h3>
              <p class="text-blue-700">
                조건을 입력하시면 <strong>예상 비용을 즉시 계산</strong>해드립니다. 
                대략적인 비용을 먼저 확인하신 후 정식 견적을 요청하실 수 있습니다.
              </p>
            </div>

            {/* 계산기 폼 */}
            <form id="calculateForm" class="space-y-6">
              <div class="grid md:grid-cols-2 gap-6">
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">장기요양등급 *</label>
                  <select name="care_level" id="calc-care-level" required
                    class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                    <option value="">선택</option>
                    <option value="1">1등급</option>
                    <option value="2">2등급</option>
                    <option value="3">3등급</option>
                    <option value="4">4등급</option>
                    <option value="5">5등급</option>
                  </select>
                </div>
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">시설 유형 *</label>
                  <select name="facility_type" id="calc-facility-type" required
                    class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                    <option value="">선택</option>
                    <option value="요양병원">요양병원</option>
                    <option value="요양원">요양원</option>
                    <option value="주야간보호">주야간보호</option>
                    <option value="재가복지센터">재가복지센터</option>
                  </select>
                </div>
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">병실 유형 *</label>
                  <select name="room_type" id="calc-room-type" required
                    class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                    <option value="">선택</option>
                    <option value="1인실">1인실</option>
                    <option value="2인실">2인실</option>
                    <option value="3인실">3인실</option>
                    <option value="4인실이상">4인실 이상</option>
                  </select>
                </div>
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">지역 *</label>
                  <select name="region" id="calc-region" required
                    class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                    <option value="">선택</option>
                    <option value="서울">서울</option>
                    <option value="경기">경기</option>
                    <option value="인천">인천</option>
                    <option value="기타">기타 지역</option>
                  </select>
                </div>
              </div>

              <div class="flex justify-center">
                <button type="submit" 
                  class="bg-gradient-to-r from-blue-500 to-blue-600 text-white px-10 py-3 rounded-xl text-lg font-bold hover:from-blue-600 hover:to-blue-700 shadow-lg">
                  <i class="fas fa-calculator mr-2"></i>
                  예상 비용 계산하기
                </button>
              </div>
            </form>

            {/* 계산 결과 */}
            <div id="calculateResult" class="hidden mt-8 p-6 bg-gradient-to-r from-green-50 to-teal-50 rounded-xl border-2 border-green-200">
              <h3 class="text-2xl font-bold text-green-800 mb-4">
                <i class="fas fa-check-circle mr-2"></i>예상 비용 계산 완료
              </h3>
              <div class="space-y-3">
                <div class="flex justify-between text-lg">
                  <span class="font-medium">기본 비용 (월):</span>
                  <span id="result-basic" class="font-bold text-blue-600"></span>
                </div>
                <div class="flex justify-between text-lg">
                  <span class="font-medium">식사비 (월):</span>
                  <span id="result-meal" class="font-bold text-blue-600"></span>
                </div>
                <div class="flex justify-between text-lg">
                  <span class="font-medium">간호비 (월):</span>
                  <span id="result-nursing" class="font-bold text-blue-600"></span>
                </div>
                <div class="flex justify-between text-lg border-t-2 border-green-300 pt-3">
                  <span class="font-bold text-xl">예상 총액 (월):</span>
                  <span id="result-total" class="font-bold text-2xl text-green-700"></span>
                </div>
              </div>
              <div class="mt-6 bg-white p-4 rounded-lg">
                <p class="text-sm text-gray-600 mb-3">
                  <i class="fas fa-info-circle text-blue-500 mr-1"></i>
                  이 비용은 평균적인 예상 금액이며, 실제 시설마다 차이가 있을 수 있습니다.
                </p>
                <button onclick="requestQuoteFromCalculator()" 
                  class="w-full bg-teal-600 text-white px-6 py-3 rounded-lg font-bold hover:bg-teal-700">
                  정확한 견적 요청하기
                </button>
              </div>
            </div>
          </div>
        </div>

        {/* 탭 3: AI 매칭 */}
        <div id="content-matching" class="tab-content hidden">
          <div class="bg-white rounded-xl shadow-lg p-8 max-w-4xl mx-auto">
            <div class="bg-gradient-to-r from-purple-50 to-pink-50 border border-purple-200 rounded-lg p-4 mb-6">
              <h3 class="text-lg font-bold text-purple-800 mb-2">
                <i class="fas fa-robot mr-2"></i>AI 스마트 매칭이란?
              </h3>
              <p class="text-purple-700">
                입력하신 조건을 AI가 분석하여 <strong>가장 적합한 시설 TOP 10</strong>을 추천해드립니다. 
                추천된 시설에만 선택적으로 견적을 요청하실 수 있습니다.
              </p>
            </div>

            {/* AI 매칭 폼 */}
            <form id="matchingForm" class="space-y-6">
              {/* 기본 정보 */}
              <div class="grid md:grid-cols-2 gap-4">
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">장기요양등급 *</label>
                  <select name="care_level" required
                    class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-purple-500">
                    <option value="">선택</option>
                    <option value="1">1등급</option>
                    <option value="2">2등급</option>
                    <option value="3">3등급</option>
                    <option value="4">4등급</option>
                    <option value="5">5등급</option>
                  </select>
                </div>
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">환자 나이 *</label>
                  <input type="number" name="patient_age" required min="1" max="120"
                    class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-purple-500" />
                </div>
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">시/도 *</label>
                  <select name="sido" id="matching-sido" required
                    class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-purple-500">
                      <option value="">선택</option>
                      <option value="서울특별시">서울특별시</option>
                      <option value="경기도">경기도</option>
                      <option value="인천광역시">인천광역시</option>
                    </select>
                </div>
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">시/군/구 *</label>
                  <select name="sigungu" id="matching-sigungu" required
                    class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-purple-500">
                    <option value="">시/도를 먼저 선택해주세요</option>
                  </select>
                </div>
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">월 예산 *</label>
                  <input type="number" name="budget" required placeholder="2000000" step="100000"
                    class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-purple-500" />
                </div>
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">병실 선호</label>
                  <select name="room_type"
                    class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-purple-500">
                    <option value="">상관없음</option>
                    <option value="1인실">1인실</option>
                    <option value="2인실">2인실</option>
                    <option value="3인실">3인실</option>
                    <option value="4인실이상">4인실 이상</option>
                  </select>
                </div>
              </div>

              {/* 중요 요소 선택 */}
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">중요하게 생각하는 요소 (복수 선택 가능)</label>
                <div class="grid md:grid-cols-3 gap-3">
                  <label class="flex items-center p-3 border rounded-lg hover:bg-purple-50 cursor-pointer">
                    <input type="checkbox" name="priorities[]" value="거리" class="mr-2" />
                    <span>집과의 거리</span>
                  </label>
                  <label class="flex items-center p-3 border rounded-lg hover:bg-purple-50 cursor-pointer">
                    <input type="checkbox" name="priorities[]" value="비용" class="mr-2" />
                    <span>저렴한 비용</span>
                  </label>
                  <label class="flex items-center p-3 border rounded-lg hover:bg-purple-50 cursor-pointer">
                    <input type="checkbox" name="priorities[]" value="시설" class="mr-2" />
                    <span>시설 설비</span>
                  </label>
                  <label class="flex items-center p-3 border rounded-lg hover:bg-purple-50 cursor-pointer">
                    <input type="checkbox" name="priorities[]" value="의료" class="mr-2" />
                    <span>의료 서비스</span>
                  </label>
                  <label class="flex items-center p-3 border rounded-lg hover:bg-purple-50 cursor-pointer">
                    <input type="checkbox" name="priorities[]" value="평판" class="mr-2" />
                    <span>평판/후기</span>
                  </label>
                  <label class="flex items-center p-3 border rounded-lg hover:bg-purple-50 cursor-pointer">
                    <input type="checkbox" name="priorities[]" value="규모" class="mr-2" />
                    <span>시설 규모</span>
                  </label>
                </div>
              </div>

              <div class="flex justify-center">
                <button type="submit" 
                  class="bg-gradient-to-r from-purple-500 to-pink-600 text-white px-10 py-3 rounded-xl text-lg font-bold hover:from-purple-600 hover:to-pink-700 shadow-lg">
                  <i class="fas fa-magic mr-2"></i>
                  AI 추천 받기
                </button>
              </div>
            </form>

            {/* AI 매칭 결과 */}
            <div id="matchingResult" class="hidden mt-8">
              <h3 class="text-2xl font-bold text-purple-800 mb-6 flex items-center">
                <i class="fas fa-star mr-3 text-yellow-500"></i>
                맞춤 추천 시설 TOP 10
              </h3>
              <div id="matchingList" class="space-y-4">
                {/* 동적으로 채워짐 */}
              </div>
              <div class="mt-6 text-center">
                <button onclick="requestQuoteFromMatching()" 
                  class="bg-teal-600 text-white px-10 py-3 rounded-xl font-bold hover:bg-teal-700">
                  선택한 시설에 견적 요청하기
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>

      {/* JavaScript */}
      <script dangerouslySetInnerHTML={{__html: `
        // 탭 전환
        function switchTab(tabName) {
          // 모든 탭 버튼 비활성화
          document.querySelectorAll('.tab-btn').forEach(btn => {
            btn.classList.remove('border-teal-600', 'text-teal-600');
            btn.classList.add('text-gray-500', 'border-transparent');
          });
          
          // 선택된 탭 활성화
          document.getElementById('tab-' + tabName).classList.add('border-teal-600', 'text-teal-600');
          document.getElementById('tab-' + tabName).classList.remove('text-gray-500', 'border-transparent');
          
          // 모든 콘텐츠 숨기기
          document.querySelectorAll('.tab-content').forEach(content => {
            content.classList.add('hidden');
          });
          
          // 선택된 콘텐츠 표시
          document.getElementById('content-' + tabName).classList.remove('hidden');
        }

        // 시군구 데이터
        const sigunguData = {
          "서울특별시": ["강남구", "강동구", "강북구", "강서구", "관악구", "광진구", "구로구", "금천구", "노원구", "도봉구", "동대문구", "동작구", "마포구", "서대문구", "서초구", "성동구", "성북구", "송파구", "양천구", "영등포구", "용산구", "은평구", "종로구", "중구", "중랑구"],
          "경기도": ["고양시", "과천시", "광명시", "광주시", "구리시", "군포시", "김포시", "남양주시", "동두천시", "부천시", "성남시", "수원시", "시흥시", "안산시", "안성시", "안양시", "양주시", "여주시", "오산시", "용인시", "의왕시", "의정부시", "이천시", "파주시", "평택시", "포천시", "하남시", "화성시"],
          "인천광역시": ["강화군", "계양구", "남동구", "동구", "미추홀구", "부평구", "서구", "연수구", "옹진군", "중구"]
        };

        // 시도 선택 시 시군구 업데이트
        document.getElementById('urgent-sido').addEventListener('change', function() {
          updateSigungu('urgent-sigungu', this.value);
        });

        document.getElementById('matching-sido').addEventListener('change', function() {
          updateSigungu('matching-sigungu', this.value);
        });

        function updateSigungu(selectId, sido) {
          const sigunguSelect = document.getElementById(selectId);
          sigunguSelect.innerHTML = '<option value="">선택</option>';
          
          if (sigunguData[sido]) {
            sigunguData[sido].forEach(sigungu => {
              const option = document.createElement('option');
              option.value = sigungu;
              option.textContent = sigungu;
              sigunguSelect.appendChild(option);
            });
          }
        }

        // 폼 제출 처리
        document.getElementById('urgentForm').addEventListener('submit', async function(e) {
          e.preventDefault();
          
          const formData = new FormData(this);
          const data = Object.fromEntries(formData.entries());
          data.request_type = 'urgent';
          
          try {
            const response = await axios.post('/api/quote-request', data);
            if (response.data.success) {
              alert('견적 요청이 완료되었습니다! 해당 지역 ' + response.data.sent_count + '개 시설에 전송되었습니다.');
              this.reset();
            }
          } catch (error) {
            console.error('요청 실패:', error);
            alert('견적 요청에 실패했습니다. 다시 시도해주세요.');
          }
        });

        document.getElementById('calculateForm').addEventListener('submit', async function(e) {
          e.preventDefault();
          
          const formData = new FormData(this);
          const data = Object.fromEntries(formData.entries());
          
          try {
            const response = await axios.post('/api/calculate-cost', data);
            if (response.data.success) {
              document.getElementById('result-basic').textContent = response.data.basic.toLocaleString() + '원';
              document.getElementById('result-meal').textContent = response.data.meal.toLocaleString() + '원';
              document.getElementById('result-nursing').textContent = response.data.nursing.toLocaleString() + '원';
              document.getElementById('result-total').textContent = response.data.total.toLocaleString() + '원';
              document.getElementById('calculateResult').classList.remove('hidden');
            }
          } catch (error) {
            console.error('계산 실패:', error);
            alert('계산에 실패했습니다. 다시 시도해주세요.');
          }
        });

        document.getElementById('matchingForm').addEventListener('submit', async function(e) {
          e.preventDefault();
          
          const formData = new FormData(this);
          const data = Object.fromEntries(formData.entries());
          data.request_type = 'ai_matching';
          
          // 우선순위 배열 처리
          const priorities = [];
          document.querySelectorAll('input[name="priorities[]"]:checked').forEach(el => {
            priorities.push(el.value);
          });
          data.priorities = JSON.stringify(priorities);
          
          try {
            const response = await axios.post('/api/ai-matching', data);
            if (response.data.success) {
              displayMatchingResults(response.data.facilities);
              document.getElementById('matchingResult').classList.remove('hidden');
            }
          } catch (error) {
            console.error('매칭 실패:', error);
            alert('AI 매칭에 실패했습니다. 다시 시도해주세요.');
          }
        });

        function displayMatchingResults(facilities) {
          const listEl = document.getElementById('matchingList');
          listEl.innerHTML = facilities.map((facility, index) => \`
            <div class="border-2 border-purple-200 rounded-lg p-4 hover:shadow-lg transition-shadow">
              <div class="flex items-center justify-between mb-2">
                <div class="flex items-center">
                  <span class="bg-gradient-to-r from-yellow-400 to-orange-500 text-white font-bold text-lg w-10 h-10 rounded-full flex items-center justify-center mr-3">
                    \${index + 1}
                  </span>
                  <div>
                    <h4 class="text-lg font-bold">\${facility.name}</h4>
                    <p class="text-sm text-gray-600">\${facility.address}</p>
                  </div>
                </div>
                <div class="text-right">
                  <p class="text-sm text-gray-600">매칭 점수</p>
                  <p class="text-2xl font-bold text-purple-600">\${facility.score}%</p>
                </div>
              </div>
              <div class="flex gap-2 mb-2">
                <span class="text-xs bg-blue-100 text-blue-800 px-2 py-1 rounded">\${facility.type}</span>
                <span class="text-xs bg-green-100 text-green-800 px-2 py-1 rounded">예상: \${facility.estimated_cost.toLocaleString()}원/월</span>
              </div>
              <label class="flex items-center mt-3">
                <input type="checkbox" class="facility-select mr-2" value="\${facility.id}" checked />
                <span class="text-sm">이 시설에 견적 요청</span>
              </label>
            </div>
          \`).join('');
        }

        function requestQuoteFromCalculator() {
          // 계산 결과에서 견적 요청으로 전환
          switchTab('urgent');
          window.scrollTo(0, 0);
        }

        function requestQuoteFromMatching() {
          const selectedFacilities = [];
          document.querySelectorAll('.facility-select:checked').forEach(el => {
            selectedFacilities.push(el.value);
          });
          
          if (selectedFacilities.length === 0) {
            alert('최소 1개 이상의 시설을 선택해주세요.');
            return;
          }
          
          alert(selectedFacilities.length + '개 시설에 견적 요청이 완료되었습니다!');
        }
      `}} />
    </div>
  )
})

// 견적 요청 API
app.post('/api/quote-request', async (c) => {
  try {
    const data = await c.req.json()
    
    // TODO: D1에 저장하고 해당 지역 시설들에게 알림
    // 임시로 메모리에 저장
    const requestId = Date.now()
    const sentCount = Math.floor(Math.random() * 20) + 10 // 임시: 10-30개 시설
    
    return c.json({ 
      success: true, 
      request_id: requestId,
      sent_count: sentCount,
      message: '견적 요청이 전송되었습니다.'
    })
  } catch (error) {
    return c.json({ success: false, message: '요청 처리 실패' }, 500)
  }
})

// 자가 견적 계산 API
app.post('/api/calculate-cost', async (c) => {
  try {
    const data = await c.req.json()
    
    // 간단한 견적 계산 로직
    const careLevel = parseInt(data.care_level)
    const facilityType = data.facility_type
    const roomType = data.room_type
    const region = data.region
    
    // 기본료 (등급별)
    const basicCost = {
      1: 1800000,
      2: 1600000,
      3: 1400000,
      4: 1200000,
      5: 1000000
    }[careLevel] || 1000000
    
    // 시설 유형별 추가
    const facilityExtra = {
      '요양병원': 500000,
      '요양원': 200000,
      '주야간보호': -300000,
      '재가복지센터': -400000
    }[facilityType] || 0
    
    // 병실 유형별 추가
    const roomExtra = {
      '1인실': 500000,
      '2인실': 200000,
      '3인실': 0,
      '4인실이상': -100000
    }[roomType] || 0
    
    // 지역별 추가
    const regionExtra = {
      '서울': 300000,
      '경기': 100000,
      '인천': 50000,
      '기타': 0
    }[region] || 0
    
    const basic = basicCost + facilityExtra + roomExtra + regionExtra
    const meal = 300000
    const nursing = 200000
    const total = basic + meal + nursing
    
    return c.json({
      success: true,
      basic,
      meal,
      nursing,
      total
    })
  } catch (error) {
    return c.json({ success: false, message: '계산 실패' }, 500)
  }
})

// AI 매칭 API
app.post('/api/ai-matching', async (c) => {
  try {
    const data = await c.req.json()
    
    // TODO: 실제 AI 매칭 로직 구현
    // 임시로 더미 데이터 반환
    const dummyFacilities = [
      {
        id: 1,
        name: '서울 요양병원',
        address: '서울특별시 강남구',
        type: '요양병원',
        score: 95,
        estimated_cost: 2500000
      },
      {
        id: 2,
        name: '행복 요양원',
        address: '서울특별시 서초구',
        type: '요양원',
        score: 92,
        estimated_cost: 2200000
      },
      {
        id: 3,
        name: '사랑 재가복지센터',
        address: '서울특별시 송파구',
        type: '재가복지센터',
        score: 88,
        estimated_cost: 1800000
      }
    ]
    
    return c.json({
      success: true,
      facilities: dummyFacilities
    })
  } catch (error) {
    return c.json({ success: false, message: '매칭 실패' }, 500)
  }
})

export default app

import { Hono } from 'hono'
import { renderer } from './renderer'
import { cors } from 'hono/cors'
import { serveStatic } from 'hono/cloudflare-workers'
import { getCookie, setCookie } from 'hono/cookie'

type Bindings = {
  DB: D1Database
}

const app = new Hono<{ Bindings: Bindings }>()

const ADMIN_CONFIG = { password: '5874', sessionKey: 'admin_session' }

async function isAdmin(c: any) {
  const sessionId = getCookie(c, ADMIN_CONFIG.sessionKey)
  if (!sessionId) return false
  
  const { DB } = c.env
  const now = new Date().toISOString()
  const result = await DB.prepare(
    'SELECT session_id FROM admin_sessions WHERE session_id = ? AND expires_at > ?'
  ).bind(sessionId, now).first()
  
  return !!result
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
                <i class="fas fa-handshake mr-1"></i>요양시설입점
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
                <a href="https://www.carejoa.com" 
                   target="_blank" rel="noopener noreferrer"
                   class="flex items-center justify-center bg-white text-black border-2 border-black py-4 px-6 rounded-xl shadow-lg hover:bg-gray-50 transition-all duration-300 transform hover:scale-105">
                  <i class="fas fa-calculator mr-3"></i>실시간 견적 & 상담 신청하기
                </a>
                <button 
                   onclick="document.getElementById('regionalCallModal').classList.remove('hidden')"
                   class="flex items-center justify-center bg-gradient-to-r from-green-500 to-emerald-500 text-white py-4 px-6 rounded-xl shadow-lg hover:from-green-600 hover:to-emerald-600 transition-all duration-300 transform hover:scale-105">
                  <i class="fas fa-phone-alt mr-3"></i>지역별 전화상담하기
                </button>
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
            <span class="text-[10px] font-medium">시설입점</span>
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

      {/* 요양시설 입점 섹션 */}
      <section id="partner-section" class="py-20 bg-gradient-to-br from-teal-50 to-emerald-50">
        <div class="max-w-7xl mx-auto px-4">
          <div class="text-center mb-12">
            <h3 class="text-3xl font-bold text-gray-900 mb-4">
              <i class="fas fa-handshake text-teal-600 mr-3"></i>요양시설 입점 신청
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
              
              {/* 주소 입력 */}
              <div class="border-t pt-6">
                <h4 class="text-lg font-semibold text-gray-900 mb-4">
                  <i class="fas fa-map-marker-alt mr-2 text-red-500"></i>시설 주소
                </h4>
                <div class="grid md:grid-cols-2 gap-6 mb-4">
                  <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2">
                      <i class="fas fa-map mr-1 text-blue-500"></i>시/도*
                    </label>
                    <select id="facilitySido" required class="w-full p-3 border rounded-lg">
                      <option value="">시/도를 선택하세요</option>
                    </select>
                  </div>
                  <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2">
                      <i class="fas fa-map-marker mr-1 text-green-500"></i>시/군/구*
                    </label>
                    <select id="facilitySigungu" required class="w-full p-3 border rounded-lg" disabled>
                      <option value="">시/군/구를 선택하세요</option>
                    </select>
                  </div>
                </div>
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-home mr-1 text-purple-500"></i>상세주소*
                  </label>
                  <input type="text" id="facilityAddress" required 
                    class="w-full p-3 border rounded-lg" 
                    placeholder="예: 강남대로 123, 케어빌딩 2층" />
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
                  <i class="fas fa-handshake mr-2"></i>요양시설 입점 신청
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

      {/* 지역별 전화상담 모달 */}
      <div id="regionalCallModal" class="hidden fixed inset-0 bg-black bg-opacity-50 z-50 flex items-center justify-center p-4">
        <div class="bg-white rounded-2xl shadow-2xl max-w-2xl w-full max-h-[90vh] overflow-y-auto">
          <div class="sticky top-0 bg-gradient-to-r from-green-500 to-emerald-500 text-white p-6 rounded-t-2xl">
            <div class="flex justify-between items-center">
              <h3 class="text-2xl font-bold">
                <i class="fas fa-phone-alt mr-2"></i>지역별 전화상담
              </h3>
              <button onclick="document.getElementById('regionalCallModal').classList.add('hidden')" 
                      class="text-white hover:text-gray-200 text-2xl">
                <i class="fas fa-times"></i>
              </button>
            </div>
            <p class="text-green-100 mt-2">내 지역의 대표 상담센터와 직접 통화하세요</p>
          </div>

          <div class="p-6 space-y-6">
            {/* 지역 선택 */}
            <div>
              <label class="block text-sm font-medium text-gray-700 mb-2">
                <i class="fas fa-map-marker-alt mr-1 text-green-500"></i>시/도 선택
              </label>
              <select id="sidoSelect" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-green-500">
                <option value="">시/도를 선택하세요</option>
              </select>
            </div>

            <div id="sigunguContainer" class="hidden">
              <label class="block text-sm font-medium text-gray-700 mb-2">
                <i class="fas fa-map-marker-alt mr-1 text-emerald-500"></i>시/군/구 선택
              </label>
              <select id="sigunguSelect" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-green-500">
                <option value="">시/군/구를 선택하세요</option>
              </select>
            </div>

            {/* 상담센터 목록 */}
            <div id="centerListContainer" class="hidden">
              <h4 class="text-lg font-bold text-gray-900 mb-4">
                <i class="fas fa-building mr-2 text-green-600"></i>대표 상담센터
              </h4>
              <div id="centerList" class="space-y-3"></div>
            </div>

            {/* 안내 메시지 */}
            <div id="noResultMessage" class="hidden">
              <div class="bg-yellow-50 border border-yellow-200 rounded-lg p-4">
                <p class="text-yellow-800 text-center">
                  <i class="fas fa-info-circle mr-2"></i>
                  해당 지역에 등록된 상담센터가 없습니다.<br/>
                  전체 상담은 <a href="tel:0507-1310-5873" class="text-blue-600 font-bold underline">0507-1310-5873</a>으로 연락주세요.
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <script dangerouslySetInnerHTML={{
        __html: `
        // 전국 시도 및 시군구 데이터
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

        // 시도 선택 옵션 생성
        const sidoSelect = document.getElementById('sidoSelect');
        Object.keys(regionData).forEach(sido => {
          const option = document.createElement('option');
          option.value = sido;
          option.textContent = sido;
          sidoSelect.appendChild(option);
        });

        // 시도 선택 시 시군구 로드
        sidoSelect.addEventListener('change', function() {
          const sigunguContainer = document.getElementById('sigunguContainer');
          const sigunguSelect = document.getElementById('sigunguSelect');
          const sido = this.value;
          
          // 이전 선택 초기화
          sigunguSelect.innerHTML = '<option value="">시/군/구를 선택하세요</option>';
          document.getElementById('centerListContainer').classList.add('hidden');
          document.getElementById('noResultMessage').classList.add('hidden');
          
          if (sido) {
            sigunguContainer.classList.remove('hidden');
            regionData[sido].forEach(sigungu => {
              const option = document.createElement('option');
              option.value = sigungu;
              option.textContent = sigungu;
              sigunguSelect.appendChild(option);
            });
          } else {
            sigunguContainer.classList.add('hidden');
          }
        });

        // 시군구 선택 시 상담센터 로드
        document.getElementById('sigunguSelect').addEventListener('change', async function() {
          const sido = sidoSelect.value;
          const sigungu = this.value;
          
          if (!sido || !sigungu) return;
          
          const regionKey = sido + '_' + sigungu;
          
          try {
            const response = await axios.get('/api/regional-centers?region=' + encodeURIComponent(regionKey));
            const centers = response.data.centers || [];
            
            const centerListContainer = document.getElementById('centerListContainer');
            const centerList = document.getElementById('centerList');
            const noResultMessage = document.getElementById('noResultMessage');
            
            if (centers.length > 0) {
              centerList.innerHTML = centers.map(center => \`
                <div class="bg-gradient-to-r from-green-50 to-emerald-50 border-2 border-green-200 rounded-xl p-4 hover:shadow-lg transition-shadow">
                  <div class="flex items-start justify-between">
                    <div class="flex-1">
                      <h5 class="font-bold text-lg text-gray-900 mb-2">
                        <i class="fas fa-building text-green-600 mr-2"></i>\${center.facilityName}
                      </h5>
                      <p class="text-sm text-gray-600 mb-3">
                        <i class="fas fa-tag text-purple-500 mr-1"></i>\${center.facilityType}
                      </p>
                      <div class="flex items-center mb-2">
                        <i class="fas fa-user text-blue-500 mr-2"></i>
                        <span class="text-sm text-gray-700">\${center.managerName}</span>
                      </div>
                    </div>
                    <a href="tel:\${center.managerPhone}" 
                       class="bg-gradient-to-r from-green-500 to-emerald-500 text-white px-6 py-3 rounded-lg hover:from-green-600 hover:to-emerald-600 transform hover:scale-105 transition-all shadow-md flex items-center">
                      <i class="fas fa-phone-alt mr-2"></i>
                      <span class="font-bold">\${center.managerPhone}</span>
                    </a>
                  </div>
                </div>
              \`).join('');
              centerListContainer.classList.remove('hidden');
              noResultMessage.classList.add('hidden');
            } else {
              centerListContainer.classList.add('hidden');
              noResultMessage.classList.remove('hidden');
            }
          } catch (error) {
            console.error('상담센터 로드 실패:', error);
            document.getElementById('centerListContainer').classList.add('hidden');
            document.getElementById('noResultMessage').classList.remove('hidden');
          }
        });

        // 시설 입점 폼 - 시도 옵션 생성
        const facilitySidoSelect = document.getElementById('facilitySido');
        Object.keys(regionData).forEach(sido => {
          const option = document.createElement('option');
          option.value = sido;
          option.textContent = sido;
          facilitySidoSelect.appendChild(option);
        });

        // 시설 입점 폼 - 시도 선택 시 시군구 로드
        facilitySidoSelect.addEventListener('change', function() {
          const facilitySigunguSelect = document.getElementById('facilitySigungu');
          const sido = this.value;
          
          facilitySigunguSelect.innerHTML = '<option value="">시/군/구를 선택하세요</option>';
          
          if (sido) {
            facilitySigunguSelect.disabled = false;
            regionData[sido].forEach(sigungu => {
              const option = document.createElement('option');
              option.value = sigungu;
              option.textContent = sigungu;
              facilitySigunguSelect.appendChild(option);
            });
          } else {
            facilitySigunguSelect.disabled = true;
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
            facilityAddress: document.getElementById('facilityAddress').value,
            managerName: document.getElementById('managerName').value,
            managerPhone: document.getElementById('managerPhone').value,
          };
          
          try {
            const response = await axios.post('/api/partner', data);
            alert(response.data.message);
            e.target.reset();
            document.getElementById('facilitySigungu').disabled = true;
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
app.get('/admin', async (c) => {
  if (await isAdmin(c)) {
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
app.get('/admin/dashboard', async (c) => {
  if (!(await isAdmin(c))) {
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
            <span class="ml-4 text-sm text-gray-500 font-normal">(지역별 대표 상담센터로 지정하려면 체크하세요 - 최대 4개)</span>
          </h3>
          <div class="overflow-x-auto">
            <table class="w-full">
              <thead class="bg-gray-50">
                <tr>
                  <th class="px-4 py-3 text-left">선택</th>
                  <th class="px-4 py-3 text-left">시설명</th>
                  <th class="px-4 py-3 text-left">유형</th>
                  <th class="px-4 py-3 text-left">시설 주소</th>
                  <th class="px-4 py-3 text-left">담당자</th>
                  <th class="px-4 py-3 text-left">연락처</th>
                  <th class="px-4 py-3 text-left">지역 설정</th>
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
        // 지역 데이터
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
        
        async function loadData() {
          try {
            const response = await axios.get('/api/admin/data');
            const { partners, familyCare, regionalCenters } = response.data;
            
            document.getElementById('partnerCount').textContent = partners.length;
            document.getElementById('familyCareCount').textContent = familyCare.length;
            
            const partnerList = document.getElementById('partnerList');
            partnerList.innerHTML = partners.map((p, index) => {
              const regionKey = p.regionKey || '';
              const isRegionalCenter = Object.values(regionalCenters).some(centers => 
                centers.some(c => c.id === p.id)
              );
              
              const fullAddress = p.facilitySido && p.facilitySigungu 
                ? \`\${p.facilitySido} \${p.facilitySigungu} \${p.facilityAddress || ''}\`
                : '미입력';
              
              return \`
              <tr class="border-t hover:bg-gray-50" id="partner-\${index}">
                <td class="px-4 py-3">
                  <input type="checkbox" 
                         class="w-5 h-5 text-green-600" 
                         \${isRegionalCenter ? 'checked' : ''}
                         onchange="toggleRegionalCenter(\${index}, '\${p.id}', this.checked)" />
                </td>
                <td class="px-4 py-3">\${p.facilityName}</td>
                <td class="px-4 py-3">\${p.facilityType}</td>
                <td class="px-4 py-3">
                  <div class="text-sm">\${fullAddress}</div>
                </td>
                <td class="px-4 py-3">\${p.managerName}</td>
                <td class="px-4 py-3">\${p.managerPhone}</td>
                <td class="px-4 py-3">
                  <div class="flex gap-2" id="region-selector-\${index}">
                    <select class="text-sm p-2 border rounded" id="sido-\${index}">
                      <option value="">시/도</option>
                    </select>
                    <select class="text-sm p-2 border rounded" id="sigungu-\${index}" disabled>
                      <option value="">시/군/구</option>
                    </select>
                    <button onclick="saveRegion(\${index})" class="bg-green-500 text-white px-3 py-1 rounded text-sm hover:bg-green-600">
                      저장
                    </button>
                  </div>
                  <div class="text-sm text-gray-600 mt-1" id="current-region-\${index}">
                    \${regionKey ? regionKey.replace('_', ' > ') : '미설정'}
                  </div>
                </td>
                <td class="px-4 py-3">\${new Date(p.createdAt).toLocaleDateString('ko-KR')}</td>
              </tr>
              \`;
            }).join('') || '<tr><td colspan="8" class="px-4 py-8 text-center text-gray-500">신청 내역이 없습니다</td></tr>';
            
            // 시도 옵션 생성
            partners.forEach((p, index) => {
              const sidoSelect = document.getElementById('sido-' + index);
              if (sidoSelect) {
                Object.keys(regionData).forEach(sido => {
                  const option = document.createElement('option');
                  option.value = sido;
                  option.textContent = sido;
                  sidoSelect.appendChild(option);
                });
                
                // 시도 변경 이벤트
                sidoSelect.addEventListener('change', function() {
                  const sigunguSelect = document.getElementById('sigungu-' + index);
                  sigunguSelect.innerHTML = '<option value="">시/군/구</option>';
                  sigunguSelect.disabled = false;
                  
                  if (this.value) {
                    regionData[this.value].forEach(sigungu => {
                      const option = document.createElement('option');
                      option.value = sigungu;
                      option.textContent = sigungu;
                      sigunguSelect.appendChild(option);
                    });
                  } else {
                    sigunguSelect.disabled = true;
                  }
                });
              }
            });
            
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
        
        // 지역 저장 함수
        window.saveRegion = async function(index) {
          const sido = document.getElementById('sido-' + index).value;
          const sigungu = document.getElementById('sigungu-' + index).value;
          
          if (!sido || !sigungu) {
            alert('시/도와 시/군/구를 모두 선택해주세요.');
            return;
          }
          
          const regionKey = sido + '_' + sigungu;
          
          try {
            const response = await axios.post('/api/admin/set-region', {
              partnerIndex: index,
              regionKey: regionKey
            });
            
            if (response.data.success) {
              alert('지역이 설정되었습니다.');
              loadData();
            }
          } catch (error) {
            alert('지역 설정 실패');
          }
        };
        
        // 대표 상담센터 토글
        window.toggleRegionalCenter = async function(index, partnerId, isChecked) {
          try {
            const response = await axios.post('/api/admin/toggle-regional-center', {
              partnerIndex: index,
              isChecked: isChecked
            });
            
            if (response.data.success) {
              if (!isChecked) {
                alert('대표 상담센터에서 제거되었습니다.');
              } else if (response.data.message) {
                alert(response.data.message);
                loadData(); // 체크 해제를 위해 다시 로드
              } else {
                alert('대표 상담센터로 지정되었습니다. (지역을 설정해주세요)');
              }
            }
          } catch (error) {
            alert('설정 실패');
            loadData();
          }
        };
        
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
    const { DB } = c.env
    const data = await c.req.json()
    const partnerId = 'partner_' + Date.now() + '_' + Math.random().toString(36).substring(2)
    const createdAt = new Date().toISOString()
    
    await DB.prepare(`
      INSERT INTO partners (
        id, facility_name, facility_type, facility_sido, facility_sigungu, 
        facility_address, manager_name, manager_phone, region_key, 
        is_regional_center, created_at
      ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    `).bind(
      partnerId,
      data.facilityName,
      data.facilityType,
      data.facilitySido || null,
      data.facilitySigungu || null,
      data.facilityAddress || null,
      data.managerName,
      data.managerPhone,
      '', // region_key will be set by admin
      0, // is_regional_center default false
      createdAt
    ).run()
    
    return c.json({ success: true, message: '파트너 등록이 완료되었습니다!' })
  } catch (error) {
    console.error('Partner registration error:', error)
    return c.json({ success: false, message: '등록 실패' }, 500)
  }
})

app.post('/api/family-care', async (c) => {
  try {
    const { DB } = c.env
    const data = await c.req.json()
    const familyCareId = 'family_' + Date.now() + '_' + Math.random().toString(36).substring(2)
    const createdAt = new Date().toISOString()
    
    await DB.prepare(`
      INSERT INTO family_care (
        id, guardian_name, guardian_phone, patient_name, patient_age, 
        region, requirements, created_at
      ) VALUES (?, ?, ?, ?, ?, ?, ?, ?)
    `).bind(
      familyCareId,
      data.guardianName,
      data.guardianPhone,
      data.patientName,
      parseInt(data.patientAge),
      data.region,
      data.requirements || null,
      createdAt
    ).run()
    
    return c.json({ success: true, message: '가족 간병 신청이 완료되었습니다!' })
  } catch (error) {
    console.error('Family care registration error:', error)
    return c.json({ success: false, message: '신청 실패' }, 500)
  }
})

app.post('/api/admin/login', async (c) => {
  try {
    const { DB } = c.env
    const { password } = await c.req.json()
    if (password === ADMIN_CONFIG.password) {
      const sessionId = generateSessionId()
      const createdAt = new Date().toISOString()
      const expiresAt = new Date(Date.now() + 3600 * 1000).toISOString() // 1시간 후
      
      await DB.prepare(`
        INSERT INTO admin_sessions (session_id, created_at, expires_at)
        VALUES (?, ?, ?)
      `).bind(sessionId, createdAt, expiresAt).run()
      
      setCookie(c, ADMIN_CONFIG.sessionKey, sessionId, {
        httpOnly: true,
        maxAge: 3600
      })
      return c.json({ success: true })
    }
    return c.json({ success: false, message: '비밀번호가 올바르지 않습니다.' }, 401)
  } catch (error) {
    console.error('Admin login error:', error)
    return c.json({ success: false, message: '로그인 실패' }, 500)
  }
})

app.post('/api/admin/logout', async (c) => {
  try {
    const { DB } = c.env
    const sessionId = getCookie(c, ADMIN_CONFIG.sessionKey)
    if (sessionId) {
      await DB.prepare('DELETE FROM admin_sessions WHERE session_id = ?')
        .bind(sessionId).run()
    }
    setCookie(c, ADMIN_CONFIG.sessionKey, '', { maxAge: 0 })
    return c.json({ success: true })
  } catch (error) {
    console.error('Admin logout error:', error)
    return c.json({ success: true }) // 로그아웃은 항상 성공으로 처리
  }
})

app.get('/api/admin/data', async (c) => {
  if (!(await isAdmin(c))) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const { DB } = c.env
    
    // Partners 데이터 조회
    const partnersResult = await DB.prepare(
      'SELECT * FROM partners ORDER BY created_at DESC'
    ).all()
    
    // Family care 데이터 조회
    const familyCareResult = await DB.prepare(
      'SELECT * FROM family_care ORDER BY created_at DESC'
    ).all()
    
    // Regional centers 데이터 조회
    const regionalCentersResult = await DB.prepare(
      'SELECT * FROM regional_centers ORDER BY created_at DESC'
    ).all()
    
    // Partners 데이터를 frontend 형식으로 변환
    const partners = partnersResult.results.map((p: any) => ({
      id: p.id,
      facilityName: p.facility_name,
      facilityType: p.facility_type,
      facilitySido: p.facility_sido,
      facilitySigungu: p.facility_sigungu,
      facilityAddress: p.facility_address,
      managerName: p.manager_name,
      managerPhone: p.manager_phone,
      regionKey: p.region_key,
      isRegionalCenter: p.is_regional_center === 1,
      createdAt: p.created_at
    }))
    
    // Family care 데이터를 frontend 형식으로 변환
    const familyCare = familyCareResult.results.map((f: any) => ({
      id: f.id,
      guardianName: f.guardian_name,
      guardianPhone: f.guardian_phone,
      patientName: f.patient_name,
      patientAge: f.patient_age,
      region: f.region,
      requirements: f.requirements,
      createdAt: f.created_at
    }))
    
    // Regional centers를 regionKey별로 그룹화
    const regionalCenters: Record<string, any[]> = {}
    regionalCentersResult.results.forEach((rc: any) => {
      if (!regionalCenters[rc.region_key]) {
        regionalCenters[rc.region_key] = []
      }
      regionalCenters[rc.region_key].push({
        id: rc.partner_id,
        facilityName: rc.facility_name,
        facilityType: rc.facility_type,
        managerName: rc.manager_name,
        managerPhone: rc.manager_phone
      })
    })
    
    return c.json({ partners, familyCare, regionalCenters })
  } catch (error) {
    console.error('Admin data fetch error:', error)
    return c.json({ error: 'Data fetch failed' }, 500)
  }
})

// 지역 설정 API
app.post('/api/admin/set-region', async (c) => {
  if (!(await isAdmin(c))) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const { DB } = c.env
    const { partnerIndex, regionKey } = await c.req.json()
    
    // 모든 파트너 조회 (순서 유지를 위해)
    const partnersResult = await DB.prepare(
      'SELECT id FROM partners ORDER BY created_at DESC'
    ).all()
    
    if (partnerIndex >= 0 && partnerIndex < partnersResult.results.length) {
      const partnerId = partnersResult.results[partnerIndex].id
      
      await DB.prepare(
        'UPDATE partners SET region_key = ?, updated_at = ? WHERE id = ?'
      ).bind(regionKey, new Date().toISOString(), partnerId).run()
      
      return c.json({ success: true })
    }
    return c.json({ success: false, message: '파트너를 찾을 수 없습니다.' }, 404)
  } catch (error) {
    console.error('Set region error:', error)
    return c.json({ success: false, message: '설정 실패' }, 500)
  }
})

// 대표 상담센터 토글 API
app.post('/api/admin/toggle-regional-center', async (c) => {
  if (!(await isAdmin(c))) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const { DB } = c.env
    const { partnerIndex, isChecked } = await c.req.json()
    
    // 모든 파트너 조회 (순서 유지를 위해)
    const partnersResult = await DB.prepare(
      'SELECT * FROM partners ORDER BY created_at DESC'
    ).all()
    
    if (partnerIndex < 0 || partnerIndex >= partnersResult.results.length) {
      return c.json({ success: false, message: '파트너를 찾을 수 없습니다.' }, 404)
    }
    
    const partner: any = partnersResult.results[partnerIndex]
    const regionKey = partner.region_key
    
    if (isChecked) {
      // 체크: 대표 상담센터로 추가
      if (!regionKey) {
        return c.json({ success: true, message: '먼저 지역을 설정해주세요.' })
      }
      
      // 해당 지역의 대표 상담센터 개수 확인
      const countResult = await DB.prepare(
        'SELECT COUNT(*) as count FROM regional_centers WHERE region_key = ?'
      ).bind(regionKey).first()
      
      if (countResult && (countResult.count as number) >= 4) {
        return c.json({ 
          success: false, 
          message: '해당 지역은 이미 4개의 대표 상담센터가 등록되어 있습니다. 다른 센터를 제거한 후 추가해주세요.' 
        })
      }
      
      // 중복 체크
      const existsResult = await DB.prepare(
        'SELECT id FROM regional_centers WHERE region_key = ? AND partner_id = ?'
      ).bind(regionKey, partner.id).first()
      
      if (!existsResult) {
        // Regional centers 테이블에 추가
        await DB.prepare(`
          INSERT INTO regional_centers (
            region_key, partner_id, facility_name, facility_type, 
            manager_name, manager_phone, created_at
          ) VALUES (?, ?, ?, ?, ?, ?, ?)
        `).bind(
          regionKey,
          partner.id,
          partner.facility_name,
          partner.facility_type,
          partner.manager_name,
          partner.manager_phone,
          new Date().toISOString()
        ).run()
        
        // Partners 테이블의 is_regional_center 플래그 업데이트
        await DB.prepare(
          'UPDATE partners SET is_regional_center = 1, updated_at = ? WHERE id = ?'
        ).bind(new Date().toISOString(), partner.id).run()
      }
    } else {
      // 체크 해제: 대표 상담센터에서 제거
      if (regionKey) {
        await DB.prepare(
          'DELETE FROM regional_centers WHERE region_key = ? AND partner_id = ?'
        ).bind(regionKey, partner.id).run()
        
        // Partners 테이블의 is_regional_center 플래그 업데이트
        await DB.prepare(
          'UPDATE partners SET is_regional_center = 0, updated_at = ? WHERE id = ?'
        ).bind(new Date().toISOString(), partner.id).run()
      }
    }
    
    return c.json({ success: true })
  } catch (error) {
    console.error('Toggle regional center error:', error)
    return c.json({ success: false, message: '설정 실패' }, 500)
  }
})

// 지역별 상담센터 조회 API
app.get('/api/regional-centers', async (c) => {
  const region = c.req.query('region')
  
  if (!region) {
    return c.json({ centers: [] })
  }
  
  try {
    const { DB } = c.env
    const centersResult = await DB.prepare(
      'SELECT * FROM regional_centers WHERE region_key = ? ORDER BY created_at ASC LIMIT 4'
    ).bind(region).all()
    
    const centers = centersResult.results.map((rc: any) => ({
      facilityName: rc.facility_name,
      facilityType: rc.facility_type,
      managerName: rc.manager_name,
      managerPhone: rc.manager_phone
    }))
    
    return c.json({ centers })
  } catch (error) {
    console.error('Regional centers fetch error:', error)
    return c.json({ centers: [] })
  }
})

export default app

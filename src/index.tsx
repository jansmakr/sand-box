import { Hono } from 'hono'
import { renderer } from './renderer'
import { cors } from 'hono/cors'
import { serveStatic } from 'hono/cloudflare-workers'
import { getCookie, setCookie } from 'hono/cookie'

const app = new Hono()

const ADMIN_CONFIG = { password: '5874', sessionKey: 'admin_session' }
const dataStore = { partners: [] as any[], familyCare: [] as any[] }
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
                <a href="https://www.carejoa.com" 
                   target="_blank" rel="noopener noreferrer"
                   class="flex items-center justify-center bg-white text-black border-2 border-black py-4 px-6 rounded-xl shadow-lg hover:bg-gray-50 transition-all duration-300 transform hover:scale-105">
                  <i class="fas fa-calculator mr-3"></i>실시간 견적 & 상담 신청하기
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
        document.getElementById('partnerForm').addEventListener('submit', async (e) => {
          e.preventDefault();
          const data = {
            facilityName: document.getElementById('facilityName').value,
            facilityType: document.getElementById('facilityType').value,
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

export default app

import { Hono } from 'hono'
import { renderer } from './renderer'
import { cors } from 'hono/cors'
import { serveStatic } from 'hono/cloudflare-workers'
import { getCookie, setCookie } from 'hono/cookie'

type Bindings = {
  DB: D1Database
  ADMIN_PASSWORD: string
}

const app = new Hono<{ Bindings: Bindings }>()

const ADMIN_CONFIG = { sessionKey: 'admin_session' }

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

// 데이터베이스 자동 초기화 미들웨어
let dbInitialized = false
app.use('*', async (c, next) => {
  if (!dbInitialized && c.env.DB) {
    try {
      console.log('🔧 자동 데이터베이스 초기화 시작...')
      const { DB } = c.env
      
      // 필수 테이블들 생성
      await DB.prepare(`CREATE TABLE IF NOT EXISTS admin_sessions (session_id TEXT PRIMARY KEY, created_at DATETIME DEFAULT CURRENT_TIMESTAMP, expires_at DATETIME NOT NULL)`).run()
      await DB.prepare(`CREATE TABLE IF NOT EXISTS partners (id TEXT PRIMARY KEY, facility_name TEXT NOT NULL, facility_type TEXT NOT NULL, facility_sido TEXT, facility_sigungu TEXT, facility_address TEXT, manager_name TEXT NOT NULL, manager_phone TEXT NOT NULL, region_key TEXT, is_regional_center INTEGER DEFAULT 0, created_at DATETIME DEFAULT CURRENT_TIMESTAMP, updated_at DATETIME DEFAULT CURRENT_TIMESTAMP)`).run()
      await DB.prepare(`CREATE TABLE IF NOT EXISTS family_care (id TEXT PRIMARY KEY, guardian_name TEXT NOT NULL, guardian_phone TEXT NOT NULL, patient_name TEXT NOT NULL, patient_age INTEGER, region TEXT, requirements TEXT, created_at DATETIME DEFAULT CURRENT_TIMESTAMP)`).run()
      await DB.prepare(`CREATE TABLE IF NOT EXISTS regional_centers (id TEXT PRIMARY KEY, region_key TEXT NOT NULL, partner_id TEXT NOT NULL, facility_id INTEGER, facility_name TEXT NOT NULL, facility_type TEXT NOT NULL, manager_name TEXT NOT NULL, manager_phone TEXT NOT NULL, created_at DATETIME DEFAULT CURRENT_TIMESTAMP)`).run()
      await DB.prepare(`CREATE TABLE IF NOT EXISTS facilities (id INTEGER PRIMARY KEY AUTOINCREMENT, facility_type TEXT NOT NULL, name TEXT NOT NULL, postal_code TEXT, address TEXT NOT NULL, phone TEXT, latitude REAL NOT NULL, longitude REAL NOT NULL, sido TEXT NOT NULL, sigungu TEXT NOT NULL, created_at DATETIME DEFAULT CURRENT_TIMESTAMP, updated_at DATETIME DEFAULT CURRENT_TIMESTAMP)`).run()
      
      // regional_centers 테이블에 facility_id 컬럼이 없으면 추가
      try {
        await DB.prepare(`ALTER TABLE regional_centers ADD COLUMN facility_id INTEGER`).run()
        console.log('✅ regional_centers 테이블에 facility_id 컬럼 추가됨')
      } catch (error) {
        // 컬럼이 이미 존재하면 에러 무시
        console.log('ℹ️ regional_centers.facility_id 컬럼이 이미 존재합니다')
      }
      
      dbInitialized = true
      console.log('✅ 데이터베이스 자동 초기화 완료')
    } catch (error) {
      console.error('⚠️ 데이터베이스 초기화 경고:', error)
      // 초기화 실패해도 계속 진행 (테이블이 이미 존재할 수 있음)
      dbInitialized = true
    }
  }
  await next()
})

app.use('/api/*', cors())
app.use('/static/*', serveStatic({ root: './public' }))

// SEO 파일 서빙 (robots.txt, sitemap.xml)
app.get('/robots.txt', (c) => {
  const robotsTxt = `# robots.txt for carejoa.kr

# 모든 검색 엔진 허용
User-agent: *
Allow: /

# 크롤링 속도 제한 (초당 1회)
Crawl-delay: 1

# 관리자 페이지 차단
Disallow: /admin
Disallow: /api/admin/*

# 사이트맵 위치
Sitemap: https://carejoa.kr/sitemap.xml

# 주요 검색엔진별 설정
User-agent: Googlebot
Allow: /

User-agent: Yeti
Allow: /

User-agent: Bingbot
Allow: /

User-agent: Slurp
Allow: /`
  return c.text(robotsTxt, 200, {
    'Content-Type': 'text/plain; charset=utf-8'
  })
})

app.get('/sitemap.xml', (c) => {
  const sitemapXml = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9
        http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
  
  <!-- 메인 페이지 -->
  <url>
    <loc>https://carejoa.kr/</loc>
    <lastmod>2025-10-23</lastmod>
    <changefreq>daily</changefreq>
    <priority>1.0</priority>
  </url>
  
  <!-- 요양시설 검색 페이지 -->
  <url>
    <loc>https://carejoa.kr/search</loc>
    <lastmod>2025-10-23</lastmod>
    <changefreq>daily</changefreq>
    <priority>0.9</priority>
  </url>
  
  <!-- 가족간병 등록 페이지 -->
  <url>
    <loc>https://carejoa.kr/family-care-register</loc>
    <lastmod>2025-10-23</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  
  <!-- 파트너 등록 페이지 -->
  <url>
    <loc>https://carejoa.kr/partner-register</loc>
    <lastmod>2025-10-23</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  
  <!-- 지역 파트너 등록 페이지 -->
  <url>
    <loc>https://carejoa.kr/regional-partner-register</loc>
    <lastmod>2025-10-23</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.7</priority>
  </url>
  
</urlset>`
  return c.text(sitemapXml, 200, {
    'Content-Type': 'application/xml; charset=utf-8'
  })
})

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
        {/* 상단 안내 메시지 제거 - 하단에 동일 내용 있음 */}

        <div class="max-w-6xl mx-auto px-4 py-8 md:py-16">
          <div class="grid grid-cols-1 lg:grid-cols-2 gap-8 lg:gap-16 items-center">
            <div class="space-y-6 md:space-y-8">
              <div>
                <h1 class="text-3xl md:text-5xl lg:text-6xl font-bold text-gray-900 mb-4 md:mb-6 leading-tight">
                  이젠 찾지 말고<br />
                  <span class="text-red-600">고르세요</span><br />
                  <span class="text-blue-600">케어조아</span>
                </h1>
                <p class="text-base md:text-xl text-gray-600 mb-6 md:mb-8 leading-relaxed">
                  희망하는 지역의, 희망하는 시설만!<br class="md:hidden" />
                  <span class="hidden md:inline"> </span>입력하면<br />
                  그 지역 <strong class="text-blue-600">모든 시설의 정보를</strong><br class="md:hidden" />
                  <span class="hidden md:inline"> </span>실시간으로 받아볼 수 있어요
                </p>
                
                <div class="bg-gradient-to-r from-blue-50 to-purple-50 border border-blue-200 rounded-xl p-3 md:p-4 mb-6">
                  <div class="flex flex-col md:flex-row items-center justify-center text-center gap-1 md:gap-0">
                    <div class="flex items-center text-xs md:text-base">
                      <i class="fas fa-certificate text-blue-600 mr-1 md:mr-2 text-sm md:text-base"></i>
                      <span class="text-blue-800 font-semibold">특허기반 실시간 요양</span>
                    </div>
                    <div class="flex items-center text-xs md:text-base">
                      <span class="text-blue-800 font-semibold">견적 및 상담 플랫폼</span>
                      <i class="fas fa-check-circle text-green-600 ml-1 md:ml-2 text-sm md:text-base"></i>
                    </div>
                  </div>
                </div>
              </div>

              {/* C형: 혼합형 레이아웃 - 위 2개 큰 카드 + 아래 2개 작은 카드 */}
              <div class="flex flex-col gap-3 md:gap-4 mb-8">
                {/* 상단: 2개 큰 카드 */}
                <div class="grid grid-cols-2 gap-3 md:gap-4">
                  {/* Android 앱 다운로드 */}
                  <a href="https://play.google.com/store/apps/details?id=app.netlify.std_care_joa.twa" 
                     target="_blank" rel="noopener noreferrer"
                     class="flex flex-col items-center justify-center bg-gradient-to-br from-blue-500 to-blue-600 text-white p-6 md:p-8 rounded-2xl shadow-lg hover:shadow-xl transition-all duration-300 transform hover:scale-105">
                    <span class="text-5xl md:text-6xl mb-3">📱</span>
                    <span class="text-sm md:text-lg font-bold text-center">Android</span>
                    <span class="text-xs md:text-base font-medium text-center text-blue-100">앱 다운로드</span>
                  </a>

                  {/* 실시간 견적 & 상담 */}
                  <a href="https://www.carejoa.com" 
                     target="_blank" rel="noopener noreferrer"
                     class="flex flex-col items-center justify-center bg-gradient-to-br from-white to-gray-50 text-gray-900 p-6 md:p-8 rounded-2xl shadow-lg hover:shadow-xl transition-all duration-300 transform hover:scale-105 border-2 border-gray-200">
                    <span class="text-5xl md:text-6xl mb-3">📋</span>
                    <span class="text-sm md:text-lg font-bold text-center">실시간 견적</span>
                    <span class="text-xs md:text-base font-medium text-center text-gray-600">상담 신청</span>
                  </a>
                </div>

                {/* 하단: 2개 작은 카드 */}
                <div class="grid grid-cols-2 gap-3 md:gap-4">
                  {/* 지역별 전화상담 */}
                  <button 
                     onclick="document.getElementById('regionalCallModal').classList.remove('hidden')"
                     class="flex flex-col items-center justify-center bg-gradient-to-br from-green-500 to-emerald-600 text-white p-4 md:p-6 rounded-2xl shadow-lg hover:shadow-xl transition-all duration-300 transform hover:scale-105">
                    <span class="text-3xl md:text-4xl mb-2">📞</span>
                    <span class="text-xs md:text-base font-bold text-center">지역별 전화상담</span>
                  </button>

                  {/* 전국 요양시설 찾기 */}
                  <a href="/facilities" 
                     class="flex flex-col items-center justify-center bg-gradient-to-br from-purple-500 to-pink-500 text-white p-4 md:p-6 rounded-2xl shadow-lg hover:shadow-xl transition-all duration-300 transform hover:scale-105">
                    <span class="text-3xl md:text-4xl mb-2">🔍</span>
                    <span class="text-xs md:text-base font-bold text-center">전국 시설 찾기</span>
                  </a>
                </div>
              </div>

              <div class="grid grid-cols-3 sm:flex sm:flex-row items-center gap-2 sm:gap-6 text-xs md:text-base text-gray-600">
                <div class="flex flex-col sm:flex-row items-center text-center sm:text-left">
                  <span class="text-xl md:text-2xl mb-1 sm:mb-0 sm:mr-2">👥</span>
                  <span class="font-medium whitespace-nowrap">월 10만+<br class="sm:hidden" />이용자</span>
                </div>
                <div class="flex flex-col sm:flex-row items-center text-center sm:text-left">
                  <span class="text-xl md:text-2xl mb-1 sm:mb-0 sm:mr-2">🏥</span>
                  <span class="font-medium whitespace-nowrap">3,000+<br class="sm:hidden" />등록시설</span>
                </div>
                <div class="flex flex-col sm:flex-row items-center text-center sm:text-left">
                  <span class="text-xl md:text-2xl mb-1 sm:mb-0 sm:mr-2">⭐</span>
                  <span class="font-medium whitespace-nowrap">평균 4.5점<br class="sm:hidden" />우수</span>
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
      <div class="fixed bottom-0 left-0 right-0 bg-white border-t border-gray-100 shadow-lg z-50 md:hidden" style="padding-bottom: env(safe-area-inset-bottom);">
        <div class="flex justify-around items-center py-2 px-1">
          <a href="https://www.carejoa.com" target="_blank" rel="noopener noreferrer" class="flex flex-col items-center py-2 px-2 hover:bg-gray-50 rounded-lg transition-colors min-w-0 flex-1">
            <div class="text-xl mb-1">📋</div>
            <span class="text-[9px] text-gray-700 font-medium whitespace-nowrap">견적상담</span>
          </a>
          <button onclick="document.getElementById('regionalCallModal').classList.remove('hidden')" class="flex flex-col items-center py-2 px-2 hover:bg-gray-50 rounded-lg transition-colors min-w-0 flex-1">
            <div class="text-xl mb-1">📞</div>
            <span class="text-[9px] text-gray-700 font-medium whitespace-nowrap">전화상담</span>
          </button>
          <a href="https://open.kakao.com/o/siR7YBUh" target="_blank" rel="noopener noreferrer" class="flex flex-col items-center py-2 px-2 hover:bg-gray-50 rounded-lg transition-colors min-w-0 flex-1">
            <div class="text-xl mb-1">💬</div>
            <span class="text-[9px] text-gray-700 font-medium whitespace-nowrap">채팅문의</span>
          </a>
          <a href="https://www.carejoa.com" target="_blank" rel="noopener noreferrer" class="flex flex-col items-center py-2 px-2 hover:bg-gray-50 rounded-lg transition-colors min-w-0 flex-1">
            <div class="text-xl mb-1">👤</div>
            <span class="text-[9px] text-gray-700 font-medium whitespace-nowrap">마이페이지</span>
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

      {/* 고객 후기 섹션 */}
      <section class="py-16 md:py-20 bg-white">
        <div class="max-w-7xl mx-auto px-4">
          <div class="text-center mb-12 md:mb-16">
            <div class="inline-block bg-gradient-to-r from-yellow-400 to-orange-500 text-white text-xs md:text-sm font-bold px-4 py-2 rounded-full mb-4">
              ⭐ 실제 이용 고객님들의 생생한 후기
            </div>
            <h3 class="text-2xl md:text-4xl font-bold text-gray-900 mb-4">
              케어조아와 함께한 <span class="text-teal-600">따뜻한 이야기</span>
            </h3>
            <p class="text-sm md:text-lg text-gray-600">
              10만 명 이상의 고객님들이 케어조아를 통해 최적의 요양시설을 찾으셨습니다
            </p>
          </div>

          <div class="grid md:grid-cols-3 gap-6 md:gap-8">
            {/* 후기 1 */}
            <div class="bg-gradient-to-br from-blue-50 to-white rounded-2xl p-6 md:p-8 shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-2">
              <div class="flex items-center mb-4">
                <div class="flex text-yellow-400 text-xl md:text-2xl">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                </div>
                <span class="ml-2 text-sm md:text-base font-bold text-gray-700">5.0</span>
              </div>
              
              <p class="text-sm md:text-base text-gray-700 leading-relaxed mb-6">
                "어머니께 맞는 요양원을 찾느라 몇 달을 고민했는데, 케어조아 덕분에 단 3일 만에 완벽한 곳을 찾았습니다. 
                상담사님이 정말 친절하고 전문적이셨어요. 어머니도 너무 만족하고 계십니다."
              </p>
              
              <div class="flex items-center">
                <div class="w-12 h-12 bg-gradient-to-br from-blue-400 to-blue-600 rounded-full flex items-center justify-center text-white font-bold text-lg">
                  김
                </div>
                <div class="ml-3">
                  <div class="font-bold text-gray-900">김민지 님</div>
                  <div class="text-xs md:text-sm text-gray-500">서울 강남구 · 요양원</div>
                </div>
              </div>
            </div>

            {/* 후기 2 */}
            <div class="bg-gradient-to-br from-green-50 to-white rounded-2xl p-6 md:p-8 shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-2">
              <div class="flex items-center mb-4">
                <div class="flex text-yellow-400 text-xl md:text-2xl">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                </div>
                <span class="ml-2 text-sm md:text-base font-bold text-gray-700">5.0</span>
              </div>
              
              <p class="text-sm md:text-base text-gray-700 leading-relaxed mb-6">
                "여러 요양병원을 직접 방문하는 것도 힘들고 비교하기도 어려웠는데, 케어조아에서 한 번에 비교하고 
                견적까지 받을 수 있어서 너무 편했습니다. 시간과 비용을 많이 절약했어요!"
              </p>
              
              <div class="flex items-center">
                <div class="w-12 h-12 bg-gradient-to-br from-green-400 to-green-600 rounded-full flex items-center justify-center text-white font-bold text-lg">
                  이
                </div>
                <div class="ml-3">
                  <div class="font-bold text-gray-900">이정훈 님</div>
                  <div class="text-xs md:text-sm text-gray-500">부산 해운대구 · 요양병원</div>
                </div>
              </div>
            </div>

            {/* 후기 3 */}
            <div class="bg-gradient-to-br from-purple-50 to-white rounded-2xl p-6 md:p-8 shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-2">
              <div class="flex items-center mb-4">
                <div class="flex text-yellow-400 text-xl md:text-2xl">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                </div>
                <span class="ml-2 text-sm md:text-base font-bold text-gray-700">5.0</span>
              </div>
              
              <p class="text-sm md:text-base text-gray-700 leading-relaxed mb-6">
                "처음에는 온라인으로 이런 중요한 결정을 하는 게 걱정됐는데, 상담사님이 직접 시설을 방문한 경험을 
                바탕으로 상세하게 설명해주셔서 안심이 되었습니다. 정말 감사드립니다."
              </p>
              
              <div class="flex items-center">
                <div class="w-12 h-12 bg-gradient-to-br from-purple-400 to-purple-600 rounded-full flex items-center justify-center text-white font-bold text-lg">
                  박
                </div>
                <div class="ml-3">
                  <div class="font-bold text-gray-900">박수진 님</div>
                  <div class="text-xs md:text-sm text-gray-500">경기 성남시 · 주간보호센터</div>
                </div>
              </div>
            </div>
          </div>

          {/* 통계 요약 */}
          <div class="mt-12 md:mt-16 bg-gradient-to-r from-teal-500 to-emerald-600 rounded-2xl p-6 md:p-10">
            <div class="grid grid-cols-2 md:grid-cols-4 gap-6 md:gap-8 text-center text-white">
              <div>
                <div class="text-3xl md:text-5xl font-bold mb-2">4.8<span class="text-2xl md:text-3xl">/5.0</span></div>
                <div class="text-xs md:text-sm opacity-90">평균 만족도</div>
              </div>
              <div>
                <div class="text-3xl md:text-5xl font-bold mb-2">10만+</div>
                <div class="text-xs md:text-sm opacity-90">누적 이용자</div>
              </div>
              <div>
                <div class="text-3xl md:text-5xl font-bold mb-2">3,000+</div>
                <div class="text-xs md:text-sm opacity-90">등록 시설</div>
              </div>
              <div>
                <div class="text-3xl md:text-5xl font-bold mb-2">95%</div>
                <div class="text-xs md:text-sm opacity-90">재이용 의향</div>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* 유튜브 소개 영상 */}
      <section class="py-12 bg-white">
        <div class="max-w-7xl mx-auto px-4">
          <div class="flex justify-center">
            <a href="https://youtu.be/lUQkWC8PRrM?si=l-AOOz72I0z0oWE1" 
               target="_blank" 
               rel="noopener noreferrer"
               class="group relative block rounded-xl overflow-hidden shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:scale-105 w-full max-w-sm">
              <img 
                src="https://img.youtube.com/vi/lUQkWC8PRrM/hqdefault.jpg" 
                alt="케어조아 소개 영상"
                class="w-full h-auto"
              />
              <div class="absolute inset-0 bg-black bg-opacity-0 group-hover:bg-opacity-20 transition-all duration-300 flex items-center justify-center">
                <div class="w-16 h-16 bg-red-600 rounded-full flex items-center justify-center opacity-90 group-hover:opacity-100 transition-opacity">
                  <i class="fas fa-play text-white text-2xl ml-1"></i>
                </div>
              </div>
              <div class="absolute bottom-0 left-0 right-0 bg-gradient-to-t from-black to-transparent p-4">
                <p class="text-white text-sm font-semibold">
                  <i class="fab fa-youtube text-red-500 mr-2"></i>케어조아 소개 영상 보기
                </p>
              </div>
            </a>
          </div>
        </div>
      </section>

      {/* 요양시설 입점 섹션 */}
      <section id="partner-section" class="py-20 bg-gradient-to-br from-teal-50 to-emerald-50">
        <div class="max-w-7xl mx-auto px-4">
          <div class="text-center mb-12">
            <h3 class="text-3xl font-bold text-gray-900 mb-4">
              <i class="fas fa-handshake text-teal-600 mr-3"></i>요양시설 및 관련기관 입점신청
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
                  <i class="fas fa-handshake mr-2"></i>요양시설 및 관련기관 입점신청
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
                  <a href="tel:07070045902">070-7004-5902</a>
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
            <p class="text-xs text-gray-400">© 2025 케어조아. All rights reserved.</p>
          </div>
        </div>
      </footer>

      {/* 카카오톡 플로팅 버튼 (우측 하단) */}
      <a href="https://open.kakao.com/o/siR7YBUh" 
         target="_blank" 
         rel="noopener noreferrer"
         class="fixed bottom-20 md:bottom-6 right-4 md:right-6 z-40 bg-yellow-400 hover:bg-yellow-500 text-gray-900 w-14 h-14 md:w-16 md:h-16 rounded-full shadow-2xl flex items-center justify-center transition-all duration-300 transform hover:scale-110 group"
         onclick="if(window.trackEvent) trackEvent('kakao_chat_click', {location: 'floating_button'})">
        <i class="fas fa-comment-dots text-2xl md:text-3xl"></i>
        <span class="absolute -top-2 -right-2 bg-red-500 text-white text-xs font-bold px-2 py-1 rounded-full animate-pulse">
          1:1
        </span>
        <div class="absolute bottom-full right-0 mb-2 px-3 py-2 bg-gray-900 text-white text-sm rounded-lg whitespace-nowrap opacity-0 group-hover:opacity-100 transition-opacity pointer-events-none">
          카카오톡 상담
          <div class="absolute top-full right-4 w-0 h-0 border-l-4 border-r-4 border-t-4 border-transparent border-t-gray-900"></div>
        </div>
      </a>

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
                  전체 상담은 <a href="tel:02-6677-4915" class="text-blue-600 font-bold underline">02-6677-4915</a>로 연락주세요.
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

// 전국 요양시설 찾기 페이지
app.get('/facilities', (c) => {
  return c.render(
    <div>
      {/* Leaflet CSS */}
      <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" 
        integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY=" 
        crossorigin="" />
      
      {/* Leaflet JS */}
      <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"
        integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo="
        crossorigin=""></script>
      
      <header class="bg-white shadow-sm border-b sticky top-0 z-10">
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

      <section class="min-h-screen bg-gray-50 py-8">
        <div class="max-w-7xl mx-auto px-4">
          <div class="text-center mb-8">
            <h2 class="text-4xl font-bold text-gray-900 mb-4">
              <i class="fas fa-search-location text-purple-600 mr-3"></i>전국 요양시설 찾기
            </h2>
            <p class="text-lg text-gray-600" id="facilityCountHeader">전국 요양시설 정보를 확인하세요</p>
          </div>

          {/* 검색 필터 */}
          <div class="bg-white rounded-xl shadow-lg p-6 mb-6">
            <div class="grid md:grid-cols-4 gap-4">
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">
                  <i class="fas fa-map-marker-alt mr-1 text-blue-500"></i>시/도
                </label>
                <select id="filterSido" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-purple-500">
                  <option value="">전체</option>
                </select>
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">
                  <i class="fas fa-map-marker-alt mr-1 text-green-500"></i>시/군/구
                </label>
                <select id="filterSigungu" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-purple-500" disabled>
                  <option value="">전체</option>
                </select>
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">
                  <i class="fas fa-hospital mr-1 text-purple-500"></i>시설 유형
                </label>
                <select id="filterType" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-purple-500">
                  <option value="">전체</option>
                  <option value="요양병원">요양병원</option>
                  <option value="요양원">요양원</option>
                  <option value="재가복지센터">재가복지센터</option>
                  <option value="주야간보호">주야간보호</option>
                </select>
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">
                  <i class="fas fa-search mr-1 text-orange-500"></i>시설명 검색
                </label>
                <input type="text" id="searchKeyword" 
                  class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-purple-500" 
                  placeholder="시설명 입력" />
              </div>
            </div>
            
            <div class="flex gap-3 mt-4">
              <button onclick="searchFacilities()" 
                class="flex-1 bg-gradient-to-r from-purple-600 to-pink-600 text-white py-3 rounded-lg hover:from-purple-700 hover:to-pink-700 font-bold">
                <i class="fas fa-search mr-2"></i>검색
              </button>
              <button onclick="resetSearch()" 
                class="px-6 bg-gray-500 text-white py-3 rounded-lg hover:bg-gray-600 font-bold">
                <i class="fas fa-redo mr-2"></i>초기화
              </button>
            </div>
          </div>

          {/* 결과 통계 */}
          <div class="bg-gradient-to-r from-purple-500 to-pink-500 text-white rounded-xl p-4 mb-6">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-purple-100 text-sm">검색 결과</p>
                <p class="text-3xl font-bold" id="resultCount">0</p>
              </div>
              <i class="fas fa-hospital text-5xl text-purple-200"></i>
            </div>
          </div>

          {/* 지도 & 리스트 */}
          <div class="grid lg:grid-cols-2 gap-6">
            {/* 리스트 영역 */}
            <div class="bg-white rounded-xl shadow-lg overflow-hidden">
              <div class="bg-gradient-to-r from-purple-600 to-pink-600 text-white p-4">
                <h3 class="text-xl font-bold">
                  <i class="fas fa-list mr-2"></i>시설 목록
                </h3>
              </div>
              <div id="facilityList" class="h-[600px] overflow-y-auto p-4">
                <div class="text-center text-gray-500 py-20">
                  <i class="fas fa-search text-6xl mb-4"></i>
                  <p class="text-lg font-medium">검색 조건을 선택하고<br/>검색 버튼을 클릭하세요</p>
                </div>
              </div>
            </div>

            {/* 지도 영역 */}
            <div class="bg-white rounded-xl shadow-lg overflow-hidden">
              <div class="bg-gradient-to-r from-purple-600 to-pink-600 text-white p-4">
                <h3 class="text-xl font-bold">
                  <i class="fas fa-map-marked-alt mr-2"></i>지도로 보기
                </h3>
              </div>
              <div id="map" class="w-full h-[600px] bg-gray-100"></div>
            </div>
          </div>

          {/* 로딩 표시 */}
          <div id="loadingSpinner" class="hidden fixed inset-0 bg-black bg-opacity-50 z-50 flex items-center justify-center">
            <div class="bg-white rounded-xl p-8 text-center">
              <div class="animate-spin rounded-full h-16 w-16 border-b-4 border-purple-600 mx-auto mb-4"></div>
              <p class="text-lg font-bold text-gray-900">데이터 로딩 중...</p>
              <p class="text-sm text-gray-600 mt-2">잠시만 기다려주세요</p>
            </div>
          </div>
        </div>
      </section>

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
          "강원특별자치도": ["강릉시", "고성군", "동해시", "삼척시", "속초시", "양구군", "양양군", "영월군", "원주시", "인제군", "정선군", "철원군", "춘천시", "태백시", "평창군", "홍천군", "화천군", "횡성군"],
          "충청북도": ["괴산군", "단양군", "보은군", "영동군", "옥천군", "음성군", "제천시", "증평군", "진천군", "청주시", "충주시"],
          "충청남도": ["계룡시", "공주시", "금산군", "논산시", "당진시", "보령시", "부여군", "서산시", "서천군", "아산시", "예산군", "천안시", "청양군", "태안군", "홍성군"],
          "전북특별자치도": ["고창군", "군산시", "김제시", "남원시", "무주군", "부안군", "순창군", "완주군", "익산시", "임실군", "장수군", "전주시", "정읍시", "진안군"],
          "전라남도": ["강진군", "고흥군", "곡성군", "광양시", "구례군", "나주시", "담양군", "목포시", "무안군", "보성군", "순천시", "신안군", "여수시", "영광군", "영암군", "완도군", "장성군", "장흥군", "진도군", "함평군", "해남군", "화순군"],
          "경상북도": ["경산시", "경주시", "고령군", "구미시", "군위군", "김천시", "문경시", "봉화군", "상주시", "성주군", "안동시", "영덕군", "영양군", "영주시", "영천시", "예천군", "울릉군", "울진군", "의성군", "청도군", "청송군", "칠곡군", "포항시"],
          "경상남도": ["거제시", "거창군", "고성군", "김해시", "남해군", "밀양시", "사천시", "산청군", "양산시", "의령군", "진주시", "창녕군", "창원시", "통영시", "하동군", "함안군", "함양군", "합천군"],
          "제주특별자치도": ["서귀포시", "제주시"]
        };

        let allFacilities = [];
        let filteredFacilities = [];
        let map = null;
        let markers = [];

        // Leaflet 지도 초기화
        function initLeafletMap() {
          console.log('🗺️ Leaflet 지도 초기화 시작');
          
          // 지도 생성 (서울 중심)
          map = L.map('map').setView([37.5665, 126.9780], 7);
          
          // OpenStreetMap 타일 레이어 추가
          L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '© OpenStreetMap contributors',
            maxZoom: 19
          }).addTo(map);
          
          console.log('✅ Leaflet 지도 초기화 완료');
        }

        // 지도에 마커 표시
        function displayMarkersOnMap() {
          // 기존 마커 제거
          markers.forEach(marker => map.removeLayer(marker));
          markers = [];

          // 최대 100개 마커 표시
          const displayList = filteredFacilities.slice(0, 100);
          
          if (displayList.length === 0) return;

          // 시설 유형별 마커 색상
          const typeColors = {
            '요양병원': '#ef4444',    // 빨강
            '요양원': '#3b82f6',       // 파랑
            '재가복지센터': '#10b981', // 초록
            '주야간보호': '#f59e0b'    // 주황
          };

          displayList.forEach(facility => {
            if (!facility.lat || !facility.lng) return;

            // 커스텀 마커 아이콘
            const markerColor = typeColors[facility.type] || '#6b7280';
            const markerIcon = L.divIcon({
              className: 'custom-marker',
              html: \`<div style="background-color: \${markerColor}; width: 24px; height: 24px; border-radius: 50%; border: 2px solid white; box-shadow: 0 2px 4px rgba(0,0,0,0.3);"></div>\`,
              iconSize: [24, 24],
              iconAnchor: [12, 12]
            });

            // 마커 생성
            const marker = L.marker([facility.lat, facility.lng], {
              icon: markerIcon
            }).addTo(map);

            // 팝업 내용
            const popupContent = \`
              <div style="min-width:200px;">
                <div style="font-weight:bold;margin-bottom:5px;color:\${markerColor};font-size:12px;">
                  \${facility.type}
                </div>
                <div style="font-size:14px;margin-bottom:5px;font-weight:600;">
                  \${facility.name}
                </div>
                <div style="font-size:12px;color:#666;">
                  📍 \${facility.address}
                </div>
                <div style="font-size:11px;color:#999;margin-top:5px;">
                  \${facility.sido} \${facility.sigungu}
                </div>
              </div>
            \`;

            marker.bindPopup(popupContent);
            markers.push(marker);
          });

          // 첫 번째 시설로 지도 중심 이동
          if (displayList.length > 0 && displayList[0].lat && displayList[0].lng) {
            map.setView([displayList[0].lat, displayList[0].lng], 12);
          }
          
          console.log(\`📍 \${displayList.length}개 마커 표시 완료\`);
        }

        // 데이터베이스에서 시설 데이터 로드
        async function loadFacilitiesData() {
          try {
            document.getElementById('loadingSpinner').classList.remove('hidden');
            
            // 데이터베이스 API 호출
            const response = await fetch('/api/facilities-from-db');
            const data = await response.json();
            
            if (!data.success || !data.facilities) {
              throw new Error('데이터 로드 실패');
            }
            
            // 데이터베이스에서 가져온 데이터 변환
            allFacilities = data.facilities.map((f, idx) => ({
              id: f.id || idx + 1,
              type: f.facility_type || '',
              name: f.name || '',
              address: f.address || '',
              sido: f.sido || '',
              sigungu: f.sigungu || '',
              lat: parseFloat(f.latitude) || 0,
              lng: parseFloat(f.longitude) || 0
            }));
            
            console.log('✅ 로드된 시설 수:', allFacilities.length);
            
            // 데이터 검증 - 처음 5개 샘플 출력
            console.log('📋 데이터 샘플 (처음 5개):');
            allFacilities.slice(0, 5).forEach((f, idx) => {
              console.log(\`  \${idx + 1}. \${f.name} | \${f.sido} \${f.sigungu} | \${f.type}\`);
            });
            
            filteredFacilities = allFacilities;
            
            // 헤더 텍스트 업데이트 (시설 수 숨김)
            const headerElement = document.getElementById('facilityCountHeader');
            if (headerElement) {
              headerElement.textContent = \`전국 요양시설 정보를 확인하세요\`;
            }
            
            document.getElementById('loadingSpinner').classList.add('hidden');
            displayResults();
          } catch (error) {
            console.error('❌ 데이터 로드 실패:', error);
            document.getElementById('loadingSpinner').classList.add('hidden');
            alert('데이터를 불러오는데 실패했습니다.');
          }
        }

        // 시도 선택 옵션 생성
        const sidoSelect = document.getElementById('filterSido');
        Object.keys(regionData).forEach(sido => {
          const option = document.createElement('option');
          option.value = sido;
          option.textContent = sido;
          sidoSelect.appendChild(option);
        });

        // 시도 변경 시 시군구 로드
        sidoSelect.addEventListener('change', function() {
          const sigunguSelect = document.getElementById('filterSigungu');
          sigunguSelect.innerHTML = '<option value="">전체</option>';
          
          if (this.value) {
            sigunguSelect.disabled = false;
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

        // 검색 실행
        function searchFacilities() {
          const sido = document.getElementById('filterSido').value;
          const sigungu = document.getElementById('filterSigungu').value;
          const type = document.getElementById('filterType').value;
          const keyword = document.getElementById('searchKeyword').value.trim().toLowerCase();

          console.log('🔍 검색 조건:', { sido, sigungu, type, keyword });
          console.log('📊 전체 시설 수:', allFacilities.length);

          filteredFacilities = allFacilities.filter(facility => {
            if (sido && facility.sido !== sido) return false;
            if (sigungu && facility.sigungu !== sigungu) return false;
            if (type && facility.type !== type) return false;
            if (keyword && !facility.name.toLowerCase().includes(keyword)) return false;
            return true;
          });

          console.log('✅ 필터링 결과:', filteredFacilities.length);
          
          // 필터링 결과가 0개이고 조건이 있을 때 샘플 데이터 확인
          if (filteredFacilities.length === 0 && (sido || sigungu || type)) {
            console.log('⚠️ 검색 결과 없음. 샘플 데이터 확인:');
            const samples = allFacilities.slice(0, 3);
            samples.forEach(s => {
              console.log('샘플:', {
                name: s.name,
                sido: s.sido,
                sigungu: s.sigungu,
                type: s.type
              });
            });
          }

          displayResults();
        }

        // 검색 초기화
        function resetSearch() {
          document.getElementById('filterSido').value = '';
          document.getElementById('filterSigungu').value = '';
          document.getElementById('filterSigungu').disabled = true;
          document.getElementById('filterType').value = '';
          document.getElementById('searchKeyword').value = '';
          
          filteredFacilities = allFacilities;
          displayResults();
        }

        // 결과 표시
        function displayResults() {
          // 결과 수 업데이트 (전체 시설 수 숨김 - 검색 결과만 표시)
          const resultCountElement = document.getElementById('resultCount');
          if (resultCountElement) {
            // 필터 요소들이 존재하는지 확인 후 값 가져오기
            const sidoElement = document.getElementById('sidoFilter');
            const sigunguElement = document.getElementById('sigunguFilter');
            const typeElement = document.getElementById('typeFilter');
            const keywordElement = document.getElementById('searchKeyword');
            
            const sido = sidoElement ? sidoElement.value : '';
            const sigungu = sigunguElement ? sigunguElement.value : '';
            const type = typeElement ? typeElement.value : '';
            const keyword = keywordElement ? keywordElement.value.trim() : '';
            
            if (sido || sigungu || type || keyword) {
              resultCountElement.textContent = filteredFacilities.length.toLocaleString();
            } else {
              resultCountElement.textContent = '전체';
            }
          }

          // 지도에 마커 표시
          displayMarkersOnMap();

          // 리스트 표시 (최대 100개)
          const facilityList = document.getElementById('facilityList');
          const displayList = filteredFacilities.slice(0, 100);
          
          if (displayList.length === 0) {
            facilityList.innerHTML = \`
              <div class="text-center text-gray-500 py-20">
                <i class="fas fa-search text-6xl mb-4"></i>
                <p class="text-lg font-medium">검색 결과가 없습니다</p>
                <p class="text-sm mt-2">다른 조건으로 검색해보세요</p>
              </div>
            \`;
          } else {
            facilityList.innerHTML = displayList.map((facility, index) => \`
              <div class="border-b border-gray-200 py-4 hover:bg-purple-50 px-3 rounded-lg transition-colors">
                <div class="flex items-start justify-between">
                  <div class="flex-1">
                    <h4 class="font-bold text-lg text-gray-900 mb-2">
                      <span class="inline-block bg-purple-100 text-purple-800 text-xs px-2 py-1 rounded mr-2">
                        \${facility.type}
                      </span>
                      \${facility.name}
                    </h4>
                    <p class="text-sm text-gray-600 mb-1">
                      <i class="fas fa-map-marker-alt text-red-500 mr-1"></i>
                      \${facility.address}
                    </p>
                    <p class="text-xs text-gray-500">
                      <i class="fas fa-map text-blue-500 mr-1"></i>
                      \${facility.sido} \${facility.sigungu}
                    </p>
                  </div>
                  <button onclick="showOnMap(\${facility.lat}, \${facility.lng}, '\${facility.name.replace(/'/g, "\\\\'")}\')" 
                    class="ml-3 bg-purple-500 text-white px-4 py-2 rounded-lg hover:bg-purple-600 text-sm flex-shrink-0">
                    <i class="fas fa-map-marker-alt mr-1"></i>지도
                  </button>
                </div>
              </div>
            \`).join('');
            
            if (filteredFacilities.length > 100) {
              facilityList.innerHTML += \`
                <div class="text-center py-6 text-gray-500">
                  <p class="text-sm">상위 100개만 표시됩니다</p>
                  <p class="text-xs mt-1">더 정확한 검색을 위해 필터를 사용하세요</p>
                </div>
              \`;
            }
          }
        }

        // 특정 시설을 지도에 표시
        function showOnMap(lat, lng, name) {
          if (!map) {
            alert('지도를 초기화하는 중입니다. 잠시 후 다시 시도해주세요.');
            return;
          }

          // 지도 중심 이동 및 확대
          map.setView([lat, lng], 16);

          // 해당 위치 마커 찾기 및 팝업 열기
          markers.forEach(marker => {
            const markerLatLng = marker.getLatLng();
            if (Math.abs(markerLatLng.lat - lat) < 0.0001 && Math.abs(markerLatLng.lng - lng) < 0.0001) {
              marker.openPopup();
            }
          });
          
          console.log(\`🎯 지도 이동: \${name}\`);
        }

        // Leaflet 로드 대기 및 초기화
        function waitForLeaflet() {
          if (typeof L !== 'undefined') {
            console.log('✅ Leaflet 로드 완료');
            initLeafletMap();
            loadFacilitiesData();
          } else {
            console.log('⏳ Leaflet 로딩 중...');
            setTimeout(waitForLeaflet, 100);
          }
        }

        // 페이지 로드 시 Leaflet 로드 대기
        if (document.readyState === 'loading') {
          document.addEventListener('DOMContentLoaded', waitForLeaflet);
        } else {
          waitForLeaflet();
        }
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
            <div class="flex items-center space-x-4">
              <a href="/admin/dashboard" class="text-gray-700 hover:text-gray-900 px-3 py-2 rounded-lg hover:bg-gray-100">
                <i class="fas fa-home mr-2"></i>대시보드
              </a>
              <a href="/admin/facilities" class="text-gray-700 hover:text-gray-900 px-3 py-2 rounded-lg hover:bg-gray-100">
                <i class="fas fa-hospital mr-2"></i>시설 관리
              </a>
              <button id="logoutBtn" class="bg-red-600 text-white px-4 py-2 rounded-lg hover:bg-red-700">
                <i class="fas fa-sign-out-alt mr-2"></i>로그아웃
              </button>
            </div>
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

      {/* Axios CDN - 인라인 스크립트보다 먼저 로드 */}
      <script src="https://cdn.jsdelivr.net/npm/axios@1.6.0/dist/axios.min.js"></script>
      
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

// ============================================
// 관리자 - 시설 정보 관리 페이지
// ============================================
app.get('/admin/facilities', async (c) => {
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
            <div class="flex items-center space-x-4">
              <a href="/admin/dashboard" class="text-gray-700 hover:text-gray-900 px-3 py-2 rounded-lg hover:bg-gray-100">
                <i class="fas fa-home mr-2"></i>대시보드
              </a>
              <a href="/admin/facilities" class="bg-gray-200 text-gray-900 px-3 py-2 rounded-lg">
                <i class="fas fa-hospital mr-2"></i>시설 관리
              </a>
              <button id="logoutBtn" class="bg-red-600 text-white px-4 py-2 rounded-lg hover:bg-red-700">
                <i class="fas fa-sign-out-alt mr-2"></i>로그아웃
              </button>
            </div>
          </div>
        </div>
      </header>

      <div class="max-w-7xl mx-auto px-4 py-8">
        {/* 상단 통계 및 액션 */}
        <div class="bg-white rounded-xl shadow-lg p-6 mb-6">
          <div class="flex justify-between items-center mb-6">
            <div>
              <h2 class="text-2xl font-bold text-gray-900">
                <i class="fas fa-hospital text-blue-600 mr-2"></i>
                요양시설 정보 관리
              </h2>
              <p class="text-gray-600 mt-1">총 <span id="totalCount" class="font-bold text-blue-600">0</span>개 시설</p>
            </div>
            <div class="flex flex-wrap gap-2">
              <button id="downloadExcelBtn" class="bg-teal-600 text-white px-4 py-2 rounded-lg hover:bg-teal-700">
                <i class="fas fa-download mr-2"></i>엑셀 다운로드
              </button>
              <button id="uploadExcelBtn" class="bg-indigo-600 text-white px-4 py-2 rounded-lg hover:bg-indigo-700">
                <i class="fas fa-upload mr-2"></i>엑셀 업로드
              </button>
              <button id="importCsvBtn" class="bg-green-600 text-white px-4 py-2 rounded-lg hover:bg-green-700">
                <i class="fas fa-file-upload mr-2"></i>CSV 임포트
              </button>
              <button id="addFacilityBtn" class="bg-blue-600 text-white px-4 py-2 rounded-lg hover:bg-blue-700">
                <i class="fas fa-plus mr-2"></i>시설 추가
              </button>
            </div>
          </div>

          {/* 검색 필터 */}
          <div class="grid grid-cols-1 md:grid-cols-6 gap-4">
            <input 
              type="text" 
              id="searchInput" 
              placeholder="시설명 또는 주소 검색..." 
              class="px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500"
            />
            <select id="sidoFilter" class="px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
              <option value="">전체 시도</option>
            </select>
            <select id="sigunguFilter" class="px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
              <option value="">전체 시군구</option>
            </select>
            <select id="typeFilter" class="px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
              <option value="">전체 유형</option>
              <option value="요양병원">요양병원</option>
              <option value="요양원">요양원</option>
              <option value="재가복지센터">재가복지센터</option>
              <option value="주야간보호">주야간보호</option>
            </select>
            <select id="regionalFilter" class="px-4 py-2 border rounded-lg focus:ring-2 focus:ring-teal-500 bg-teal-50">
              <option value="">전체 시설</option>
              <option value="true">대표센터만</option>
              <option value="false">일반시설만</option>
            </select>
            <button id="searchBtn" class="bg-gray-800 text-white px-6 py-2 rounded-lg hover:bg-gray-900">
              <i class="fas fa-search mr-2"></i>검색
            </button>
          </div>
        </div>

        {/* 시설 목록 테이블 */}
        <div class="bg-white rounded-xl shadow-lg overflow-hidden">
          <div class="overflow-x-auto">
            <table class="w-full">
              <thead class="bg-gray-50 border-b">
                <tr>
                  <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">ID</th>
                  <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">시설 유형</th>
                  <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">시설명</th>
                  <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">전화번호</th>
                  <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">주소</th>
                  <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">시도</th>
                  <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">시군구</th>
                  <th class="px-4 py-3 text-center text-xs font-medium text-gray-500 uppercase">대표센터</th>
                  <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">관리</th>
                </tr>
              </thead>
              <tbody id="facilitiesTableBody" class="divide-y divide-gray-200">
                <tr>
                  <td colspan="9" class="px-4 py-8 text-center text-gray-500">
                    <i class="fas fa-spinner fa-spin text-2xl mb-2"></i>
                    <p>데이터를 불러오는 중...</p>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>

          {/* 페이지네이션 */}
          <div class="bg-gray-50 px-4 py-3 border-t flex items-center justify-between">
            <div class="text-sm text-gray-700">
              <span id="paginationInfo">페이지 1 / 1</span>
            </div>
            <div class="flex space-x-2" id="paginationButtons">
              <button id="prevPageBtn" class="px-3 py-1 bg-white border rounded hover:bg-gray-50 disabled:opacity-50" disabled>
                <i class="fas fa-chevron-left"></i>
              </button>
              <button id="nextPageBtn" class="px-3 py-1 bg-white border rounded hover:bg-gray-50 disabled:opacity-50" disabled>
                <i class="fas fa-chevron-right"></i>
              </button>
            </div>
          </div>
        </div>
      </div>

      {/* 모달 - 시설 추가/수정 */}
      <div id="facilityModal" class="hidden fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
        <div class="bg-white rounded-xl shadow-2xl max-w-2xl w-full mx-4 max-h-[90vh] overflow-y-auto">
          <div class="p-6">
            <div class="flex justify-between items-center mb-6">
              <h3 id="modalTitle" class="text-2xl font-bold">시설 추가</h3>
              <button id="closeModalBtn" class="text-gray-500 hover:text-gray-700">
                <i class="fas fa-times text-2xl"></i>
              </button>
            </div>

            <form id="facilityForm" class="space-y-4">
              <input type="hidden" id="facilityId" />
              
              <div class="grid grid-cols-2 gap-4">
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-1">시설 유형 *</label>
                  <select id="facilityType" required class="w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                    <option value="">선택하세요</option>
                    <option value="요양병원">요양병원</option>
                    <option value="요양원">요양원</option>
                    <option value="재가복지센터">재가복지센터</option>
                    <option value="주야간보호">주야간보호</option>
                  </select>
                </div>
                
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-1">시설명 *</label>
                  <input type="text" id="facilityName" required class="w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500" />
                </div>
              </div>

              <div class="grid grid-cols-2 gap-4">
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-1">전화번호</label>
                  <input type="tel" id="facilityPhone" placeholder="02-1234-5678" class="w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500" />
                </div>
                
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-1">우편번호</label>
                  <input type="text" id="facilityPostalCode" class="w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500" />
                </div>
              </div>

              <div>
                <label class="block text-sm font-medium text-gray-700 mb-1">주소 *</label>
                <input type="text" id="facilityAddress" required class="w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500" />
              </div>

              <div class="grid grid-cols-2 gap-4">
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-1">시도 *</label>
                  <select id="facilitySido" required class="w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                    <option value="">선택하세요</option>
                  </select>
                </div>
                
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-1">시군구 *</label>
                  <select id="facilitySigungu" required class="w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                    <option value="">선택하세요</option>
                  </select>
                </div>
              </div>

              <div class="grid grid-cols-2 gap-4">
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-1">위도 *</label>
                  <input type="number" id="facilityLatitude" required step="any" class="w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500" />
                </div>
                
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-1">경도 *</label>
                  <input type="number" id="facilityLongitude" required step="any" class="w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500" />
                </div>
              </div>

              <div class="flex justify-end space-x-3 pt-4">
                <button type="button" id="cancelBtn" class="px-6 py-2 border border-gray-300 rounded-lg hover:bg-gray-50">
                  취소
                </button>
                <button type="submit" class="px-6 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700">
                  <i class="fas fa-save mr-2"></i>저장
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>

      {/* Axios CDN */}
      <script src="https://cdn.jsdelivr.net/npm/axios@1.6.0/dist/axios.min.js"></script>
      
      {/* 간편 견적 폼 처리 스크립트 */}
      <script dangerouslySetInnerHTML={{
        __html: `
        // 간편 견적 폼 제출
        document.addEventListener('DOMContentLoaded', function() {
          const quickEstimateForm = document.getElementById('quickEstimateForm');
          if (quickEstimateForm) {
            quickEstimateForm.addEventListener('submit', async function(e) {
              e.preventDefault();
              
              const name = document.getElementById('quickName').value.trim();
              const phone = document.getElementById('quickPhone').value.trim();
              const region = document.getElementById('quickRegion').value;
              const facilityType = document.getElementById('quickFacilityType').value || '미정';
              
              if (!name || !phone || !region) {
                alert('필수 항목을 모두 입력해주세요.');
                return;
              }
              
              // 전화번호 형식 검증
              const phoneRegex = /^01[0-9]-?[0-9]{3,4}-?[0-9]{4}$/;
              if (!phoneRegex.test(phone)) {
                alert('올바른 전화번호 형식을 입력해주세요. (예: 010-0000-0000)');
                return;
              }
              
              try {
                // 제출 버튼 비활성화
                const submitBtn = quickEstimateForm.querySelector('button[type="submit"]');
                const originalText = submitBtn.innerHTML;
                submitBtn.disabled = true;
                submitBtn.innerHTML = '<i class="fas fa-spinner fa-spin mr-2"></i>처리중...';
                
                // API 호출
                const response = await axios.post('/api/family-care', {
                  guardian_name: name,
                  guardian_phone: phone,
                  patient_name: '환자정보 미입력',
                  patient_age: 0,
                  region: region,
                  requirements: '간편 견적 신청 / 원하는 시설: ' + facilityType
                });
                
                if (response.data.success) {
                  // GA4 이벤트 트래킹
                  if (window.trackEvent) {
                    window.trackEvent('quick_estimate_success', {
                      region: region,
                      facility_type: facilityType
                    });
                  }
                  
                  alert('✅ 견적 신청이 완료되었습니다!\\n\\n전문 상담사가 곧 연락드리겠습니다.\\n감사합니다.');
                  quickEstimateForm.reset();
                } else {
                  throw new Error('신청 실패');
                }
                
                // 버튼 복원
                submitBtn.disabled = false;
                submitBtn.innerHTML = originalText;
                
              } catch (error) {
                console.error('견적 신청 오류:', error);
                alert('❌ 신청 중 오류가 발생했습니다.\\n\\n잠시 후 다시 시도해주시거나\\n전화(070-7004-5902)로 문의해주세요.');
                
                // 버튼 복원
                const submitBtn = quickEstimateForm.querySelector('button[type="submit"]');
                submitBtn.disabled = false;
                submitBtn.innerHTML = originalText;
              }
            });
          }
        });
        `
      }} />
      
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

        let currentPage = 1;
        let currentFilters = {};
        let editingFacilityId = null;

        // 초기화
        document.addEventListener('DOMContentLoaded', function() {
          loadFacilities();
          initFilters();
          initModals();
          initFormHandlers();
        });

        // 시설 목록 로드
        async function loadFacilities(page = 1) {
          currentPage = page;
          
          const params = new URLSearchParams({
            page,
            limit: 50,
            ...currentFilters
          });

          try {
            const response = await axios.get('/api/admin/facilities?' + params);
            const { facilities, total, totalPages } = response.data;

            document.getElementById('totalCount').textContent = total;
            document.getElementById('paginationInfo').textContent = \`페이지 \${page} / \${totalPages}\`;

            const tbody = document.getElementById('facilitiesTableBody');
            if (facilities.length === 0) {
              tbody.innerHTML = '<tr><td colspan="9" class="px-4 py-8 text-center text-gray-500">등록된 시설이 없습니다.</td></tr>';
              return;
            }

            tbody.innerHTML = facilities.map(f => \`
              <tr class="hover:bg-gray-50">
                <td class="px-4 py-3 text-sm">\${f.id}</td>
                <td class="px-4 py-3">
                  <span class="px-2 py-1 text-xs font-semibold rounded-full \${getTypeColor(f.facility_type)}">
                    \${f.facility_type}
                  </span>
                </td>
                <td class="px-4 py-3 text-sm font-medium">\${f.name}</td>
                <td class="px-4 py-3 text-sm">\${f.phone || '-'}</td>
                <td class="px-4 py-3 text-sm text-gray-600">\${f.address.substring(0, 30)}\${f.address.length > 30 ? '...' : ''}</td>
                <td class="px-4 py-3 text-sm">\${f.sido}</td>
                <td class="px-4 py-3 text-sm">\${f.sigungu}</td>
                <td class="px-4 py-3 text-center">
                  <button 
                    onclick="toggleRegionalCenter(\${f.id}, '\${f.name}', '\${f.sido}', '\${f.sigungu}', \${f.is_regional_center || false})" 
                    class="px-3 py-1 text-xs font-semibold rounded-full transition-colors \${f.is_regional_center ? 'bg-teal-100 text-teal-800 hover:bg-teal-200' : 'bg-gray-100 text-gray-600 hover:bg-gray-200'}"
                    title="\${f.is_regional_center ? '대표센터 지정됨' : '대표센터로 지정하기'}"
                  >
                    \${f.is_regional_center ? '<i class="fas fa-star mr-1"></i>지정됨' : '<i class="far fa-star mr-1"></i>미지정'}
                  </button>
                </td>
                <td class="px-4 py-3 text-sm">
                  <button onclick="editFacility(\${f.id})" class="text-blue-600 hover:text-blue-800 mr-3">
                    <i class="fas fa-edit"></i>
                  </button>
                  <button onclick="deleteFacility(\${f.id}, '\${f.name}')" class="text-red-600 hover:text-red-800">
                    <i class="fas fa-trash"></i>
                  </button>
                </td>
              </tr>
            \`).join('');

            // 페이지네이션 버튼
            document.getElementById('prevPageBtn').disabled = page <= 1;
            document.getElementById('nextPageBtn').disabled = page >= totalPages;
          } catch (error) {
            console.error('Load facilities error:', error);
            alert('시설 목록을 불러오는 중 오류가 발생했습니다.');
          }
        }

        function getTypeColor(type) {
          const colors = {
            '요양병원': 'bg-red-100 text-red-800',
            '요양원': 'bg-blue-100 text-blue-800',
            '재가복지센터': 'bg-green-100 text-green-800',
            '주야간보호': 'bg-yellow-100 text-yellow-800'
          };
          return colors[type] || 'bg-gray-100 text-gray-800';
        }

        // 필터 초기화
        function initFilters() {
          const sidoFilter = document.getElementById('sidoFilter');
          const sidoModal = document.getElementById('facilitySido');
          
          Object.keys(regionData).forEach(sido => {
            sidoFilter.add(new Option(sido, sido));
            sidoModal.add(new Option(sido, sido));
          });

          sidoFilter.addEventListener('change', function() {
            const sigunguFilter = document.getElementById('sigunguFilter');
            sigunguFilter.innerHTML = '<option value="">전체 시군구</option>';
            
            if (this.value && regionData[this.value]) {
              regionData[this.value].forEach(sigungu => {
                sigunguFilter.add(new Option(sigungu, sigungu));
              });
            }
          });

          document.getElementById('facilitySido').addEventListener('change', function() {
            const sigunguModal = document.getElementById('facilitySigungu');
            sigunguModal.innerHTML = '<option value="">선택하세요</option>';
            
            if (this.value && regionData[this.value]) {
              regionData[this.value].forEach(sigungu => {
                sigunguModal.add(new Option(sigungu, sigungu));
              });
            }
          });

          document.getElementById('searchBtn').addEventListener('click', function() {
            currentFilters = {
              search: document.getElementById('searchInput').value,
              sido: document.getElementById('sidoFilter').value,
              sigungu: document.getElementById('sigunguFilter').value,
              type: document.getElementById('typeFilter').value,
              isRegionalCenter: document.getElementById('regionalFilter').value
            };
            loadFacilities(1);
          });

          document.getElementById('prevPageBtn').addEventListener('click', () => loadFacilities(currentPage - 1));
          document.getElementById('nextPageBtn').addEventListener('click', () => loadFacilities(currentPage + 1));
        }

        // 모달 초기화
        function initModals() {
          const modal = document.getElementById('facilityModal');
          
          document.getElementById('addFacilityBtn').addEventListener('click', function() {
            editingFacilityId = null;
            document.getElementById('modalTitle').textContent = '시설 추가';
            document.getElementById('facilityForm').reset();
            modal.classList.remove('hidden');
          });

          document.getElementById('closeModalBtn').addEventListener('click', () => modal.classList.add('hidden'));
          document.getElementById('cancelBtn').addEventListener('click', () => modal.classList.add('hidden'));
        }

        // 폼 핸들러
        function initFormHandlers() {
          document.getElementById('facilityForm').addEventListener('submit', async function(e) {
            e.preventDefault();

            const data = {
              facility_type: document.getElementById('facilityType').value,
              name: document.getElementById('facilityName').value,
              phone: document.getElementById('facilityPhone').value,
              postal_code: document.getElementById('facilityPostalCode').value,
              address: document.getElementById('facilityAddress').value,
              sido: document.getElementById('facilitySido').value,
              sigungu: document.getElementById('facilitySigungu').value,
              latitude: parseFloat(document.getElementById('facilityLatitude').value),
              longitude: parseFloat(document.getElementById('facilityLongitude').value)
            };

            try {
              if (editingFacilityId) {
                await axios.put(\`/api/admin/facilities/\${editingFacilityId}\`, data);
                alert('시설 정보가 수정되었습니다.');
              } else {
                await axios.post('/api/admin/facilities', data);
                alert('시설이 추가되었습니다.');
              }
              
              document.getElementById('facilityModal').classList.add('hidden');
              loadFacilities(currentPage);
            } catch (error) {
              console.error('Save facility error:', error);
              alert('저장 중 오류가 발생했습니다.');
            }
          });

          // 엑셀 다운로드
          document.getElementById('downloadExcelBtn').addEventListener('click', async function() {
            this.disabled = true;
            this.innerHTML = '<i class="fas fa-spinner fa-spin mr-2"></i>다운로드 중...';
            
            try {
              // 현재 필터 조건으로 모든 시설 데이터 가져오기
              const params = new URLSearchParams({
                page: '1',
                limit: '100000', // 모든 데이터
                search: currentFilters.search || '',
                sido: currentFilters.sido || '',
                sigungu: currentFilters.sigungu || '',
                type: currentFilters.type || ''
              });
              
              const response = await axios.get(\`/api/admin/facilities?\${params}\`);
              const facilities = response.data.facilities;
              
              if (facilities.length === 0) {
                alert('다운로드할 시설이 없습니다.');
                return;
              }
              
              // CSV 형식으로 변환
              const headers = ['ID', '시설유형', '시설명', '우편번호', '주소', '전화번호', '위도', '경도', '시도', '시군구', '비고'];
              const csvRows = [headers.join(',')];
              
              facilities.forEach(f => {
                const row = [
                  f.id,
                  f.facility_type,
                  \`"\${f.name}"\`,
                  f.postal_code || '',
                  \`"\${f.address}"\`,
                  f.phone || '',
                  f.latitude,
                  f.longitude,
                  f.sido,
                  f.sigungu,
                  \`"\${f.notes || ''}"\`
                ];
                csvRows.push(row.join(','));
              });
              
              // CSV 파일 다운로드
              const csvContent = '\\uFEFF' + csvRows.join('\\n'); // UTF-8 BOM 추가 (엑셀 한글 깨짐 방지)
              const blob = new Blob([csvContent], { type: 'text/csv;charset=utf-8;' });
              const link = document.createElement('a');
              const url = URL.createObjectURL(blob);
              
              const filename = \`facilities_\${new Date().toISOString().split('T')[0]}.csv\`;
              link.setAttribute('href', url);
              link.setAttribute('download', filename);
              link.style.display = 'none';
              document.body.appendChild(link);
              link.click();
              document.body.removeChild(link);
              
              alert(\`\${facilities.length}개 시설 데이터가 다운로드되었습니다.\\n파일명: \${filename}\`);
            } catch (error) {
              console.error('Download error:', error);
              alert('다운로드 중 오류가 발생했습니다.');
            } finally {
              this.disabled = false;
              this.innerHTML = '<i class="fas fa-download mr-2"></i>엑셀 다운로드';
            }
          });

          // 엑셀 업로드
          document.getElementById('uploadExcelBtn').addEventListener('click', function() {
            const fileInput = document.createElement('input');
            fileInput.type = 'file';
            fileInput.accept = '.csv,.xlsx,.xls';
            
            fileInput.onchange = async function(e) {
              const file = e.target.files[0];
              if (!file) return;
              
              if (!confirm(\`\${file.name} 파일을 업로드하여 시설 정보를 업데이트하시겠습니까?\\n\\n주의: 동일한 ID가 있으면 덮어쓰기됩니다.\`)) {
                return;
              }
              
              const btn = document.getElementById('uploadExcelBtn');
              btn.disabled = true;
              btn.innerHTML = '<i class="fas fa-spinner fa-spin mr-2"></i>업로드 중...';
              
              try {
                const reader = new FileReader();
                
                reader.onload = async function(event) {
                  try {
                    const text = event.target.result;
                    const lines = text.split('\\n').filter(line => line.trim());
                    
                    if (lines.length < 2) {
                      alert('파일에 데이터가 없습니다.');
                      return;
                    }
                    
                    // 헤더 확인 (첫 번째 줄 건너뛰기)
                    const facilities = [];
                    
                    for (let i = 1; i < lines.length; i++) {
                      const cols = parseCSVLine(lines[i]);
                      if (cols.length < 10) continue;
                      
                      const [id, facilityType, name, postalCode, address, phone, lat, lng, sido, sigungu, notes] = cols;
                      
                      facilities.push({
                        id: parseInt(id) || null,
                        facility_type: facilityType.replace(/^"|"$/g, ''),
                        name: name.replace(/^"|"$/g, ''),
                        postal_code: postalCode.replace(/^"|"$/g, ''),
                        address: address.replace(/^"|"$/g, ''),
                        phone: phone.replace(/^"|"$/g, ''),
                        latitude: parseFloat(lat) || 0,
                        longitude: parseFloat(lng) || 0,
                        sido: sido.replace(/^"|"$/g, ''),
                        sigungu: sigungu.replace(/^"|"$/g, ''),
                        notes: notes ? notes.replace(/^"|"$/g, '') : ''
                      });
                    }
                    
                    if (facilities.length === 0) {
                      alert('유효한 시설 데이터가 없습니다.');
                      return;
                    }
                    
                    // 서버로 전송
                    const response = await axios.post('/api/admin/upload-facilities', { facilities });
                    
                    if (response.data.success) {
                      alert(\`업로드 완료!\\n업데이트: \${response.data.updated}개\\n신규추가: \${response.data.inserted}개\\n실패: \${response.data.failed}개\`);
                      loadFacilities(1);
                    }
                  } catch (error) {
                    console.error('Parse error:', error);
                    alert('파일 파싱 중 오류가 발생했습니다.');
                  }
                };
                
                reader.readAsText(file, 'UTF-8');
              } catch (error) {
                console.error('Upload error:', error);
                alert('업로드 중 오류가 발생했습니다.');
              } finally {
                btn.disabled = false;
                btn.innerHTML = '<i class="fas fa-upload mr-2"></i>엑셀 업로드';
              }
            };
            
            fileInput.click();
          });

          // DB 초기화
          // CSV 임포트
          document.getElementById('importCsvBtn').addEventListener('click', async function() {
            // 파일 입력 생성
            const fileInput = document.createElement('input');
            fileInput.type = 'file';
            fileInput.accept = '.csv';
            
            fileInput.onchange = async (e) => {
              const file = e.target.files[0];
              if (!file) return;
              
              if (!confirm(\`📄 파일: \${file.name}\\n크기: \${(file.size / 1024 / 1024).toFixed(2)}MB\\n\\nCSV 데이터를 임포트하시겠습니까?\\n(진행 상황이 표시됩니다)\`)) return;
              
              const btn = document.getElementById('importCsvBtn');
              btn.disabled = true;
              btn.innerHTML = '<i class="fas fa-spinner fa-spin mr-2"></i>파일 읽는 중...';
              
              try {
                // 파일 읽기
                const text = await file.text();
                btn.innerHTML = '<i class="fas fa-spinner fa-spin mr-2"></i>데이터 파싱 중...';
                
                // CSV 파싱
                const lines = text.split('\\n').filter(line => line.trim());
                const facilities = [];
                
                for (let i = 1; i < lines.length; i++) {
                  const cols = parseCSVLine(lines[i]);
                  if (cols.length < 9) continue;
                  
                  const facilityType = cols[0] || cols[1];
                  const name = cols[1] || cols[2];
                  const postalCode = cols[2] || cols[3];
                  const address = cols[3] || cols[4];
                  const phone = cols[4] || cols[5] || '';
                  const lat = cols[5] || cols[6];
                  const lng = cols[6] || cols[7];
                  const sido = cols[7] || cols[8];
                  const sigungu = cols[8] || cols[9];
                  
                  const latitude = parseFloat(lat);
                  const longitude = parseFloat(lng);
                  
                  if (!name || !address || !sido || !sigungu) continue;
                  
                  facilities.push({
                    facility_type: String(facilityType).replace(/^"|"$/g, '').trim(),
                    name: String(name).replace(/^"|"$/g, '').trim(),
                    postal_code: String(postalCode).replace(/^"|"$/g, '').trim(),
                    address: String(address).replace(/^"|"$/g, '').trim(),
                    phone: String(phone).replace(/^"|"$/g, '').trim(),
                    latitude: isNaN(latitude) ? 0 : latitude,
                    longitude: isNaN(longitude) ? 0 : longitude,
                    sido: String(sido).replace(/^"|"$/g, '').trim(),
                    sigungu: String(sigungu).replace(/^"|"$/g, '').trim()
                  });
                }
                
                if (facilities.length === 0) {
                  alert('❌ 유효한 시설 데이터가 없습니다.');
                  return;
                }
                
                btn.innerHTML = \`<i class="fas fa-upload mr-2"></i>0 / \${facilities.length} 업로드 중...\`;
                
                // 배치 업로드 (100개씩)
                const BATCH_SIZE = 100;
                let successCount = 0;
                let errorCount = 0;
                
                for (let i = 0; i < facilities.length; i += BATCH_SIZE) {
                  const batch = facilities.slice(i, i + BATCH_SIZE);
                  
                  try {
                    const response = await axios.post('/api/admin/import-csv', { facilities: batch });
                    
                    if (response.data.success) {
                      successCount += response.data.successCount || batch.length;
                      errorCount += response.data.errorCount || 0;
                    } else {
                      errorCount += batch.length;
                    }
                  } catch (error) {
                    console.error('Batch upload error:', error);
                    errorCount += batch.length;
                  }
                  
                  // 진행 상황 업데이트
                  const progress = Math.min(i + batch.length, facilities.length);
                  const percentage = Math.round((progress / facilities.length) * 100);
                  btn.innerHTML = \`<i class="fas fa-upload mr-2"></i>\${progress} / \${facilities.length} (\${percentage}%)\`;
                }
                
                alert(\`✅ 임포트 완료!\\n\\n성공: \${successCount.toLocaleString()}개\\n실패: \${errorCount.toLocaleString()}개\\n전체: \${facilities.length.toLocaleString()}개\`);
                loadFacilities(1);
                
              } catch (error) {
                console.error('Import CSV error:', error);
                alert('❌ CSV 임포트 중 오류가 발생했습니다.');
              } finally {
                btn.disabled = false;
                btn.innerHTML = '<i class="fas fa-file-upload mr-2"></i>CSV 임포트';
              }
            };
            
            fileInput.click();
          });

          // 요양병원 교체 (엑셀 파일 업로드)
          // 로그아웃
          document.getElementById('logoutBtn').addEventListener('click', async function() {
            try {
              await axios.post('/api/admin/logout');
              window.location.href = '/admin';
            } catch (error) {
              window.location.href = '/admin';
            }
          });
        }

        // CSV 파싱 함수
        function parseCSVLine(line) {
          const result = [];
          let current = '';
          let inQuotes = false;
          
          for (let i = 0; i < line.length; i++) {
            const char = line[i];
            
            if (char === '"') {
              inQuotes = !inQuotes;
            } else if (char === ',' && !inQuotes) {
              result.push(current.trim());
              current = '';
            } else {
              current += char;
            }
          }
          
          result.push(current.trim());
          return result;
        }

        // 시설 편집
        async function editFacility(id) {
          try {
            const response = await axios.get(\`/api/admin/facilities/\${id}\`);
            const facility = response.data.facility;
            
            editingFacilityId = id;
            document.getElementById('modalTitle').textContent = '시설 수정';
            
            document.getElementById('facilityId').value = facility.id;
            document.getElementById('facilityType').value = facility.facility_type;
            document.getElementById('facilityName').value = facility.name;
            document.getElementById('facilityPhone').value = facility.phone || '';
            document.getElementById('facilityPostalCode').value = facility.postal_code || '';
            document.getElementById('facilityAddress').value = facility.address;
            document.getElementById('facilitySido').value = facility.sido;
            
            // 시군구 로드
            const sigunguSelect = document.getElementById('facilitySigungu');
            sigunguSelect.innerHTML = '<option value="">선택하세요</option>';
            if (regionData[facility.sido]) {
              regionData[facility.sido].forEach(sigungu => {
                sigunguSelect.add(new Option(sigungu, sigungu));
              });
            }
            sigunguSelect.value = facility.sigungu;
            
            document.getElementById('facilityLatitude').value = facility.latitude;
            document.getElementById('facilityLongitude').value = facility.longitude;
            
            document.getElementById('facilityModal').classList.remove('hidden');
          } catch (error) {
            console.error('Load facility error:', error);
            alert('시설 정보를 불러오는 중 오류가 발생했습니다.');
          }
        }

        // 시설 삭제
        async function deleteFacility(id, name) {
          if (!confirm(\`"\${name}" 시설을 삭제하시겠습니까?\`)) return;
          
          try {
            await axios.delete(\`/api/admin/facilities/\${id}\`);
            alert('시설이 삭제되었습니다.');
            loadFacilities(currentPage);
          } catch (error) {
            console.error('Delete facility error:', error);
            alert('시설 삭제 중 오류가 발생했습니다.');
          }
        }

        // 대표 상담센터 지정/해제
        async function toggleRegionalCenter(facilityId, facilityName, sido, sigungu, isCurrentlyRegional) {
          const regionKey = \`\${sido}_\${sigungu}\`;
          
          if (isCurrentlyRegional) {
            // 대표센터 해제
            if (!confirm(\`"\${facilityName}"을(를) 대표 상담센터에서 해제하시겠습니까?\`)) return;
            
            try {
              const response = await axios.post('/api/admin/facilities/toggle-regional-center', {
                facilityId,
                regionKey,
                isRegionalCenter: false
              });
              
              if (response.data.success) {
                alert('대표 상담센터에서 해제되었습니다.');
                loadFacilities(currentPage);
              } else {
                alert(response.data.message || '해제 실패');
              }
            } catch (error) {
              console.error('Toggle regional center error:', error);
              alert('대표센터 해제 중 오류가 발생했습니다.');
            }
          } else {
            // 대표센터 지정
            if (!confirm(\`"\${facilityName}"을(를) \${sido} \${sigungu}의 대표 상담센터로 지정하시겠습니까?\\n\\n※ 한 지역당 최대 4개까지 지정 가능합니다.\`)) return;
            
            try {
              const response = await axios.post('/api/admin/facilities/toggle-regional-center', {
                facilityId,
                regionKey,
                isRegionalCenter: true
              });
              
              if (response.data.success) {
                alert('대표 상담센터로 지정되었습니다.');
                loadFacilities(currentPage);
              } else {
                alert(response.data.message || '지정 실패');
              }
            } catch (error) {
              console.error('Toggle regional center error:', error);
              alert('대표센터 지정 중 오류가 발생했습니다.');
            }
          }
        }
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
    
    // 자동으로 region_key 생성 (시도_시군구 형식)
    const regionKey = (data.facilitySido && data.facilitySigungu) 
      ? `${data.facilitySido}_${data.facilitySigungu}` 
      : ''
    
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
      regionKey, // 자동 생성된 region_key
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
    
    // admin_sessions 테이블이 없으면 생성
    try {
      await DB.prepare(`
        CREATE TABLE IF NOT EXISTS admin_sessions (
          session_id TEXT PRIMARY KEY,
          created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
          expires_at DATETIME NOT NULL
        )
      `).run()
    } catch (err) {
      console.log('Table creation skipped or already exists')
    }
    
    if (password === c.env.ADMIN_PASSWORD) {
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

// ============================================
// 관리자 API - 시설 정보 CRUD
// ============================================

// 데이터베이스 초기화 (테이블 생성)
app.post('/api/admin/init-db', async (c) => {
  try {
    const { DB } = c.env
    
    console.log('🔧 데이터베이스 초기화 시작...')
    
    // 1. admin_sessions 테이블 생성
    await DB.prepare(`
      CREATE TABLE IF NOT EXISTS admin_sessions (
        session_id TEXT PRIMARY KEY,
        created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
        expires_at DATETIME NOT NULL
      )
    `).run()
    console.log('✅ admin_sessions 테이블 생성')
    
    // 2. partners 테이블 생성 (파트너 신청)
    await DB.prepare(`
      CREATE TABLE IF NOT EXISTS partners (
        id TEXT PRIMARY KEY,
        facility_name TEXT NOT NULL,
        facility_type TEXT NOT NULL,
        facility_sido TEXT,
        facility_sigungu TEXT,
        facility_address TEXT,
        manager_name TEXT NOT NULL,
        manager_phone TEXT NOT NULL,
        region_key TEXT,
        is_regional_center INTEGER DEFAULT 0,
        created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
      )
    `).run()
    console.log('✅ partners 테이블 생성')
    
    // 3. family_care 테이블 생성 (가족 간병 신청)
    await DB.prepare(`
      CREATE TABLE IF NOT EXISTS family_care (
        id TEXT PRIMARY KEY,
        guardian_name TEXT NOT NULL,
        guardian_phone TEXT NOT NULL,
        patient_name TEXT NOT NULL,
        patient_age INTEGER,
        region TEXT,
        requirements TEXT,
        created_at DATETIME DEFAULT CURRENT_TIMESTAMP
      )
    `).run()
    console.log('✅ family_care 테이블 생성')
    
    // 4. regional_centers 테이블 생성 (지역별 대표 상담센터)
    await DB.prepare(`
      CREATE TABLE IF NOT EXISTS regional_centers (
        id TEXT PRIMARY KEY,
        region_key TEXT NOT NULL,
        partner_id TEXT NOT NULL,
        facility_id INTEGER,
        facility_name TEXT NOT NULL,
        facility_type TEXT NOT NULL,
        manager_name TEXT NOT NULL,
        manager_phone TEXT NOT NULL,
        created_at DATETIME DEFAULT CURRENT_TIMESTAMP
      )
    `).run()
    console.log('✅ regional_centers 테이블 생성')
    
    // regional_centers 테이블에 facility_id 컬럼 추가 (기존 테이블용)
    try {
      await DB.prepare(`ALTER TABLE regional_centers ADD COLUMN facility_id INTEGER`).run()
      console.log('✅ regional_centers 테이블에 facility_id 컬럼 추가됨')
    } catch (error) {
      // 컬럼이 이미 존재하면 에러 무시
      console.log('ℹ️ regional_centers.facility_id 컬럼이 이미 존재합니다')
    }
    
    // 5. facilities 테이블 생성 (요양시설 정보)
    await DB.prepare(`
      CREATE TABLE IF NOT EXISTS facilities (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        facility_type TEXT NOT NULL,
        name TEXT NOT NULL,
        postal_code TEXT,
        address TEXT NOT NULL,
        phone TEXT,
        latitude REAL NOT NULL,
        longitude REAL NOT NULL,
        sido TEXT NOT NULL,
        sigungu TEXT NOT NULL,
        created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
      )
    `).run()
    console.log('✅ facilities 테이블 생성')
    
    // 인덱스 생성
    await DB.prepare('CREATE INDEX IF NOT EXISTS idx_facilities_sido ON facilities(sido)').run()
    await DB.prepare('CREATE INDEX IF NOT EXISTS idx_facilities_sigungu ON facilities(sigungu)').run()
    await DB.prepare('CREATE INDEX IF NOT EXISTS idx_facilities_type ON facilities(facility_type)').run()
    await DB.prepare('CREATE INDEX IF NOT EXISTS idx_partners_region ON partners(region_key)').run()
    await DB.prepare('CREATE INDEX IF NOT EXISTS idx_regional_centers_region ON regional_centers(region_key)').run()
    console.log('✅ 인덱스 생성 완료')
    
    console.log('🎉 데이터베이스 초기화 완료!')
    return c.json({ 
      success: true, 
      message: '데이터베이스 초기화 완료 (5개 테이블 생성)',
      tables: ['admin_sessions', 'partners', 'family_care', 'regional_centers', 'facilities']
    })
  } catch (error: any) {
    console.error('❌ 데이터베이스 초기화 실패:', error)
    return c.json({ success: false, error: error.message }, 500)
  }
})

// CSV 데이터 일괄 임포트
app.post('/api/admin/import-csv', async (c) => {
  try {
    const { facilities } = await c.req.json()
    const { DB } = c.env
    
    if (!Array.isArray(facilities) || facilities.length === 0) {
      return c.json({ success: false, error: '유효한 시설 데이터가 없습니다' }, 400)
    }
    
    console.log(`Starting import of ${facilities.length} facilities...`)
    let imported = 0
    let failed = 0
    
    // D1 batch API를 사용한 대량 INSERT (훨씬 빠름)
    // 500개씩 배치 처리
    for (let i = 0; i < facilities.length; i += 500) {
      const batch = facilities.slice(i, i + 500)
      const statements = []
      
      for (const facility of batch) {
        try {
          statements.push(
            DB.prepare(`
              INSERT INTO facilities (facility_type, name, postal_code, address, phone, latitude, longitude, sido, sigungu)
              VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
            `).bind(
              facility.facilityType,
              facility.name,
              facility.postalCode || '',
              facility.address,
              facility.phone || '',
              facility.latitude,
              facility.longitude,
              facility.sido,
              facility.sigungu
            )
          )
        } catch (err) {
          console.error('Prepare error:', err)
          failed++
        }
      }
      
      // 배치 실행
      try {
        await DB.batch(statements)
        imported += statements.length
        console.log(`Batch ${Math.floor(i/500) + 1}: Imported ${statements.length} facilities (Total: ${imported})`)
      } catch (err) {
        console.error('Batch import error:', err)
        failed += statements.length
      }
    }
    
    console.log(`Import completed: ${imported} success, ${failed} failed`)
    return c.json({ success: true, imported, failed, total: facilities.length })
  } catch (error: any) {
    console.error('Import CSV error:', error)
    return c.json({ success: false, error: error.message }, 500)
  }
})

// 시설 목록 조회 (페이징, 검색)
app.get('/api/admin/facilities', async (c) => {
  try {
    const { DB } = c.env
    const page = parseInt(c.req.query('page') || '1')
    const limit = parseInt(c.req.query('limit') || '50')
    const search = c.req.query('search') || ''
    const sido = c.req.query('sido') || ''
    const sigungu = c.req.query('sigungu') || ''
    const type = c.req.query('type') || ''
    const isRegionalCenter = c.req.query('isRegionalCenter') || ''
    
    const offset = (page - 1) * limit
    
    let whereClause = '1=1'
    const bindings: any[] = []
    
    if (search) {
      whereClause += ' AND (name LIKE ? OR address LIKE ?)'
      bindings.push(`%${search}%`, `%${search}%`)
    }
    if (sido) {
      whereClause += ' AND sido = ?'
      bindings.push(sido)
    }
    if (sigungu) {
      whereClause += ' AND sigungu = ?'
      bindings.push(sigungu)
    }
    if (type) {
      whereClause += ' AND facility_type = ?'
      bindings.push(type)
    }
    
    // 대표센터 필터 적용
    let query = `SELECT * FROM facilities WHERE ${whereClause}`
    let countQuery = `SELECT COUNT(*) as total FROM facilities WHERE ${whereClause}`
    
    if (isRegionalCenter === 'true') {
      // 대표센터만 조회
      query = `SELECT f.* FROM facilities f 
               INNER JOIN regional_centers rc ON f.id = rc.facility_id 
               WHERE ${whereClause}`
      countQuery = `SELECT COUNT(*) as total FROM facilities f 
                    INNER JOIN regional_centers rc ON f.id = rc.facility_id 
                    WHERE ${whereClause}`
    } else if (isRegionalCenter === 'false') {
      // 일반시설만 조회 (대표센터 제외)
      query = `SELECT f.* FROM facilities f 
               LEFT JOIN regional_centers rc ON f.id = rc.facility_id 
               WHERE ${whereClause} AND rc.facility_id IS NULL`
      countQuery = `SELECT COUNT(*) as total FROM facilities f 
                    LEFT JOIN regional_centers rc ON f.id = rc.facility_id 
                    WHERE ${whereClause} AND rc.facility_id IS NULL`
    }
    
    // 총 개수
    const countResult = await DB.prepare(countQuery).bind(...bindings).first()
    
    // 데이터 조회
    const facilitiesResult = await DB.prepare(
      `${query} ORDER BY f.id DESC LIMIT ? OFFSET ?`
    ).bind(...bindings, limit, offset).all()
    
    // 한 번의 쿼리로 모든 대표센터 정보 가져오기 (성능 최적화)
    const facilityIds = facilitiesResult.results.map((f: any) => f.id)
    let regionalCenterIds: Set<number> = new Set()
    
    if (facilityIds.length > 0) {
      // IN 절을 사용하여 한 번에 조회
      const placeholders = facilityIds.map(() => '?').join(',')
      const regionalCentersResult = await DB.prepare(
        `SELECT DISTINCT facility_id FROM regional_centers WHERE facility_id IN (${placeholders})`
      ).bind(...facilityIds).all()
      
      regionalCenterIds = new Set(
        regionalCentersResult.results.map((rc: any) => rc.facility_id)
      )
    }
    
    // 대표센터 여부를 추가하여 반환
    const facilities = facilitiesResult.results.map((facility: any) => ({
      ...facility,
      is_regional_center: regionalCenterIds.has(facility.id)
    }))
    
    return c.json({
      success: true,
      facilities,
      total: countResult?.total || 0,
      page,
      limit,
      totalPages: Math.ceil((countResult?.total || 0) / limit)
    })
  } catch (error: any) {
    return c.json({ success: false, error: error.message }, 500)
  }
})

// 시설 상세 조회
app.get('/api/admin/facilities/:id', async (c) => {
  try {
    const { DB } = c.env
    const id = c.req.param('id')
    
    const facility = await DB.prepare(
      'SELECT * FROM facilities WHERE id = ?'
    ).bind(id).first()
    
    if (!facility) {
      return c.json({ success: false, error: '시설을 찾을 수 없습니다' }, 404)
    }
    
    return c.json({ success: true, facility })
  } catch (error: any) {
    return c.json({ success: false, error: error.message }, 500)
  }
})

// 시설 정보 수정
app.put('/api/admin/facilities/:id', async (c) => {
  try {
    const { DB } = c.env
    const id = c.req.param('id')
    const data = await c.req.json()
    
    await DB.prepare(`
      UPDATE facilities SET
        facility_type = ?,
        name = ?,
        postal_code = ?,
        address = ?,
        phone = ?,
        latitude = ?,
        longitude = ?,
        sido = ?,
        sigungu = ?,
        updated_at = CURRENT_TIMESTAMP
      WHERE id = ?
    `).bind(
      data.facility_type,
      data.name,
      data.postal_code || '',
      data.address,
      data.phone || '',
      data.latitude,
      data.longitude,
      data.sido,
      data.sigungu,
      id
    ).run()
    
    return c.json({ success: true, message: '시설 정보가 수정되었습니다' })
  } catch (error: any) {
    return c.json({ success: false, error: error.message }, 500)
  }
})

// 시설 삭제
app.delete('/api/admin/facilities/:id', async (c) => {
  try {
    const { DB } = c.env
    const id = c.req.param('id')
    
    // 대표센터로 지정된 경우 regional_centers에서도 제거
    await DB.prepare('DELETE FROM regional_centers WHERE facility_id = ?').bind(id).run()
    
    await DB.prepare('DELETE FROM facilities WHERE id = ?').bind(id).run()
    
    return c.json({ success: true, message: '시설이 삭제되었습니다' })
  } catch (error: any) {
    return c.json({ success: false, error: error.message }, 500)
  }
})

// 시설 대표 상담센터 지정/해제
app.post('/api/admin/facilities/toggle-regional-center', async (c) => {
  if (!(await isAdmin(c))) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const { DB } = c.env
    const { facilityId, regionKey, isRegionalCenter } = await c.req.json()
    
    // 시설 정보 조회
    const facility: any = await DB.prepare(
      'SELECT * FROM facilities WHERE id = ?'
    ).bind(facilityId).first()
    
    if (!facility) {
      return c.json({ success: false, message: '시설을 찾을 수 없습니다.' }, 404)
    }
    
    if (isRegionalCenter) {
      // 대표센터로 지정
      
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
        'SELECT id FROM regional_centers WHERE region_key = ? AND facility_id = ?'
      ).bind(regionKey, facilityId).first()
      
      if (existsResult) {
        return c.json({ success: false, message: '이미 대표센터로 지정되어 있습니다.' })
      }
      
      // Regional centers 테이블에 추가
      const rcId = 'rc_facility_' + Date.now() + '_' + Math.random().toString(36).substring(2)
      await DB.prepare(`
        INSERT INTO regional_centers (
          id, region_key, partner_id, facility_id, facility_name, facility_type, 
          manager_name, manager_phone, created_at
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
      `).bind(
        rcId,
        regionKey,
        'facility_' + facilityId, // partner_id를 facility ID로 대체
        facilityId, // facility_id 추가
        facility.name,
        facility.facility_type,
        '', // manager_name (facilities에는 없음)
        facility.phone || '연락처 없음',
        new Date().toISOString()
      ).run()
      
      return c.json({ success: true, message: '대표 상담센터로 지정되었습니다.' })
    } else {
      // 대표센터 해제
      await DB.prepare(
        'DELETE FROM regional_centers WHERE region_key = ? AND facility_id = ?'
      ).bind(regionKey, facilityId).run()
      
      return c.json({ success: true, message: '대표 상담센터에서 해제되었습니다.' })
    }
  } catch (error) {
    console.error('Toggle regional center error:', error)
    return c.json({ success: false, message: '설정 실패' }, 500)
  }
})

// 엑셀 업로드 (시설 정보 업데이트 및 추가)
app.post('/api/admin/upload-facilities', async (c) => {
  try {
    const { facilities } = await c.req.json()
    const { DB } = c.env
    
    if (!Array.isArray(facilities) || facilities.length === 0) {
      return c.json({ success: false, error: '유효한 시설 데이터가 없습니다' }, 400)
    }
    
    console.log(`📤 엑셀 업로드 시작: ${facilities.length}개`)
    
    let updated = 0
    let inserted = 0
    let failed = 0
    
    // 500개씩 배치 처리
    for (let i = 0; i < facilities.length; i += 500) {
      const batch = facilities.slice(i, i + 500)
      
      for (const facility of batch) {
        try {
          if (facility.id) {
            // ID가 있으면 UPDATE
            const result = await DB.prepare(`
              UPDATE facilities 
              SET facility_type = ?, name = ?, postal_code = ?, address = ?, phone = ?, 
                  latitude = ?, longitude = ?, sido = ?, sigungu = ?, notes = ?,
                  updated_at = CURRENT_TIMESTAMP
              WHERE id = ?
            `).bind(
              facility.facility_type,
              facility.name,
              facility.postal_code || '',
              facility.address,
              facility.phone || '',
              facility.latitude || 0,
              facility.longitude || 0,
              facility.sido,
              facility.sigungu,
              facility.notes || '',
              facility.id
            ).run()
            
            if (result.meta.changes > 0) {
              updated++
            } else {
              // ID가 있지만 DB에 없으면 INSERT
              await DB.prepare(`
                INSERT INTO facilities (facility_type, name, postal_code, address, phone, latitude, longitude, sido, sigungu, notes)
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
              `).bind(
                facility.facility_type,
                facility.name,
                facility.postal_code || '',
                facility.address,
                facility.phone || '',
                facility.latitude || 0,
                facility.longitude || 0,
                facility.sido,
                facility.sigungu,
                facility.notes || ''
              ).run()
              inserted++
            }
          } else {
            // ID가 없으면 INSERT (신규 추가)
            await DB.prepare(`
              INSERT INTO facilities (facility_type, name, postal_code, address, phone, latitude, longitude, sido, sigungu, notes)
              VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            `).bind(
              facility.facility_type,
              facility.name,
              facility.postal_code || '',
              facility.address,
              facility.phone || '',
              facility.latitude || 0,
              facility.longitude || 0,
              facility.sido,
              facility.sigungu,
              facility.notes || ''
            ).run()
            inserted++
          }
        } catch (err) {
          console.error('Facility update/insert error:', err)
          failed++
        }
      }
      
      console.log(`📦 Batch ${Math.floor(i/500) + 1}: 업데이트=${updated}, 신규=${inserted}, 실패=${failed}`)
    }
    
    console.log(`✅ 업로드 완료: 업데이트=${updated}, 신규=${inserted}, 실패=${failed}`)
    return c.json({ success: true, updated, inserted, failed, total: facilities.length })
  } catch (error: any) {
    console.error('Upload facilities error:', error)
    return c.json({ success: false, error: error.message }, 500)
  }
})

// 요양병원 데이터 교체 (기존 삭제 후 새 데이터 삽입)
app.post('/api/admin/replace-hospitals', async (c) => {
  try {
    const { hospitals } = await c.req.json()
    const { DB } = c.env
    
    if (!Array.isArray(hospitals) || hospitals.length === 0) {
      return c.json({ success: false, error: '유효한 병원 데이터가 없습니다' }, 400)
    }
    
    console.log(`🏥 요양병원 데이터 교체 시작: ${hospitals.length}개`)
    
    // 1. 기존 요양병원 데이터 모두 삭제
    const deleteResult = await DB.prepare(
      "DELETE FROM facilities WHERE facility_type = '요양병원'"
    ).run()
    console.log(`✅ 기존 요양병원 삭제 완료: ${deleteResult.meta.changes}개`)
    
    // 2. 새 요양병원 데이터 삽입 (D1 batch API 사용, 500개씩)
    let imported = 0
    let failed = 0
    
    for (let i = 0; i < hospitals.length; i += 500) {
      const batch = hospitals.slice(i, i + 500)
      const statements = []
      
      for (const hospital of batch) {
        try {
          statements.push(
            DB.prepare(`
              INSERT INTO facilities (facility_type, name, postal_code, address, phone, latitude, longitude, sido, sigungu, notes)
              VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            `).bind(
              '요양병원',
              hospital.name,
              '',  // postal_code (엑셀에 없음)
              hospital.address,
              hospital.phone || '',
              0.0,  // latitude (기본값, 나중에 지오코딩 필요)
              0.0,  // longitude (기본값, 나중에 지오코딩 필요)
              hospital.sido,
              hospital.sigungu,
              hospital.notes || ''
            )
          )
        } catch (err) {
          console.error('Prepare error:', err)
          failed++
        }
      }
      
      // 배치 실행
      try {
        await DB.batch(statements)
        imported += statements.length
        console.log(`📦 Batch ${Math.floor(i/500) + 1}: ${statements.length}개 삽입 (총: ${imported}개)`)
      } catch (err) {
        console.error('Batch import error:', err)
        failed += statements.length
      }
    }
    
    console.log(`🎉 교체 완료: ${imported}개 성공, ${failed}개 실패`)
    return c.json({ 
      success: true, 
      deleted: deleteResult.meta.changes,
      imported, 
      failed, 
      total: hospitals.length 
    })
  } catch (error: any) {
    console.error('Replace hospitals error:', error)
    return c.json({ success: false, error: error.message }, 500)
  }
})

// 시설 추가
app.post('/api/admin/facilities', async (c) => {
  try {
    const { DB } = c.env
    const data = await c.req.json()
    
    const result = await DB.prepare(`
      INSERT INTO facilities (facility_type, name, postal_code, address, phone, latitude, longitude, sido, sigungu)
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
    `).bind(
      data.facility_type,
      data.name,
      data.postal_code || '',
      data.address,
      data.phone || '',
      data.latitude,
      data.longitude,
      data.sido,
      data.sigungu
    ).run()
    
    return c.json({ success: true, id: result.meta.last_row_id, message: '시설이 추가되었습니다' })
  } catch (error: any) {
    return c.json({ success: false, error: error.message }, 500)
  }
})

// D1에서 시설 데이터 조회 (메인 검색 페이지용)
app.get('/api/facilities-from-db', async (c) => {
  try {
    const { DB } = c.env
    const sido = c.req.query('sido') || ''
    const sigungu = c.req.query('sigungu') || ''
    const type = c.req.query('type') || ''
    const keyword = c.req.query('keyword') || ''
    
    let whereClause = '1=1'
    const bindings: any[] = []
    
    if (sido) {
      whereClause += ' AND sido = ?'
      bindings.push(sido)
    }
    if (sigungu) {
      whereClause += ' AND sigungu = ?'
      bindings.push(sigungu)
    }
    if (type) {
      whereClause += ' AND facility_type = ?'
      bindings.push(type)
    }
    if (keyword) {
      whereClause += ' AND name LIKE ?'
      bindings.push(`%${keyword}%`)
    }
    
    const result = await DB.prepare(
      `SELECT * FROM facilities WHERE ${whereClause}`
    ).bind(...bindings).all()
    
    return c.json({ success: true, facilities: result.results })
  } catch (error: any) {
    console.error('DB query error:', error)
    return c.json({ success: false, error: error.message }, 500)
  }
})

// ============================================
// 시설 관리 API
// ============================================

// 시설 목록 조회 (페이지네이션)
app.get('/api/admin/facilities', async (c) => {
  if (!(await isAdmin(c))) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const { DB } = c.env
    const page = parseInt(c.req.query('page') || '1')
    const limit = parseInt(c.req.query('limit') || '50')
    const search = c.req.query('search') || ''
    const sido = c.req.query('sido') || ''
    const sigungu = c.req.query('sigungu') || ''
    const type = c.req.query('type') || ''
    
    let whereClause = '1=1'
    const bindings: any[] = []
    
    if (search) {
      whereClause += ' AND (name LIKE ? OR address LIKE ?)'
      bindings.push(`%${search}%`, `%${search}%`)
    }
    if (sido) {
      whereClause += ' AND sido = ?'
      bindings.push(sido)
    }
    if (sigungu) {
      whereClause += ' AND sigungu = ?'
      bindings.push(sigungu)
    }
    if (type) {
      whereClause += ' AND facility_type = ?'
      bindings.push(type)
    }
    
    // 전체 개수 조회
    const countResult = await DB.prepare(
      `SELECT COUNT(*) as total FROM facilities WHERE ${whereClause}`
    ).bind(...bindings).first()
    
    const total = countResult?.total || 0
    const totalPages = Math.ceil(total / limit)
    const offset = (page - 1) * limit
    
    // 데이터 조회
    const result = await DB.prepare(
      `SELECT * FROM facilities WHERE ${whereClause} ORDER BY id DESC LIMIT ? OFFSET ?`
    ).bind(...bindings, limit, offset).all()
    
    return c.json({
      facilities: result.results,
      total,
      page,
      totalPages,
      limit
    })
  } catch (error: any) {
    console.error('Facilities fetch error:', error)
    return c.json({ error: error.message }, 500)
  }
})

// DB 초기화 (모든 시설 삭제)
app.post('/api/admin/init-db', async (c) => {
  if (!(await isAdmin(c))) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const { DB } = c.env
    
    // 모든 시설 삭제
    await DB.prepare('DELETE FROM facilities').run()
    
    return c.json({ 
      success: true, 
      message: '모든 시설 정보가 삭제되었습니다.' 
    })
  } catch (error: any) {
    console.error('DB init error:', error)
    return c.json({ 
      success: false, 
      message: '초기화 실패: ' + error.message 
    }, 500)
  }
})

// CSV 임포트 (배치 처리)
app.post('/api/admin/import-csv', async (c) => {
  if (!(await isAdmin(c))) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const { DB } = c.env
    const { facilities } = await c.req.json()
    
    if (!facilities || !Array.isArray(facilities)) {
      return c.json({ 
        success: false, 
        message: '잘못된 데이터 형식입니다.' 
      }, 400)
    }
    
    // 배치 처리 (100개씩)
    const BATCH_SIZE = 100
    let successCount = 0
    let errorCount = 0
    
    for (let i = 0; i < facilities.length; i += BATCH_SIZE) {
      const batch = facilities.slice(i, i + BATCH_SIZE)
      
      try {
        const values = batch.map((f: any) => {
          return `('${f.facility_type.replace(/'/g, "''")}', '${f.name.replace(/'/g, "''")}', '${f.postal_code || ''}', '${f.address.replace(/'/g, "''")}', '${f.phone || ''}', ${f.latitude || 0}, ${f.longitude || 0}, '${f.sido.replace(/'/g, "''")}', '${f.sigungu.replace(/'/g, "''")}')`
        }).join(', ')
        
        await DB.prepare(`
          INSERT INTO facilities (facility_type, name, postal_code, address, phone, latitude, longitude, sido, sigungu)
          VALUES ${values}
        `).run()
        
        successCount += batch.length
      } catch (batchError) {
        console.error('Batch error:', batchError)
        errorCount += batch.length
      }
    }
    
    return c.json({
      success: true,
      message: `임포트 완료: 성공 ${successCount}개, 실패 ${errorCount}개`,
      successCount,
      errorCount
    })
  } catch (error: any) {
    console.error('CSV import error:', error)
    return c.json({ 
      success: false, 
      message: '임포트 실패: ' + error.message 
    }, 500)
  }
})

// 시설 추가
app.post('/api/admin/facility', async (c) => {
  if (!(await isAdmin(c))) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const { DB } = c.env
    const data = await c.req.json()
    
    await DB.prepare(`
      INSERT INTO facilities (facility_type, name, postal_code, address, phone, latitude, longitude, sido, sigungu, created_at, updated_at)
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    `).bind(
      data.facility_type,
      data.name,
      data.postal_code || '',
      data.address,
      data.phone || '',
      data.latitude,
      data.longitude,
      data.sido,
      data.sigungu,
      new Date().toISOString(),
      new Date().toISOString()
    ).run()
    
    return c.json({ success: true, message: '시설이 추가되었습니다.' })
  } catch (error: any) {
    console.error('Facility add error:', error)
    return c.json({ 
      success: false, 
      message: '추가 실패: ' + error.message 
    }, 500)
  }
})

// 시설 수정
app.put('/api/admin/facility/:id', async (c) => {
  if (!(await isAdmin(c))) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const { DB } = c.env
    const id = c.req.param('id')
    const data = await c.req.json()
    
    await DB.prepare(`
      UPDATE facilities 
      SET facility_type = ?, name = ?, postal_code = ?, address = ?, phone = ?, 
          latitude = ?, longitude = ?, sido = ?, sigungu = ?, updated_at = ?
      WHERE id = ?
    `).bind(
      data.facility_type,
      data.name,
      data.postal_code || '',
      data.address,
      data.phone || '',
      data.latitude,
      data.longitude,
      data.sido,
      data.sigungu,
      new Date().toISOString(),
      id
    ).run()
    
    return c.json({ success: true, message: '시설 정보가 수정되었습니다.' })
  } catch (error: any) {
    console.error('Facility update error:', error)
    return c.json({ 
      success: false, 
      message: '수정 실패: ' + error.message 
    }, 500)
  }
})

// 시설 삭제
app.delete('/api/admin/facility/:id', async (c) => {
  if (!(await isAdmin(c))) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const { DB } = c.env
    const id = c.req.param('id')
    
    await DB.prepare('DELETE FROM facilities WHERE id = ?').bind(id).run()
    
    return c.json({ success: true, message: '시설이 삭제되었습니다.' })
  } catch (error: any) {
    console.error('Facility delete error:', error)
    return c.json({ 
      success: false, 
      message: '삭제 실패: ' + error.message 
    }, 500)
  }
})

// 시설 상세 조회
app.get('/api/admin/facility/:id', async (c) => {
  if (!(await isAdmin(c))) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const { DB } = c.env
    const id = c.req.param('id')
    
    const facility = await DB.prepare(
      'SELECT * FROM facilities WHERE id = ?'
    ).bind(id).first()
    
    if (!facility) {
      return c.json({ error: '시설을 찾을 수 없습니다.' }, 404)
    }
    
    return c.json({ facility })
  } catch (error: any) {
    console.error('Facility fetch error:', error)
    return c.json({ error: error.message }, 500)
  }
})

export default app

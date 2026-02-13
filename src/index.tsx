import { Hono } from 'hono'
import { renderer } from './renderer'
import { cors } from 'hono/cors'
import { serveStatic } from 'hono/cloudflare-workers'
import { getCookie, setCookie } from 'hono/cookie'

type Bindings = {
  ADMIN_PASSWORD: string
  DB: D1Database
  KAKAO_REST_API_KEY: string
  KAKAO_REDIRECT_URI: string
}

const app = new Hono<{ Bindings: Bindings }>()

const ADMIN_CONFIG = { sessionKey: 'admin_session' }
// KAKAO_CONFIG는 환경 변수에서 동적으로 가져옴 (Bindings 사용)

// 사용자 타입 정의
type UserType = 'customer' | 'facility'
type FacilityType = '요양병원' | '요양원' | '주야간보호' | '재가복지센터'

// 인터페이스 정의
interface Partner {
  companyName: string
  representative: string
  phone: string
  address: string
  businessType: string
  isRepresentative?: boolean
}

interface FamilyCareRequest {
  name: string
  phone: string
  relationship: string
  patientCondition: string
  desiredService: string
}

interface QuoteRequest {
  name: string
  phone: string
  location: string
  serviceType: string
  budget?: string
  notes?: string
}

interface Facility {
  id?: number
  facility_type: string
  name: string
  phone: string
  address: string
  latitude: number
  longitude: number
  sido: string
  sigungu: string
  source_system?: string
  source_code?: string
}

interface User {
  id: string
  email: string
  password: string
  name: string
  type: UserType
  facilityType?: FacilityType
  address?: string
  phone: string
  createdAt: string
}

interface UserSession {
  userId: string
  email: string
  name: string
  type: UserType
  loginTime: string
}

const dataStore = { 
  partners: [] as Partner[], 
  familyCare: [] as FamilyCareRequest[],
  quoteRequests: [] as QuoteRequest[],
  facilities: [] as Facility[],  // 시설 데이터 캐시
  facilitiesLoaded: false,   // 로딩 여부 플래그
  users: [] as User[],        // 사용자 데이터
  userSessions: new Map<string, UserSession>()  // 사용자 세션
}
const sessions = new Set<string>()

// 테스트 사용자 데이터 초기화
function initTestUsers() {
  if (dataStore.users.length === 0) {
    dataStore.users = [
      // 고객 테스트 계정
      { 
        id: 'customer1', 
        email: 'customer@test.com', 
        password: '1234', 
        name: '김철수',
        type: 'customer' as UserType,
        phone: '010-1234-5678',
        createdAt: new Date().toISOString()
      },
      // 시설 테스트 계정
      { 
        id: 'facility1', 
        email: 'hospital@test.com', 
        password: '1234', 
        name: '서울요양병원',
        type: 'facility' as UserType,
        facilityType: '요양병원' as FacilityType,
        address: '서울특별시 강남구',
        phone: '02-1234-5678',
        createdAt: new Date().toISOString()
      },
      { 
        id: 'facility2', 
        email: 'care@test.com', 
        password: '1234', 
        name: '행복요양원',
        type: 'facility' as UserType,
        facilityType: '요양원' as FacilityType,
        address: '경기도 성남시',
        phone: '031-1234-5678',
        createdAt: new Date().toISOString()
      },
      { 
        id: 'facility3', 
        email: 'daycare@test.com', 
        password: '1234', 
        name: '사랑주야간보호센터',
        type: 'facility' as UserType,
        facilityType: '주야간보호' as FacilityType,
        address: '서울특별시 송파구',
        phone: '02-2345-6789',
        createdAt: new Date().toISOString()
      },
      { 
        id: 'facility4', 
        email: 'homecare@test.com', 
        password: '1234', 
        name: '편안한재가복지센터',
        type: 'facility' as UserType,
        facilityType: '재가복지센터' as FacilityType,
        address: '인천광역시 남동구',
        phone: '032-3456-7890',
        createdAt: new Date().toISOString()
      }
    ]
  }
}

function isAdmin(c: any) {
  const sessionId = getCookie(c, ADMIN_CONFIG.sessionKey)
  return sessionId && sessions.has(sessionId)
}

function generateSessionId() {
  return 'session_' + Date.now() + '_' + Math.random().toString(36).substring(2)
}

// 사용자 인증 함수
async function getUser(c: any) {
  const sessionId = getCookie(c, 'user_session')
  if (!sessionId) return null
  
  // D1에서 세션 조회
  const db = c.env.DB
  if (!db) {
    // D1이 없으면 메모리 폴백
    return dataStore.userSessions.get(sessionId) || null
  }
  
  try {
    const result = await db.prepare(`
      SELECT user_id FROM sessions WHERE session_id = ? AND expires_at > datetime('now')
    `).bind(sessionId).first()
    
    if (!result) return null
    
    // 사용자 정보 조회
    const user = await db.prepare(`
      SELECT * FROM users WHERE id = ?
    `).bind(result.user_id).first()
    
    // D1 user_type을 type으로 매핑
    if (user && user.user_type) {
      user.type = user.user_type
    }
    
    return user
  } catch (error) {
    console.error('getUser 오류:', error)
    // D1 오류 시 메모리 폴백
    return dataStore.userSessions.get(sessionId) || null
  }
}

function requireAuth(userType?: UserType) {
  return async (c: any, next: any) => {
    const user = await getUser(c)
    if (!user) {
      return c.redirect('/login')
    }
    if (userType && user.type !== userType) {
      return c.text('접근 권한이 없습니다.', 403)
    }
    c.set('user', user)
    await next()
  }
}

app.use('/api/*', cors())
app.use('/static/*', serveStatic({ root: './public' }))
app.use(renderer)

// 테스트 사용자 초기화
initTestUsers()

// ========== 인증 관련 라우트 ==========

// 로그인 페이지
app.get('/login', (c) => {
  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>로그인 - 케어조아</title>
      <link href="/static/tailwind.css" rel="stylesheet">
      <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet">
    </head>
    <body class="bg-gradient-to-br from-teal-50 to-blue-50 min-h-screen">
      <div class="container mx-auto px-4 py-8">
        <div class="text-center mb-8">
          <a href="/" class="inline-flex items-center">
            <img 
              src="https://page.gensparksite.com/v1/base64_upload/b39dca8586af1dacd6d8417554313896" 
              alt="케어조아 로고"
              class="h-12 w-auto mr-3"
            />
            <h1 class="text-4xl font-bold text-teal-600">케어조아</h1>
          </a>
          <p class="text-gray-600 mt-2">로그인 후 다양한 서비스를 이용하세요</p>
        </div>

        <div class="max-w-md mx-auto">
          <div class="bg-white rounded-2xl shadow-xl p-8">
            <h2 class="text-2xl font-bold text-gray-800 mb-6 text-center">
              <i class="fas fa-sign-in-alt text-teal-600 mr-2"></i>로그인
            </h2>

            <div class="mb-6">
              <label class="block text-base font-semibold text-gray-700 mb-4">로그인 유형</label>
              <div class="grid grid-cols-2 md:grid-cols-4 gap-3 sm:gap-4">
                <button type="button" id="btnCustomer" onclick="selectUserType('customer')"
                  class="px-4 py-5 border-2 border-teal-600 bg-teal-600 text-white rounded-xl hover:bg-teal-700 transition-colors flex flex-col items-center justify-center gap-2">
                  <i class="fas fa-user text-3xl mb-1"></i>
                  <span class="font-bold text-base">일반고객</span>
                </button>
                <button type="button" id="btnFacility" onclick="selectUserType('facility')"
                  class="px-4 py-5 border-2 border-gray-300 text-gray-700 rounded-xl hover:border-teal-600 hover:text-teal-600 transition-colors flex flex-col items-center justify-center gap-2">
                  <i class="fas fa-building text-3xl mb-1"></i>
                  <span class="font-bold text-sm leading-tight">요양시설<br/>(요양병원)</span>
                </button>
                <button type="button" id="btnHospital" onclick="selectUserType('hospital_manager')"
                  class="px-4 py-5 border-2 border-gray-300 text-gray-700 rounded-xl hover:border-teal-600 hover:text-teal-600 transition-colors flex flex-col items-center justify-center gap-2">
                  <i class="fas fa-hospital-alt text-3xl mb-1"></i>
                  <span class="font-bold text-sm leading-tight">상급<br/>일반병의원</span>
                </button>
                <button type="button" id="btnWelfare" onclick="selectUserType('welfare_manager')"
                  class="px-4 py-5 border-2 border-gray-300 text-gray-700 rounded-xl hover:border-teal-600 hover:text-teal-600 transition-colors flex flex-col items-center justify-center gap-2">
                  <i class="fas fa-landmark text-3xl mb-1"></i>
                  <span class="font-bold text-base">행정복지</span>
                </button>
              </div>
            </div>

            <form id="loginForm" onsubmit="handleLogin(event)">
              <div class="space-y-4">
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-envelope text-gray-400 mr-1"></i>이메일
                  </label>
                  <input type="email" id="email" required placeholder="example@email.com"
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent" />
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-lock text-gray-400 mr-1"></i>비밀번호
                  </label>
                  <input type="password" id="password" required placeholder="••••••••"
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent" />
                </div>

                <button type="submit"
                  class="w-full bg-teal-600 text-white py-3 rounded-lg hover:bg-teal-700 transition-colors font-semibold text-lg">
                  <i class="fas fa-sign-in-alt mr-2"></i>로그인
                </button>

                <!-- 카카오 로그인 버튼 -->
                <div class="relative my-6">
                  <div class="absolute inset-0 flex items-center">
                    <div class="w-full border-t border-gray-300"></div>
                  </div>
                  <div class="relative flex justify-center text-sm">
                    <span class="px-2 bg-white text-gray-500">또는</span>
                  </div>
                </div>

                <a href="/api/auth/kakao/login"
                  class="w-full flex items-center justify-center bg-yellow-400 text-gray-900 py-3 rounded-lg hover:bg-yellow-500 transition-colors font-semibold text-lg">
                  <svg class="w-5 h-5 mr-2" viewBox="0 0 24 24" fill="currentColor">
                    <path d="M12 3C6.5 3 2 6.6 2 11c0 2.8 1.9 5.3 4.7 6.7-.2.7-.6 2.7-.7 3.1 0 0 0 .3.2.4.1.1.3.1.5 0 .5-.2 3.5-2.3 4-2.7.6.1 1.3.2 2 .2 5.5 0 10-3.6 10-8S17.5 3 12 3z"/>
                  </svg>
                  카카오 로그인
                </a>
              </div>
            </form>

            <!-- 회원가입 링크 -->
            <div class="mt-6 text-center">
              <p class="text-gray-600 text-sm mb-3">아직 회원이 아니신가요?</p>
              <a href="/register"
                class="inline-flex items-center justify-center w-full py-3 border-2 border-teal-600 text-teal-600 rounded-lg hover:bg-teal-50 transition-colors font-semibold">
                <i class="fas fa-user-plus mr-2"></i>회원가입
              </a>
            </div>
          </div>
        </div>
      </div>

      <script>
        let selectedUserType = 'customer';

        function selectUserType(type) {
          selectedUserType = type;
          const btnCustomer = document.getElementById('btnCustomer');
          const btnFacility = document.getElementById('btnFacility');
          const btnHospital = document.getElementById('btnHospital');
          const btnWelfare = document.getElementById('btnWelfare');
          
          const activeClass = 'px-4 py-3 border-2 border-teal-600 bg-teal-600 text-white rounded-lg hover:bg-teal-700 transition-colors font-medium';
          const inactiveClass = 'px-4 py-3 border-2 border-gray-300 text-gray-700 rounded-lg hover:border-teal-600 hover:text-teal-600 transition-colors font-medium';
          
          btnCustomer.className = inactiveClass;
          btnFacility.className = inactiveClass;
          btnHospital.className = inactiveClass;
          btnWelfare.className = inactiveClass;

          if (type === 'customer') {
            btnCustomer.className = activeClass;
          } else if (type === 'facility') {
            btnFacility.className = activeClass;
          } else if (type === 'hospital_manager') {
            btnHospital.className = activeClass;
          } else if (type === 'welfare_manager') {
            btnWelfare.className = activeClass;
          }
        }

        async function handleLogin(event) {
          event.preventDefault();
          
          const email = document.getElementById('email').value;
          const password = document.getElementById('password').value;

          try {
            const response = await fetch('/api/auth/login', {
              method: 'POST',
              headers: { 'Content-Type': 'application/json' },
              body: JSON.stringify({ email, password, type: selectedUserType })
            });

            const data = await response.json();

            if (data.success) {
              alert('로그인 성공!');
              if (data.user.type === 'customer') {
                window.location.href = '/dashboard/customer';
              } else if (data.user.type === 'facility') {
                window.location.href = '/dashboard/facility';
              } else if (data.user.type === 'hospital_manager' || data.user.type === 'welfare_manager') {
                window.location.href = '/dashboard/partner';
              }
            } else {
              alert(data.message || '로그인 실패');
            }
          } catch (error) {
            alert('로그인 중 오류가 발생했습니다.');
            console.error(error);
          }
        }
      </script>
      
      <!-- 사업자 정보 푸터 -->
      <footer class="fixed bottom-0 left-0 right-0 bg-gray-800 text-gray-400 py-3 text-center text-xs">
        <div class="max-w-4xl mx-auto px-4">
          <div class="flex flex-wrap justify-center gap-3 sm:gap-6">
            <span>주식회사 이노메딕</span>
            <span class="hidden sm:inline">|</span>
            <span>대표: 박대수</span>
            <span class="hidden sm:inline">|</span>
            <span>사업자번호: 818-86-03381</span>
          </div>
          <p class="text-gray-500 mt-2 text-[10px]">(08517) 서울특별시 금천구 디지털로10길 78 10층</p>
        </div>
      </footer>
    </body>
    </html>
  `)
})

// 로그인 API
app.post('/api/auth/login', async (c) => {
  const { email, password, type } = await c.req.json()
  
  const db = c.env.DB
  let user = null
  
  // D1에서 사용자 조회
  if (db) {
    try {
      user = await db.prepare(`
        SELECT * FROM users WHERE email = ? AND password_hash = ? AND user_type = ?
      `).bind(email, password, type).first()
    } catch (error) {
      console.error('D1 로그인 조회 오류:', error)
      return c.json({ success: false, message: '로그인 처리 중 오류가 발생했습니다.' }, 500)
    }
  } else {
    // 로컬 개발 환경에서만 메모리 폴백 사용
    user = dataStore.users.find(u => 
      u.email === email && 
      u.password === password &&
      u.type === type
    )
  }

  if (!user) {
    return c.json({ success: false, message: '이메일 또는 비밀번호가 올바르지 않습니다.' })
  }

  const sessionId = generateSessionId()
  const expiresAt = new Date(Date.now() + 7 * 24 * 60 * 60 * 1000).toISOString() // 7일 후
  
  // D1에 세션 저장
  if (db) {
    try {
      await db.prepare(`
        INSERT INTO sessions (session_id, user_id, expires_at)
        VALUES (?, ?, ?)
        ON CONFLICT(session_id) DO UPDATE SET
          user_id = excluded.user_id,
          expires_at = excluded.expires_at,
          updated_at = CURRENT_TIMESTAMP
      `).bind(sessionId, user.id, expiresAt).run()
    } catch (error) {
      console.error('D1 세션 저장 오류:', error)
    }
  }
  
  // 메모리에도 세션 저장 (폴백용)
  dataStore.userSessions.set(sessionId, user)
  
  setCookie(c, 'user_session', sessionId, {
    httpOnly: true,
    secure: true,  // HTTPS 필수 (Cloudflare Pages는 항상 HTTPS)
    sameSite: 'Lax',
    maxAge: 60 * 60 * 24 * 7, // 7일
    path: '/'
  })

  return c.json({ 
    success: true, 
    message: '로그인 성공',
    user: {
      id: user.id,
      email: user.email,
      name: user.name,
      type: user.type || user.user_type,
      facilityType: user.facilityType || user.facility_type,
      region_sido: user.region_sido,
      region_sigungu: user.region_sigungu,
      facility_type: user.facility_type
    }
  })
})

// 로그아웃 API
app.post('/api/auth/logout', async (c) => {
  const sessionId = getCookie(c, 'user_session')
  if (sessionId) {
    // D1에서 세션 삭제
    const db = c.env.DB
    if (db) {
      try {
        await db.prepare(`DELETE FROM sessions WHERE session_id = ?`).bind(sessionId).run()
      } catch (error) {
        console.error('D1 세션 삭제 오류:', error)
      }
    }
    // 메모리에서도 삭제
    dataStore.userSessions.delete(sessionId)
  }
  
  setCookie(c, 'user_session', '', {
    httpOnly: true,
    secure: true,
    sameSite: 'Lax',
    maxAge: 0,
    path: '/'
  })

  return c.json({ success: true, message: '로그아웃되었습니다.' })
})

// 현재 로그인한 사용자 정보 조회
app.get('/api/auth/me', async (c) => {
  const user = await getUser(c)
  
  if (!user) {
    return c.json({ success: false, message: '로그인이 필요합니다.' }, 401)
  }
  
  return c.json({ 
    success: true, 
    user: {
      id: user.id,
      email: user.email,
      name: user.name,
      type: user.type,
      phone: user.phone,
      address: user.address,
      facility_type: user.facility_type,
      region_sido: user.region_sido,
      region_sigungu: user.region_sigungu,
      facility_address: user.facility_address,
      postal_code: user.postal_code,
      business_number: user.business_number
    }
  })
})

// 회원가입 페이지
app.get('/register', (c) => {
  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>회원가입 - 케어조아</title>
      <link href="/static/tailwind.css" rel="stylesheet">
      <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet">
    </head>
    <body class="bg-gradient-to-br from-teal-50 to-blue-50 min-h-screen">
      <div class="container mx-auto px-4 py-8">
        <div class="text-center mb-8">
          <a href="/" class="inline-flex items-center">
            <img 
              src="https://page.gensparksite.com/v1/base64_upload/b39dca8586af1dacd6d8417554313896" 
              alt="케어조아 로고"
              class="h-12 w-auto mr-3"
            />
            <h1 class="text-4xl font-bold text-teal-600">케어조아</h1>
          </a>
          <p class="text-gray-600 mt-2">케어조아에 오신 것을 환영합니다!</p>
        </div>

        <div class="max-w-2xl mx-auto">
          <div class="bg-white rounded-2xl shadow-xl p-8">
            <h2 class="text-2xl font-bold text-gray-800 mb-6 text-center">
              <i class="fas fa-user-plus text-teal-600 mr-2"></i>
              회원가입
            </h2>

            <!-- 사용자 유형 선택 -->
            <div class="mb-6">
              <label class="block text-base font-semibold text-gray-700 mb-4">가입 유형</label>
              <div class="grid grid-cols-2 md:grid-cols-4 gap-3 sm:gap-4">
                <button type="button" id="btnCustomer" onclick="selectUserType('customer')"
                  class="px-4 py-5 border-2 border-teal-600 bg-teal-600 text-white rounded-xl hover:bg-teal-700 transition-colors flex flex-col items-center justify-center gap-2">
                  <i class="fas fa-user text-3xl mb-1"></i>
                  <span class="font-bold text-base">일반고객</span>
                </button>
                <button type="button" id="btnFacility" onclick="selectUserType('facility')"
                  class="px-4 py-5 border-2 border-gray-300 text-gray-700 rounded-xl hover:border-teal-600 hover:text-teal-600 transition-colors flex flex-col items-center justify-center gap-2">
                  <i class="fas fa-building text-3xl mb-1"></i>
                  <span class="font-bold text-sm leading-tight">요양시설<br/>(요양병원)</span>
                </button>
                <button type="button" id="btnHospital" onclick="selectUserType('hospital_manager')"
                  class="px-4 py-5 border-2 border-gray-300 text-gray-700 rounded-xl hover:border-teal-600 hover:text-teal-600 transition-colors flex flex-col items-center justify-center gap-2">
                  <i class="fas fa-hospital-alt text-3xl mb-1"></i>
                  <span class="font-bold text-sm leading-tight">상급<br/>일반병의원</span>
                </button>
                <button type="button" id="btnWelfare" onclick="selectUserType('welfare_manager')"
                  class="px-4 py-5 border-2 border-gray-300 text-gray-700 rounded-xl hover:border-teal-600 hover:text-teal-600 transition-colors flex flex-col items-center justify-center gap-2">
                  <i class="fas fa-landmark text-3xl mb-1"></i>
                  <span class="font-bold text-base">행정복지</span>
                </button>
              </div>
            </div>

            <!-- 회원가입 폼 -->
            <form id="registerForm" onsubmit="handleRegister(event)">
              <!-- 공통 정보 -->
              <div class="space-y-4 mb-6">
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-envelope text-gray-400 mr-1"></i>이메일 *
                  </label>
                  <input type="email" id="email" required placeholder="example@email.com"
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent" />
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-lock text-gray-400 mr-1"></i>비밀번호 *
                  </label>
                  <input type="password" id="password" required placeholder="8자 이상 입력"
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent" />
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-lock text-gray-400 mr-1"></i>비밀번호 확인 *
                  </label>
                  <input type="password" id="passwordConfirm" required placeholder="비밀번호 재입력"
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent" />
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-user text-gray-400 mr-1"></i>이름 *
                  </label>
                  <input type="text" id="name" required placeholder="홍길동"
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent" />
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-phone text-gray-400 mr-1"></i>연락처 *
                  </label>
                  <input type="tel" id="phone" required placeholder="010-1234-5678"
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent" />
                </div>
              </div>

              <!-- 시설 전용 정보 (숨김 처리) -->
              <div id="facilityFields" style="display: none;" class="space-y-4 mb-6 p-4 bg-blue-50 rounded-lg">
                <h3 class="font-bold text-gray-800 mb-3">
                  <i class="fas fa-building text-teal-600 mr-2"></i>시설 정보
                </h3>

                <div class="bg-teal-50 border border-teal-200 rounded-lg p-4 mb-4">
                  <p class="text-sm text-gray-700">
                    <i class="fas fa-info-circle text-teal-600 mr-2"></i>
                    <strong>안내:</strong> 시설 유형, 주소 등 상세 정보는 로그인 후 <strong>시설 정보 수정</strong>에서 입력하실 수 있습니다.
                  </p>
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">사업자등록번호 (선택)</label>
                  <input type="text" id="businessNumber" placeholder="123-45-67890"
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent" />
                  <p class="text-xs text-gray-500 mt-1">사업자등록번호가 있으면 입력해주세요.</p>
                </div>
              </div>

              <!-- 파트너 전용 정보 (숨김 처리) -->
              <div id="partnerFields" style="display: none;" class="space-y-4 mb-6 p-4 bg-purple-50 rounded-lg">
                <h3 class="font-bold text-gray-800 mb-3">
                  <i class="fas fa-briefcase text-purple-600 mr-2"></i>기관 정보
                </h3>

                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">기관명 *</label>
                  <input type="text" id="organizationName" placeholder="서울대학교병원"
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent" />
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">부서명 *</label>
                  <input type="text" id="department" placeholder="사회복지팀"
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent" />
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">직책 *</label>
                  <input type="text" id="position" placeholder="사회복지사"
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent" />
                </div>

                <div class="bg-yellow-50 border border-yellow-300 rounded-lg p-4">
                  <p class="text-sm text-gray-700">
                    <i class="fas fa-info-circle text-yellow-600 mr-2"></i>
                    <strong>승인 안내:</strong> 파트너 가입은 관리자 승인이 필요합니다. 
                    승인 완료 후 이메일로 안내드립니다.
                  </p>
                </div>
              </div>

              <!-- 약관 동의 -->
              <div class="space-y-3 mb-6">
                <label class="flex items-start">
                  <input type="checkbox" id="agreeAll" onchange="toggleAllAgreements()"
                    class="mt-1 rounded border-gray-300 text-teal-600 focus:ring-teal-500 mr-2">
                  <span class="text-sm font-bold text-gray-700">전체 동의</span>
                </label>
                <div class="border-t pt-3 space-y-2">
                  <label class="flex items-start">
                    <input type="checkbox" required class="agree-checkbox mt-1 rounded border-gray-300 text-teal-600 focus:ring-teal-500 mr-2">
                    <span class="text-sm text-gray-600">[필수] 이용약관 동의</span>
                  </label>
                  <label class="flex items-start">
                    <input type="checkbox" required class="agree-checkbox mt-1 rounded border-gray-300 text-teal-600 focus:ring-teal-500 mr-2">
                    <span class="text-sm text-gray-600">[필수] 개인정보 처리방침 동의</span>
                  </label>
                  <label class="flex items-start">
                    <input type="checkbox" class="agree-checkbox mt-1 rounded border-gray-300 text-teal-600 focus:ring-teal-500 mr-2">
                    <span class="text-sm text-gray-600">[선택] 마케팅 정보 수신 동의</span>
                  </label>
                </div>
              </div>

              <button type="submit"
                class="w-full bg-teal-600 text-white py-3 rounded-lg hover:bg-teal-700 transition-colors font-semibold text-lg">
                <i class="fas fa-user-plus mr-2"></i>회원가입
              </button>
            </form>

            <div class="mt-6 text-center">
              <p class="text-gray-600">
                이미 계정이 있으신가요? 
                <a href="/login" class="text-teal-600 hover:text-teal-700 font-medium ml-1">로그인</a>
              </p>
            </div>
          </div>
        </div>
      </div>

      <script>
        let selectedUserType = 'customer';

        function selectUserType(type) {
          selectedUserType = type;
          const btnCustomer = document.getElementById('btnCustomer');
          const btnFacility = document.getElementById('btnFacility');
          const btnHospital = document.getElementById('btnHospital');
          const btnWelfare = document.getElementById('btnWelfare');
          const facilityFields = document.getElementById('facilityFields');
          const partnerFields = document.getElementById('partnerFields');
          
          // Reset all buttons
          const activeClass = 'px-4 py-3 border-2 border-teal-600 bg-teal-600 text-white rounded-lg hover:bg-teal-700 transition-colors font-medium';
          const inactiveClass = 'px-4 py-3 border-2 border-gray-300 text-gray-700 rounded-lg hover:border-teal-600 hover:text-teal-600 transition-colors font-medium';
          
          btnCustomer.className = inactiveClass;
          btnFacility.className = inactiveClass;
          btnHospital.className = inactiveClass;
          btnWelfare.className = inactiveClass;
          
          facilityFields.style.display = 'none';
          partnerFields.style.display = 'none';

          if (type === 'customer') {
            btnCustomer.className = activeClass;
          } else if (type === 'facility') {
            btnFacility.className = activeClass;
            facilityFields.style.display = 'block';
          } else if (type === 'hospital_manager') {
            btnHospital.className = activeClass;
            partnerFields.style.display = 'block';
          } else if (type === 'welfare_manager') {
            btnWelfare.className = activeClass;
            partnerFields.style.display = 'block';
          }
        }

        function toggleAllAgreements() {
          const agreeAll = document.getElementById('agreeAll');
          const checkboxes = document.querySelectorAll('.agree-checkbox');
          checkboxes.forEach(cb => cb.checked = agreeAll.checked);
        }

        async function handleRegister(event) {
          event.preventDefault();
          
          const email = document.getElementById('email').value;
          const password = document.getElementById('password').value;
          const passwordConfirm = document.getElementById('passwordConfirm').value;
          const name = document.getElementById('name').value;
          const phone = document.getElementById('phone').value;

          if (password !== passwordConfirm) {
            alert('비밀번호가 일치하지 않습니다.');
            return;
          }

          if (password.length < 8) {
            alert('비밀번호는 8자 이상이어야 합니다.');
            return;
          }

          // 전화번호에서 하이픈(-) 제거
          const cleanPhone = phone.replace(/[-\s]/g, '');

          const data = {
            email,
            password,
            name,
            phone: cleanPhone,
            type: selectedUserType
          };

          if (selectedUserType === 'facility') {
            const businessNumber = document.getElementById('businessNumber').value;
            // 사업자등록번호에서 하이픈(-) 제거
            data.businessNumber = businessNumber.replace(/[-\s]/g, '');
          } else if (selectedUserType === 'hospital_manager' || selectedUserType === 'welfare_manager') {
            const organizationName = document.getElementById('organizationName').value;
            const department = document.getElementById('department').value;
            const position = document.getElementById('position').value;

            if (!organizationName || !department || !position) {
              alert('기관명, 부서명, 직책을 모두 입력해주세요.');
              return;
            }

            data.organizationName = organizationName;
            data.department = department;
            data.position = position;
          }

          try {
            const response = await fetch('/api/auth/register', {
              method: 'POST',
              headers: { 'Content-Type': 'application/json' },
              body: JSON.stringify(data)
            });

            const result = await response.json();

            if (result.success) {
              if (selectedUserType === 'hospital_manager' || selectedUserType === 'welfare_manager') {
                alert('회원가입이 완료되었습니다! 관리자 승인 후 로그인이 가능합니다. 승인 완료 시 이메일로 안내드립니다.');
              } else {
                alert('회원가입이 완료되었습니다! 로그인해주세요.');
              }
              window.location.href = '/login';
            } else {
              alert(result.message || '회원가입 실패');
            }
          } catch (error) {
            alert('회원가입 중 오류가 발생했습니다.');
            console.error(error);
          }
        }
      </script>
    </body>
    </html>
  `)
})

// 회원가입 API
app.post('/api/auth/register', async (c) => {
  const data = await c.req.json()
  const db = c.env.DB
  
  try {
    // 전화번호와 사업자번호에서 하이픈(-) 및 공백 제거
    const cleanPhone = (data.phone || '').replace(/[-\s]/g, '')
    const cleanBusinessNumber = (data.businessNumber || '').replace(/[-\s]/g, '')
    
    // D1 이메일 중복 체크
    if (db) {
      const existingUser = await db.prepare(`
        SELECT id FROM users WHERE email = ?
      `).bind(data.email).first()
      
      if (existingUser) {
        return c.json({ success: false, message: '이미 사용 중인 이메일입니다.' })
      }
    }

    // D1에 사용자 생성
    if (db) {
      // TODO: 프로덕션에서는 password를 bcrypt 등으로 해시화 필요
      const hashedPassword = data.password
      
      let insertResult
      
      // user_type에 따라 다른 필드 처리
      if (data.type === 'facility') {
        insertResult = await db.prepare(`
          INSERT INTO users (
            user_type, email, password_hash, name, phone,
            business_number, facility_type, facility_address,
            created_at, updated_at
          ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, datetime('now'), datetime('now'))
        `).bind(
          data.type,
          data.email,
          hashedPassword,
          data.name,
          cleanPhone,
          cleanBusinessNumber,
          data.facilityType || null,
          data.facilityAddress || null
        ).run()
      } else if (data.type === 'hospital_manager' || data.type === 'welfare_manager') {
        insertResult = await db.prepare(`
          INSERT INTO users (
            user_type, email, password_hash, name, phone,
            organization_name, department, position,
            created_at, updated_at
          ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, datetime('now'), datetime('now'))
        `).bind(
          data.type,
          data.email,
          hashedPassword,
          data.name,
          cleanPhone,
          data.organizationName || '',
          data.department || '',
          data.position || ''
        ).run()
      } else {
        // customer 또는 기본 타입
        insertResult = await db.prepare(`
          INSERT INTO users (
            user_type, email, password_hash, name, phone,
            created_at, updated_at
          ) VALUES (?, ?, ?, ?, ?, datetime('now'), datetime('now'))
        `).bind(
          data.type,
          data.email,
          hashedPassword,
          data.name,
          cleanPhone
        ).run()
      }
      
      const userId = insertResult.meta.last_row_id
      
      return c.json({ 
        success: true, 
        message: '회원가입이 완료되었습니다.',
        userId: userId
      })
    }
    
    // DB가 없는 경우 (로컬 테스트용 폴백)
    return c.json({ 
      success: false, 
      message: 'DB 연결 실패'
    }, 500)
    
  } catch (error) {
    console.error('Registration error:', error)
    return c.json({ 
      success: false, 
      message: '회원가입 처리 중 오류가 발생했습니다.'
    }, 500)
  }
})

// ========== 카카오 로그인 ==========

// 카카오 로그인 시작
app.get('/api/auth/kakao/login', (c) => {
  const kakaoAuthUrl = `https://kauth.kakao.com/oauth/authorize?client_id=${c.env.KAKAO_REST_API_KEY}&redirect_uri=${encodeURIComponent(c.env.KAKAO_REDIRECT_URI)}&response_type=code`
  return c.redirect(kakaoAuthUrl)
})

// 카카오 로그인 콜백
app.get('/api/auth/kakao/callback', async (c) => {
  const code = c.req.query('code')
  const db = c.env.DB
  
  if (!code) {
    return c.redirect('/login?error=kakao_auth_failed')
  }

  try {
    // 1. 액세스 토큰 받기
    const tokenResponse = await fetch('https://kauth.kakao.com/oauth/token', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded'
      },
      body: new URLSearchParams({
        grant_type: 'authorization_code',
        client_id: c.env.KAKAO_REST_API_KEY,
        redirect_uri: c.env.KAKAO_REDIRECT_URI,
        code: code
      })
    })

    const tokenData = await tokenResponse.json()
    
    if (!tokenData.access_token) {
      return c.redirect('/login?error=kakao_token_failed')
    }

    // 2. 사용자 정보 받기
    const userResponse = await fetch('https://kapi.kakao.com/v2/user/me', {
      headers: {
        'Authorization': `Bearer ${tokenData.access_token}`
      }
    })

    const kakaoUser = await userResponse.json()
    
    // 3. 기존 사용자 확인 (D1에서 조회)
    const kakaoId = `kakao_${kakaoUser.id}`
    let user = null
    
    if (db) {
      try {
        // password_hash 필드에 kakaoId를 저장했으므로 그걸로 조회
        // (카카오 로그인 사용자는 비밀번호 대신 kakaoId를 password_hash에 저장)
        user = await db.prepare(`
          SELECT * FROM users 
          WHERE password_hash = ? 
          AND user_type IN ('customer', 'facility')
        `).bind(kakaoId).first()
        
        console.log('[카카오 로그인] 기존 사용자 조회:', user ? '발견' : '없음', 'kakaoId:', kakaoId)
      } catch (error) {
        console.error('카카오 사용자 조회 오류:', error)
      }
    }
    
    if (user) {
      // 기존 사용자 - 로그인 처리 (D1 세션)
      const sessionId = generateSessionId()
      const expiresAt = new Date(Date.now() + 7 * 24 * 60 * 60 * 1000).toISOString()
      
      if (db) {
        try {
          await db.prepare(`
            INSERT INTO sessions (session_id, user_id, expires_at, created_at, updated_at)
            VALUES (?, ?, ?, datetime('now'), datetime('now'))
            ON CONFLICT(session_id) DO UPDATE SET
              user_id = excluded.user_id,
              expires_at = excluded.expires_at,
              updated_at = datetime('now')
          `).bind(sessionId, user.id, expiresAt).run()
        } catch (error) {
          console.error('카카오 로그인 세션 저장 오류:', error)
        }
      }
      
      setCookie(c, 'user_session', sessionId, {
        httpOnly: true,
        secure: true,
        sameSite: 'Lax',
        maxAge: 60 * 60 * 24 * 7,
        path: '/'
      })

      // D1 user_type을 type으로 매핑
      const userType = user.user_type || user.type

      // 대시보드로 리다이렉트
      if (userType === 'customer') {
        return c.redirect('/dashboard/customer')
      } else {
        return c.redirect('/dashboard/facility')
      }
    } else {
      // 신규 사용자 - 회원 타입 선택 페이지로
      // 임시로 카카오 정보를 D1 임시 테이블에 저장
      const tempSessionId = generateSessionId()
      const kakaoInfo = {
        kakaoId: kakaoId,
        email: kakaoUser.kakao_account?.email || '',
        name: kakaoUser.properties?.nickname || '카카오사용자',
        profileImage: kakaoUser.properties?.profile_image || ''
      }
      
      // 메모리에도 저장 (10분간 유효)
      dataStore.userSessions.set(tempSessionId, kakaoInfo)
      
      setCookie(c, 'kakao_temp_session', tempSessionId, {
        httpOnly: true,
        secure: true,
        sameSite: 'Lax',
        maxAge: 60 * 10, // 10분
        path: '/'
      })

      return c.redirect('/signup/select-type')
    }
  } catch (error) {
    console.error('Kakao login error:', error)
    return c.redirect('/login?error=kakao_error')
  }
})

// 사용자 타입 선택 페이지 (카카오 로그인 후)
app.get('/signup/select-type', (c) => {
  const tempSessionId = getCookie(c, 'kakao_temp_session')
  
  if (!tempSessionId) {
    return c.redirect('/register')
  }

  const kakaoInfo = dataStore.userSessions.get(tempSessionId)
  
  if (!kakaoInfo) {
    return c.redirect('/register')
  }

  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>회원 유형 선택 - 케어조아</title>
      <link href="/static/tailwind.css" rel="stylesheet">
      <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet">
    </head>
    <body class="bg-gradient-to-br from-teal-50 to-blue-50 min-h-screen">
      <div class="container mx-auto px-4 py-8">
        <div class="text-center mb-8">
          <img 
            src="https://page.gensparksite.com/v1/base64_upload/b39dca8586af1dacd6d8417554313896" 
            alt="케어조아 로고"
            class="h-16 w-auto mx-auto mb-4"
          />
          <h1 class="text-4xl font-bold text-teal-600 mb-2">케어조아</h1>
          <p class="text-gray-600">회원 유형을 선택해주세요</p>
        </div>

        <div class="max-w-2xl mx-auto">
          <div class="bg-white rounded-2xl shadow-xl p-8">
            <div class="text-center mb-8">
              ${kakaoInfo.profileImage ? `<img src="${kakaoInfo.profileImage}" alt="프로필" class="w-20 h-20 rounded-full mx-auto mb-4" />` : ''}
              <h2 class="text-2xl font-bold text-gray-800">${kakaoInfo.name}님, 환영합니다!</h2>
              <p class="text-gray-600 mt-2">어떤 용도로 케어조아를 이용하시나요?</p>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-6">
              <button onclick="selectType('customer')" 
                class="bg-gradient-to-br from-blue-500 to-blue-600 text-white p-8 rounded-2xl hover:from-blue-600 hover:to-blue-700 transition-all transform hover:scale-105 shadow-lg">
                <i class="fas fa-user text-5xl mb-4"></i>
                <h3 class="text-2xl font-bold mb-2">고객</h3>
                <p class="text-sm opacity-90">요양시설을 찾고 계신가요?</p>
              </button>

              <button onclick="selectType('facility')" 
                class="bg-gradient-to-br from-teal-500 to-teal-600 text-white p-8 rounded-2xl hover:from-teal-600 hover:to-teal-700 transition-all transform hover:scale-105 shadow-lg">
                <i class="fas fa-building text-5xl mb-4"></i>
                <h3 class="text-2xl font-bold mb-2">시설</h3>
                <p class="text-sm opacity-90">시설을 운영하고 계신가요?</p>
              </button>
            </div>

            <!-- 시설 유형 선택 (숨김) -->
            <div id="facilityTypeSelect" style="display: none;" class="mt-6 p-6 bg-teal-50 rounded-xl">
              <h3 class="text-lg font-bold text-gray-800 mb-4">시설 유형을 선택해주세요</h3>
              <div class="grid grid-cols-2 gap-3">
                <button onclick="completeFacilitySignup('요양병원')" 
                  class="bg-white text-gray-800 px-4 py-3 rounded-lg hover:bg-teal-100 transition-colors border-2 border-teal-200 font-medium">
                  요양병원
                </button>
                <button onclick="completeFacilitySignup('요양원')" 
                  class="bg-white text-gray-800 px-4 py-3 rounded-lg hover:bg-teal-100 transition-colors border-2 border-teal-200 font-medium">
                  요양원
                </button>
                <button onclick="completeFacilitySignup('주야간보호')" 
                  class="bg-white text-gray-800 px-4 py-3 rounded-lg hover:bg-teal-100 transition-colors border-2 border-teal-200 font-medium">
                  주야간보호
                </button>
                <button onclick="completeFacilitySignup('재가복지센터')" 
                  class="bg-white text-gray-800 px-4 py-3 rounded-lg hover:bg-teal-100 transition-colors border-2 border-teal-200 font-medium">
                  재가복지센터
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>

      <script>
        let selectedType = '';

        function selectType(type) {
          selectedType = type;
          
          if (type === 'customer') {
            completeCustomerSignup();
          } else {
            document.getElementById('facilityTypeSelect').style.display = 'block';
          }
        }

        async function completeCustomerSignup() {
          try {
            const response = await fetch('/api/auth/kakao/complete', {
              method: 'POST',
              headers: { 'Content-Type': 'application/json' },
              body: JSON.stringify({ type: 'customer' })
            });

            const result = await response.json();

            if (result.success) {
              alert('가입이 완료되었습니다!');
              window.location.href = '/dashboard/customer';
            } else {
              alert(result.message || '가입 실패');
            }
          } catch (error) {
            alert('가입 중 오류가 발생했습니다.');
            console.error(error);
          }
        }

        async function completeFacilitySignup(facilityType) {
          try {
            const response = await fetch('/api/auth/kakao/complete', {
              method: 'POST',
              headers: { 'Content-Type': 'application/json' },
              body: JSON.stringify({ 
                type: 'facility',
                facilityType: facilityType
              })
            });

            const result = await response.json();

            if (result.success) {
              alert('가입이 완료되었습니다!');
              window.location.href = '/dashboard/facility';
            } else {
              alert(result.message || '가입 실패');
            }
          } catch (error) {
            alert('가입 중 오류가 발생했습니다.');
            console.error(error);
          }
        }
      </script>
    </body>
    </html>
  `)
})

// 카카오 로그인 회원가입 완료
app.post('/api/auth/kakao/complete', async (c) => {
  const tempSessionId = getCookie(c, 'kakao_temp_session')
  const db = c.env.DB
  
  if (!tempSessionId) {
    return c.json({ success: false, message: '세션이 만료되었습니다.' })
  }

  const kakaoInfo = dataStore.userSessions.get(tempSessionId)
  
  if (!kakaoInfo) {
    return c.json({ success: false, message: '세션 정보를 찾을 수 없습니다.' })
  }

  const { type, facilityType } = await c.req.json()

  try {
    let userId: number | null = null
    
    if (db) {
      // D1에 사용자 생성
      const hashedPassword = kakaoInfo.kakaoId // 카카오 로그인은 비밀번호 대신 kakaoId 사용
      
      const insertResult = await db.prepare(`
        INSERT INTO users (
          user_type, email, password_hash, name, phone,
          address, facility_type, region_sido, region_sigungu,
          created_at, updated_at
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, datetime('now'), datetime('now'))
      `).bind(
        type,
        kakaoInfo.email || `${kakaoInfo.kakaoId}@kakao.temp`,
        hashedPassword,
        kakaoInfo.name || '카카오사용자',
        '',
        '',
        type === 'facility' ? (facilityType || '') : null,
        null,
        null
      ).run()
      
      userId = insertResult.meta.last_row_id as number
    }
    
    if (!userId) {
      return c.json({ success: false, message: '회원가입 처리 실패' }, 500)
    }

    // 임시 세션 삭제
    dataStore.userSessions.delete(tempSessionId)
    setCookie(c, 'kakao_temp_session', '', { maxAge: 0, path: '/' })

    // 정식 로그인 세션 생성 (D1)
    const sessionId = generateSessionId()
    const expiresAt = new Date(Date.now() + 7 * 24 * 60 * 60 * 1000).toISOString()
    
    if (db) {
      await db.prepare(`
        INSERT INTO sessions (session_id, user_id, expires_at, created_at, updated_at)
        VALUES (?, ?, ?, datetime('now'), datetime('now'))
        ON CONFLICT(session_id) DO UPDATE SET
          user_id = excluded.user_id,
          expires_at = excluded.expires_at,
          updated_at = datetime('now')
      `).bind(sessionId, userId, expiresAt).run()
    }
    
    setCookie(c, 'user_session', sessionId, {
      httpOnly: true,
      secure: true,
      sameSite: 'Lax',
      maxAge: 60 * 60 * 24 * 7,
      path: '/'
    })

    return c.json({ 
      success: true, 
      message: '회원가입이 완료되었습니다.',
      userId: userId
    })
  } catch (error) {
    console.error('카카오 회원가입 완료 오류:', error)
    return c.json({ success: false, message: '회원가입 처리 실패' }, 500)
  }
})
// ========== 채팅 API ==========

// 메시지 목록 조회 (실시간 폴링용)
app.get('/api/chat/messages', async (c) => {
  const user = await getUser(c)
  const db = c.env.DB
  
  if (!user) {
    return c.json({ success: false, message: '인증 필요' }, 401)
  }

  try {
    const quoteId = c.req.query('quote_id')
    
    if (!quoteId) {
      return c.json({ success: false, message: 'quote_id가 필요합니다.' }, 400)
    }

    if (!db) {
      return c.json({ success: false, message: 'Database not available' }, 500)
    }

    // 견적 요청 확인 (권한 체크)
    const quote = await db.prepare(`
      SELECT * FROM quote_requests
      WHERE quote_id = ?
    `).bind(quoteId).first()

    if (!quote) {
      return c.json({ success: false, message: '견적을 찾을 수 없습니다.' }, 404)
    }

    // 권한 확인: 고객이면 자신의 견적만, 시설이면 응답한 견적만
    if (user.type === 'customer' && quote.user_id !== user.id) {
      return c.json({ success: false, message: '권한이 없습니다.' }, 403)
    }

    // 메시지 조회 (최신순)
    const messages = await db.prepare(`
      SELECT 
        m.*,
        u.name as sender_name,
        u.user_type as sender_user_type
      FROM messages m
      LEFT JOIN users u ON m.sender_id = u.id
      WHERE m.request_id = (
        SELECT id FROM quote_requests WHERE quote_id = ?
      )
      ORDER BY m.created_at ASC
    `).bind(quoteId).all()

    return c.json({
      success: true,
      messages: messages.results || [],
      quote_id: quoteId
    })
  } catch (error) {
    console.error('[채팅] 메시지 조회 오류:', error)
    return c.json({ success: false, message: '메시지 조회 실패' }, 500)
  }
})

// 메시지 전송
app.post('/api/chat/send', async (c) => {
  const user = await getUser(c)
  const db = c.env.DB
  
  if (!user) {
    return c.json({ success: false, message: '인증 필요' }, 401)
  }

  try {
    const { quote_id, message, attachment_url, attachment_type, attachment_name } = await c.req.json()
    
    if (!quote_id || !message) {
      return c.json({ success: false, message: '필수 정보가 없습니다.' }, 400)
    }

    if (!db) {
      return c.json({ success: false, message: 'Database not available' }, 500)
    }

    // 견적 요청 ID 조회
    const quote = await db.prepare(`
      SELECT id, user_id FROM quote_requests
      WHERE quote_id = ?
    `).bind(quote_id).first()

    if (!quote) {
      return c.json({ success: false, message: '견적을 찾을 수 없습니다.' }, 404)
    }

    // 권한 확인
    if (user.type === 'customer' && quote.user_id !== user.id) {
      return c.json({ success: false, message: '권한이 없습니다.' }, 403)
    }

    // 메시지 저장
    const result = await db.prepare(`
      INSERT INTO messages (
        request_id,
        sender_id,
        sender_type,
        message,
        attachment_url,
        attachment_type,
        attachment_name,
        is_read,
        created_at
      ) VALUES (?, ?, ?, ?, ?, ?, ?, 0, CURRENT_TIMESTAMP)
    `).bind(
      quote.id,
      user.id,
      user.type,
      message,
      attachment_url || null,
      attachment_type || null,
      attachment_name || null
    ).run()

    return c.json({
      success: true,
      message_id: result.meta.last_row_id,
      message: '메시지가 전송되었습니다.'
    })
  } catch (error) {
    console.error('[채팅] 메시지 전송 오류:', error)
    return c.json({ success: false, message: '메시지 전송 실패' }, 500)
  }
})

// 메시지 읽음 처리
app.post('/api/chat/mark-read', async (c) => {
  const user = await getUser(c)
  const db = c.env.DB
  
  if (!user) {
    return c.json({ success: false, message: '인증 필요' }, 401)
  }

  try {
    const { quote_id } = await c.req.json()
    
    if (!quote_id) {
      return c.json({ success: false, message: 'quote_id가 필요합니다.' }, 400)
    }

    if (!db) {
      return c.json({ success: false, message: 'Database not available' }, 500)
    }

    // 상대방이 보낸 메시지를 읽음 처리
    await db.prepare(`
      UPDATE messages
      SET is_read = 1
      WHERE request_id = (
        SELECT id FROM quote_requests WHERE quote_id = ?
      )
      AND sender_id != ?
      AND is_read = 0
    `).bind(quote_id, user.id).run()

    return c.json({
      success: true,
      message: '읽음 처리 완료'
    })
  } catch (error) {
    console.error('[채팅] 읽음 처리 오류:', error)
    return c.json({ success: false, message: '읽음 처리 실패' }, 500)
  }
})

// 안읽은 메시지 수 조회
app.get('/api/chat/unread-count', async (c) => {
  const user = await getUser(c)
  const db = c.env.DB
  
  if (!user) {
    return c.json({ success: false, message: '인증 필요' }, 401)
  }

  try {
    if (!db) {
      return c.json({ success: false, message: 'Database not available' }, 500)
    }

    // 사용자별 안읽은 메시지 수
    const result = await db.prepare(`
      SELECT COUNT(*) as unread_count
      FROM messages m
      JOIN quote_requests qr ON m.request_id = qr.id
      WHERE m.sender_id != ?
      AND m.is_read = 0
      AND (
        (? = 'customer' AND qr.user_id = ?)
        OR (? = 'facility')
      )
    `).bind(user.id, user.type, user.id, user.type).first()

    return c.json({
      success: true,
      unread_count: result?.unread_count || 0
    })
  } catch (error) {
    console.error('[채팅] 안읽은 메시지 수 조회 오류:', error)
    return c.json({ success: false, message: '조회 실패' }, 500)
  }
})
// 채팅 페이지
app.get('/chat', async (c) => {
  const user = await getUser(c)
  
  if (!user) {
    return c.redirect('/login')
  }

  const quoteId = c.req.query('quote_id')
  
  if (!quoteId) {
    return c.html('<h1>견적 ID가 필요합니다.</h1>')
  }

  const db = c.env.DB
  let quoteInfo: any = null

  if (db) {
    quoteInfo = await db.prepare(`
      SELECT * FROM quote_requests
      WHERE quote_id = ?
    `).bind(quoteId).first()
  }

  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
      <meta name="theme-color" content="#0d9488">
      <title>상담 채팅 - 케어조아</title>
      <link rel="preconnect" href="https://cdn.tailwindcss.com">
      <link rel="preconnect" href="https://cdn.jsdelivr.net">
      <script src="https://cdn.tailwindcss.com"></script>
      <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet" media="print" onload="this.media='all'">
      <noscript><link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet"></noscript>
      <style>
        * {
          -webkit-tap-highlight-color: transparent;
          -webkit-touch-callout: none;
        }
        body {
          position: fixed;
          width: 100%;
          height: 100%;
          overflow: hidden;
        }
        .chat-container {
          height: calc(100vh - 140px);
          overflow-y: auto;
          -webkit-overflow-scrolling: touch;
        }
        @media (min-width: 768px) {
          .chat-container {
            height: calc(100vh - 180px);
          }
        }
        .message-bubble {
          max-width: 75%;
          word-wrap: break-word;
          word-break: break-word;
          line-height: 1.5;
        }
        @media (min-width: 768px) {
          .message-bubble {
            max-width: 60%;
          }
        }
        .message-left {
          background-color: #f3f4f6;
          color: #1f2937;
        }
        .message-right {
          background-color: #0d9488;
          color: white;
        }
        .btn-touch {
          min-height: 44px;
          min-width: 44px;
        }
        input, textarea {
          font-size: 16px !important; /* iOS 자동 줌 방지 */
        }
      </style>
    </head>
    <body class="bg-gray-50 overflow-hidden">
      <!-- 헤더 -->
      <header class="bg-teal-600 text-white sticky top-0 z-50">
        <div class="px-3 py-3 md:px-4 md:py-4">
          <div class="flex items-center justify-between">
            <div class="flex items-center space-x-3">
              <a href="/dashboard/${user.type}" 
                 class="btn-touch flex items-center justify-center w-10 h-10 rounded-full hover:bg-teal-700 transition-colors">
                <i class="fas fa-arrow-left text-lg"></i>
              </a>
              <div class="flex-1 min-w-0">
                <h1 class="text-base md:text-lg font-bold truncate">
                  ${quoteInfo ? (quoteInfo.applicant_name || '고객') : '상담 채팅'}
                </h1>
                <p class="text-xs text-teal-100 truncate">
                  ${quoteInfo ? `${quoteInfo.sido || ''} ${quoteInfo.sigungu || ''}` : `ID: ${quoteId}`}
                </p>
              </div>
            </div>
          </div>
        </div>
      </header>

      <!-- 채팅 영역 -->
      <div class="flex flex-col" style="height: calc(100vh - 64px);">
        <!-- 메시지 목록 -->
        <div id="messageList" class="chat-container flex-1 overflow-y-auto p-3 md:p-4 space-y-2">
          <div class="text-center py-12">
            <i class="fas fa-spinner fa-spin text-4xl text-gray-400"></i>
            <p class="text-gray-500 mt-3 text-sm md:text-base">메시지를 불러오는 중...</p>
          </div>
        </div>

        <!-- 메시지 입력 -->
        <div class="bg-white border-t p-2 md:p-3 safe-area-bottom">
          <div id="filePreview" class="mb-2 hidden">
            <div class="inline-block relative">
              <img id="previewImage" src="" alt="미리보기" class="h-16 md:h-20 rounded-lg shadow">
              <button onclick="clearFilePreview()" 
                class="absolute -top-2 -right-2 bg-red-500 text-white rounded-full w-7 h-7 flex items-center justify-center hover:bg-red-600 shadow-md btn-touch">
                <i class="fas fa-times text-xs"></i>
              </button>
            </div>
          </div>
          
          <form id="messageForm" class="flex items-end space-x-2">
            <input type="file" id="fileInput" accept="image/*" class="hidden">
            
            <button type="button" onclick="document.getElementById('fileInput').click()" 
              class="btn-touch flex-shrink-0 w-11 h-11 flex items-center justify-center bg-gray-100 text-gray-600 rounded-full hover:bg-gray-200 active:bg-gray-300 transition-colors">
              <i class="fas fa-paperclip text-lg"></i>
            </button>
            
            <div class="flex-1 relative">
              <input type="text" id="messageInput" placeholder="메시지 입력..." 
                class="w-full px-4 py-3 pr-12 border-2 border-gray-200 rounded-full focus:outline-none focus:border-teal-500 transition-colors text-sm md:text-base"
                autocomplete="off">
            </div>
            
            <button type="submit" 
              class="btn-touch flex-shrink-0 w-11 h-11 flex items-center justify-center bg-teal-600 text-white rounded-full hover:bg-teal-700 active:bg-teal-800 transition-colors shadow-md">
              <i class="fas fa-paper-plane"></i>
            </button>
          </form>
        </div>
      </div>

      <script>
        const quoteId = '${quoteId}';
        const currentUserId = ${user.id};
        const currentUserType = '${user.type}';
        let pollingInterval = null;
        let selectedFile = null;

        // 메시지 목록 로드
        async function loadMessages() {
          try {
            const response = await fetch('/api/chat/messages?quote_id=' + quoteId);
            const data = await response.json();

            if (data.success) {
              displayMessages(data.messages);
              // 읽음 처리
              await markMessagesAsRead();
            }
          } catch (error) {
            console.error('메시지 로드 오류:', error);
          }
        }

        // 메시지 표시
        function displayMessages(messages) {
          const messageList = document.getElementById('messageList');
          
          if (messages.length === 0) {
            messageList.innerHTML = \`
              <div class="text-center py-16">
                <i class="fas fa-comments text-5xl md:text-6xl text-gray-300"></i>
                <p class="text-gray-500 mt-4 text-base md:text-lg font-medium">아직 메시지가 없습니다</p>
                <p class="text-sm md:text-base text-gray-400 mt-1">첫 메시지를 보내보세요!</p>
              </div>
            \`;
            return;
          }

          messageList.innerHTML = messages.map(msg => {
            const isMyMessage = msg.sender_id === currentUserId;
            const alignClass = isMyMessage ? 'justify-end' : 'justify-start';
            const bubbleClass = isMyMessage ? 'message-right' : 'message-left';
            const senderName = msg.sender_name || (msg.sender_type === 'customer' ? '고객' : '시설');
            
            return \`
              <div class="flex \${alignClass} mb-2">
                <div class="max-w-full">
                  \${!isMyMessage ? \`
                    <p class="text-xs text-gray-500 mb-1 px-1">\${senderName}</p>
                  \` : ''}
                  <div class="message-bubble \${bubbleClass} px-3 py-2 md:px-4 md:py-2.5 rounded-2xl shadow-sm">
                    \${msg.attachment_url ? \`
                      <img src="\${msg.attachment_url}" 
                           alt="첨부 이미지" 
                           class="max-w-full rounded-lg mb-2 cursor-pointer shadow-sm"
                           style="max-height: 240px; width: auto;"
                           onclick="window.open('\${msg.attachment_url}', '_blank')">
                    \` : ''}
                    \${msg.message && msg.message !== '(이미지)' ? \`
                      <p class="text-sm md:text-base whitespace-pre-wrap">\${msg.message.replace(/</g, '&lt;').replace(/>/g, '&gt;')}</p>
                    \` : ''}
                    <p class="text-xs \${isMyMessage ? 'text-teal-100' : 'text-gray-500'} mt-1">
                      \${new Date(msg.created_at).toLocaleTimeString('ko-KR', {hour: '2-digit', minute: '2-digit'})}
                    </p>
                  </div>
                </div>
              </div>
            \`;
          }).join('');

          // 스크롤을 맨 아래로
          setTimeout(() => {
            messageList.scrollTop = messageList.scrollHeight;
          }, 100);
        }

        // 메시지 전송
        document.getElementById('messageForm').addEventListener('submit', async (e) => {
          e.preventDefault();
          
          const messageInput = document.getElementById('messageInput');
          const message = messageInput.value.trim();
          
          if (!message && !selectedFile) return;

          try {
            let attachmentUrl = null;
            let attachmentType = null;
            let attachmentName = null;

            // 파일이 선택되었다면 Base64로 변환
            if (selectedFile) {
              attachmentUrl = await fileToBase64(selectedFile);
              attachmentType = 'image';
              attachmentName = selectedFile.name;
            }

            const response = await fetch('/api/chat/send', {
              method: 'POST',
              headers: {
                'Content-Type': 'application/json'
              },
              body: JSON.stringify({
                quote_id: quoteId,
                message: message || '(이미지)',
                attachment_url: attachmentUrl,
                attachment_type: attachmentType,
                attachment_name: attachmentName
              })
            });

            const data = await response.json();

            if (data.success) {
              messageInput.value = '';
              clearFilePreview();
              await loadMessages();
            } else {
              alert('메시지 전송 실패: ' + data.message);
            }
          } catch (error) {
            console.error('메시지 전송 오류:', error);
            alert('메시지 전송 중 오류가 발생했습니다.');
          }
        });

        // 파일을 Base64로 변환
        function fileToBase64(file) {
          return new Promise((resolve, reject) => {
            const reader = new FileReader();
            reader.onload = () => resolve(reader.result);
            reader.onerror = reject;
            reader.readAsDataURL(file);
          });
        }

        // 파일 선택 처리
        document.getElementById('fileInput').addEventListener('change', (e) => {
          const file = e.target.files[0];
          if (file) {
            if (file.size > 5 * 1024 * 1024) {
              alert('파일 크기는 5MB 이하여야 합니다.');
              return;
            }
            selectedFile = file;
            showFilePreview(file);
          }
        });

        // 파일 미리보기
        function showFilePreview(file) {
          const preview = document.getElementById('filePreview');
          const previewImage = document.getElementById('previewImage');
          
          const reader = new FileReader();
          reader.onload = (e) => {
            previewImage.src = e.target.result;
            preview.classList.remove('hidden');
          };
          reader.readAsDataURL(file);
        }

        // 파일 미리보기 제거
        function clearFilePreview() {
          selectedFile = null;
          document.getElementById('fileInput').value = '';
          document.getElementById('filePreview').classList.add('hidden');
        }

        // 읽음 처리
        async function markMessagesAsRead() {
          try {
            await fetch('/api/chat/mark-read', {
              method: 'POST',
              headers: {
                'Content-Type': 'application/json'
              },
              body: JSON.stringify({ quote_id: quoteId })
            });
          } catch (error) {
            console.error('읽음 처리 오류:', error);
          }
        }

        // 실시간 폴링 시작
        function startPolling() {
          loadMessages(); // 즉시 로드
          pollingInterval = setInterval(loadMessages, 5000); // 5초마다 폴링
        }

        // 폴링 중지
        function stopPolling() {
          if (pollingInterval) {
            clearInterval(pollingInterval);
            pollingInterval = null;
          }
        }

        // 페이지 로드 시 시작
        window.addEventListener('load', startPolling);

        // 페이지 언로드 시 정리
        window.addEventListener('beforeunload', stopPolling);
      </script>
    </body>
    </html>
  `)
})

// ========== 대시보드 라우트 ========== (대시보드는 다음에 구현)

// 메인 페이지 (전체 디자인)
app.get('/', (c) => {
  return c.render(
    <div>
      <style dangerouslySetInnerHTML={{
        __html: `
          @keyframes bounce-slow {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-20px); }
          }
          .animate-bounce-slow {
            animation: bounce-slow 3s ease-in-out infinite;
          }
        `
      }} />
      <header class="bg-white shadow-sm border-b">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div class="flex justify-between items-center h-16">
            <div class="flex items-center">
              <img 
                src="https://page.gensparksite.com/v1/base64_upload/b39dca8586af1dacd6d8417554313896" 
                alt="케어조아 로고"
                width="32"
                height="32"
                class="h-8 w-auto mr-2 sm:mr-3"
                loading="eager"
              />
              <h1 class="text-xl sm:text-2xl font-bold text-teal-600">케어조아</h1>
            </div><nav class="hidden md:flex space-x-2 lg:space-x-3 text-sm">
              <a href="/call-consultation" class="bg-purple-600 text-white hover:bg-purple-700 px-3 py-2 rounded-lg whitespace-nowrap">
                <i class="fas fa-phone-alt mr-1"></i>전화상담
              </a>
              <a href="/family-care-register" class="bg-green-600 text-white hover:bg-green-700 px-3 py-2 rounded-lg whitespace-nowrap">
                <i class="fas fa-heart mr-1"></i>가족간병등록
              </a>
              <a href="#partner-section" class="bg-gray-600 text-white hover:bg-gray-700 px-3 py-2 rounded-lg whitespace-nowrap">
                <i class="fas fa-handshake mr-1"></i>입점신청
              </a>
              <a href="/login" class="bg-teal-600 text-white hover:bg-teal-700 px-3 py-2 rounded-lg whitespace-nowrap">
                <i class="fas fa-sign-in-alt mr-1"></i>로그인
              </a>
            </nav><button id="mobile-menu-btn" class="md:hidden p-2 text-gray-600 hover:text-teal-600 focus:outline-none" aria-label="메뉴 열기" aria-expanded="false">
              <i class="fas fa-bars text-2xl" aria-hidden="true"></i>
            </button>
          </div>
        </div><div id="mobile-menu" class="hidden md:hidden bg-white border-t">
          <nav class="px-4 py-3 space-y-2">
            <a href="/call-consultation" class="block bg-purple-600 text-white hover:bg-purple-700 px-4 py-3 rounded-lg text-center">
              <i class="fas fa-phone-alt mr-2"></i>전화상담
            </a>
            <a href="/family-care-register" class="block bg-green-600 text-white hover:bg-green-700 px-4 py-3 rounded-lg text-center">
              <i class="fas fa-heart mr-2"></i>가족간병등록
            </a>
            <a href="#partner-section" class="block bg-gray-600 text-white hover:bg-gray-700 px-4 py-3 rounded-lg text-center">
              <i class="fas fa-handshake mr-2"></i>입점신청
            </a>
            <a href="/login" class="block bg-teal-600 text-white hover:bg-teal-700 px-4 py-3 rounded-lg text-center">
              <i class="fas fa-sign-in-alt mr-2"></i>로그인
            </a>
          </nav>
        </div>
      </header>
      
      <script dangerouslySetInnerHTML={{
        __html: `
          // 모바일 메뉴 토글
          document.getElementById('mobile-menu-btn')?.addEventListener('click', function() {
            const menu = document.getElementById('mobile-menu');
            if (menu) {
              menu.classList.toggle('hidden');
            }
          });
        `
      }} /><section class="relative bg-gradient-to-r from-teal-500 via-teal-400 to-blue-400 overflow-hidden">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8 sm:py-12 md:py-16 lg:py-20 relative z-10">
          <div class="grid grid-cols-1 lg:grid-cols-2 gap-4 sm:gap-8 items-center">
            <div class="space-y-4 text-center lg:text-left">
              <h1 class="text-xl sm:text-2xl md:text-3xl lg:text-3xl xl:text-4xl font-bold text-white leading-tight">
                {/* 모바일 & 데스크톱 모두 3줄 */}
                어르신을 위한<br />
                최적의 요양시설 찾기,<br />
                케어조아와 함께하세요
              </h1>
              <div class="flex items-center justify-center lg:justify-start gap-2 pt-2">
                <div class="bg-white bg-opacity-20 backdrop-blur-sm rounded-full px-3 py-1.5 flex items-center gap-2">
                  <i class="fas fa-award text-yellow-300 text-sm"></i>
                  <span class="text-white text-xs sm:text-sm font-medium">특허 기반 AI 매칭 시스템</span>
                </div>
              </div>
            </div>

            <div class="hidden lg:flex justify-end items-center">
              <img 
                src="/static/carejoa-character.png" 
                alt="케어조아 캐릭터"
                width="144"
                height="144"
                class="w-32 lg:w-32 xl:w-36 h-auto object-contain"
                style="image-rendering: -webkit-optimize-contrast; image-rendering: crisp-edges;"
                loading="eager"
              />
            </div>
          </div>
        </div>
      </section>

      {/* 메인 액션 버튼 - 히어로 바로 아래 */}
      <section class="py-8 sm:py-10 md:py-14 lg:py-16 bg-gradient-to-b from-white to-gray-50">
        <div class="max-w-6xl mx-auto px-3 sm:px-4">
          <div class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-8 gap-3 sm:gap-4 md:gap-6 mb-6 sm:mb-8" id="main-action-buttons">
                <a href="/quote-simple"
                   class="group flex flex-col items-center justify-center bg-white py-6 sm:py-8 px-2 sm:px-4 rounded-2xl sm:rounded-3xl shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-2 min-h-[140px] sm:min-h-[160px]">
                  <div class="mb-2 sm:mb-4 transform group-hover:scale-110 transition-transform duration-300">
                    <i class="fas fa-calculator text-3xl sm:text-6xl md:text-7xl text-blue-500"></i>
                  </div>
                  <span class="font-semibold text-gray-800 text-xs sm:text-base md:text-lg text-center leading-tight">간편견적</span>
                </a>

                <a href="/quote-request"
                   class="group flex flex-col items-center justify-center bg-white py-6 sm:py-8 px-2 sm:px-4 rounded-2xl sm:rounded-3xl shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-2 min-h-[140px] sm:min-h-[160px]">
                  <div class="mb-2 sm:mb-4 transform group-hover:scale-110 transition-transform duration-300">
                    <i class="fas fa-notes-medical text-3xl sm:text-6xl md:text-7xl text-green-500"></i>
                  </div>
                  <span class="font-semibold text-gray-800 text-xs sm:text-base md:text-lg text-center leading-tight">상세견적신청</span>
                </a>

                <a href="/call-consultation"
                   class="group relative flex flex-col items-center justify-center bg-white py-6 sm:py-8 px-2 sm:px-4 rounded-2xl sm:rounded-3xl shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-2 min-h-[140px] sm:min-h-[160px]">
                  <span class="absolute top-2 right-2 bg-red-500 text-white text-xs font-bold px-2 py-1 rounded-full">인기</span>
                  <div class="mb-2 sm:mb-4 transform group-hover:scale-110 transition-transform duration-300">
                    <i class="fas fa-phone-alt text-3xl sm:text-6xl md:text-7xl text-green-500"></i>
                  </div>
                  <span class="font-semibold text-gray-800 text-xs sm:text-base md:text-lg text-center leading-tight">지역별<br/>전화상담</span>
                </a>

                <a href="/facilities"
                   class="group flex flex-col items-center justify-center bg-white py-6 sm:py-8 px-2 sm:px-4 rounded-2xl sm:rounded-3xl shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-2 min-h-[140px] sm:min-h-[160px]">
                  <div class="mb-2 sm:mb-4 transform group-hover:scale-110 transition-transform duration-300">
                    <i class="fas fa-search-location text-3xl sm:text-6xl md:text-7xl text-purple-500"></i>
                  </div>
                  <span class="font-semibold text-gray-800 text-xs sm:text-base md:text-lg text-center leading-tight">전국 시설<br/>찾기</span>
                </a>

                <a href="/ai-matching"
                   class="group relative flex flex-col items-center justify-center bg-white py-6 sm:py-8 px-2 sm:px-4 rounded-2xl sm:rounded-3xl shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-2 min-h-[140px] sm:min-h-[160px]">
                  <span class="absolute top-2 right-2 bg-red-500 text-white text-[10px] sm:text-xs font-bold px-2 py-0.5 rounded-full shadow-lg">NEW</span>
                  <div class="mb-2 sm:mb-4 transform group-hover:scale-110 transition-transform duration-300">
                    <i class="fas fa-robot text-3xl sm:text-6xl md:text-7xl text-indigo-500"></i>
                  </div>
                  <span class="font-semibold text-gray-800 text-xs sm:text-base md:text-lg text-center leading-tight">AI 맞춤<br/>시설 찾기</span>
                </a>

                <a href="http://케어조아.shop"
                   target="_blank"
                   rel="noopener noreferrer"
                   class="group relative flex flex-col items-center justify-center bg-white py-6 sm:py-8 px-2 sm:px-4 rounded-2xl sm:rounded-3xl shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-2 min-h-[140px] sm:min-h-[160px]">
                  <span class="absolute top-2 right-2 bg-blue-500 text-white text-[10px] sm:text-xs font-bold px-2 py-0.5 rounded-full shadow-lg">인기</span>
                  <div class="mb-2 sm:mb-4 transform group-hover:scale-110 transition-transform duration-300">
                    <i class="fas fa-calculator text-3xl sm:text-6xl md:text-7xl text-teal-500"></i>
                  </div>
                  <span class="font-semibold text-gray-800 text-xs sm:text-base md:text-lg text-center leading-tight">요양비<br/>계산</span>
                </a>

                <a href="/integrated-care"
                   class="group relative flex flex-col items-center justify-center bg-white py-6 sm:py-8 px-2 sm:px-4 rounded-2xl sm:rounded-3xl shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-2 min-h-[140px] sm:min-h-[160px]">
                  <span class="absolute top-2 right-2 bg-gradient-to-r from-blue-500 to-purple-600 text-white text-[10px] sm:text-xs font-bold px-2 py-0.5 rounded-full shadow-lg">2026</span>
                  <div class="mb-2 sm:mb-4 transform group-hover:scale-110 transition-transform duration-300">
                    <i class="fas fa-heart text-3xl sm:text-6xl md:text-7xl text-pink-500"></i>
                  </div>
                  <span class="font-semibold text-gray-800 text-xs sm:text-base md:text-lg text-center leading-tight">통합돌봄<br/>안내</span>
                </a>

                <a href="/quote-request?type=한의사왕진"
                   class="group relative flex flex-col items-center justify-center bg-white py-6 sm:py-8 px-2 sm:px-4 rounded-2xl sm:rounded-3xl shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-2 min-h-[140px] sm:min-h-[160px]">
                  <span class="absolute top-2 right-2 bg-green-500 text-white text-[10px] sm:text-xs font-bold px-2 py-0.5 rounded-full shadow-lg">일차의료</span>
                  <div class="mb-2 sm:mb-4 transform group-hover:scale-110 transition-transform duration-300">
                    <i class="fas fa-user-md text-3xl sm:text-6xl md:text-7xl text-green-600"></i>
                  </div>
                  <span class="font-semibold text-gray-800 text-xs sm:text-base md:text-lg text-center leading-tight">한의사<br/>왕진</span>
                </a>
              </div>

              {/* 특허 배너 (상단 강조) - 간결한 버전 */}
              <div class="bg-gradient-to-r from-indigo-600 via-purple-600 to-pink-600 px-4 sm:px-6 py-4 sm:py-5 rounded-2xl shadow-2xl mb-6 sm:mb-8 border-2 border-white/20">
                <div class="flex flex-col items-center justify-center gap-3">
                  {/* 메인 타이틀 */}
                  <div class="flex items-center">
                    <div class="bg-white/30 backdrop-blur-sm rounded-full p-2 sm:p-3 mr-3 shadow-lg animate-pulse">
                      <i class="fas fa-certificate text-white text-xl sm:text-2xl"></i>
                    </div>
                    <div class="text-white">
                      <div class="font-bold text-base sm:text-lg md:text-xl">특허 출원 AI 매칭 시스템</div>
                      <div class="text-xs sm:text-sm opacity-90">특허번호: 10-2025-0058040</div>
                    </div>
                  </div>
                  
                  {/* 핵심 기술 스펙 - 간결 버전 */}
                  <div class="flex flex-wrap items-center justify-center gap-2 sm:gap-3 text-xs sm:text-sm">
                    <div class="bg-white/20 backdrop-blur-sm rounded-full px-3 py-1.5 flex items-center">
                      <i class="fas fa-brain text-yellow-300 mr-1.5"></i>
                      <span class="font-semibold text-white">12가지 매칭 알고리즘</span>
                    </div>
                    <div class="bg-white/20 backdrop-blur-sm rounded-full px-3 py-1.5 flex items-center">
                      <i class="fas fa-microchip text-blue-300 mr-1.5"></i>
                      <span class="font-semibold text-white">4가지 핵심 기술</span>
                    </div>
                  </div>
                  
                  {/* 정부 인증 */}
                  <div class="bg-white/10 backdrop-blur-sm rounded-lg px-4 py-2 border border-white/30">
                    <div class="flex items-center text-white">
                      <i class="fas fa-award text-yellow-300 mr-2"></i>
                      <span class="font-bold text-xs sm:text-sm">정부 인증 벤처기업</span>
                    </div>
                  </div>
                </div>
              </div>

              <div class="flex flex-col sm:flex-row items-center justify-center gap-3 sm:gap-4 text-xs sm:text-sm md:text-base mt-6 sm:mt-8">
                <div class="flex items-center bg-white px-3 sm:px-4 py-2 rounded-full shadow-md hover:shadow-lg transition-shadow">
                  <div class="bg-blue-500 rounded-full p-1 sm:p-1.5 mr-1.5 sm:mr-2 shadow">
                    <i class="fas fa-users text-white text-xs sm:text-sm"></i>
                  </div>
                  <span class="font-semibold text-gray-700 whitespace-nowrap">월 10만+ 이용자</span>
                </div>
                <div class="flex items-center bg-white px-3 sm:px-4 py-2 rounded-full shadow-md hover:shadow-lg transition-shadow">
                  <div class="bg-teal-500 rounded-full p-1 sm:p-1.5 mr-1.5 sm:mr-2 shadow">
                    <i class="fas fa-building text-white text-xs sm:text-sm"></i>
                  </div>
                  <span class="font-semibold text-gray-700 whitespace-nowrap">3,000+ 등록 시설</span>
                </div>
                <div class="flex items-center bg-white px-3 sm:px-4 py-2 rounded-full shadow-md hover:shadow-lg transition-shadow">
                  <div class="bg-yellow-500 rounded-full p-1 sm:p-1.5 mr-1.5 sm:mr-2 shadow">
                    <i class="fas fa-star text-white text-xs sm:text-sm"></i>
                  </div>
                  <span class="font-semibold text-gray-700 whitespace-nowrap">평균 4.5점 우수</span>
                </div>
              </div>
            </div>
          </section>

      <div class="fixed bottom-0 left-0 right-0 bg-white border-t border-gray-200 px-1 py-2 z-50 md:hidden">
        <div class="flex justify-around items-center">
          <a href="/facilities" class="flex flex-col items-center py-2 bg-purple-600 text-white rounded-lg px-1.5 shadow-md">
            <i class="fas fa-search-location text-base mb-1"></i>
            <span class="text-[10px] font-medium">전국시설</span>
          </a>
          <a href="/call-consultation" class="flex flex-col items-center py-2 bg-green-600 text-white rounded-lg px-1.5 shadow-md">
            <i class="fas fa-phone-alt text-base mb-1"></i>
            <span class="text-[10px] font-medium">전화상담</span>
          </a>
          <a href="/family-care-register" class="flex flex-col items-center py-2 bg-teal-600 text-white rounded-lg px-1.5 shadow-md">
            <i class="fas fa-heart text-base mb-1"></i>
            <span class="text-[10px] font-medium">가족간병</span>
          </a>
          <a href="#partner-section" class="flex flex-col items-center py-2 bg-gray-600 text-white rounded-lg px-1.5 shadow-md">
            <i class="fas fa-handshake text-base mb-1"></i>
            <span class="text-[10px] font-medium">입점신청</span>
          </a>
        </div>
      </div>

      <section class="py-20 bg-white">
        <div class="max-w-7xl mx-auto px-4">
          <div class="text-center mb-16">
            <h3 class="text-3xl font-bold text-gray-900 mb-4">
              <div class="inline-block bg-teal-500 rounded-full p-3 mr-3 shadow-lg">
                <i class="fas fa-certificate text-white text-2xl"></i>
              </div>
              케어조아만의 특별함
            </h3>
          </div>
          
          <div class="grid md:grid-cols-4 gap-6">
            <div class="group text-center p-6 bg-gradient-to-br from-blue-50 to-blue-100 rounded-2xl shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-2 hover:scale-105">
              <div class="w-20 h-20 bg-gradient-to-br from-blue-500 via-blue-600 to-blue-700 rounded-2xl flex items-center justify-center mx-auto mb-4 shadow-xl group-hover:shadow-2xl group-hover:rotate-6 transition-all duration-300">
                <i class="fas fa-calculator text-3xl text-white drop-shadow-lg"></i>
              </div>
              <h4 class="text-xl font-bold mb-2 text-gray-800">실시간 견적</h4>
              <p class="text-gray-600 text-sm leading-relaxed">간단한 정보 입력으로<br class="sm:hidden" /> 맞춤형 견적을 즉시 확인</p>
            </div>
            
            <div class="group text-center p-6 bg-gradient-to-br from-teal-50 to-emerald-100 rounded-2xl shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-2 hover:scale-105">
              <div class="w-20 h-20 bg-gradient-to-br from-teal-500 via-emerald-600 to-green-600 rounded-2xl flex items-center justify-center mx-auto mb-4 shadow-xl group-hover:shadow-2xl group-hover:rotate-6 transition-all duration-300">
                <i class="fas fa-hospital text-3xl text-white drop-shadow-lg"></i>
              </div>
              <h4 class="text-xl font-bold mb-2 text-gray-800">검증된 시설</h4>
              <p class="text-gray-600 text-sm leading-relaxed">정부 인증 및<br class="sm:hidden" /> 전문가 방문을 통해 검증</p>
            </div>
            
            <div class="group text-center p-6 bg-gradient-to-br from-purple-50 to-fuchsia-100 rounded-2xl shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-2 hover:scale-105">
              <div class="w-20 h-20 bg-gradient-to-br from-purple-500 via-fuchsia-600 to-pink-600 rounded-2xl flex items-center justify-center mx-auto mb-4 shadow-xl group-hover:shadow-2xl group-hover:rotate-6 transition-all duration-300">
                <i class="fas fa-user-md text-3xl text-white drop-shadow-lg"></i>
              </div>
              <h4 class="text-xl font-bold mb-2 text-gray-800">전문 상담</h4>
              <p class="text-gray-600 text-sm leading-relaxed">자격을 보유한<br class="sm:hidden" /> 전문 상담사가 24시간 상담</p>
            </div>
            
            <div class="group text-center p-6 bg-gradient-to-br from-pink-50 to-rose-100 rounded-2xl shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-2 hover:scale-105">
              <div class="w-20 h-20 bg-gradient-to-br from-pink-500 via-rose-600 to-red-600 rounded-2xl flex items-center justify-center mx-auto mb-4 shadow-xl group-hover:shadow-2xl group-hover:rotate-6 transition-all duration-300">
                <i class="fas fa-heart text-3xl text-white drop-shadow-lg"></i>
              </div>
              <h4 class="text-xl font-bold mb-2 text-gray-800">가족 같은 마음</h4>
              <p class="text-gray-600 text-sm leading-relaxed">믿을 수 있는 곳을<br class="sm:hidden" /> 찾기까지 끝까지 함께</p>
            </div>
          </div>
          
          <div class="text-center mt-12">
            <a href="/system-info" class="inline-flex items-center px-8 py-4 bg-gradient-to-r from-indigo-600 to-purple-600 text-white rounded-full font-bold text-lg shadow-xl hover:shadow-2xl transition-all transform hover:scale-105">
              <i class="fas fa-microchip mr-3"></i>
              특허 출원 AI 기술 자세히 보기
              <i class="fas fa-arrow-right ml-3"></i>
            </a>
            <p class="text-sm text-gray-500 mt-4">
              <i class="fas fa-certificate text-indigo-600 mr-1"></i>
              특허번호: 10-2025-0058040
            </p>
          </div>
        </div>
      </section><section class="py-20 bg-gradient-to-br from-gray-50 to-teal-50">
        <div class="max-w-7xl mx-auto px-4">
          <div class="text-center mb-16">
            <h3 class="text-3xl font-bold text-gray-900 mb-4">
              간단한 3단계로 <span class="text-teal-600">완료! 🎉</span>
            </h3>
          </div>
          
          <div class="grid md:grid-cols-3 gap-8 relative">
            <div class="hidden md:block absolute top-12 left-1/3 w-1/3 h-1 bg-gradient-to-r from-blue-300 to-teal-300 z-0"></div>
            <div class="hidden md:block absolute top-12 right-0 w-1/3 h-1 bg-gradient-to-r from-teal-300 to-purple-300 z-0"></div>
            
            <div class="text-center relative z-10 group">
              <div class="w-24 h-24 bg-gradient-to-br from-blue-500 via-blue-600 to-blue-700 rounded-3xl flex items-center justify-center mx-auto mb-6 shadow-xl group-hover:shadow-2xl group-hover:scale-110 transition-all duration-300 group-hover:rotate-6">
                <span class="text-3xl font-bold text-white drop-shadow-lg">1</span>
              </div>
              <h4 class="text-xl font-bold mb-4 text-gray-800">정보 입력</h4>
              <p class="text-gray-600 leading-relaxed">어르신의 기본 정보와<br class="sm:hidden" /> 필요한 서비스를 입력</p>
            </div>
            
            <div class="text-center relative z-10 group">
              <div class="w-24 h-24 bg-gradient-to-br from-teal-500 via-emerald-600 to-green-600 rounded-3xl flex items-center justify-center mx-auto mb-6 shadow-xl group-hover:shadow-2xl group-hover:scale-110 transition-all duration-300 group-hover:rotate-6">
                <span class="text-3xl font-bold text-white drop-shadow-lg">2</span>
              </div>
              <h4 class="text-xl font-bold mb-4 text-gray-800">견적 비교</h4>
              <p class="text-gray-600 leading-relaxed">실시간으로<br class="sm:hidden" /> 매칭된 시설들을 비교</p>
            </div>
            
            <div class="text-center relative z-10 group">
              <div class="w-24 h-24 bg-gradient-to-br from-purple-500 via-fuchsia-600 to-pink-600 rounded-3xl flex items-center justify-center mx-auto mb-6 shadow-xl group-hover:shadow-2xl group-hover:scale-110 transition-all duration-300 group-hover:rotate-6">
                <span class="text-3xl font-bold text-white drop-shadow-lg">3</span>
              </div>
              <h4 class="text-xl font-bold mb-4 text-gray-800">전문 상담</h4>
              <p class="text-gray-600 leading-relaxed">전문 상담사와<br class="sm:hidden" /> 1:1 맞춤 상담</p>
            </div>
          </div>
        </div>
      </section><section id="partner-section" class="py-20 bg-gradient-to-br from-teal-50 to-emerald-50">
        <div class="max-w-7xl mx-auto px-4">
          <div class="text-center mb-12">
            <h3 class="text-3xl font-bold text-gray-900 mb-4">
              <i class="fas fa-handshake text-teal-600 mr-3"></i>파트너 입점 및<br class="sm:hidden" /> 등록 신청
            </h3>
            <p class="text-lg text-gray-600">케어조아와 함께<br class="sm:hidden" /> 더 많은 고객을 만나보세요</p>
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
                  <label for="facilityType" class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-tag mr-1 text-purple-500"></i>시설 유형*
                  </label>
                  <select id="facilityType" name="facilityType" required class="w-full p-3 border rounded-lg" aria-label="시설 유형 선택">
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
              </div><div class="space-y-4">
                <label for="facilitySido" class="block text-sm font-medium text-gray-700">
                  <i class="fas fa-map-marker-alt mr-1 text-red-500"></i>시설 주소*
                </label>
                <div class="grid md:grid-cols-2 gap-4">
                  <div>
                    <select id="facilitySido" name="facilitySido" required class="w-full p-3 border rounded-lg" aria-label="시/도 선택">
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
                    <label for="facilitySigungu" class="sr-only">시/군/구 선택</label>
                    <select id="facilitySigungu" name="facilitySigungu" required class="w-full p-3 border rounded-lg" aria-label="시/군/구 선택">
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
      </section><section class="max-w-7xl mx-auto px-4 py-12">
        <div class="text-center mb-10">
          <div class="inline-block bg-blue-50 text-blue-700 px-4 py-1 rounded-full text-sm font-semibold mb-4 border border-blue-100">
            <i class="fas fa-check-circle mr-2"></i>실시간 매칭 시스템 가동 중
          </div>
          <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">
            어떤 요양 서비스가 필요하신가요?
          </h2>
          <p class="text-lg text-gray-600">
            원하시는 조건을 선택하시면, 검증된 시설의 견적을 비교해 드립니다.
          </p>
        </div>

        <div class="grid md:grid-cols-2 gap-6 max-w-4xl mx-auto">
          <div class="bg-white rounded-2xl shadow-xl p-6 hover:-translate-y-1 transition-all duration-300 border-2 border-blue-500 relative overflow-hidden group">
            <div class="absolute top-0 right-0 bg-blue-500 text-white text-xs px-3 py-1 rounded-bl-lg font-bold">
              인기
            </div>
            <div class="text-center relative z-10">
              <div class="w-16 h-16 bg-blue-50 rounded-full flex items-center justify-center mx-auto mb-4 group-hover:bg-blue-100 transition-colors">
                <i class="fas fa-mobile-alt text-3xl text-blue-600"></i>
              </div>
              <h3 class="text-xl font-bold text-gray-900 mb-2">Android 앱 다운로드</h3>
              <p class="text-sm text-gray-600 mb-6">
                스마트폰에서 더 편리하게!<br/>
                케어조아 앱을 지금 바로 다운로드하세요.
              </p>
              <a href="https://play.google.com/store/apps/details?id=app.netlify.std_care_joa.twa" target="_blank" rel="noopener noreferrer" class="block w-full bg-blue-600 text-white py-3 px-4 rounded-xl font-bold hover:bg-blue-700 shadow-lg hover:shadow-blue-500/30 transition-all">
                앱 다운로드하기 <i class="fas fa-download ml-2"></i>
              </a>
            </div>
          </div>

          <div class="bg-white rounded-2xl shadow-lg p-6 hover:-translate-y-1 transition-all duration-300 border border-gray-100 hover:border-orange-200 group">
            <div class="text-center">
              <div class="w-16 h-16 bg-orange-50 rounded-full flex items-center justify-center mx-auto mb-4 group-hover:bg-orange-100 transition-colors">
                <i class="fas fa-clipboard-list text-3xl text-orange-600"></i>
              </div>
              <h3 class="text-xl font-bold text-gray-900 mb-2">실시간 견적 상담 신청</h3>
              <p class="text-sm text-gray-600 mb-6">
                전문 상담사가 실시간으로!<br/>
                맞춤형 견적을 빠르게 받아보세요.
              </p>
              <a href="https://carejoa.com" target="_blank" rel="noopener noreferrer" class="block w-full bg-white text-orange-700 border-2 border-orange-600 py-3 px-4 rounded-xl font-bold hover:bg-orange-50 transition-all">
                실시간 상담 신청하기
              </a>
            </div>
          </div>
        </div>

        <div class="mt-12 text-center">
          <p class="text-gray-500 text-sm">
            <i class="fas fa-shield-alt text-gray-400 mr-1"></i>
            케어조아는 100% 검증된 요양시설 정보만을 제공합니다.
          </p>
        </div>
      </section><footer class="bg-gray-900 text-white py-12">
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
          
          <div class="border-t border-gray-800 mt-8 pt-8">
            <div class="text-center mb-6">
              <p class="text-sm text-blue-400 font-medium mb-3">
                <i class="fas fa-certificate mr-1"></i>특허기반 실시간 요양 견적 및 상담 플랫폼
              </p>
            </div><div class="bg-gray-800 rounded-lg p-6 mb-6 max-w-4xl mx-auto">
              <div class="grid grid-cols-1 sm:grid-cols-2 gap-4 text-xs text-gray-400">
                <div>
                  <span class="text-gray-500 font-medium">상호(법인명)</span>
                  <p class="text-gray-300 mt-1">주식회사 이노메딕</p>
                </div>
                <div>
                  <span class="text-gray-500 font-medium">대표자명</span>
                  <p class="text-gray-300 mt-1">박대수</p>
                </div>
                <div>
                  <span class="text-gray-500 font-medium">사업자등록번호</span>
                  <p class="text-gray-300 mt-1">818-86-03381</p>
                </div>
                <div>
                  <span class="text-gray-500 font-medium">사업자 주소</span>
                  <p class="text-gray-300 mt-1">(08517) 서울특별시 금천구 디지털로10길 78 10층</p>
                </div>
              </div>
            </div>
            
            <p class="text-xs text-gray-400 text-center">© 2024 케어조아. All rights reserved.</p><div class="mt-6 pt-6 border-t border-gray-800">
              <div class="max-w-xs mx-auto">
                <p class="text-center text-xs text-gray-600 mb-2">관리자 전용</p>
                <form id="admin-quick-login" class="space-y-2">
                  <input 
                    type="password" 
                    id="admin-password" 
                    placeholder="비밀번호 입력"
                    autocomplete="current-password"
                    class="w-full px-3 py-2 text-sm bg-gray-800 border border-gray-700 text-gray-300 rounded focus:outline-none focus:border-gray-600 placeholder-gray-600"
                  />
                  <button type="submit" class="w-full px-3 py-2 text-sm bg-gray-800 text-gray-400 rounded hover:bg-gray-700 hover:text-gray-300 transition-colors">
                    <i class="fas fa-lock mr-2"></i>관리자 대시보드 입장
                  </button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </footer>
      
      <script dangerouslySetInnerHTML={{
        __html: `
          // 관리자 빠른 로그인
          document.getElementById('admin-quick-login')?.addEventListener('submit', async function(e) {
            e.preventDefault();
            const password = document.getElementById('admin-password')?.value;
            
            if (!password) {
              alert('비밀번호를 입력하세요.');
              return;
            }
            
            try {
              const response = await fetch('/api/admin/login', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ password })
              });
              
              const data = await response.json();
              
              if (response.ok && data.success) {
                window.location.href = '/admin';
              } else {
                alert(data.message || '로그인 실패');
                document.getElementById('admin-password').value = '';
              }
            } catch (error) {
              console.error('로그인 에러:', error);
              alert('로그인 중 오류가 발생했습니다.');
            }
          });
        `
      }} />

      <script dangerouslySetInnerHTML={{
        __html: `
        // DOM 로드 완료 후 실행
        document.addEventListener('DOMContentLoaded', function() {
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
          const facilitySidoEl = document.getElementById('facilitySido');
          if (facilitySidoEl) {
            facilitySidoEl.addEventListener('change', function() {
              const sido = this.value;
              const sigunguSelect = document.getElementById('facilitySigungu');
              
              if (sigunguSelect) {
                sigunguSelect.innerHTML = '<option value="">시/군/구 선택</option>';
                
                if (sido && sigunguData[sido]) {
                  sigunguData[sido].forEach(sigungu => {
                    const option = document.createElement('option');
                    option.value = sigungu;
                    option.textContent = sigungu;
                    sigunguSelect.appendChild(option);
                  });
                }
              }
            });
          }

          // 파트너 폼 제출
          const partnerFormEl = document.getElementById('partnerForm');
          if (partnerFormEl) {
            partnerFormEl.addEventListener('submit', async (e) => {
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

// 시설 상세 페이지 (SEO 최적화)
app.get('/facility/:id', async (c) => {
  const db = c.env.DB
  const facilityId = c.req.param('id')
  
  if (!db) {
    return c.text('데이터베이스 연결 실패', 500)
  }
  
  try {
    // 시설 정보 조회
    const facility = await db
      .prepare('SELECT * FROM facilities WHERE id = ?')
      .bind(facilityId)
      .first()
    
    if (!facility) {
      return c.redirect('/facilities')
    }
    
    // SEO 메타 정보 생성
    const pageTitle = `${facility.name} - ${facility.sido} ${facility.sigungu} ${facility.facility_type} | 케어조아`
    const pageDescription = `${facility.name}의 상세 정보를 확인하세요. 주소: ${facility.address || facility.sido + ' ' + facility.sigungu}, 전화: ${facility.phone || '문의 필요'}. 케어조아에서 전국 요양시설 정보를 한눈에!`
    const pageUrl = `https://carejoa.kr/facility/${facilityId}`
    
    // 구조화된 데이터 (Schema.org)
    const structuredData = {
      "@context": "https://schema.org",
      "@type": facility.facility_type === "요양병원" ? "Hospital" : "HealthAndBeautyBusiness",
      "name": facility.name,
      "address": {
        "@type": "PostalAddress",
        "addressRegion": facility.sido,
        "addressLocality": facility.sigungu,
        "streetAddress": facility.address || "",
        "postalCode": facility.postal_code || ""
      },
      "telephone": facility.phone || "",
      "geo": facility.latitude && facility.longitude ? {
        "@type": "GeoCoordinates",
        "latitude": facility.latitude,
        "longitude": facility.longitude
      } : undefined
    }
    
    return c.html(`
      <!DOCTYPE html>
      <html lang="ko">
      <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <!-- SEO 메타태그 -->
        <title>${pageTitle}</title>
        <meta name="description" content="${pageDescription}">
        <meta name="keywords" content="${facility.name}, ${facility.facility_type}, ${facility.sido}, ${facility.sigungu}, 요양시설, 케어조아">
        
        <!-- Open Graph (페이스북, 카카오톡) -->
        <meta property="og:title" content="${pageTitle}">
        <meta property="og:description" content="${pageDescription}">
        <meta property="og:url" content="${pageUrl}">
        <meta property="og:type" content="website">
        <meta property="og:site_name" content="케어조아">
        
        <!-- Twitter Card -->
        <meta name="twitter:card" content="summary">
        <meta name="twitter:title" content="${pageTitle}">
        <meta name="twitter:description" content="${pageDescription}">
        
        <!-- 구조화된 데이터 -->
        <script type="application/ld+json">
          ${JSON.stringify(structuredData, null, 2)}
        </script>
        
        <!-- 스타일 -->
        <script src="https://cdn.tailwindcss.com"></script>
        <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet">
        ${facility.latitude && facility.longitude ? '<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />' : ''}
      </head>
      <body class="bg-gray-50">
        <!-- 헤더 -->
        <header class="bg-white shadow-sm border-b">
          <div class="max-w-7xl mx-auto px-4 py-4">
            <div class="flex justify-between items-center">
              <a href="/" class="flex items-center">
                <img src="https://page.gensparksite.com/v1/base64_upload/b39dca8586af1dacd6d8417554313896" alt="케어조아" class="h-8 mr-3">
                <h1 class="text-2xl font-bold text-teal-600">케어조아</h1>
              </a>
              <div class="flex gap-4">
                <a href="/facilities" class="text-gray-600 hover:text-gray-900">
                  <i class="fas fa-search mr-1"></i>시설 찾기
                </a>
                <a href="/" class="text-gray-600 hover:text-gray-900">
                  <i class="fas fa-home mr-1"></i>홈으로
                </a>
              </div>
            </div>
          </div>
        </header>
        
        <!-- 메인 콘텐츠 -->
        <main class="max-w-4xl mx-auto px-4 py-8">
          <!-- 시설 정보 카드 -->
          <div class="bg-white rounded-2xl shadow-lg p-6 md:p-8 mb-6">
            <div class="mb-6">
              <div class="flex items-center gap-2 mb-4">
                <span class="px-3 py-1 bg-blue-100 text-blue-700 rounded-full text-sm font-semibold">
                  ${facility.facility_type}
                </span>
                <span class="px-3 py-1 bg-gray-100 text-gray-700 rounded-full text-sm">
                  ${facility.sido} ${facility.sigungu}
                </span>
              </div>
              <h1 class="text-3xl md:text-4xl font-bold text-gray-900 mb-2">
                ${facility.name}
              </h1>
            </div>
            
            <div class="space-y-4">
              <div class="flex items-start">
                <i class="fas fa-map-marker-alt text-red-500 text-xl mt-1 mr-3"></i>
                <div>
                  <p class="text-gray-700 font-medium">주소</p>
                  <p class="text-gray-600">${facility.address || facility.sido + ' ' + facility.sigungu}</p>
                  ${facility.postal_code ? `<p class="text-sm text-gray-500">우편번호: ${facility.postal_code}</p>` : ''}
                </div>
              </div>
              
              <div class="flex items-start">
                <i class="fas fa-phone text-green-500 text-xl mt-1 mr-3"></i>
                <div>
                  <p class="text-gray-700 font-medium">전화번호</p>
                  ${facility.phone ? 
                    `<a href="tel:${facility.phone}" class="text-blue-600 hover:text-blue-700 font-semibold">${facility.phone}</a>` 
                    : '<p class="text-gray-500">전화번호 정보가 없습니다</p>'}
                </div>
              </div>
              
              <div class="flex items-start">
                <i class="fas fa-hospital text-blue-500 text-xl mt-1 mr-3"></i>
                <div>
                  <p class="text-gray-700 font-medium">시설 유형</p>
                  <p class="text-gray-600">${facility.facility_type}</p>
                </div>
              </div>
            </div>
            
            ${facility.phone ? `
            <div class="mt-8 pt-6 border-t border-gray-200">
              <a href="tel:${facility.phone}" 
                 class="block w-full bg-gradient-to-r from-teal-500 to-teal-600 text-white text-center py-4 rounded-xl font-bold text-lg hover:from-teal-600 hover:to-teal-700 transition-all shadow-lg">
                <i class="fas fa-phone-alt mr-2"></i>
                전화 상담하기
              </a>
            </div>
            ` : ''}
          </div>
          
          <!-- 지도 (좌표가 있는 경우) -->
          ${facility.latitude && facility.longitude ? `
          <div class="bg-white rounded-2xl shadow-lg p-6 mb-6">
            <h2 class="text-2xl font-bold text-gray-900 mb-4 flex items-center">
              <i class="fas fa-map text-purple-600 mr-3"></i>
              위치
            </h2>
            <div id="map" class="w-full h-80 rounded-xl"></div>
          </div>
          
          <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>
          <script>
            const map = L.map('map').setView([${facility.latitude}, ${facility.longitude}], 15);
            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
              attribution: '© OpenStreetMap'
            }).addTo(map);
            
            const marker = L.marker([${facility.latitude}, ${facility.longitude}]).addTo(map);
            marker.bindPopup('<b>${facility.name}</b><br>${facility.facility_type}').openPopup();
          </script>
          ` : ''}
          
          <!-- CTA 섹션 -->
          <div class="bg-gradient-to-r from-blue-50 to-teal-50 rounded-2xl p-6 md:p-8 text-center">
            <h2 class="text-2xl font-bold text-gray-900 mb-4">
              더 많은 시설 정보가 필요하신가요?
            </h2>
            <p class="text-gray-600 mb-6">
              전국 20,000개 이상의 요양시설 정보를 확인하고<br>
              AI 맞춤 추천으로 최적의 시설을 찾아보세요
            </p>
            <div class="flex flex-col sm:flex-row gap-4 justify-center">
              <a href="/facilities" class="bg-white text-teal-700 border-2 border-teal-600 py-3 px-6 rounded-xl font-bold hover:bg-teal-50 transition-all">
                <i class="fas fa-search mr-2"></i>
                전국 시설 검색
              </a>
              <a href="/ai-matching" class="bg-gradient-to-r from-purple-600 to-indigo-600 text-white py-3 px-6 rounded-xl font-bold hover:from-purple-700 hover:to-indigo-700 transition-all">
                <i class="fas fa-robot mr-2"></i>
                AI 맞춤 찾기
              </a>
            </div>
          </div>
        </main>
        
        <!-- 푸터 -->
        <footer class="bg-gray-900 text-white py-8 mt-12">
          <div class="max-w-7xl mx-auto px-4 text-center">
            <p class="text-gray-400 text-sm">© 2025 케어조아. All rights reserved.</p>
          </div>
        </footer>
      </body>
      </html>
    `)
  } catch (error) {
    console.error('시설 상세 조회 오류:', error)
    return c.redirect('/facilities')
  }
})

// 한의사 왕진 신청 페이지
app.get('/haniwon-visit', (c) => {
  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>한의사 왕진 신청 - 케어조아</title>
      <link href="/static/tailwind.css" rel="stylesheet">
      <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet">
      <script src="https://cdn.jsdelivr.net/npm/axios@1.6.0/dist/axios.min.js"></script>
    </head>
    <body class="bg-gradient-to-br from-green-50 via-teal-50 to-blue-50">
      <!-- 헤더 -->
      <header class="bg-white shadow-sm border-b sticky top-0 z-50">
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
            <a href="/" class="text-gray-600 hover:text-teal-600 transition-colors">
              <i class="fas fa-home text-xl"></i>
            </a>
          </div>
        </div>
      </header>

      <div class="max-w-4xl mx-auto px-4 py-8 sm:py-12">
        <!-- 타이틀 -->
        <div class="text-center mb-8">
          <div class="inline-flex items-center justify-center bg-green-500 text-white px-6 py-2 rounded-full mb-4 shadow-lg">
            <i class="fas fa-user-md text-xl mr-2"></i>
            <span class="font-bold text-lg">일차의료 한의 방문진료</span>
          </div>
          <h1 class="text-4xl font-bold text-gray-900 mb-4">
            한의사 왕진 신청
          </h1>
          <p class="text-xl text-gray-600">
            집에서 편안하게 한의 진료를 받으세요
          </p>
        </div>

        <!-- 안내 문구 -->
        <div class="bg-gradient-to-r from-indigo-50 to-purple-50 border-2 border-indigo-200 p-6 rounded-xl mb-8 shadow-lg">
          <div class="flex items-start">
            <i class="fas fa-certificate text-indigo-600 text-2xl mr-4 mt-1"></i>
            <div>
              <h3 class="font-bold text-gray-900 mb-3 text-lg">케어조아 × 한의원 왕진 연계 서비스</h3>
              <p class="text-gray-700 mb-3">
                <span class="font-semibold text-indigo-600">특허 출원 AI 매칭 알고리즘</span> 
                <span class="text-sm text-gray-500">(특허번호: 10-2025-0058040)</span>을 기반으로 
                <span class="font-bold text-purple-600">입소 전 한의원 왕진을 통해 최적의 요양시설을 추천</span>합니다.
              </p>
              <div class="bg-white/70 rounded-lg p-4 mt-3">
                <p class="text-sm text-gray-700 font-medium mb-2">🩺 제공 서비스:</p>
                <ul class="text-sm text-gray-600 space-y-1 ml-4">
                  <li>• 침, 뜸, 부항 등 한방 치료</li>
                  <li>• 만성 통증, 근골격계 질환 관리</li>
                  <li>• 건강보험 수가 적용 (일차의료 시범사업)</li>
                  <li>• <span class="font-semibold text-green-600">왕진 후 맞춤형 요양시설 추천</span></li>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <!-- 신청 폼 -->
        <div class="bg-white rounded-2xl shadow-xl p-8">
          <form id="haniwonForm">
            <!-- 환자 정보 -->
            <div class="mb-8">
              <h2 class="text-2xl font-bold text-gray-900 mb-6 flex items-center">
                <i class="fas fa-user text-green-600 mr-3"></i>
                환자 정보
              </h2>
              
              <div class="grid md:grid-cols-2 gap-6">
                <div>
                  <label class="block text-gray-700 font-semibold mb-2">
                    환자 성명 <span class="text-red-500">*</span>
                  </label>
                  <input 
                    type="text" 
                    name="patientName" 
                    required
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-green-500 focus:border-transparent"
                    placeholder="홍길동"
                  />
                </div>

                <div>
                  <label class="block text-gray-700 font-semibold mb-2">
                    연락처 <span class="text-red-500">*</span>
                  </label>
                  <input 
                    type="tel" 
                    name="phone" 
                    required
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-green-500 focus:border-transparent"
                    placeholder="010-1234-5678"
                  />
                </div>

                <div>
                  <label class="block text-gray-700 font-semibold mb-2">
                    나이
                  </label>
                  <input 
                    type="number" 
                    name="age" 
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-green-500 focus:border-transparent"
                    placeholder="65"
                  />
                </div>

                <div>
                  <label class="block text-gray-700 font-semibold mb-2">
                    성별
                  </label>
                  <select 
                    name="gender" 
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-green-500 focus:border-transparent"
                  >
                    <option value="">선택해주세요</option>
                    <option value="male">남성</option>
                    <option value="female">여성</option>
                  </select>
                </div>
              </div>
            </div>

            <!-- 주소 정보 -->
            <div class="mb-8">
              <h2 class="text-2xl font-bold text-gray-900 mb-6 flex items-center">
                <i class="fas fa-map-marker-alt text-green-600 mr-3"></i>
                방문 주소
              </h2>
              
              <div class="space-y-4">
                <div class="grid md:grid-cols-2 gap-4">
                  <div>
                    <label class="block text-gray-700 font-semibold mb-2">
                      시/도 <span class="text-red-500">*</span>
                    </label>
                    <select 
                      name="sido" 
                      required
                      id="sido"
                      class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-green-500 focus:border-transparent"
                    >
                      <option value="">선택해주세요</option>
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
                    <label class="block text-gray-700 font-semibold mb-2">
                      시/군/구 <span class="text-red-500">*</span>
                    </label>
                    <input 
                      type="text" 
                      name="sigungu" 
                      required
                      class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-green-500 focus:border-transparent"
                      placeholder="강남구"
                    />
                  </div>
                </div>

                <div>
                  <label class="block text-gray-700 font-semibold mb-2">
                    상세 주소 <span class="text-red-500">*</span>
                  </label>
                  <input 
                    type="text" 
                    name="address" 
                    required
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-green-500 focus:border-transparent"
                    placeholder="상세 주소를 입력해주세요"
                  />
                </div>
              </div>
            </div>

            <!-- 증상 정보 -->
            <div class="mb-8">
              <h2 class="text-2xl font-bold text-gray-900 mb-6 flex items-center">
                <i class="fas fa-notes-medical text-green-600 mr-3"></i>
                증상 및 요청사항
              </h2>
              
              <div class="space-y-4">
                <div>
                  <label class="block text-gray-700 font-semibold mb-2">
                    주요 증상 <span class="text-red-500">*</span>
                  </label>
                  <div class="grid md:grid-cols-3 gap-3">
                    <label class="flex items-center space-x-2 bg-gray-50 p-3 rounded-lg cursor-pointer hover:bg-gray-100">
                      <input type="checkbox" name="symptoms" value="허리통증" class="rounded text-green-600">
                      <span>허리통증</span>
                    </label>
                    <label class="flex items-center space-x-2 bg-gray-50 p-3 rounded-lg cursor-pointer hover:bg-gray-100">
                      <input type="checkbox" name="symptoms" value="무릎통증" class="rounded text-green-600">
                      <span>무릎통증</span>
                    </label>
                    <label class="flex items-center space-x-2 bg-gray-50 p-3 rounded-lg cursor-pointer hover:bg-gray-100">
                      <input type="checkbox" name="symptoms" value="어깨통증" class="rounded text-green-600">
                      <span>어깨통증</span>
                    </label>
                    <label class="flex items-center space-x-2 bg-gray-50 p-3 rounded-lg cursor-pointer hover:bg-gray-100">
                      <input type="checkbox" name="symptoms" value="목통증" class="rounded text-green-600">
                      <span>목통증</span>
                    </label>
                    <label class="flex items-center space-x-2 bg-gray-50 p-3 rounded-lg cursor-pointer hover:bg-gray-100">
                      <input type="checkbox" name="symptoms" value="관절염" class="rounded text-green-600">
                      <span>관절염</span>
                    </label>
                    <label class="flex items-center space-x-2 bg-gray-50 p-3 rounded-lg cursor-pointer hover:bg-gray-100">
                      <input type="checkbox" name="symptoms" value="기타" class="rounded text-green-600">
                      <span>기타</span>
                    </label>
                  </div>
                </div>

                <div>
                  <label class="block text-gray-700 font-semibold mb-2">
                    추가 요청사항
                  </label>
                  <textarea 
                    name="notes" 
                    rows="4"
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-green-500 focus:border-transparent"
                    placeholder="증상, 병력, 희망 방문 시간 등을 자유롭게 작성해주세요"
                  ></textarea>
                </div>
              </div>
            </div>

            <!-- 제출 버튼 -->
            <div class="flex gap-4">
              <button 
                type="submit"
                class="flex-1 bg-gradient-to-r from-green-500 to-teal-600 text-white py-4 rounded-xl font-bold text-lg hover:from-green-600 hover:to-teal-700 transition-all shadow-lg hover:shadow-xl"
              >
                <i class="fas fa-paper-plane mr-2"></i>
                신청하기
              </button>
              <a 
                href="/haniwon-info"
                class="px-6 py-4 bg-gray-200 text-gray-700 rounded-xl font-bold hover:bg-gray-300 transition-colors flex items-center"
              >
                <i class="fas fa-info-circle mr-2"></i>
                시범기관 보기
              </a>
            </div>
          </form>
        </div>

        <!-- 하단 안내 -->
        <div class="mt-8 bg-yellow-50 border-l-4 border-yellow-400 p-6 rounded-lg">
          <div class="flex items-start">
            <i class="fas fa-lightbulb text-yellow-600 text-2xl mr-4 mt-1"></i>
            <div>
              <h4 class="font-bold text-gray-900 mb-2">신청 후 절차</h4>
              <ol class="text-gray-700 space-y-1">
                <li>1. 신청 접수 후 1~2일 내 담당 한의원에서 연락드립니다</li>
                <li>2. 방문 일정 및 진료 내용을 상담합니다</li>
                <li>3. 약속된 시간에 한의사가 방문하여 진료합니다</li>
                <li>4. 건강보험 수가가 적용됩니다</li>
              </ol>
            </div>
          </div>
        </div>
      </div>

      <!-- 푸터 -->
      <footer class="bg-gray-900 text-white py-12 mt-20">
        <div class="max-w-7xl mx-auto px-4 text-center">
          <h2 class="text-2xl font-bold mb-4">케어조아</h2>
          <p class="text-gray-400 mb-4">어르신을 위한 최적의 요양 솔루션</p>
          <p class="text-sm text-gray-500">© 2026 케어조아. All rights reserved.</p>
        </div>
      </footer>

      <script>
        document.getElementById('haniwonForm').addEventListener('submit', async (e) => {
          e.preventDefault();
          
          const formData = new FormData(e.target);
          const symptoms = [];
          formData.getAll('symptoms').forEach(s => symptoms.push(s));
          
          const data = {
            patientName: formData.get('patientName'),
            phone: formData.get('phone'),
            age: formData.get('age'),
            gender: formData.get('gender'),
            sido: formData.get('sido'),
            sigungu: formData.get('sigungu'),
            address: formData.get('address'),
            symptoms: symptoms.join(', '),
            notes: formData.get('notes')
          };

          try {
            const response = await axios.post('/api/haniwon-visit/request', data);
            
            if (response.data.success) {
              alert('한의사 왕진 신청이 완료되었습니다!\\n\\n담당 한의원에서 1~2일 내 연락드릴 예정입니다.');
              window.location.href = '/';
            } else {
              alert('신청 중 오류가 발생했습니다: ' + response.data.message);
            }
          } catch (error) {
            console.error('신청 오류:', error);
            alert('신청 중 오류가 발생했습니다. 다시 시도해주세요.');
          }
        });
      </script>
    </body>
    </html>
  `)
})

// 한의원 시범기관 안내 페이지
app.get('/haniwon-info', (c) => {
  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>한의원 왕진 시범사업 안내 - 케어조아</title>
      <link href="/static/tailwind.css" rel="stylesheet">
      <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet">
    </head>
    <body class="bg-gradient-to-br from-green-50 via-emerald-50 to-teal-50">
      <div class="max-w-5xl mx-auto px-4 py-8 sm:py-12">
        <!-- 헤더 -->
        <div class="text-center mb-10">
          <a href="/" class="inline-flex items-center text-teal-600 hover:text-teal-700 mb-6">
            <i class="fas fa-arrow-left mr-2"></i>
            홈으로
          </a>
          
          <div class="inline-flex items-center justify-center bg-gradient-to-r from-green-500 to-emerald-600 text-white px-6 py-3 rounded-full mb-6 shadow-xl">
            <i class="fas fa-stethoscope text-2xl mr-3"></i>
            <span class="font-bold text-xl">일차의료 한의 방문진료</span>
          </div>
          
          <h1 class="text-4xl sm:text-5xl font-bold text-gray-900 mb-4">
            한의원 왕진 시범사업 안내
          </h1>
          <p class="text-xl text-gray-600">
            케어조아와 함께하는 맞춤형 한방 재택 의료 서비스
          </p>
        </div>

        <!-- 케어조아 특별 가치 제안 -->
        <div class="bg-gradient-to-r from-indigo-600 to-purple-600 rounded-3xl shadow-2xl p-8 mb-10 text-white">
          <div class="flex items-center mb-4">
            <div class="bg-white/20 backdrop-blur-sm rounded-full p-3 mr-3">
              <i class="fas fa-certificate text-2xl"></i>
            </div>
            <h2 class="text-2xl sm:text-3xl font-bold">케어조아만의 차별화된 가치</h2>
          </div>
          
          <div class="bg-white/10 backdrop-blur-sm rounded-2xl p-6 mb-6">
            <p class="text-lg leading-relaxed mb-4">
              <span class="font-bold text-yellow-300">특허 출원 AI 매칭 알고리즘</span> 
              <span class="text-sm opacity-90">(특허번호: 10-2025-0058040)</span>을 기반으로 
              <span class="font-bold">입소 전 한의원 왕진을 통해 최적의 요양시설을 추천</span>합니다.
            </p>
            <p class="text-base opacity-90">
              요양시설 입소 전, 한의사의 전문적인 진단과 케어조아의 AI 매칭으로 
              어르신께 가장 적합한 시설을 찾아드립니다.
            </p>
          </div>
          
          <div class="grid sm:grid-cols-3 gap-4">
            <div class="bg-white/20 backdrop-blur-sm rounded-xl p-4 text-center">
              <div class="text-3xl font-bold mb-1">①</div>
              <div class="font-semibold">한의사 왕진</div>
              <div class="text-sm opacity-90">건강상태 진단</div>
            </div>
            <div class="bg-white/20 backdrop-blur-sm rounded-xl p-4 text-center">
              <div class="text-3xl font-bold mb-1">②</div>
              <div class="font-semibold">AI 매칭</div>
              <div class="text-sm opacity-90">특허 알고리즘 적용</div>
            </div>
            <div class="bg-white/20 backdrop-blur-sm rounded-xl p-4 text-center">
              <div class="text-3xl font-bold mb-1">③</div>
              <div class="font-semibold">시설 추천</div>
              <div class="text-sm opacity-90">맞춤형 요양시설</div>
            </div>
          </div>
        </div>

        <!-- 일차의료 한의 방문진료란? -->
        <div class="bg-white rounded-2xl shadow-xl p-8 mb-8">
          <h2 class="text-2xl font-bold text-gray-900 mb-6 flex items-center">
            <i class="fas fa-question-circle text-green-600 mr-3"></i>
            일차의료 한의 방문진료란?
          </h2>
          <p class="text-lg text-gray-700 leading-relaxed mb-4">
            거동이 불편한 환자의 집으로 한의사가 직접 방문하여 침, 뜸, 부항 등의 한방 치료를 제공하는 서비스입니다.
          </p>
          <div class="bg-green-50 border-l-4 border-green-500 p-4 rounded-lg">
            <p class="text-gray-700">
              <i class="fas fa-check-circle text-green-600 mr-2"></i>
              <strong>건강보험 적용</strong>으로 부담 없이 이용 가능
            </p>
            <p class="text-gray-700 mt-2">
              <i class="fas fa-check-circle text-green-600 mr-2"></i>
              <strong>2024년 시범사업</strong>으로 전국 확대 진행 중
            </p>
          </div>
        </div>

        <!-- 제공 서비스 -->
        <div class="bg-white rounded-2xl shadow-xl p-8 mb-8">
          <h2 class="text-2xl font-bold text-gray-900 mb-6 flex items-center">
            <i class="fas fa-hand-holding-medical text-teal-600 mr-3"></i>
            제공 서비스
          </h2>
          <div class="grid sm:grid-cols-2 gap-6">
            <div class="border-2 border-green-200 rounded-xl p-6 hover:shadow-lg transition-shadow">
              <div class="flex items-center mb-3">
                <div class="bg-green-100 rounded-full p-3 mr-3">
                  <i class="fas fa-syringe text-green-600 text-xl"></i>
                </div>
                <h3 class="font-bold text-lg">침 치료</h3>
              </div>
              <p class="text-gray-600">통증 완화, 혈액순환 개선</p>
            </div>
            
            <div class="border-2 border-orange-200 rounded-xl p-6 hover:shadow-lg transition-shadow">
              <div class="flex items-center mb-3">
                <div class="bg-orange-100 rounded-full p-3 mr-3">
                  <i class="fas fa-fire text-orange-600 text-xl"></i>
                </div>
                <h3 class="font-bold text-lg">뜸 치료</h3>
              </div>
              <p class="text-gray-600">면역력 강화, 만성질환 관리</p>
            </div>
            
            <div class="border-2 border-purple-200 rounded-xl p-6 hover:shadow-lg transition-shadow">
              <div class="flex items-center mb-3">
                <div class="bg-purple-100 rounded-full p-3 mr-3">
                  <i class="fas fa-circle text-purple-600 text-xl"></i>
                </div>
                <h3 class="font-bold text-lg">부항 치료</h3>
              </div>
              <p class="text-gray-600">어혈 제거, 근육통 완화</p>
            </div>
            
            <div class="border-2 border-blue-200 rounded-xl p-6 hover:shadow-lg transition-shadow">
              <div class="flex items-center mb-3">
                <div class="bg-blue-100 rounded-full p-3 mr-3">
                  <i class="fas fa-capsules text-blue-600 text-xl"></i>
                </div>
                <h3 class="font-bold text-lg">한약 처방</h3>
              </div>
              <p class="text-gray-600">체질 맞춤 한약 상담 (별도)</p>
            </div>
          </div>
        </div>

        <!-- 수가 안내 -->
        <div class="bg-white rounded-2xl shadow-xl p-8 mb-8">
          <h2 class="text-2xl font-bold text-gray-900 mb-6 flex items-center">
            <i class="fas fa-won-sign text-indigo-600 mr-3"></i>
            수가 안내 (건강보험 적용)
          </h2>
          <div class="overflow-x-auto">
            <table class="w-full text-left">
              <thead class="bg-gray-100">
                <tr>
                  <th class="px-4 py-3 font-semibold">서비스</th>
                  <th class="px-4 py-3 font-semibold">본인부담금</th>
                </tr>
              </thead>
              <tbody class="divide-y">
                <tr>
                  <td class="px-4 py-3">기본 방문 진료</td>
                  <td class="px-4 py-3 font-semibold text-green-600">약 15,000원</td>
                </tr>
                <tr>
                  <td class="px-4 py-3">침 치료</td>
                  <td class="px-4 py-3 font-semibold text-green-600">약 9,000원</td>
                </tr>
                <tr>
                  <td class="px-4 py-3">뜸 치료</td>
                  <td class="px-4 py-3 font-semibold text-green-600">약 6,000원</td>
                </tr>
                <tr>
                  <td class="px-4 py-3">부항 치료</td>
                  <td class="px-4 py-3 font-semibold text-green-600">약 4,500원</td>
                </tr>
                <tr>
                  <td class="px-4 py-3">교통비 (거리별)</td>
                  <td class="px-4 py-3 font-semibold text-green-600">5,000 ~ 20,000원</td>
                </tr>
              </tbody>
            </table>
          </div>
          <p class="text-sm text-gray-500 mt-4">
            * 본인부담금은 건강보험 적용 후 금액이며, 지역 및 한의원에 따라 다를 수 있습니다.
          </p>
        </div>

        <!-- CTA -->
        <div class="bg-gradient-to-r from-green-500 to-teal-600 rounded-2xl shadow-2xl p-8 text-center text-white">
          <h2 class="text-3xl font-bold mb-4">지금 바로 신청하세요!</h2>
          <p class="text-lg mb-6 opacity-90">
            한의사 왕진으로 건강 관리부터 최적의 요양시설 선정까지 한 번에
          </p>
          <a href="/haniwon-visit" class="inline-block bg-white text-green-600 hover:bg-gray-100 px-8 py-4 rounded-full text-lg font-bold shadow-xl transition-all transform hover:scale-105">
            <i class="fas fa-edit mr-2"></i>
            왕진 신청하기
          </a>
        </div>
      </div>
    </body>
    </html>
  `)
})

// 시스템 소개 페이지 (특허 기술 상세)
app.get('/system-info', (c) => {
  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>시스템 소개 - 케어조아</title>
      <link href="/static/tailwind.css" rel="stylesheet">
      <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet">
    </head>
    <body class="bg-gradient-to-br from-gray-50 via-blue-50 to-indigo-50">
      <div class="max-w-6xl mx-auto px-4 py-8 sm:py-12">
        <!-- 헤더 -->
        <div class="text-center mb-10">
          <a href="/" class="inline-flex items-center text-indigo-600 hover:text-indigo-700 mb-6">
            <i class="fas fa-arrow-left mr-2"></i>
            홈으로
          </a>
          
          <div class="inline-flex items-center justify-center bg-gradient-to-r from-indigo-600 to-purple-600 text-white px-8 py-4 rounded-full mb-6 shadow-2xl">
            <i class="fas fa-microchip text-3xl mr-4"></i>
            <div class="text-left">
              <div class="font-bold text-2xl">특허 출원 AI 매칭 시스템</div>
              <div class="text-sm opacity-90">특허번호: 10-2025-0058040</div>
            </div>
          </div>
          
          <h1 class="text-4xl sm:text-5xl font-bold text-gray-900 mb-4">
            시스템 기술 소개
          </h1>
          <p class="text-xl text-gray-600">
            케어조아의 혁신적인 AI 기술과 보안 체계
          </p>
        </div>

        <!-- 시스템 아키텍처 -->
        <div class="bg-white rounded-3xl shadow-2xl p-8 mb-10 border-2 border-indigo-100">
          <h2 class="text-3xl font-bold text-gray-900 mb-6 flex items-center">
            <i class="fas fa-sitemap text-indigo-600 mr-3"></i>
            모듈형 시스템 아키텍처
          </h2>
          
          <div class="mb-8">
            <div class="bg-gradient-to-br from-indigo-50 to-purple-50 rounded-2xl p-6 mb-6">
              <h3 class="font-bold text-lg text-gray-800 mb-4">시스템 구성도</h3>
              <div class="grid grid-cols-1 md:grid-cols-4 gap-4">
                <div class="bg-white rounded-xl p-4 shadow-md border-2 border-indigo-200">
                  <div class="text-center">
                    <div class="bg-indigo-100 rounded-full w-12 h-12 flex items-center justify-center mx-auto mb-3">
                      <i class="fas fa-desktop text-indigo-600 text-xl"></i>
                    </div>
                    <h4 class="font-bold text-gray-800 mb-2">사용자 인터페이스부</h4>
                    <p class="text-xs text-gray-600">UI/UX Layer</p>
                    <div class="mt-3 text-xs text-gray-500">
                      • 반응형 웹 디자인<br>
                      • 접근성 최적화<br>
                      • PWA 지원
                    </div>
                  </div>
                </div>
                
                <div class="bg-white rounded-xl p-4 shadow-md border-2 border-blue-200">
                  <div class="text-center">
                    <div class="bg-blue-100 rounded-full w-12 h-12 flex items-center justify-center mx-auto mb-3">
                      <i class="fas fa-cogs text-blue-600 text-xl"></i>
                    </div>
                    <h4 class="font-bold text-gray-800 mb-2">입력 처리부</h4>
                    <p class="text-xs text-gray-600">Processing Layer</p>
                    <div class="mt-3 text-xs text-gray-500">
                      • 데이터 검증<br>
                      • 파라미터 정규화<br>
                      • 에러 핸들링
                    </div>
                  </div>
                </div>
                
                <div class="bg-white rounded-xl p-4 shadow-md border-2 border-purple-200">
                  <div class="text-center">
                    <div class="bg-purple-100 rounded-full w-12 h-12 flex items-center justify-center mx-auto mb-3">
                      <i class="fas fa-brain text-purple-600 text-xl"></i>
                    </div>
                    <h4 class="font-bold text-gray-800 mb-2">AI 엔진</h4>
                    <p class="text-xs text-gray-600">Intelligence Layer</p>
                    <div class="mt-3 text-xs text-gray-500">
                      • 매칭 알고리즘<br>
                      • 비용 예측 모델<br>
                      • 학습 시스템
                    </div>
                  </div>
                </div>
                
                <div class="bg-white rounded-xl p-4 shadow-md border-2 border-green-200">
                  <div class="text-center">
                    <div class="bg-green-100 rounded-full w-12 h-12 flex items-center justify-center mx-auto mb-3">
                      <i class="fas fa-database text-green-600 text-xl"></i>
                    </div>
                    <h4 class="font-bold text-gray-800 mb-2">데이터 저장부</h4>
                    <p class="text-xs text-gray-600">Storage Layer</p>
                    <div class="mt-3 text-xs text-gray-500">
                      • D1 Database<br>
                      • KV Storage<br>
                      • R2 Object Storage
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="text-center text-sm text-gray-600 mt-4">
              <i class="fas fa-arrow-right text-indigo-600 mx-2"></i>
              실시간 데이터 처리 및 유기적 연동
            </div>
          </div>
        </div>

        <!-- AI 매칭 알고리즘 상세 -->
        <div class="bg-white rounded-3xl shadow-2xl p-8 mb-10 border-2 border-purple-100">
          <h2 class="text-3xl font-bold text-gray-900 mb-6 flex items-center">
            <i class="fas fa-brain text-purple-600 mr-3"></i>
            AI 매칭 알고리즘
          </h2>
          
          <div class="grid md:grid-cols-2 gap-6 mb-8">
            <div class="bg-gradient-to-br from-purple-50 to-indigo-50 rounded-2xl p-6">
              <h3 class="font-bold text-lg text-gray-800 mb-4 flex items-center">
                <i class="fas fa-chart-line text-purple-600 mr-2"></i>
                다중 회귀 신경망 모델
              </h3>
              <p class="text-gray-700 mb-4">
                Multi-layer Perceptron Regressor를 활용한 정밀 비용 예측
              </p>
              <ul class="space-y-2 text-sm text-gray-600">
                <li class="flex items-start">
                  <i class="fas fa-check-circle text-green-500 mr-2 mt-0.5"></i>
                  <span>복합 변수 학습 (요양등급, 시설 유형, 지역)</span>
                </li>
                <li class="flex items-start">
                  <i class="fas fa-check-circle text-green-500 mr-2 mt-0.5"></i>
                  <span>비급여 비용 패턴 분석</span>
                </li>
                <li class="flex items-start">
                  <i class="fas fa-check-circle text-green-500 mr-2 mt-0.5"></i>
                  <span>실시간 예측 정확도 95% 이상</span>
                </li>
              </ul>
            </div>
            
            <div class="bg-gradient-to-br from-blue-50 to-cyan-50 rounded-2xl p-6">
              <h3 class="font-bold text-lg text-gray-800 mb-4 flex items-center">
                <i class="fas fa-filter text-blue-600 mr-2"></i>
                다단계 필터링 프로세스
              </h3>
              <div class="space-y-3">
                <div class="flex items-center">
                  <div class="bg-blue-600 text-white rounded-full w-8 h-8 flex items-center justify-center font-bold text-sm mr-3">1</div>
                  <div>
                    <div class="font-semibold text-gray-800">기본 필터링</div>
                    <div class="text-xs text-gray-600">지역, 시설 유형 일치</div>
                  </div>
                </div>
                <div class="flex items-center">
                  <div class="bg-blue-600 text-white rounded-full w-8 h-8 flex items-center justify-center font-bold text-sm mr-3">2</div>
                  <div>
                    <div class="font-semibold text-gray-800">거리 필터링</div>
                    <div class="text-xs text-gray-600">GPS 기반 거리 계산</div>
                  </div>
                </div>
                <div class="flex items-center">
                  <div class="bg-blue-600 text-white rounded-full w-8 h-8 flex items-center justify-center font-bold text-sm mr-3">3</div>
                  <div>
                    <div class="font-semibold text-gray-800">평점 가중치</div>
                    <div class="text-xs text-gray-600">리뷰 데이터 반영</div>
                  </div>
                </div>
                <div class="flex items-center">
                  <div class="bg-blue-600 text-white rounded-full w-8 h-8 flex items-center justify-center font-bold text-sm mr-3">4</div>
                  <div>
                    <div class="font-semibold text-gray-800">협업 필터링</div>
                    <div class="text-xs text-gray-600">유사 케이스 분석</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          <div class="bg-gradient-to-r from-purple-100 to-indigo-100 rounded-2xl p-6">
            <h3 class="font-bold text-lg text-gray-800 mb-3 flex items-center">
              <i class="fas fa-percentage text-indigo-600 mr-2"></i>
              적합도 점수 산출 (0~100점)
            </h3>
            <p class="text-gray-700 mb-4">
              가중 평균 알고리즘을 통해 최적의 시설 추천
            </p>
            <div class="grid sm:grid-cols-3 gap-3 text-sm">
              <div class="bg-white rounded-lg p-3">
                <div class="font-semibold text-indigo-600 mb-1">40%</div>
                <div class="text-gray-700">지역 & 거리 일치도</div>
              </div>
              <div class="bg-white rounded-lg p-3">
                <div class="font-semibold text-purple-600 mb-1">30%</div>
                <div class="text-gray-700">평점 & 리뷰 점수</div>
              </div>
              <div class="bg-white rounded-lg p-3">
                <div class="font-semibold text-blue-600 mb-1">30%</div>
                <div class="text-gray-700">비용 & 협업 필터링</div>
              </div>
            </div>
          </div>
        </div>

        <!-- 보안 체계 -->
        <div class="bg-white rounded-3xl shadow-2xl p-8 mb-10 border-2 border-red-100">
          <h2 class="text-3xl font-bold text-gray-900 mb-6 flex items-center">
            <i class="fas fa-shield-alt text-red-600 mr-3"></i>
            강력한 보안 체계
          </h2>
          
          <div class="grid md:grid-cols-3 gap-6">
            <div class="bg-gradient-to-br from-red-50 to-pink-50 rounded-2xl p-6 border-l-4 border-red-500">
              <div class="flex items-center mb-4">
                <div class="bg-red-100 rounded-full p-3 mr-3">
                  <i class="fas fa-lock text-red-600 text-2xl"></i>
                </div>
                <h3 class="font-bold text-lg text-gray-800">AES-256 암호화</h3>
              </div>
              <p class="text-gray-700 mb-3">
                모든 개인 식별 정보를 군사급 암호화 알고리즘으로 보호
              </p>
              <ul class="space-y-2 text-sm text-gray-600">
                <li>• 256비트 암호화 키</li>
                <li>• 국제 표준 AES</li>
                <li>• 데이터 유출 원천 차단</li>
              </ul>
            </div>
            
            <div class="bg-gradient-to-br from-blue-50 to-indigo-50 rounded-2xl p-6 border-l-4 border-blue-500">
              <div class="flex items-center mb-4">
                <div class="bg-blue-100 rounded-full p-3 mr-3">
                  <i class="fas fa-exchange-alt text-blue-600 text-2xl"></i>
                </div>
                <h3 class="font-bold text-lg text-gray-800">TLS 1.3 암호화</h3>
              </div>
              <p class="text-gray-700 mb-3">
                최신 전송 계층 보안 프로토콜로 종단간 암호화 구현
              </p>
              <ul class="space-y-2 text-sm text-gray-600">
                <li>• 종단간 암호화</li>
                <li>• 중간자 공격 방어</li>
                <li>• HTTPS 필수 적용</li>
              </ul>
            </div>
            
            <div class="bg-gradient-to-br from-green-50 to-emerald-50 rounded-2xl p-6 border-l-4 border-green-500">
              <div class="flex items-center mb-4">
                <div class="bg-green-100 rounded-full p-3 mr-3">
                  <i class="fas fa-user-shield text-green-600 text-2xl"></i>
                </div>
                <h3 class="font-bold text-lg text-gray-800">RBAC 접근 제어</h3>
              </div>
              <p class="text-gray-700 mb-3">
                역할 기반 접근 제어로 데이터 권한을 엄격히 통제
              </p>
              <ul class="space-y-2 text-sm text-gray-600">
                <li>• 사용자별 권한 관리</li>
                <li>• 최소 권한 원칙</li>
                <li>• 감사 로그 기록</li>
              </ul>
            </div>
          </div>
          
          <div class="mt-6 bg-gray-50 rounded-xl p-4">
            <div class="flex items-center text-sm text-gray-700">
              <i class="fas fa-info-circle text-indigo-600 mr-2"></i>
              <span class="font-semibold">개인정보보호법 및 의료법 완전 준수</span>
            </div>
          </div>
        </div>

        <!-- 선순환 학습 시스템 -->
        <div class="bg-white rounded-3xl shadow-2xl p-8 mb-10 border-2 border-green-100">
          <h2 class="text-3xl font-bold text-gray-900 mb-6 flex items-center">
            <i class="fas fa-sync-alt text-green-600 mr-3"></i>
            선순환 학습 시스템
          </h2>
          
          <div class="bg-gradient-to-br from-green-50 to-emerald-50 rounded-2xl p-6 mb-6">
            <h3 class="font-bold text-lg text-gray-800 mb-4">지속적 개선 프로세스</h3>
            <div class="grid md:grid-cols-4 gap-4">
              <div class="text-center">
                <div class="bg-green-100 rounded-full w-16 h-16 flex items-center justify-center mx-auto mb-3">
                  <i class="fas fa-user-check text-green-600 text-2xl"></i>
                </div>
                <h4 class="font-semibold text-gray-800 mb-2">1. 사용자 피드백</h4>
                <p class="text-xs text-gray-600">입소 여부 및<br>만족도 수집</p>
              </div>
              
              <div class="text-center">
                <div class="bg-blue-100 rounded-full w-16 h-16 flex items-center justify-center mx-auto mb-3">
                  <i class="fas fa-chart-bar text-blue-600 text-2xl"></i>
                </div>
                <h4 class="font-semibold text-gray-800 mb-2">2. 데이터 분석</h4>
                <p class="text-xs text-gray-600">매칭 성공 패턴<br>분석</p>
              </div>
              
              <div class="text-center">
                <div class="bg-purple-100 rounded-full w-16 h-16 flex items-center justify-center mx-auto mb-3">
                  <i class="fas fa-cogs text-purple-600 text-2xl"></i>
                </div>
                <h4 class="font-semibold text-gray-800 mb-2">3. 알고리즘 조정</h4>
                <p class="text-xs text-gray-600">가중치 최적화<br>및 재학습</p>
              </div>
              
              <div class="text-center">
                <div class="bg-indigo-100 rounded-full w-16 h-16 flex items-center justify-center mx-auto mb-3">
                  <i class="fas fa-arrow-up text-indigo-600 text-2xl"></i>
                </div>
                <h4 class="font-semibold text-gray-800 mb-2">4. 정확도 향상</h4>
                <p class="text-xs text-gray-600">매칭 품질<br>지속 개선</p>
              </div>
            </div>
          </div>
          
          <div class="grid sm:grid-cols-2 gap-4">
            <div class="bg-blue-50 rounded-xl p-4">
              <h4 class="font-bold text-gray-800 mb-2 flex items-center">
                <i class="fas fa-chart-line text-blue-600 mr-2"></i>
                성능 지표
              </h4>
              <ul class="text-sm text-gray-600 space-y-1">
                <li>• 매칭 정확도: <span class="font-semibold text-blue-600">95% 이상</span></li>
                <li>• 입소 전환율: <span class="font-semibold text-blue-600">지속 증가</span></li>
                <li>• 사용자 만족도: <span class="font-semibold text-blue-600">4.5/5.0</span></li>
              </ul>
            </div>
            
            <div class="bg-purple-50 rounded-xl p-4">
              <h4 class="font-bold text-gray-800 mb-2 flex items-center">
                <i class="fas fa-database text-purple-600 mr-2"></i>
                학습 데이터
              </h4>
              <ul class="text-sm text-gray-600 space-y-1">
                <li>• 15,751개 시설 정보</li>
                <li>• 실제 입소 케이스 수천 건</li>
                <li>• 지속적 데이터 축적</li>
              </ul>
            </div>
          </div>
        </div>

        <!-- CTA -->
        <div class="bg-gradient-to-r from-indigo-600 to-purple-600 rounded-3xl shadow-2xl p-8 text-center text-white">
          <h2 class="text-3xl font-bold mb-4">혁신적인 기술을 경험해보세요</h2>
          <p class="text-lg mb-6 opacity-90">
            특허 출원 AI 시스템으로 최적의 요양시설을 찾아드립니다
          </p>
          <div class="flex flex-col sm:flex-row gap-4 justify-center">
            <a href="/ai-matching" class="inline-block bg-white text-indigo-600 hover:bg-gray-100 px-8 py-4 rounded-full text-lg font-bold shadow-xl transition-all transform hover:scale-105">
              <i class="fas fa-robot mr-2"></i>
              AI 매칭 시작하기
            </a>
            <a href="/" class="inline-block bg-indigo-500 hover:bg-indigo-400 text-white px-8 py-4 rounded-full text-lg font-bold shadow-xl transition-all transform hover:scale-105">
              <i class="fas fa-home mr-2"></i>
              메인으로
            </a>
          </div>
        </div>
      </div>
    </body>
    </html>
  `)
})

// 통합돌봄 안내 페이지
app.get('/integrated-care', (c) => {
  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>통합돌봄 안내 - 케어조아</title>
      <link href="/static/tailwind.css" rel="stylesheet">
      <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet">
    </head>
    <body class="bg-gradient-to-br from-blue-50 via-purple-50 to-pink-50">
      <!-- 헤더 -->
      <header class="bg-white shadow-sm border-b sticky top-0 z-50">
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
            <a href="/" class="text-gray-600 hover:text-teal-600 transition-colors">
              <i class="fas fa-home text-xl"></i>
            </a>
          </div>
        </div>
      </header>

      <div class="max-w-7xl mx-auto px-4 py-8 sm:py-12">
        <!-- 타이틀 섹션 -->
        <div class="text-center mb-12">
          <div class="inline-flex items-center justify-center bg-gradient-to-r from-blue-500 to-purple-600 text-white px-6 py-2 rounded-full mb-4 shadow-lg">
            <i class="fas fa-heart text-xl mr-2"></i>
            <span class="font-bold text-lg">2026년 3월 27일 전국 시행</span>
          </div>
          <h1 class="text-4xl md:text-5xl font-bold text-gray-900 mb-4">
            통합돌봄이란?
          </h1>
          <p class="text-xl text-gray-600 max-w-3xl mx-auto">
            살던 곳에서 의료·요양·돌봄 서비스를 한번에 받는 <span class="font-bold text-blue-600">맞춤형 지역 돌봄 시스템</span>
          </p>
        </div>

        <!-- 핵심 정보 카드 -->
        <div class="grid md:grid-cols-3 gap-6 mb-12">
          <div class="bg-white rounded-2xl shadow-xl p-8 hover:shadow-2xl transition-shadow">
            <div class="bg-blue-100 rounded-full w-16 h-16 flex items-center justify-center mb-4 mx-auto">
              <i class="fas fa-users text-3xl text-blue-600"></i>
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-3 text-center">대상자</h3>
            <ul class="space-y-2 text-gray-700">
              <li class="flex items-start">
                <i class="fas fa-check-circle text-blue-500 mr-2 mt-1"></i>
                <span>65세 이상 노인</span>
              </li>
              <li class="flex items-start">
                <i class="fas fa-check-circle text-blue-500 mr-2 mt-1"></i>
                <span>장애인</span>
              </li>
              <li class="flex items-start">
                <i class="fas fa-check-circle text-blue-500 mr-2 mt-1"></i>
                <span>만성질환자</span>
              </li>
              <li class="flex items-start">
                <i class="fas fa-check-circle text-blue-500 mr-2 mt-1"></i>
                <span>노쇠·거동불편자</span>
              </li>
            </ul>
          </div>

          <div class="bg-white rounded-2xl shadow-xl p-8 hover:shadow-2xl transition-shadow">
            <div class="bg-purple-100 rounded-full w-16 h-16 flex items-center justify-center mb-4 mx-auto">
              <i class="fas fa-hands-helping text-3xl text-purple-600"></i>
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-3 text-center">제공 서비스</h3>
            <ul class="space-y-2 text-gray-700">
              <li class="flex items-start">
                <i class="fas fa-check-circle text-purple-500 mr-2 mt-1"></i>
                <span>방문의료·간호</span>
              </li>
              <li class="flex items-start">
                <i class="fas fa-check-circle text-purple-500 mr-2 mt-1"></i>
                <span>장기요양서비스</span>
              </li>
              <li class="flex items-start">
                <i class="fas fa-check-circle text-purple-500 mr-2 mt-1"></i>
                <span>재가돌봄</span>
              </li>
              <li class="flex items-start">
                <i class="fas fa-check-circle text-purple-500 mr-2 mt-1"></i>
                <span>주거·식사·이동지원</span>
              </li>
            </ul>
          </div>

          <div class="bg-white rounded-2xl shadow-xl p-8 hover:shadow-2xl transition-shadow">
            <div class="bg-green-100 rounded-full w-16 h-16 flex items-center justify-center mb-4 mx-auto">
              <i class="fas fa-map-marker-alt text-3xl text-green-600"></i>
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-3 text-center">시행 지역</h3>
            <div class="text-center">
              <p class="text-4xl font-bold text-green-600 mb-2">229개</p>
              <p class="text-gray-700 mb-4">전국 모든 시·군·구</p>
              <div class="bg-green-50 rounded-lg p-3">
                <p class="text-sm text-gray-600">내가 사는 곳에서<br/>바로 신청 가능!</p>
              </div>
            </div>
          </div>
        </div>

        <!-- 신청 프로세스 -->
        <div class="bg-white rounded-2xl shadow-xl p-8 mb-12">
          <h2 class="text-3xl font-bold text-gray-900 mb-8 text-center">
            <i class="fas fa-clipboard-list text-blue-600 mr-3"></i>
            신청 프로세스
          </h2>
          <div class="grid md:grid-cols-5 gap-4">
            <div class="text-center">
              <div class="bg-blue-500 text-white rounded-full w-16 h-16 flex items-center justify-center text-2xl font-bold mx-auto mb-3">1</div>
              <p class="font-semibold text-gray-900 mb-2">신청</p>
              <p class="text-sm text-gray-600">주민센터·보건소·온라인</p>
            </div>
            <div class="hidden md:flex items-center justify-center">
              <i class="fas fa-arrow-right text-3xl text-gray-300"></i>
            </div>
            <div class="text-center">
              <div class="bg-purple-500 text-white rounded-full w-16 h-16 flex items-center justify-center text-2xl font-bold mx-auto mb-3">2</div>
              <p class="font-semibold text-gray-900 mb-2">조사</p>
              <p class="text-sm text-gray-600">돌봄 필요도 평가</p>
            </div>
            <div class="hidden md:flex items-center justify-center">
              <i class="fas fa-arrow-right text-3xl text-gray-300"></i>
            </div>
            <div class="text-center">
              <div class="bg-green-500 text-white rounded-full w-16 h-16 flex items-center justify-center text-2xl font-bold mx-auto mb-3">3</div>
              <p class="font-semibold text-gray-900 mb-2">계획수립</p>
              <p class="text-sm text-gray-600">개인 맞춤 서비스</p>
            </div>
            <div class="hidden md:flex items-center justify-center">
              <i class="fas fa-arrow-right text-3xl text-gray-300"></i>
            </div>
            <div class="text-center">
              <div class="bg-teal-500 text-white rounded-full w-16 h-16 flex items-center justify-center text-2xl font-bold mx-auto mb-3">4</div>
              <p class="font-semibold text-gray-900 mb-2">서비스 연계</p>
              <p class="text-sm text-gray-600">의료·요양 제공</p>
            </div>
            <div class="hidden md:flex items-center justify-center">
              <i class="fas fa-arrow-right text-3xl text-gray-300"></i>
            </div>
            <div class="text-center">
              <div class="bg-indigo-500 text-white rounded-full w-16 h-16 flex items-center justify-center text-2xl font-bold mx-auto mb-3">5</div>
              <p class="font-semibold text-gray-900 mb-2">모니터링</p>
              <p class="text-sm text-gray-600">지속적 관리</p>
            </div>
          </div>
        </div>

        <!-- FAQ -->
        <div class="bg-white rounded-2xl shadow-xl p-8 mb-12">
          <h2 class="text-3xl font-bold text-gray-900 mb-8 text-center">
            <i class="fas fa-question-circle text-purple-600 mr-3"></i>
            자주 묻는 질문
          </h2>
          <div class="space-y-4">
            <div class="border-b pb-4">
              <h3 class="font-bold text-lg text-gray-900 mb-2">Q. 비용이 얼마나 드나요?</h3>
              <p class="text-gray-700">A. 소득 수준에 따라 무료~일부 본인부담으로 차등 적용됩니다. 기초생활수급자는 무료입니다.</p>
            </div>
            <div class="border-b pb-4">
              <h3 class="font-bold text-lg text-gray-900 mb-2">Q. 장기요양보험과 무엇이 다른가요?</h3>
              <p class="text-gray-700">A. 장기요양보험은 '요양 서비스'만, 통합돌봄은 '의료+요양+생활지원'을 모두 제공합니다.</p>
            </div>
            <div class="border-b pb-4">
              <h3 class="font-bold text-lg text-gray-900 mb-2">Q. 꼭 시설에 입소해야 하나요?</h3>
              <p class="text-gray-700">A. 아닙니다! 집에서 생활하면서 필요한 서비스를 받는 '재가 중심' 돌봄입니다.</p>
            </div>
            <div class="pb-4">
              <h3 class="font-bold text-lg text-gray-900 mb-2">Q. 신청 자격이 어떻게 되나요?</h3>
              <p class="text-gray-700">A. 일상생활에 어려움이 있는 노인·장애인이면 누구나 신청 가능합니다. 소득·재산 제한 없습니다.</p>
            </div>
          </div>
        </div>

        <!-- 통합돌봄 전화 신청 안내 -->
        <div class="bg-gradient-to-r from-green-50 to-blue-50 rounded-2xl shadow-xl p-8 mb-12 border-2 border-green-200">
          <h2 class="text-3xl font-bold text-gray-900 mb-6 text-center">
            <i class="fas fa-phone-volume text-green-600 mr-3"></i>
            통합돌봄 전화 신청
          </h2>
          
          <!-- 국민건강보험공단 -->
          <div class="bg-white rounded-xl shadow-lg p-6 mb-6">
            <div class="flex items-center mb-4">
              <div class="bg-blue-100 rounded-full p-3 mr-4">
                <i class="fas fa-hospital text-blue-600 text-2xl"></i>
              </div>
              <div>
                <h3 class="text-xl font-bold text-gray-900">국민건강보험공단</h3>
                <p class="text-sm text-gray-600">전국 어디서나 상담 가능</p>
              </div>
            </div>
            <div class="flex items-center justify-between bg-blue-50 rounded-lg p-4">
              <div class="flex items-center">
                <i class="fas fa-phone-alt text-blue-600 text-xl mr-3"></i>
                <span class="text-2xl font-bold text-blue-600">1577-1000</span>
              </div>
              <a href="tel:1577-1000" class="bg-blue-600 hover:bg-blue-700 text-white px-6 py-3 rounded-lg font-bold transition-colors flex items-center">
                <i class="fas fa-phone mr-2"></i>
                전화하기
              </a>
            </div>
            <div class="mt-4 grid md:grid-cols-2 gap-3 text-sm text-gray-600">
              <div class="flex items-center">
                <i class="fas fa-clock text-blue-500 mr-2"></i>
                <span>평일 09:00 ~ 18:00</span>
              </div>
              <div class="flex items-center">
                <i class="fas fa-calendar-check text-blue-500 mr-2"></i>
                <span>주말·공휴일 휴무</span>
              </div>
            </div>
          </div>

          <!-- 지역별 주민센터 -->
          <div class="bg-white rounded-xl shadow-lg p-6">
            <div class="flex items-center mb-4">
              <div class="bg-green-100 rounded-full p-3 mr-4">
                <i class="fas fa-building text-green-600 text-2xl"></i>
              </div>
              <div>
                <h3 class="text-xl font-bold text-gray-900">거주지 읍·면·동 주민센터</h3>
                <p class="text-sm text-gray-600">가까운 주민센터에서 신청 가능</p>
              </div>
            </div>
            
            <div class="bg-green-50 rounded-lg p-4 mb-4">
              <div class="flex items-center mb-3">
                <i class="fas fa-info-circle text-green-600 text-lg mr-2"></i>
                <span class="font-bold text-gray-900">주민센터 찾기</span>
              </div>
              <p class="text-gray-700 mb-3">거주지 주민센터 연락처는 아래 방법으로 확인하세요:</p>
              <div class="space-y-2">
                <div class="flex items-start">
                  <i class="fas fa-check-circle text-green-500 mr-2 mt-1"></i>
                  <span class="text-gray-700"><strong>인터넷 검색:</strong> "지역명 + 주민센터" 검색</span>
                </div>
                <div class="flex items-start">
                  <i class="fas fa-check-circle text-green-500 mr-2 mt-1"></i>
                  <span class="text-gray-700"><strong>안전신문고 앱:</strong> 거주지 주민센터 정보 확인</span>
                </div>
                <div class="flex items-start">
                  <i class="fas fa-check-circle text-green-500 mr-2 mt-1"></i>
                  <span class="text-gray-700"><strong>시청·구청·군청:</strong> 대표번호로 문의</span>
                </div>
              </div>
            </div>

            <!-- 주요 지역 대표 연락처 예시 -->
            <div class="border-t pt-4">
              <p class="text-sm text-gray-500 mb-3">
                <i class="fas fa-lightbulb text-yellow-500 mr-2"></i>
                주요 광역시·도 대표 연락처 (상세 주민센터 안내)
              </p>
              <div class="grid md:grid-cols-2 gap-3 text-sm">
                <div class="bg-gray-50 rounded p-3">
                  <span class="font-semibold text-gray-900">서울특별시:</span>
                  <span class="text-gray-700 ml-2">120</span>
                </div>
                <div class="bg-gray-50 rounded p-3">
                  <span class="font-semibold text-gray-900">부산광역시:</span>
                  <span class="text-gray-700 ml-2">051-120</span>
                </div>
                <div class="bg-gray-50 rounded p-3">
                  <span class="font-semibold text-gray-900">경기도:</span>
                  <span class="text-gray-700 ml-2">031-120</span>
                </div>
                <div class="bg-gray-50 rounded p-3">
                  <span class="font-semibold text-gray-900">인천광역시:</span>
                  <span class="text-gray-700 ml-2">032-120</span>
                </div>
              </div>
              <p class="text-xs text-gray-500 mt-3 text-center">
                ※ 기타 지역은 해당 시·도 대표번호 120번으로 문의하세요
              </p>
            </div>
          </div>

        </div>

        <!-- CTA 버튼 -->
        <div class="grid md:grid-cols-2 gap-6">
          <a href="/quote-request" class="block bg-gradient-to-r from-blue-500 to-purple-600 text-white rounded-2xl shadow-xl p-8 hover:shadow-2xl transition-all transform hover:-translate-y-1">
            <div class="flex items-center justify-between">
              <div>
                <h3 class="text-2xl font-bold mb-2">간편 견적 신청</h3>
                <p class="text-blue-100">3분이면 요양시설 견적 받기</p>
              </div>
              <i class="fas fa-arrow-right text-4xl"></i>
            </div>
          </a>
          <div class="relative block bg-gradient-to-r from-gray-400 to-gray-500 text-white rounded-2xl shadow-xl p-8 cursor-not-allowed opacity-75">
            <div class="absolute top-4 right-4 bg-yellow-500 text-white px-4 py-1 rounded-full text-sm font-bold shadow-lg">
              준비중
            </div>
            <div class="flex items-center justify-between">
              <div>
                <h3 class="text-2xl font-bold mb-2">전화 상담 신청</h3>
                <p class="text-gray-100">통합돌봄 전화상담 (2026년 3월 오픈)</p>
              </div>
              <i class="fas fa-phone-alt text-4xl opacity-50"></i>
            </div>
          </div>
        </div>

        <!-- 안내 문구 -->
        <div class="mt-12 bg-yellow-50 border-l-4 border-yellow-400 p-6 rounded-lg">
          <div class="flex items-start">
            <i class="fas fa-info-circle text-yellow-600 text-2xl mr-4 mt-1"></i>
            <div>
              <h4 class="font-bold text-gray-900 mb-2">케어조아의 통합돌봄 지원 서비스</h4>
              <p class="text-gray-700">케어조아는 통합돌봄 신청부터 시설 연계까지 전 과정을 무료로 지원합니다. 어려운 서류 작성부터 최적의 돌봄 계획 수립까지, 전문 매니저가 함께합니다.</p>
            </div>
          </div>
        </div>
      </div>

      <!-- 푸터 -->
      <footer class="bg-gray-900 text-white py-12 mt-20">
        <div class="max-w-7xl mx-auto px-4 text-center">
          <h2 class="text-2xl font-bold mb-4">케어조아</h2>
          <p class="text-gray-400 mb-4">어르신을 위한 최적의 요양 솔루션</p>
          <p class="text-sm text-gray-500">© 2026 케어조아. All rights reserved.</p>
        </div>
      </footer>
    </body>
    </html>
  `)
})

// 전국 시설 찾기 페이지
app.get('/facilities', (c) => {
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
      </header><link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" 
        integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY=" crossorigin="" />
      
      <section class="py-8 bg-gray-50 min-h-screen">
        <div class="max-w-7xl mx-auto px-4"><div class="mb-6">
            <h2 class="text-3xl font-bold text-gray-900 mb-2 flex items-center">
              <i class="fas fa-search text-purple-600 mr-3"></i>
              전국 시설 찾기
            </h2>
            <p class="text-gray-600">전국 요양시설을 지도에서 확인하고 검색하세요</p>
          </div><div class="bg-white rounded-xl shadow-lg p-6 mb-6">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-4">
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">
                  <i class="fas fa-map-marker-alt text-red-500 mr-1"></i>시/도
                </label>
                <select id="filterSido" class="w-full p-3 border-2 border-gray-300 rounded-lg focus:border-purple-500 focus:ring-2 focus:ring-purple-200">
                  <option value="">전체 시/도</option>
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
                <label class="block text-sm font-medium text-gray-700 mb-2">
                  <i class="fas fa-map-pin text-blue-500 mr-1"></i>시/군/구
                </label>
                <select id="filterSigungu" class="w-full p-3 border-2 border-gray-300 rounded-lg focus:border-purple-500 focus:ring-2 focus:ring-purple-200">
                  <option value="">전체 시/군/구</option>
                </select>
              </div>

              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">
                  <i class="fas fa-building text-green-500 mr-1"></i>시설 유형
                </label>
                <select id="filterType" class="w-full p-3 border-2 border-gray-300 rounded-lg focus:border-purple-500 focus:ring-2 focus:ring-purple-200">
                  <option value="">전체 유형</option>
                  <option value="요양병원">요양병원</option>
                  <option value="요양원">요양원</option>
                  <option value="주야간보호">주야간보호</option>
                  <option value="재가복지센터">재가복지센터</option>
                </select>
              </div>

              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">
                  <i class="fas fa-search text-gray-500 mr-1"></i>시설명 검색
                </label>
                <input 
                  type="text" 
                  id="filterKeyword" 
                  placeholder="시설명 입력"
                  class="w-full p-3 border-2 border-gray-300 rounded-lg focus:border-purple-500 focus:ring-2 focus:ring-purple-200"
                />
              </div>
            </div>

            <div class="mt-4 flex justify-end items-center">
              <button 
                id="resetFilters"
                class="px-6 py-2 bg-gray-500 text-white rounded-lg hover:bg-gray-600 transition-colors"
              >
                <i class="fas fa-redo mr-2"></i>필터 초기화
              </button>
            </div>
          </div><div class="grid grid-cols-1 lg:grid-cols-2 gap-6">
            {/* 모바일: 리스트 먼저, 데스크톱: 왼쪽에 리스트 */}
            <div class="order-1">
              <div class="mb-4">
                <h3 class="text-lg font-bold text-gray-800 flex items-center">
                  <i class="fas fa-list text-purple-600 mr-2"></i>
                  시설 목록
                  <span id="facilityCount" class="ml-2 text-sm text-gray-500">(0개)</span>
                </h3>
              </div>
              <div id="facilitiesList" class="space-y-4 overflow-y-auto" style="max-height: 650px;"></div><div id="loadingSpinner" class="text-center py-12">
                <i class="fas fa-spinner fa-spin text-4xl text-purple-600"></i>
                <p class="text-gray-600 mt-4">시설 데이터를 불러오는 중...</p>
              </div><div id="noResults" class="hidden bg-white rounded-xl shadow-lg p-12 text-center">
                <i class="fas fa-search text-6xl text-gray-300 mb-4"></i>
                <h3 class="text-2xl font-bold text-gray-700 mb-2">검색 결과가 없습니다</h3>
                <p class="text-gray-500">다른 조건으로 검색해 주세요</p>
              </div>
            </div>

            {/* 모바일: 지도 나중, 데스크톱: 오른쪽에 지도 */}
            <div class="bg-white rounded-xl shadow-lg p-4 order-2">
              <div class="mb-3">
                <h3 class="text-lg font-bold text-gray-800 flex items-center">
                  <i class="fas fa-map text-blue-600 mr-2"></i>
                  지도로 보기
                  <span id="mapMarkerCount" class="ml-2 text-sm text-gray-500">(0개 표시)</span>
                </h3>
              </div>
              <div id="map" style="height: 600px; width: 100%; border-radius: 0.75rem; overflow: hidden;"></div>
            </div>
          </div>
        </div>
      </section><script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"
        integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo=" 
        crossorigin=""></script><script dangerouslySetInnerHTML={{__html: `
        let allFacilities = [];
        let filteredFacilities = [];
        let map = null;
        let markers = [];

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

        // 페이지 로드 시 시설 데이터 불러오기
        async function loadFacilities() {
          try {
            // Leaflet.js 지도 초기화
            initializeMap();
            
            const response = await fetch('/static/facilities.json');
            allFacilities = await response.json();
            filteredFacilities = [...allFacilities];
            
            document.getElementById('loadingSpinner').style.display = 'none';
            displayFacilities();
            updateMapMarkers();
          } catch (error) {
            console.error('시설 데이터 로딩 오류:', error);
            document.getElementById('loadingSpinner').innerHTML = \`
              <i class="fas fa-exclamation-circle text-4xl text-red-600"></i>
              <p class="text-gray-600 mt-4">데이터를 불러오는데 실패했습니다</p>
            \`;
          }
        }
        
        // Leaflet.js 지도 초기화
        function initializeMap() {
          console.log('🗺️ Leaflet 지도 초기화 시작');
          
          // 지도 생성 (서울 중심, 확대 레벨 7)
          map = L.map('map').setView([37.5665, 126.9780], 7);
          
          // OpenStreetMap 타일 레이어
          L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '© OpenStreetMap contributors',
            maxZoom: 19
          }).addTo(map);
          
          console.log('✅ Leaflet 지도 초기화 완료');
        }
        
        // 지도 마커 업데이트
        function updateMapMarkers() {
          if (!map) return;
          
          // 기존 마커 제거
          markers.forEach(marker => marker.remove());
          markers = [];
          
          // 시설 유형별 색상
          const typeColors = {
            '요양병원': '#ef4444',  // 빨강
            '요양원': '#3b82f6',    // 파랑
            '재가복지센터': '#10b981', // 초록
            '주야간보호': '#f59e0b'  // 주황
          };
          
          // 최대 100개만 표시
          const displayItems = filteredFacilities.slice(0, 100);
          
          displayItems.forEach((facility, index) => {
            if (!facility.lat || !facility.lng) return;
            
            const color = typeColors[facility.type] || '#6b7280';
            
            // 커스텀 마커 아이콘
            const markerIcon = L.divIcon({
              className: 'custom-marker',
              html: \`<div style="background-color: \${color}; width: 24px; height: 24px; border-radius: 50%; border: 2px solid white; box-shadow: 0 2px 4px rgba(0,0,0,0.3);"></div>\`,
              iconSize: [24, 24],
              iconAnchor: [12, 12]
            });
            
            // 마커 생성
            const marker = L.marker([facility.lat, facility.lng], {
              icon: markerIcon
            }).addTo(map);
            
            // 팝업 내용
            const popupContent = \`
              <div style="min-width: 200px;">
                <div style="font-weight: bold; font-size: 16px; margin-bottom: 8px; color: \${color};">
                  \${facility.type}
                </div>
                <div style="font-weight: bold; font-size: 18px; margin-bottom: 8px;">
                  \${facility.name}
                </div>
                <div style="color: #666; font-size: 14px; line-height: 1.6;">
                  <div style="margin-bottom: 4px;">
                    📍 \${facility.address}
                  </div>
                  <div style="margin-bottom: 8px;">
                    🗺️ \${facility.sido} \${facility.sigungu}
                  </div>
                </div>
                <a 
                  href="/facility/\${facility.id}"
                  style="display: block; width: 100%; background-color: #9333ea; color: white; padding: 8px; border-radius: 6px; text-align: center; text-decoration: none; font-weight: 600; margin-bottom: 4px;"
                >
                  상세보기
                </a>
                <button 
                  onclick="focusOnFacility(\${index})"
                  style="width: 100%; background-color: #3b82f6; color: white; padding: 8px; border-radius: 6px; border: none; cursor: pointer; font-weight: 600;"
                >
                  목록에서 보기
                </button>
              </div>
            \`;
            
            marker.bindPopup(popupContent);
            markers.push(marker);
          });
          
          // 마커 개수 업데이트
          document.getElementById('mapMarkerCount').textContent = \`(\${displayItems.length}개 표시)\`;
          
          // 첫 번째 시설로 지도 이동 (검색 결과가 있을 때만)
          if (displayItems.length > 0 && displayItems[0].lat && displayItems[0].lng) {
            map.setView([displayItems[0].lat, displayItems[0].lng], 10);
          }
          
          console.log(\`📍 \${displayItems.length}개 마커 표시 완료\`);
        }
        
        // 특정 시설로 지도 이동 및 팝업 열기
        function showOnMap(lat, lng, name) {
          if (!map) return;
          
          // 지도 중심 이동 및 확대
          map.setView([lat, lng], 16);
          
          // 해당 위치의 마커 팝업 열기
          markers.forEach(marker => {
            const markerLatLng = marker.getLatLng();
            if (Math.abs(markerLatLng.lat - lat) < 0.0001 && Math.abs(markerLatLng.lng - lng) < 0.0001) {
              marker.openPopup();
              
              // 지도 영역으로 스크롤
              document.getElementById('map').scrollIntoView({ behavior: 'smooth', block: 'center' });
            }
          });
        }
        
        // 시설 목록에서 특정 시설로 포커스
        function focusOnFacility(index) {
          const facilityCard = document.querySelector(\`#facilitiesList > div:nth-child(\${index + 1})\`);
          if (facilityCard) {
            facilityCard.scrollIntoView({ behavior: 'smooth', block: 'center' });
            facilityCard.classList.add('ring-4', 'ring-purple-500');
            setTimeout(() => {
              facilityCard.classList.remove('ring-4', 'ring-purple-500');
            }, 2000);
          }
        }

        // 시설 목록 표시
        function displayFacilities() {
          const listEl = document.getElementById('facilitiesList');
          const noResultsEl = document.getElementById('noResults');
          
          // 시설 개수 업데이트
          document.getElementById('facilityCount').textContent = \`(\${filteredFacilities.length}개)\`;
          
          if (filteredFacilities.length === 0) {
            listEl.style.display = 'none';
            noResultsEl.classList.remove('hidden');
            updateMapMarkers();
            return;
          }
          
          listEl.style.display = 'block';
          noResultsEl.classList.add('hidden');
          
          // 최대 100개만 표시
          const displayItems = filteredFacilities.slice(0, 100);
          
          listEl.innerHTML = displayItems.map((facility, index) => \`
            <div class="bg-white rounded-xl shadow-md hover:shadow-lg transition-all duration-300 p-6">
              <div class="flex justify-between items-start">
                <div class="flex-1">
                  <div class="flex items-center gap-3 mb-3">
                    <a href="/facility/\${facility.id}" class="group">
                      <h3 class="text-xl font-bold text-gray-900 group-hover:text-purple-600 transition-colors">
                        \${facility.name}
                        <i class="fas fa-arrow-right ml-2 text-sm opacity-0 group-hover:opacity-100 transition-opacity"></i>
                      </h3>
                    </a>
                    <span class="inline-block px-3 py-1 bg-purple-100 text-purple-700 rounded-full text-sm font-semibold">
                      \${facility.type}
                    </span>
                  </div>
                  
                  <div class="space-y-2 text-gray-600">
                    <div class="flex items-center">
                      <i class="fas fa-map-marker-alt text-red-500 mr-2 w-5"></i>
                      <span class="text-sm">\${facility.address}</span>
                    </div>
                    <div class="flex items-center">
                      <i class="fas fa-map-pin text-blue-500 mr-2 w-5"></i>
                      <span class="text-sm font-medium">\${facility.sido} \${facility.sigungu}</span>
                    </div>
                  </div>
                </div>
                
                <div class="text-right">
                  <div class="text-sm text-gray-500 mb-2">ID: \${facility.id}</div>
                </div>
              </div>
              
              <div class="mt-4 pt-4 border-t grid grid-cols-3 gap-2">
                <a 
                  href="/facility/\${facility.id}"
                  class="bg-purple-500 text-white py-2 px-4 rounded-lg hover:bg-purple-600 transition-colors text-sm font-medium text-center"
                >
                  <i class="fas fa-info-circle mr-1"></i>상세보기
                </a>
                <button 
                  onclick="showOnMap(\${facility.lat}, \${facility.lng}, '\${facility.name.replace(/'/g, "\\\\'")}')"
                  class="bg-blue-500 text-white py-2 px-4 rounded-lg hover:bg-blue-600 transition-colors text-sm font-medium"
                >
                  <i class="fas fa-map-marked-alt mr-1"></i>지도
                </button>
                <a 
                  href="tel:0507-1310-5873"
                  class="bg-green-500 text-white py-2 px-4 rounded-lg hover:bg-green-600 transition-colors text-sm font-medium text-center"
                >
                  <i class="fas fa-phone mr-1"></i>상담
                </a>
              </div>
            </div>
          \`).join('');
          
          if (filteredFacilities.length > 100) {
            listEl.innerHTML += \`
              <div class="bg-yellow-50 border-2 border-yellow-300 rounded-xl p-6 text-center">
                <i class="fas fa-info-circle text-yellow-600 text-2xl mb-2"></i>
                <p class="text-gray-700">
                  총 <strong class="text-yellow-700">\${filteredFacilities.length}</strong>개 중 
                  <strong class="text-yellow-700">100</strong>개만 표시됩니다. 
                  더 정확한 검색을 위해 필터를 사용해주세요.
                </p>
              </div>
            \`;
          }
          
          // 지도 마커 업데이트
          updateMapMarkers();
        }

        // 필터 적용
        function applyFilters() {
          const sido = document.getElementById('filterSido').value;
          const sigungu = document.getElementById('filterSigungu').value;
          const type = document.getElementById('filterType').value;
          const keyword = document.getElementById('filterKeyword').value.toLowerCase();
          
          filteredFacilities = allFacilities.filter(facility => {
            if (sido && facility.sido !== sido) return false;
            if (sigungu && facility.sigungu !== sigungu) return false;
            if (type && facility.type !== type) return false;
            if (keyword && !facility.name.toLowerCase().includes(keyword) && !facility.address.toLowerCase().includes(keyword)) return false;
            return true;
          });
          
          displayFacilities();
        }

        // 시도 변경 시 시군구 업데이트
        document.getElementById('filterSido').addEventListener('change', function() {
          const sido = this.value;
          const sigunguSelect = document.getElementById('filterSigungu');
          
          sigunguSelect.innerHTML = '<option value="">전체 시/군/구</option>';
          
          if (sido && sigunguData[sido]) {
            sigunguData[sido].forEach(sigungu => {
              const option = document.createElement('option');
              option.value = sigungu;
              option.textContent = sigungu;
              sigunguSelect.appendChild(option);
            });
          }
          
          applyFilters();
        });

        // 필터 변경 이벤트
        document.getElementById('filterSigungu').addEventListener('change', applyFilters);
        document.getElementById('filterType').addEventListener('change', applyFilters);
        document.getElementById('filterKeyword').addEventListener('input', applyFilters);

        // 필터 초기화
        document.getElementById('resetFilters').addEventListener('click', function() {
          document.getElementById('filterSido').value = '';
          document.getElementById('filterSigungu').innerHTML = '<option value="">전체 시/군/구</option>';
          document.getElementById('filterType').value = '';
          document.getElementById('filterKeyword').value = '';
          filteredFacilities = [...allFacilities];
          displayFacilities();
        });

        // 페이지 로드 시 실행
        loadFacilities();
      `}} />
    </div>
  )
})

// 지역별 전화상담 페이지
// Redirect old URL to new URL
app.get('/regional-consultation', (c) => {
  return c.redirect('/call-consultation', 301)
})

// 관리자 로그인 페이지
app.get('/admin', (c) => {
  if (isAdmin(c)) {
    return c.redirect('/admin/dashboard')
  }
  
  return c.html(
    `<!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>관리자 로그인 - 케어조아</title>
      <link href="/static/tailwind.css" rel="stylesheet">
      <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet">
      <script src="https://cdn.jsdelivr.net/npm/axios@1.6.0/dist/axios.min.js"></script>
    </head>
    <body>
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
      </div>

      <script>
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
            console.error('Login error:', error);
            alert('로그인 중 오류가 발생했습니다.');
          }
        });
      </script>
    </body>
    </html>`
  )
})

// 관리자 시설 관리 페이지
app.get('/admin/facilities', (c) => {
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
            <div class="flex items-center gap-3">
              <a href="/admin/dashboard" class="text-gray-600 hover:text-gray-900 px-4 py-2 rounded-lg hover:bg-gray-100">
                <i class="fas fa-home mr-1"></i>대시보드
              </a>
              <a href="/admin/facilities" class="text-teal-600 bg-teal-50 px-4 py-2 rounded-lg font-semibold">
                <i class="fas fa-building mr-1"></i>시설 관리
              </a>
              <a href="/admin/customers" class="text-gray-600 hover:text-gray-900 px-4 py-2 rounded-lg hover:bg-gray-100">
                <i class="fas fa-users mr-1"></i>일반고객
              </a>
              <button id="logoutBtn" class="bg-red-600 text-white px-4 py-2 rounded-lg hover:bg-red-700">
                <i class="fas fa-sign-out-alt mr-2"></i>로그아웃
              </button>
            </div>
          </div>
        </div>
      </header>

      <div class="max-w-7xl mx-auto px-4 py-8"><div class="bg-white rounded-xl shadow-lg p-6 mb-6">
          <h3 class="text-xl font-bold mb-4 flex items-center">
            <i class="fas fa-search text-purple-600 mr-2"></i>
            시설 검색 및 관리
            <span class="ml-3 text-sm text-gray-500">(총 <span id="totalFacilities">0</span>개 시설)</span>
          </h3>
          <div class="grid grid-cols-1 md:grid-cols-4 gap-4 mb-4">
            <div>
              <label class="block text-sm font-medium text-gray-700 mb-2">시/도</label>
              <select id="adminFilterSido" class="w-full p-3 border-2 border-gray-300 rounded-lg focus:border-purple-500">
                <option value="">전체</option>
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
              <label class="block text-sm font-medium text-gray-700 mb-2">시/군/구</label>
              <select id="adminFilterSigungu" class="w-full p-3 border-2 border-gray-300 rounded-lg focus:border-purple-500">
                <option value="">전체 시/군/구</option>
              </select>
            </div>
            <div>
              <label class="block text-sm font-medium text-gray-700 mb-2">시설 유형</label>
              <select id="adminFilterType" class="w-full p-3 border-2 border-gray-300 rounded-lg focus:border-purple-500">
                <option value="">전체</option>
                <option value="요양병원">요양병원</option>
                <option value="요양원">요양원</option>
                <option value="주야간보호">주야간보호</option>
                <option value="재가복지센터">재가복지센터</option>
              </select>
            </div>
            <div>
              <label class="block text-sm font-medium text-gray-700 mb-2">시설명 검색</label>
              <input type="text" id="adminSearchKeyword" placeholder="시설명 입력" class="w-full p-3 border-2 border-gray-300 rounded-lg focus:border-purple-500"/>
            </div>
          </div>
          <div class="flex gap-3">
            <button id="searchFacilitiesBtn" class="px-6 py-2 bg-purple-600 text-white rounded-lg hover:bg-purple-700 transition-colors">
              <i class="fas fa-search mr-2"></i>검색
            </button>
            <button id="resetFacilitiesBtn" class="px-6 py-2 bg-gray-500 text-white rounded-lg hover:bg-gray-600 transition-colors">
              <i class="fas fa-redo mr-2"></i>초기화
            </button>
          </div>
        </div><div class="bg-white rounded-xl shadow-lg">
          <div class="border-b px-6 py-4 flex justify-between items-center">
            <h3 class="text-xl font-bold flex items-center">
              <i class="fas fa-building text-purple-600 mr-2"></i>
              시설 목록
              <span class="ml-3 text-sm text-gray-500">(<span id="filteredCount">0</span>개 검색됨)</span>
            </h3>
            <button onclick="openAddModal()" class="bg-green-600 text-white px-4 py-2 rounded-lg hover:bg-green-700 transition-colors font-semibold">
              <i class="fas fa-plus mr-2"></i>신규 등록
            </button>
          </div>
          <div class="p-6">
            <div class="overflow-x-auto">
              <table class="w-full">
                <thead class="bg-gray-50">
                  <tr class="border-b">
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">ID</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">시설명</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">유형</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">시/도</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">시/군/구</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">전화번호</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">주소</th>
                    <th class="px-4 py-3 text-center text-sm font-semibold text-gray-600">대표시설</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">관리</th>
                  </tr>
                </thead>
                <tbody id="facilitiesList"></tbody>
              </table>
            </div>
            <div id="loadingFacilities" class="text-center py-12">
              <i class="fas fa-spinner fa-spin text-4xl text-purple-600"></i>
              <p class="text-gray-600 mt-4">시설 데이터를 불러오는 중...</p>
            </div>
          </div>
        </div>
      </div><div id="editModal" class="hidden fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
        <div class="bg-white rounded-xl shadow-2xl max-w-2xl w-full mx-4 max-h-[90vh] overflow-y-auto">
          <div class="border-b px-6 py-4 flex justify-between items-center">
            <h3 class="text-xl font-bold text-gray-900">
              <i class="fas fa-edit text-blue-600 mr-2"></i>
              시설 정보 수정
            </h3>
            <button onclick="closeEditModal()" class="text-gray-400 hover:text-gray-600 text-2xl">
              <i class="fas fa-times"></i>
            </button>
          </div>
          <div class="p-6">
            <form id="editForm" class="space-y-4">
              <input type="hidden" id="editFacilityId" />
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">시설명 *</label>
                <input type="text" id="editName" required class="w-full p-3 border-2 border-gray-300 rounded-lg focus:border-blue-500"/>
              </div>
              
              <div class="grid grid-cols-2 gap-4">
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">유형 *</label>
                  <select id="editType" required class="w-full p-3 border-2 border-gray-300 rounded-lg focus:border-blue-500">
                    <option value="요양병원">요양병원</option>
                    <option value="요양원">요양원</option>
                    <option value="주야간보호">주야간보호</option>
                    <option value="재가복지센터">재가복지센터</option>
                  </select>
                </div>
                
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">전화번호</label>
                  <input type="tel" id="editPhone" placeholder="02-1234-5678" class="w-full p-3 border-2 border-gray-300 rounded-lg focus:border-blue-500"/>
                </div>
              </div>
              
              <div class="grid grid-cols-2 gap-4">
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">시/도 *</label>
                  <select id="editSido" required class="w-full p-3 border-2 border-gray-300 rounded-lg focus:border-blue-500">
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
                  <label class="block text-sm font-medium text-gray-700 mb-2">시/군/구 *</label>
                  <select id="editSigungu" required class="w-full p-3 border-2 border-gray-300 rounded-lg focus:border-blue-500">
                    <option value="">선택하세요</option>
                  </select>
                </div>
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">주소 *</label>
                <textarea id="editAddress" required rows="2" class="w-full p-3 border-2 border-gray-300 rounded-lg focus:border-blue-500"></textarea>
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">우편번호</label>
                <input type="text" id="editZipcode" placeholder="03001" class="w-full p-3 border-2 border-gray-300 rounded-lg focus:border-blue-500"/>
              </div>
              
              <div class="border-t pt-4 mt-4">
                <button type="button" onclick="toggleDetails()" class="text-blue-600 hover:text-blue-800 font-medium">
                  <i id="detailsIcon" class="fas fa-chevron-down mr-2"></i>
                  <span id="detailsText">상세 정보 입력 (전문분야, 입소유형, 비용)</span>
                </button>
              </div>
              
              <div id="detailsSection" class="hidden space-y-4 border-t pt-4 mt-4 bg-gray-50 p-4 rounded-lg">
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-stethoscope text-blue-600 mr-1"></i>
                    전문 진료 분야
                  </label>
                  <div class="grid grid-cols-2 gap-2">
                    <label class="flex items-center space-x-2 p-2 border rounded hover:bg-blue-50 cursor-pointer">
                      <input type="checkbox" name="specialty" value="재활" class="w-4 h-4"/>
                      <span class="text-sm">재활</span>
                    </label>
                    <label class="flex items-center space-x-2 p-2 border rounded hover:bg-blue-50 cursor-pointer">
                      <input type="checkbox" name="specialty" value="치매" class="w-4 h-4"/>
                      <span class="text-sm">치매</span>
                    </label>
                    <label class="flex items-center space-x-2 p-2 border rounded hover:bg-blue-50 cursor-pointer">
                      <input type="checkbox" name="specialty" value="중풍" class="w-4 h-4"/>
                      <span class="text-sm">중풍</span>
                    </label>
                    <label class="flex items-center space-x-2 p-2 border rounded hover:bg-blue-50 cursor-pointer">
                      <input type="checkbox" name="specialty" value="암" class="w-4 h-4"/>
                      <span class="text-sm">암/호스피스</span>
                    </label>
                    <label class="flex items-center space-x-2 p-2 border rounded hover:bg-blue-50 cursor-pointer">
                      <input type="checkbox" name="specialty" value="신장투석" class="w-4 h-4"/>
                      <span class="text-sm">신장투석</span>
                    </label>
                    <label class="flex items-center space-x-2 p-2 border rounded hover:bg-blue-50 cursor-pointer">
                      <input type="checkbox" name="specialty" value="감염관리" class="w-4 h-4"/>
                      <span class="text-sm">감염관리</span>
                    </label>
                    <label class="flex items-center space-x-2 p-2 border rounded hover:bg-blue-50 cursor-pointer">
                      <input type="checkbox" name="specialty" value="당뇨" class="w-4 h-4"/>
                      <span class="text-sm">당뇨</span>
                    </label>
                    <label class="flex items-center space-x-2 p-2 border rounded hover:bg-blue-50 cursor-pointer">
                      <input type="checkbox" name="specialty" value="호흡기" class="w-4 h-4"/>
                      <span class="text-sm">호흡기질환</span>
                    </label>
                  </div>
                </div>
                
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-bed text-blue-600 mr-1"></i>
                    입소 유형
                  </label>
                  <div class="grid grid-cols-2 gap-2">
                    <label class="flex items-center space-x-2 p-2 border rounded hover:bg-blue-50 cursor-pointer">
                      <input type="checkbox" name="admission" value="정규입소" class="w-4 h-4"/>
                      <span class="text-sm">정규입소 (장기)</span>
                    </label>
                    <label class="flex items-center space-x-2 p-2 border rounded hover:bg-blue-50 cursor-pointer">
                      <input type="checkbox" name="admission" value="단기입소" class="w-4 h-4"/>
                      <span class="text-sm">단기입소 (1주~1개월)</span>
                    </label>
                    <label class="flex items-center space-x-2 p-2 border rounded hover:bg-blue-50 cursor-pointer">
                      <input type="checkbox" name="admission" value="야간입소" class="w-4 h-4"/>
                      <span class="text-sm">야간입소</span>
                    </label>
                    <label class="flex items-center space-x-2 p-2 border rounded hover:bg-blue-50 cursor-pointer">
                      <input type="checkbox" name="admission" value="주말입소" class="w-4 h-4"/>
                      <span class="text-sm">주말입소</span>
                    </label>
                    <label class="flex items-center space-x-2 p-2 border rounded hover:bg-blue-50 cursor-pointer">
                      <input type="checkbox" name="admission" value="응급입소" class="w-4 h-4"/>
                      <span class="text-sm">응급입소</span>
                    </label>
                  </div>
                </div>
                
                <div class="grid grid-cols-2 gap-4">
                  <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2">
                      <i class="fas fa-won-sign text-blue-600 mr-1"></i>
                      월 평균 비용 (원)
                    </label>
                    <input type="number" id="editMonthlyCost" placeholder="2500000" class="w-full p-3 border-2 border-gray-300 rounded-lg focus:border-blue-500"/>
                  </div>
                  
                  <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2">
                      <i class="fas fa-credit-card text-blue-600 mr-1"></i>
                      보증금 (원)
                    </label>
                    <input type="number" id="editDeposit" placeholder="1000000" class="w-full p-3 border-2 border-gray-300 rounded-lg focus:border-blue-500"/>
                  </div>
                </div>
                
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-sticky-note text-blue-600 mr-1"></i>
                    특이사항/메모
                  </label>
                  <textarea id="editNotes" rows="3" placeholder="시설의 특징, 주의사항 등을 입력하세요" class="w-full p-3 border-2 border-gray-300 rounded-lg focus:border-blue-500"></textarea>
                </div>
              </div>
              
              <div class="flex gap-3 pt-4">
                <button type="submit" class="flex-1 bg-blue-600 text-white py-3 rounded-lg hover:bg-blue-700 transition-colors font-semibold">
                  <i class="fas fa-save mr-2"></i>저장
                </button>
                <button type="button" onclick="closeEditModal()" class="flex-1 bg-gray-500 text-white py-3 rounded-lg hover:bg-gray-600 transition-colors font-semibold">
                  <i class="fas fa-times mr-2"></i>취소
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>

      <script src="https://cdn.jsdelivr.net/npm/axios@1.6.0/dist/axios.min.js"></script>
      <script dangerouslySetInnerHTML={{
        __html: `
        let allFacilitiesData = [];
        let filteredFacilitiesData = [];
        
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
        
        async function loadFacilities() {
          try {
            // D1 대표시설 정보가 포함된 시설 목록 로드
            const response = await fetch('/api/facilities/with-representative');
            if (response.ok) {
              allFacilitiesData = await response.json();
              console.log('✅ D1 대표시설 정보 포함 시설 데이터 로드 완료');
            } else {
              // API 실패 시 정적 JSON 폴백
              console.log('⚠️ API 실패, 정적 JSON 로드');
              const fallbackResponse = await fetch('/static/facilities.json');
              allFacilitiesData = await fallbackResponse.json();
            }
            
            // 시설 ID를 기준으로 내림차순 정렬 (최신 등록 시설이 상단에 표시)
            allFacilitiesData.sort((a, b) => {
              const idA = parseInt(a.id) || 0;
              const idB = parseInt(b.id) || 0;
              return idB - idA; // 내림차순 (큰 ID가 먼저)
            });
            
            window.allFacilitiesData = allFacilitiesData; // 전역 window 객체에도 저장
            filteredFacilitiesData = [...allFacilitiesData];
            
            console.log('✅ 시설 데이터 로드 완료:', allFacilitiesData.length, '개 (최신순 정렬)');
            console.log('📋 샘플 시설:', allFacilitiesData.slice(0, 3).map(f => ({ id: f.id, name: f.name, isRep: f.isRepresentative })));
            
            document.getElementById('totalFacilities').textContent = allFacilitiesData.length.toLocaleString();
            document.getElementById('loadingFacilities').style.display = 'none';
            displayFacilities();
          } catch (error) {
            console.error('시설 데이터 로딩 오류:', error);
            document.getElementById('loadingFacilities').innerHTML = \`
              <i class="fas fa-exclamation-circle text-4xl text-red-600"></i>
              <p class="text-gray-600 mt-4">데이터를 불러오는데 실패했습니다</p>
            \`;
          }
        }
        
        // 시도 변경 시 시군구 업데이트
        function updateSigunguOptions() {
          const sidoSelect = document.getElementById('adminFilterSido');
          const sigunguSelect = document.getElementById('adminFilterSigungu');
          const selectedSido = sidoSelect.value;
          
          // 시군구 셀렉트 초기화
          sigunguSelect.innerHTML = '<option value="">전체 시/군/구</option>';
          
          if (selectedSido && sigunguData[selectedSido]) {
            sigunguData[selectedSido].forEach(sigungu => {
              const option = document.createElement('option');
              option.value = sigungu;
              option.textContent = sigungu;
              sigunguSelect.appendChild(option);
            });
          }
        }
        
        function displayFacilities() {
          const listEl = document.getElementById('facilitiesList');
          const countEl = document.getElementById('filteredCount');
          
          countEl.textContent = filteredFacilitiesData.length.toLocaleString();
          
          if (filteredFacilitiesData.length === 0) {
            listEl.innerHTML = '<tr><td colspan="9" class="px-4 py-8 text-center text-gray-500">검색 결과가 없습니다</td></tr>';
            return;
          }
          
          // 최대 100개만 표시
          const displayData = filteredFacilitiesData.slice(0, 100);
          
          listEl.innerHTML = displayData.map(f => {
            const phone = f.phone || '-';
            const phoneDisplay = phone === '-' ? '<span class="text-red-500">미등록</span>' : phone;
            const isRepresentative = f.isRepresentative || false;
            const repBadge = isRepresentative ? '<span class="ml-2 px-2 py-1 bg-purple-100 text-purple-700 text-xs rounded-full font-bold"><i class="fas fa-crown mr-1"></i>대표</span>' : '';
            
            return \`
            <tr class="border-t hover:bg-gray-50">
              <td class="px-4 py-3 text-sm text-gray-600">\${f.id}</td>
              <td class="px-4 py-3 font-medium text-gray-900">\${f.name}\${repBadge}</td>
              <td class="px-4 py-3 text-sm">
                <span class="px-2 py-1 bg-blue-100 text-blue-700 rounded text-xs">\${f.type}</span>
              </td>
              <td class="px-4 py-3 text-sm text-gray-600">\${f.sido}</td>
              <td class="px-4 py-3 text-sm text-gray-600">\${f.sigungu}</td>
              <td class="px-4 py-3 text-sm">\${phoneDisplay}</td>
              <td class="px-4 py-3 text-sm text-gray-600 max-w-xs truncate" title="\${f.address}">\${f.address}</td>
              <td class="px-4 py-3 text-center">
                <input type="checkbox" \${isRepresentative ? 'checked' : ''} 
                  onchange="toggleRepresentative('\${f.id}', this.checked, event)"
                  class="w-5 h-5 text-purple-600 border-gray-300 rounded focus:ring-purple-500 cursor-pointer"
                  title="지역별 전화상담에 노출"
                />
              </td>
              <td class="px-4 py-3">
                <div class="flex gap-2">
                  <button onclick="console.log('수정 버튼 클릭:', '\${f.id}'); openEditModal('\${f.id}')" class="px-3 py-1 bg-blue-500 text-white text-xs rounded hover:bg-blue-600 transition-colors">
                    <i class="fas fa-edit"></i> 수정
                  </button>
                  <button onclick="console.log('삭제 버튼 클릭:', '\${f.id}'); deleteFacility('\${f.id}')" class="px-3 py-1 bg-red-500 text-white text-xs rounded hover:bg-red-600 transition-colors">
                    <i class="fas fa-trash"></i> 삭제
                  </button>
                </div>
              </td>
            </tr>
            \`;
          }).join('');
          
          if (filteredFacilitiesData.length > 100) {
            listEl.innerHTML += \`
              <tr>
                <td colspan="9" class="px-4 py-4 text-center bg-yellow-50 text-yellow-800">
                  <i class="fas fa-info-circle mr-2"></i>
                  총 \${filteredFacilitiesData.length.toLocaleString()}개 중 100개만 표시됩니다. 필터를 사용해 결과를 줄여주세요.
                </td>
              </tr>
            \`;
          }
        }
        
        function searchFacilities() {
          const sido = document.getElementById('adminFilterSido').value.trim();
          const sigungu = document.getElementById('adminFilterSigungu').value.trim();
          const type = document.getElementById('adminFilterType').value.trim();
          const keyword = document.getElementById('adminSearchKeyword').value.trim().toLowerCase();
          
          filteredFacilitiesData = allFacilitiesData.filter(f => {
            if (sido && f.sido !== sido) return false;
            if (sigungu && f.sigungu !== sigungu) return false;
            if (type && f.type !== type) return false;
            if (keyword && !f.name.toLowerCase().includes(keyword)) return false;
            return true;
          });
          
          displayFacilities();
        }
        
        function resetFilters() {
          document.getElementById('adminFilterSido').value = '';
          document.getElementById('adminFilterSigungu').value = '';
          document.getElementById('adminFilterType').value = '';
          document.getElementById('adminSearchKeyword').value = '';
          
          // 시군구 옵션 초기화
          document.getElementById('adminFilterSigungu').innerHTML = '<option value="">전체 시/군/구</option>';
          
          filteredFacilitiesData = [...allFacilitiesData];
          displayFacilities();
        }
        
        // 신규 등록 모달 열기
        function openAddModal() {
          // 폼 초기화
          document.getElementById('editForm').reset();
          document.getElementById('editFacilityId').value = '';
          
          // 시군구 초기화
          document.getElementById('editSigungu').innerHTML = '<option value="">선택하세요</option>';
          
          // 모달 제목 변경
          document.querySelector('#editModal h3').innerHTML = '<i class="fas fa-plus text-green-600 mr-2"></i>신규 시설 등록';
          
          // 모달 표시
          document.getElementById('editModal').classList.remove('hidden');
        }
        
        // 수정 모달 열기
        async function openEditModal(id) {
          console.log('🔧 시설 수정 모달 열기:', { id, idType: typeof id });
          // ID 타입을 문자열과 숫자 모두 비교 (유연한 검색)
          const facility = allFacilitiesData.find(f => f.id == id || String(f.id) === String(id));
          if (!facility) {
            console.error('❌ 시설을 찾을 수 없습니다:', id);
            alert('시설 정보를 찾을 수 없습니다.');
            return;
          }
          console.log('✅ 수정할 시설 찾음:', facility.name);
          
          // 모달 제목 변경
          document.querySelector('#editModal h3').innerHTML = '<i class="fas fa-edit text-blue-600 mr-2"></i>시설 정보 수정';
          
          // 폼에 데이터 채우기
          document.getElementById('editFacilityId').value = facility.id;
          document.getElementById('editName').value = facility.name;
          document.getElementById('editType').value = facility.type;
          document.getElementById('editPhone').value = facility.phone || '';
          document.getElementById('editSido').value = facility.sido;
          document.getElementById('editAddress').value = facility.address;
          document.getElementById('editZipcode').value = facility.zipcode || '';
          
          // 시군구 업데이트
          updateEditSigunguOptions();
          document.getElementById('editSigungu').value = facility.sigungu;
          
          // 상세 정보 로드
          try {
            const response = await axios.get(\`/api/admin/facilities/\${facility.id}/details\`);
            if (response.data.success && response.data.details) {
              const details = response.data.details;
              
              // 전문 분야 체크
              document.querySelectorAll('input[name="specialty"]').forEach(cb => {
                cb.checked = details.specialties && details.specialties.includes(cb.value);
              });
              
              // 입소 유형 체크
              document.querySelectorAll('input[name="admission"]').forEach(cb => {
                cb.checked = details.admission_types && details.admission_types.includes(cb.value);
              });
              
              // 비용 정보
              document.getElementById('editMonthlyCost').value = details.monthly_cost || '';
              document.getElementById('editDeposit').value = details.deposit || '';
              document.getElementById('editNotes').value = details.notes || '';
              
              console.log('✅ 상세 정보 로드 완료');
            }
          } catch (error) {
            console.log('⚠️ 상세 정보 없음 (신규 입력 가능)');
          }
          
          // 모달 표시
          document.getElementById('editModal').classList.remove('hidden');
        }
        
        // 상세 정보 섹션 토글
        function toggleDetails() {
          const section = document.getElementById('detailsSection');
          const icon = document.getElementById('detailsIcon');
          const text = document.getElementById('detailsText');
          
          if (section.classList.contains('hidden')) {
            section.classList.remove('hidden');
            icon.classList.remove('fa-chevron-down');
            icon.classList.add('fa-chevron-up');
            text.textContent = '상세 정보 숨기기';
          } else {
            section.classList.add('hidden');
            icon.classList.remove('fa-chevron-up');
            icon.classList.add('fa-chevron-down');
            text.textContent = '상세 정보 입력 (전문분야, 입소유형, 비용)';
          }
        }
        
        // 모달 닫기
        function closeEditModal() {
          document.getElementById('editModal').classList.add('hidden');
          document.getElementById('editForm').reset();
          // 체크박스 초기화
          document.querySelectorAll('input[type="checkbox"]').forEach(cb => cb.checked = false);
          // 상세 정보 섹션 숨기기
          document.getElementById('detailsSection').classList.add('hidden');
          document.getElementById('detailsIcon').classList.remove('fa-chevron-up');
          document.getElementById('detailsIcon').classList.add('fa-chevron-down');
          document.getElementById('detailsText').textContent = '상세 정보 입력 (전문분야, 입소유형, 비용)';
        }
        
        // 편집 시도 변경 시 시군구 업데이트
        function updateEditSigunguOptions() {
          const sidoSelect = document.getElementById('editSido');
          const sigunguSelect = document.getElementById('editSigungu');
          const selectedSido = sidoSelect.value;
          
          sigunguSelect.innerHTML = '<option value="">선택하세요</option>';
          
          if (selectedSido && sigunguData[selectedSido]) {
            sigunguData[selectedSido].forEach(sigungu => {
              const option = document.createElement('option');
              option.value = sigungu;
              option.textContent = sigungu;
              sigunguSelect.appendChild(option);
            });
          }
        }
        
        // 대표시설 토글
        async function toggleRepresentative(id, isChecked, event) {
          console.log('🔄 대표시설 토글 시작:', { id, isChecked, idType: typeof id });
          console.log('📊 전체 시설 수:', allFacilitiesData?.length || 0);
          console.log('📊 allFacilitiesData 존재 여부:', !!allFacilitiesData);
          console.log('📊 window에서 접근:', window.allFacilitiesData?.length);
          
          // 전역 변수에 접근
          const facilities = allFacilitiesData || window.allFacilitiesData || [];
          console.log('📊 사용할 배열 길이:', facilities.length);
          
          // ID 타입을 문자열과 숫자 모두 비교 (유연한 검색)
          const facility = facilities.find(f => {
            const match = f.id == id || String(f.id) === String(id) || Number(f.id) === Number(id);
            if (match) console.log('🎯 매칭된 시설:', f);
            return match;
          });
          
          if (!facility) {
            console.error('❌ 시설을 찾을 수 없습니다:', id);
            console.error('📋 샘플 시설 ID들:', facilities.slice(0, 5).map(f => ({ id: f.id, type: typeof f.id, name: f.name })));
            alert('시설 정보를 찾을 수 없습니다.');
            if (event && event.target) event.target.checked = !isChecked;
            return;
          }
          
          console.log('✅ 시설 찾음:', facility.name);
          
          if (isChecked) {
            // 같은 지역의 다른 대표시설이 있는지 확인
            const existingRep = allFacilitiesData.find(f => 
              f.id !== id && 
              f.sido === facility.sido && 
              f.sigungu === facility.sigungu && 
              f.isRepresentative
            );
            
            if (existingRep) {
              console.log('⚠️ 기존 대표시설 발견:', existingRep.name);
              if (!confirm(\`\${facility.sido} \${facility.sigungu} 지역에 이미 대표시설 "\${existingRep.name}"이(가) 지정되어 있습니다.\\n\\n기존 대표시설을 해제하고 "\${facility.name}"을(를) 새로운 대표시설로 지정하시겠습니까?\`)) {
                console.log('❌ 사용자가 취소함');
                // 체크박스 원복
                if (event && event.target) event.target.checked = false;
                return;
              }
              console.log('✅ 사용자가 확인함, 기존 대표시설 해제');
              // 기존 대표시설 해제
              existingRep.isRepresentative = false;
            }
          }
          
          try {
            console.log('📡 API 호출 시작:', '/api/admin/facility/set-representative');
            const response = await axios.post('/api/admin/facility/set-representative', {
              id: id,
              isRepresentative: isChecked
            });
            
            console.log('✅ API 응답:', response.data);
            
            facility.isRepresentative = isChecked;
            alert(\`✅ \${isChecked ? '대표시설로 지정되었습니다!' : '대표시설 지정이 해제되었습니다!'}\n\n시설명: \${facility.name}\n지역: \${facility.sido} \${facility.sigungu}\`);
            displayFacilities();
          } catch (error) {
            console.error('❌ 대표시설 설정 실패:', error);
            console.error('Error details:', error.response?.data || error.message);
            alert(\`❌ 대표시설 설정 중 오류가 발생했습니다.\n\n오류 내용: \${error.response?.data?.message || error.message}\`);
            // 체크박스 원복
            if (event && event.target) event.target.checked = !isChecked;
          }
        }
        
        // 시설 삭제
        async function deleteFacility(id) {
          console.log('🗑️ 시설 삭제 시작:', { id, idType: typeof id });
          // ID 타입을 문자열과 숫자 모두 비교 (유연한 검색)
          const facility = allFacilitiesData.find(f => f.id == id || String(f.id) === String(id));
          if (!facility) {
            console.error('❌ 시설을 찾을 수 없습니다:', id);
            alert('시설 정보를 찾을 수 없습니다.');
            return;
          }
          console.log('✅ 삭제할 시설 찾음:', facility.name);
          
          if (!confirm(\`"\${facility.name}" 시설을 삭제하시겠습니까?\\n\\n삭제된 데이터는 복구할 수 없습니다.\`)) {
            return;
          }
          
          try {
            await axios.post('/api/admin/facility/delete', { id: id });
            
            // 로컬 데이터에서 제거 (ID 타입 유연하게 비교)
            const index = allFacilitiesData.findIndex(f => f.id == id || String(f.id) === String(id));
            if (index !== -1) {
              allFacilitiesData.splice(index, 1);
              filteredFacilitiesData = filteredFacilitiesData.filter(f => !(f.id == id || String(f.id) === String(id)));
            }
            
            alert('시설이 삭제되었습니다.');
            displayFacilities();
          } catch (error) {
            console.error('삭제 실패:', error);
            alert('삭제 중 오류가 발생했습니다.');
          }
        }
        
        // 편집 폼 제출
        document.getElementById('editForm').addEventListener('submit', async (e) => {
          e.preventDefault();
          
          const id = document.getElementById('editFacilityId').value;
          const isNew = !id || id === '';
          
          const updatedData = {
            id: id,
            name: document.getElementById('editName').value,
            type: document.getElementById('editType').value,
            phone: document.getElementById('editPhone').value,
            sido: document.getElementById('editSido').value,
            sigungu: document.getElementById('editSigungu').value,
            address: document.getElementById('editAddress').value,
            zipcode: document.getElementById('editZipcode').value
          };
          
          // 상세 정보 수집
          const specialties = Array.from(document.querySelectorAll('input[name="specialty"]:checked')).map(cb => cb.value);
          const admissionTypes = Array.from(document.querySelectorAll('input[name="admission"]:checked')).map(cb => cb.value);
          const monthlyCost = parseInt(document.getElementById('editMonthlyCost').value) || 0;
          const deposit = parseInt(document.getElementById('editDeposit').value) || 0;
          const notes = document.getElementById('editNotes').value;
          
          const detailsData = {
            specialties,
            admission_types: admissionTypes,
            monthly_cost: monthlyCost,
            deposit,
            notes
          };
          
          try {
            if (isNew) {
              // 신규 등록
              await axios.post('/api/admin/facility/create', updatedData);
              
              // 로컬 데이터에 추가
              const newId = String(Math.max(...allFacilitiesData.map(f => parseInt(f.id) || 0)) + 1);
              updatedData.id = newId;
              updatedData.lat = 0.0;
              updatedData.lng = 0.0;
              updatedData.isRepresentative = false;
              
              allFacilitiesData.push(updatedData);
              filteredFacilitiesData.push(updatedData);
              
              // 상세 정보 저장
              if (specialties.length > 0 || admissionTypes.length > 0 || monthlyCost > 0) {
                await axios.put(\`/api/admin/facilities/\${newId}/details\`, detailsData);
              }
              
              alert('새로운 시설이 등록되었습니다.');
            } else {
              // 기존 시설 수정
              await axios.post('/api/admin/facility/update', updatedData);
              
              // 로컬 데이터 업데이트
              const facility = allFacilitiesData.find(f => f.id === id);
              if (facility) {
                Object.assign(facility, updatedData);
              }
              
              // 상세 정보 저장
              if (specialties.length > 0 || admissionTypes.length > 0 || monthlyCost > 0 || notes) {
                await axios.put(\`/api/admin/facilities/\${id}/details\`, detailsData);
                console.log('✅ 시설 상세 정보 저장 완료');
              }
              
              alert('시설 정보가 업데이트되었습니다.');
            }
            
            closeEditModal();
            displayFacilities();
          } catch (error) {
            console.error('저장 실패:', error);
            alert('저장 중 오류가 발생했습니다.');
          }
        });
        
        // 편집 모달의 시도 변경 이벤트
        document.getElementById('editSido').addEventListener('change', updateEditSigunguOptions);
        
        // 시도 선택 변경 시 시군구 업데이트
        document.getElementById('adminFilterSido').addEventListener('change', updateSigunguOptions);
        
        document.getElementById('searchFacilitiesBtn').addEventListener('click', searchFacilities);
        document.getElementById('resetFacilitiesBtn').addEventListener('click', resetFilters);
        document.getElementById('adminSearchKeyword').addEventListener('keypress', (e) => {
          if (e.key === 'Enter') searchFacilities();
        });
        
        document.getElementById('logoutBtn').addEventListener('click', async () => {
          try {
            await axios.post('/api/admin/logout');
            window.location.href = '/admin';
          } catch (error) {
            console.error('로그아웃 실패:', error);
          }
        });
        
        loadFacilities();
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
            <div class="flex items-center gap-3">
              <a href="/" class="text-gray-600 hover:text-gray-900 px-4 py-2 rounded-lg hover:bg-gray-100">
                <i class="fas fa-home mr-1"></i>대시보드
              </a>
              <a href="/admin/facilities" class="text-gray-600 hover:text-gray-900 px-4 py-2 rounded-lg hover:bg-gray-100">
                <i class="fas fa-building mr-1"></i>시설 관리
              </a>
              <a href="/admin/customers" class="text-gray-600 hover:text-gray-900 px-4 py-2 rounded-lg hover:bg-gray-100">
                <i class="fas fa-users mr-1"></i>일반고객
              </a>
              <button id="logoutBtn" class="bg-red-600 text-white px-4 py-2 rounded-lg hover:bg-red-700">
                <i class="fas fa-sign-out-alt mr-2"></i>로그아웃
              </button>
            </div>
          </div>
        </div>
      </header>

      <div class="max-w-7xl mx-auto px-4 py-8"><div class="grid md:grid-cols-3 gap-6 mb-8">
          <div class="bg-white rounded-xl shadow-lg p-6 border-l-4 border-blue-500">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-500 text-sm mb-1">파트너 신청</p>
                <p class="text-3xl font-bold text-gray-900" id="partnerCount">0</p>
              </div>
              <div class="bg-blue-100 p-4 rounded-full">
                <i class="fas fa-handshake text-3xl text-blue-600"></i>
              </div>
            </div>
          </div>

          <div class="bg-white rounded-xl shadow-lg p-6 border-l-4 border-green-500">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-500 text-sm mb-1">가족 간병 신청</p>
                <p class="text-3xl font-bold text-gray-900" id="familyCareCount">0</p>
              </div>
              <div class="bg-green-100 p-4 rounded-full">
                <i class="fas fa-heart text-3xl text-green-600"></i>
              </div>
            </div>
          </div>
          
          <div class="bg-white rounded-xl shadow-lg p-6 border-l-4 border-purple-500">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-500 text-sm mb-1">견적 요청</p>
                <p class="text-3xl font-bold text-gray-900" id="quoteRequestsCount">0</p>
                <p class="text-xs text-gray-500 mt-1">
                  <span id="quoteResponseRate">0%</span> 응답률
                </p>
              </div>
              <div class="bg-purple-100 p-4 rounded-full">
                <i class="fas fa-file-invoice text-3xl text-purple-600"></i>
              </div>
            </div>
          </div>
          
          {/* 피드백 대시보드 섹션 */}
          <div class="bg-white rounded-xl shadow-lg p-6 mb-8">
            <h3 class="text-xl font-bold mb-6 flex items-center">
              <i class="fas fa-chart-line text-indigo-600 mr-2"></i>
              피드백 및 매칭 성능 분석
            </h3>
            
            <div class="grid md:grid-cols-3 gap-6 mb-6">
              <div class="bg-gradient-to-br from-blue-50 to-blue-100 rounded-lg p-4 border border-blue-200">
                <div class="flex items-center justify-between">
                  <div>
                    <p class="text-blue-600 text-sm mb-1">총 피드백</p>
                    <p class="text-2xl font-bold text-blue-900" id="totalFeedback">0</p>
                  </div>
                  <i class="fas fa-comments text-3xl text-blue-500"></i>
                </div>
              </div>
              
              <div class="bg-gradient-to-br from-green-50 to-green-100 rounded-lg p-4 border border-green-200">
                <div class="flex items-center justify-between">
                  <div>
                    <p class="text-green-600 text-sm mb-1">평균 평점</p>
                    <p class="text-2xl font-bold text-green-900" id="avgRating">0</p>
                  </div>
                  <i class="fas fa-star text-3xl text-green-500"></i>
                </div>
              </div>
              
              <div class="bg-gradient-to-br from-purple-50 to-purple-100 rounded-lg p-4 border border-purple-200">
                <div class="flex items-center justify-between">
                  <div>
                    <p class="text-purple-600 text-sm mb-1">평균 매칭 결과</p>
                    <p class="text-2xl font-bold text-purple-900" id="avgResults">0</p>
                  </div>
                  <i class="fas fa-search-plus text-3xl text-purple-500"></i>
                </div>
              </div>
            </div>
            
            <div class="bg-gray-50 rounded-lg p-4 mb-6">
              <h4 class="font-bold text-gray-700 mb-3">최근 7일 피드백 추이</h4>
              <canvas id="feedbackChart" height="80"></canvas>
            </div>
            
            <div>
              <h4 class="font-bold text-gray-700 mb-3">최근 피드백</h4>
              <div class="overflow-x-auto">
                <table class="w-full">
                  <thead class="bg-gray-100">
                    <tr>
                      <th class="px-4 py-2 text-left text-sm font-semibold text-gray-600">날짜</th>
                      <th class="px-4 py-2 text-left text-sm font-semibold text-gray-600">사용자</th>
                      <th class="px-4 py-2 text-left text-sm font-semibold text-gray-600">평점</th>
                      <th class="px-4 py-2 text-left text-sm font-semibold text-gray-600">결과 수</th>
                      <th class="px-4 py-2 text-left text-sm font-semibold text-gray-600">코멘트</th>
                    </tr>
                  </thead>
                  <tbody id="recentFeedbackList" class="divide-y divide-gray-200">
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div><div class="bg-gradient-to-r from-purple-50 to-pink-50 rounded-xl shadow-lg p-6 mb-8 border-2 border-purple-200">
          <h3 class="text-xl font-bold text-purple-800 mb-4 flex items-center">
            <i class="fas fa-user-shield mr-2"></i>
            테스트 계정 정보
            <span class="ml-3 text-sm text-purple-600 font-normal">(개발/테스트 전용)</span>
          </h3>
          
          <div class="grid md:grid-cols-2 gap-6"><div class="bg-white rounded-lg p-4 border border-purple-200">
              <h4 class="font-bold text-gray-800 mb-3 flex items-center">
                <i class="fas fa-user text-blue-600 mr-2"></i>
                고객 계정
              </h4>
              <div class="space-y-2 text-sm">
                <div class="flex justify-between items-center p-2 bg-blue-50 rounded">
                  <span class="text-gray-600">이메일:</span>
                  <code class="font-mono text-blue-700">customer@test.com</code>
                </div>
                <div class="flex justify-between items-center p-2 bg-blue-50 rounded">
                  <span class="text-gray-600">비밀번호:</span>
                  <code class="font-mono text-blue-700">1234</code>
                </div>
                <div class="flex justify-between items-center p-2 bg-gray-50 rounded">
                  <span class="text-gray-600">이름:</span>
                  <span class="text-gray-800">김철수</span>
                </div>
              </div>
            </div><div class="bg-white rounded-lg p-4 border border-purple-200">
              <h4 class="font-bold text-gray-800 mb-3 flex items-center">
                <i class="fas fa-building text-teal-600 mr-2"></i>
                시설 계정
              </h4>
              <div class="space-y-3 text-xs">
                <div class="p-2 bg-teal-50 rounded">
                  <div class="font-semibold text-teal-800 mb-1">요양병원 (서울요양병원)</div>
                  <div class="flex justify-between">
                    <code class="text-teal-700">hospital@test.com</code>
                    <code class="text-teal-700">/ 1234</code>
                  </div>
                </div>
                <div class="p-2 bg-teal-50 rounded">
                  <div class="font-semibold text-teal-800 mb-1">요양원 (행복요양원)</div>
                  <div class="flex justify-between">
                    <code class="text-teal-700">care@test.com</code>
                    <code class="text-teal-700">/ 1234</code>
                  </div>
                </div>
                <div class="p-2 bg-teal-50 rounded">
                  <div class="font-semibold text-teal-800 mb-1">주야간보호 (사랑주야간보호센터)</div>
                  <div class="flex justify-between">
                    <code class="text-teal-700">daycare@test.com</code>
                    <code class="text-teal-700">/ 1234</code>
                  </div>
                </div>
                <div class="p-2 bg-teal-50 rounded">
                  <div class="font-semibold text-teal-800 mb-1">재가복지센터 (편안한재가복지센터)</div>
                  <div class="flex justify-between">
                    <code class="text-teal-700">homecare@test.com</code>
                    <code class="text-teal-700">/ 1234</code>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="mt-4 p-3 bg-yellow-50 border border-yellow-200 rounded-lg">
            <p class="text-sm text-yellow-800 flex items-start">
              <i class="fas fa-exclamation-triangle mr-2 mt-0.5"></i>
              <span><strong>주의:</strong> 이 계정들은 테스트/개발 목적으로만 사용하세요. 프로덕션 환경에서는 삭제하거나 비활성화해야 합니다.</span>
            </p>
          </div>
        </div><div class="bg-white rounded-xl shadow-lg mb-6">
          <div class="border-b px-6 py-4">
            <h3 class="text-xl font-bold flex items-center">
              <i class="fas fa-handshake text-blue-600 mr-2"></i>
              파트너 신청 목록
              <span class="ml-3 text-sm text-gray-500">(지역별 요양시설 상담센터 신청관리)</span>
            </h3>
          </div>
          <div class="p-6">
            <div class="overflow-x-auto">
              <table class="w-full">
                <thead class="bg-gray-50">
                  <tr class="border-b">
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">순번</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">시설명</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">유형</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">시설 주소</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">담당자</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">연락처</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">지역 설정</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">상태</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">신청일</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">관리</th>
                  </tr>
                </thead>
                <tbody id="partnerList"></tbody>
              </table>
            </div>
          </div>
        </div><div class="bg-white rounded-xl shadow-lg mb-6">
          <div class="border-b px-6 py-4">
            <h3 class="text-xl font-bold flex items-center">
              <i class="fas fa-file-invoice text-purple-600 mr-2"></i>
              견적서 수발신 모니터링
              <span class="ml-3 text-sm text-gray-500">(전체 견적 요청 및 응답 현황)</span>
            </h3>
          </div>
          <div class="p-6"><div class="mb-4 flex gap-3 flex-wrap">
              <select id="filterStatus" class="border rounded-lg px-3 py-2 text-sm">
                <option value="">전체 상태</option>
                <option value="pending">대기중</option>
                <option value="received">견적 받음</option>
                <option value="completed">완료</option>
              </select>
              <select id="filterFacilityType" class="border rounded-lg px-3 py-2 text-sm">
                <option value="">전체 시설유형</option>
                <option value="요양병원">요양병원</option>
                <option value="요양원">요양원</option>
                <option value="주야간보호센터">주야간보호센터</option>
                <option value="재가센터">재가센터</option>
              </select>
              <button onclick="filterQuotes()" class="bg-blue-500 text-white px-4 py-2 rounded-lg hover:bg-blue-600 text-sm">
                <i class="fas fa-filter mr-1"></i>필터 적용
              </button>
              <button onclick="resetQuoteFilters()" class="bg-gray-500 text-white px-4 py-2 rounded-lg hover:bg-gray-600 text-sm">
                <i class="fas fa-redo mr-1"></i>초기화
              </button>
            </div>
            
            <div class="overflow-x-auto">
              <table class="w-full">
                <thead class="bg-gray-50">
                  <tr class="border-b">
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">순번</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">견적ID</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">신청자</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">환자명</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">시설유형</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">지역</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">응답수</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">상태</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">요청일시</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">관리</th>
                  </tr>
                </thead>
                <tbody id="quoteMonitoringList"></tbody>
              </table>
            </div>
          </div>
        </div><div class="bg-white rounded-xl shadow-lg mb-6">
          <div class="border-b px-6 py-4">
            <h3 class="text-xl font-bold flex items-center">
              <i class="fas fa-crown text-purple-600 mr-2"></i>
              대표시설 신청 관리
              <span class="ml-3 text-sm text-gray-500">(지역별 대표시설 신청 내역)</span>
            </h3>
          </div>
          <div class="p-6">
            <div class="overflow-x-auto">
              <table class="w-full">
                <thead class="bg-gray-50">
                  <tr class="border-b">
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">순번</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">시설명</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">시설유형</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">신청지역</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">담당자</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">연락처</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">상태</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">신청일</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">관리</th>
                  </tr>
                </thead>
                <tbody id="representativeApplicationsList"></tbody>
              </table>
            </div>
          </div>
        </div><div class="bg-white rounded-xl shadow-lg">
          <div class="border-b px-6 py-4">
            <h3 class="text-xl font-bold flex items-center">
              <i class="fas fa-heart text-green-600 mr-2"></i>
              가족 간병 신청 목록
            </h3>
          </div>
          <div class="p-6">
            <div class="overflow-x-auto">
              <table class="w-full">
                <thead class="bg-gray-50">
                  <tr class="border-b">
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">보호자</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">연락처</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">환자명</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">나이</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">지역</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">요청사항</th>
                    <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">신청일</th>
                  </tr>
                </thead>
                <tbody id="familyCareList"></tbody>
              </table>
            </div>
          </div>
        </div>
      </div>

      <script src="https://cdn.jsdelivr.net/npm/axios@1.6.0/dist/axios.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.0/dist/chart.umd.min.js"></script>
      <script dangerouslySetInnerHTML={{
        __html: `
        async function loadData() {
          try {
            const response = await axios.get('/api/admin/data');
            const { partners, familyCare, quoteRequests } = response.data;
            
            document.getElementById('partnerCount').textContent = partners.length;
            document.getElementById('familyCareCount').textContent = familyCare.length;
            document.getElementById('quoteRequestsCount').textContent = quoteRequests ? quoteRequests.length : 0;
            
            // 대표시설 신청 목록 로드
            await loadRepresentativeApplications();
            
            // 견적서 모니터링 로드
            await loadQuoteMonitoring();
            
            // 피드백 분석 로드
            await loadFeedbackAnalytics();
            
            const partnerList = document.getElementById('partnerList');
            partnerList.innerHTML = partners.map((p, index) => {
              const status = p.approvalStatus || 'pending';
              const statusText = status === 'approved' ? '승인됨' : status === 'rejected' ? '거부됨' : '대기중';
              const statusColor = status === 'approved' ? 'bg-green-100 text-green-700' : status === 'rejected' ? 'bg-red-100 text-red-700' : 'bg-yellow-100 text-yellow-700';
              const fullAddress = [p.facilitySido, p.facilitySigungu, p.facilityDetailAddress].filter(Boolean).join(' ') || '-';
              const location = p.facilitySido && p.facilitySigungu ? \`\${p.facilitySido} \${p.facilitySigungu}\` : '-';
              const createdDate = p.createdAt ? new Date(p.createdAt).toLocaleDateString('ko-KR', { year: 'numeric', month: '2-digit', day: '2-digit' }) : '-';
              const isRepresentative = p.isRepresentative || false;
              const repBadge = isRepresentative ? '<span class="ml-2 px-2 py-1 bg-purple-100 text-purple-700 text-xs rounded-full font-bold"><i class="fas fa-crown mr-1"></i>대표샵</span>' : '';
              
              return \`
              <tr class="border-t hover:bg-gray-50">
                <td class="px-4 py-3 text-center text-gray-700">\${index + 1}</td>
                <td class="px-4 py-3 font-medium text-gray-900">\${p.facilityName}\${repBadge}</td>
                <td class="px-4 py-3 text-sm text-gray-600">\${p.facilityType}</td>
                <td class="px-4 py-3 text-sm text-gray-600">\${fullAddress}</td>
                <td class="px-4 py-3 text-gray-700">\${p.managerName}</td>
                <td class="px-4 py-3 text-gray-700">\${p.managerPhone}</td>
                <td class="px-4 py-3 text-sm text-gray-600">\${location}</td>
                <td class="px-4 py-3">
                  <span class="inline-flex px-3 py-1 rounded-full text-xs font-semibold \${statusColor}">
                    \${statusText}
                  </span>
                </td>
                <td class="px-4 py-3 text-sm text-gray-600">\${createdDate}</td>
                <td class="px-4 py-3">
                  <div class="flex gap-2 flex-wrap">
                    \${status === 'pending' ? \`
                      <button onclick="approvePartner(\${index})" class="px-3 py-1 bg-green-500 text-white text-xs rounded hover:bg-green-600 transition-colors">
                        <i class="fas fa-check"></i> 승인
                      </button>
                      <button onclick="rejectPartner(\${index})" class="px-3 py-1 bg-red-500 text-white text-xs rounded hover:bg-red-600 transition-colors">
                        <i class="fas fa-times"></i> 거부
                      </button>
                    \` : ''}
                    \${status === 'approved' ? \`
                      <button onclick="setRepresentative(\${index})" class="px-3 py-1 \${isRepresentative ? 'bg-gray-400' : 'bg-purple-500'} text-white text-xs rounded hover:bg-purple-600 transition-colors" title="\${isRepresentative ? '대표샵 해제' : '지역 대표샵으로 지정'}">
                        <i class="fas fa-crown"></i> \${isRepresentative ? '대표해제' : '대표지정'}
                      </button>
                    \` : ''}
                  </div>
                </td>
              </tr>
              \`;
            }).join('') || '<tr><td colspan="10" class="px-4 py-8 text-center text-gray-500">신청 내역이 없습니다</td></tr>';
            
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
        
        async function approvePartner(index) {
          try {
            await axios.post('/api/admin/partner/approve', { index });
            alert('승인되었습니다.');
            loadData();
          } catch (error) {
            console.error('승인 실패:', error);
            alert('승인 처리 중 오류가 발생했습니다.');
          }
        }
        
        async function rejectPartner(index) {
          const reason = prompt('거부 사유를 입력하세요:');
          if (!reason) return;
          
          try {
            await axios.post('/api/admin/partner/reject', { index, reason });
            alert('거부되었습니다.');
            loadData();
          } catch (error) {
            console.error('거부 실패:', error);
            alert('거부 처리 중 오류가 발생했습니다.');
          }
        }
        
        async function setRepresentative(index) {
          try {
            const response = await axios.get('/api/admin/data');
            const partner = response.data.partners[index];
            const isCurrentlyRep = partner.isRepresentative || false;
            
            const confirmMsg = isCurrentlyRep 
              ? \`"\${partner.facilityName}"의 대표샵 지정을 해제하시겠습니까?\`
              : \`"\${partner.facilityName}"을(를) \${partner.facilitySido} \${partner.facilitySigungu} 지역의 대표 상담센터로 지정하시겠습니까?\n\n대표샵으로 지정되면 해당 지역 전화상담 시 최우선으로 노출됩니다.\`;
            
            if (!confirm(confirmMsg)) return;
            
            await axios.post('/api/admin/partner/set-representative', { 
              index, 
              isRepresentative: !isCurrentlyRep 
            });
            
            alert(isCurrentlyRep ? '대표샵 지정이 해제되었습니다.' : '대표샵으로 지정되었습니다.');
            loadData();
          } catch (error) {
            console.error('대표샵 설정 실패:', error);
            alert('대표샵 설정 중 오류가 발생했습니다.');
          }
        }
        
        // 피드백 분석 로드
        let feedbackChart = null;
        
        async function loadFeedbackAnalytics() {
          try {
            const response = await axios.get('/api/admin/feedback/analytics');
            const { analytics } = response.data;
            
            if (!analytics) return;
            
            // 통계 업데이트
            document.getElementById('totalFeedback').textContent = analytics.overall.total_feedback || 0;
            document.getElementById('avgRating').textContent = (analytics.overall.avg_rating || 0).toFixed(1);
            document.getElementById('avgResults').textContent = (analytics.matching.avg_results || 0).toFixed(1);
            
            // 차트 생성
            const ctx = document.getElementById('feedbackChart');
            if (ctx && typeof Chart !== 'undefined') {
              const chartData = {
                labels: analytics.trend.map(t => new Date(t.date).toLocaleDateString('ko-KR', { month: 'short', day: 'numeric' })),
                datasets: [
                  {
                    label: '피드백 수',
                    data: analytics.trend.map(t => t.count),
                    backgroundColor: 'rgba(99, 102, 241, 0.5)',
                    borderColor: 'rgb(99, 102, 241)',
                    borderWidth: 2,
                    yAxisID: 'y'
                  },
                  {
                    label: '평균 평점',
                    data: analytics.trend.map(t => t.avg_rating),
                    backgroundColor: 'rgba(34, 197, 94, 0.5)',
                    borderColor: 'rgb(34, 197, 94)',
                    borderWidth: 2,
                    yAxisID: 'y1'
                  }
                ]
              };
              
              if (feedbackChart) {
                feedbackChart.destroy();
              }
              
              feedbackChart = new Chart(ctx, {
                type: 'bar',
                data: chartData,
                options: {
                  responsive: true,
                  maintainAspectRatio: true,
                  interaction: {
                    mode: 'index',
                    intersect: false
                  },
                  scales: {
                    y: {
                      type: 'linear',
                      display: true,
                      position: 'left',
                      title: {
                        display: true,
                        text: '피드백 수'
                      }
                    },
                    y1: {
                      type: 'linear',
                      display: true,
                      position: 'right',
                      title: {
                        display: true,
                        text: '평균 평점'
                      },
                      grid: {
                        drawOnChartArea: false
                      },
                      min: 0,
                      max: 5
                    }
                  }
                }
              });
            }
            
            // 최근 피드백 목록
            const recentList = document.getElementById('recentFeedbackList');
            if (recentList && analytics.recent) {
              recentList.innerHTML = analytics.recent.map(f => {
                const date = new Date(f.created_at).toLocaleDateString('ko-KR', { 
                  year: 'numeric', 
                  month: '2-digit', 
                  day: '2-digit',
                  hour: '2-digit',
                  minute: '2-digit'
                });
                const stars = '⭐'.repeat(Math.round(f.rating || 0));
                
                return \`
                  <tr>
                    <td class="px-4 py-2 text-sm text-gray-600">\${date}</td>
                    <td class="px-4 py-2 text-sm text-gray-700">\${f.user_id || '익명'}</td>
                    <td class="px-4 py-2 text-sm">\${stars} \${(f.rating || 0).toFixed(1)}</td>
                    <td class="px-4 py-2 text-sm text-gray-600">\${f.result_count || 0}개</td>
                    <td class="px-4 py-2 text-sm text-gray-600">\${f.comment || '-'}</td>
                  </tr>
                \`;
              }).join('');
            }
          } catch (error) {
            console.error('피드백 분석 로드 실패:', error);
          }
        }
        
        // 대표시설 신청 목록 로드
        async function loadRepresentativeApplications() {
          try {
            const response = await axios.get('/api/admin/representative-applications');
            if (!response.data.success) {
              throw new Error(response.data.message || '신청 내역 로드 실패');
            }
            
            const applications = response.data.data || [];
            const list = document.getElementById('representativeApplicationsList');
            
            if (applications.length === 0) {
              list.innerHTML = '<tr><td colspan="9" class="px-4 py-8 text-center text-gray-500">대표시설 신청 내역이 없습니다</td></tr>';
              return;
            }
            
            list.innerHTML = applications.map((app, index) => {
              const status = app.status || 'pending';
              const statusText = status === 'approved' ? '승인' : status === 'rejected' ? '거부' : '대기중';
              const statusColor = status === 'approved' ? 'bg-green-100 text-green-700' : 
                                status === 'rejected' ? 'bg-red-100 text-red-700' : 
                                'bg-yellow-100 text-yellow-700';
              
              const region = app.region_sido && app.region_sigungu 
                ? \`\${app.region_sido} \${app.region_sigungu}\` 
                : '-';
              
              const createdDate = app.created_at 
                ? new Date(app.created_at).toLocaleDateString('ko-KR', { 
                    year: 'numeric', 
                    month: '2-digit', 
                    day: '2-digit' 
                  })
                : '-';
              
              return \`
              <tr class="border-t hover:bg-gray-50">
                <td class="px-4 py-3 text-center text-gray-700">\${index + 1}</td>
                <td class="px-4 py-3 font-medium text-gray-900">\${app.facility_name || '-'}</td>
                <td class="px-4 py-3 text-sm text-gray-600">\${app.facility_type || '-'}</td>
                <td class="px-4 py-3 text-sm text-gray-600">\${region}</td>
                <td class="px-4 py-3 text-gray-700">\${app.contact_name || '-'}</td>
                <td class="px-4 py-3 text-gray-700">\${app.contact_phone || '-'}</td>
                <td class="px-4 py-3">
                  <span class="inline-flex px-3 py-1 rounded-full text-xs font-semibold \${statusColor}">
                    \${statusText}
                  </span>
                </td>
                <td class="px-4 py-3 text-sm text-gray-600">\${createdDate}</td>
                <td class="px-4 py-3">
                  <div class="flex gap-2 flex-wrap">
                    \${status === 'pending' ? \`
                      <button onclick="approveRepresentativeApplication(\${app.id})" 
                        class="px-3 py-1 bg-green-500 text-white text-xs rounded hover:bg-green-600 transition-colors">
                        <i class="fas fa-check"></i> 승인
                      </button>
                      <button onclick="rejectRepresentativeApplication(\${app.id})" 
                        class="px-3 py-1 bg-red-500 text-white text-xs rounded hover:bg-red-600 transition-colors">
                        <i class="fas fa-times"></i> 거부
                      </button>
                    \` : \`
                      <span class="text-xs text-gray-500">
                        \${status === 'approved' ? '✓ 승인됨' : '✗ 거부됨'}
                      </span>
                    \`}
                  </div>
                </td>
              </tr>
              \`;
            }).join('');
          } catch (error) {
            console.error('대표시설 신청 목록 로드 실패:', error);
            const list = document.getElementById('representativeApplicationsList');
            list.innerHTML = '<tr><td colspan="9" class="px-4 py-8 text-center text-red-500">데이터 로드 실패</td></tr>';
          }
        }
        
        // 대표시설 신청 승인
        async function approveRepresentativeApplication(applicationId) {
          if (!confirm('이 대표시설 신청을 승인하시겠습니까?')) return;
          
          try {
            const response = await axios.post('/api/admin/representative-applications/approve', { 
              application_id: applicationId 
            });
            
            if (response.data.success) {
              alert('대표시설 신청이 승인되었습니다.');
              await loadRepresentativeApplications();
            } else {
              alert(response.data.message || '승인 실패');
            }
          } catch (error) {
            console.error('승인 처리 실패:', error);
            alert('승인 처리 중 오류가 발생했습니다.');
          }
        }
        
        // 대표시설 신청 거부
        async function rejectRepresentativeApplication(applicationId) {
          const reason = prompt('거부 사유를 입력하세요:');
          if (!reason || reason.trim() === '') {
            alert('거부 사유를 입력해주세요.');
            return;
          }
          
          try {
            const response = await axios.post('/api/admin/representative-applications/reject', { 
              application_id: applicationId,
              rejection_reason: reason.trim()
            });
            
            if (response.data.success) {
              alert('대표시설 신청이 거부되었습니다.');
              await loadRepresentativeApplications();
            } else {
              alert(response.data.message || '거부 실패');
            }
          } catch (error) {
            console.error('거부 처리 실패:', error);
            alert('거부 처리 중 오류가 발생했습니다.');
          }
        }
        
        // 견적서 모니터링 로드
        let allQuotes = [];
        
        async function loadQuoteMonitoring() {
          try {
            console.log('📡 견적 모니터링 데이터 로드 시작...');
            const response = await axios.get('/api/admin/quote-monitoring');
            console.log('📥 API 응답:', response.data);
            
            if (!response.data.success) {
              throw new Error(response.data.message || '데이터 로드 실패');
            }
            
            allQuotes = response.data.data || [];
            console.log('✅ 견적 데이터:', allQuotes.length, '개');
            console.log('📋 샘플 데이터:', allQuotes.slice(0, 3).map(q => ({
              quote_id: q.quote_id,
              applicant_name: q.applicant_name,
              response_count: q.response_count
            })));
            
            // 통계 업데이트
            document.getElementById('quoteRequestsCount').textContent = allQuotes.length;
            
            const totalResponses = allQuotes.reduce((sum, q) => sum + (q.response_count || 0), 0);
            const responseRate = allQuotes.length > 0 
              ? Math.round((allQuotes.filter(q => q.response_count > 0).length / allQuotes.length) * 100)
              : 0;
            document.getElementById('quoteResponseRate').textContent = \`\${responseRate}%\`;
            console.log('📊 응답률:', responseRate, '%', '(총 응답:', totalResponses, '개)');
            
            renderQuotes(allQuotes);
          } catch (error) {
            console.error('❌ 견적서 모니터링 로드 실패:', error);
            document.getElementById('quoteMonitoringList').innerHTML = 
              '<tr><td colspan="9" class="px-4 py-8 text-center text-red-500">데이터 로드 실패: ' + error.message + '</td></tr>';
          }
        }
        
        function renderQuotes(quotes) {
          const list = document.getElementById('quoteMonitoringList');
          
          if (quotes.length === 0) {
            list.innerHTML = '<tr><td colspan="10" class="px-4 py-8 text-center text-gray-500">견적 요청 내역이 없습니다</td></tr>';
            return;
          }
          
          list.innerHTML = quotes.map((quote, index) => {
            const status = quote.request_status || 'pending';
            const statusText = status === 'completed' ? '완료' : 
                             status === 'received' ? '견적 받음' : 
                             '대기중';
            const statusColor = status === 'completed' ? 'bg-green-100 text-green-700' : 
                              status === 'received' ? 'bg-blue-100 text-blue-700' : 
                              'bg-yellow-100 text-yellow-700';
            
            const region = quote.sido && quote.sigungu ? \`\${quote.sido} \${quote.sigungu}\` : '-';
            const responseCount = quote.response_count || 0;
            const responseColor = responseCount > 0 ? 'text-green-600 font-bold' : 'text-gray-400';
            
            const requestedDate = quote.requested_at 
              ? new Date(quote.requested_at).toLocaleString('ko-KR', {
                  year: 'numeric',
                  month: '2-digit',
                  day: '2-digit',
                  hour: '2-digit',
                  minute: '2-digit'
                })
              : '-';
            
            return \`
            <tr class="border-t hover:bg-gray-50">
              <td class="px-4 py-3 text-center text-gray-700">\${index + 1}</td>
              <td class="px-4 py-3 font-mono text-sm text-gray-600">\${quote.quote_id || '-'}</td>
              <td class="px-4 py-3 text-gray-900">\${quote.applicant_name || '-'}</td>
              <td class="px-4 py-3 text-gray-700">\${quote.patient_name || '-'}</td>
              <td class="px-4 py-3 text-sm text-gray-600">\${quote.facility_type || '-'}</td>
              <td class="px-4 py-3 text-sm text-gray-600">\${region}</td>
              <td class="px-4 py-3 text-center">
                <span class="\${responseColor}">\${responseCount}개</span>
              </td>
              <td class="px-4 py-3">
                <span class="inline-flex px-3 py-1 rounded-full text-xs font-semibold \${statusColor}">
                  \${statusText}
                </span>
              </td>
              <td class="px-4 py-3 text-sm text-gray-600">\${requestedDate}</td>
              <td class="px-4 py-3 text-center">
                <a href="/admin/quote-detail/\${quote.quote_id}" 
                   class="inline-flex items-center px-3 py-1 bg-blue-500 text-white rounded-lg hover:bg-blue-600 text-sm">
                  <i class="fas fa-eye mr-1"></i>상세
                </a>
              </td>
            </tr>
            \`;
          }).join('');
        }
        
        function filterQuotes() {
          const statusFilter = document.getElementById('filterStatus').value;
          const typeFilter = document.getElementById('filterFacilityType').value;
          
          let filtered = allQuotes;
          
          if (statusFilter) {
            filtered = filtered.filter(q => q.request_status === statusFilter);
          }
          
          if (typeFilter) {
            filtered = filtered.filter(q => q.facility_type === typeFilter);
          }
          
          renderQuotes(filtered);
        }
        
        function resetQuoteFilters() {
          document.getElementById('filterStatus').value = '';
          document.getElementById('filterFacilityType').value = '';
          renderQuotes(allQuotes);
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

// 관리자 견적 상세 페이지
app.get('/admin/quote-detail/:quoteId', async (c) => {
  if (!isAdmin(c)) {
    return c.redirect('/admin')
  }
  
  const quoteId = c.req.param('quoteId')
  
  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>견적 상세 - 관리자</title>
      <link href="/static/tailwind.css" rel="stylesheet">
      <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet">
      <script src="https://cdn.jsdelivr.net/npm/axios@1.6.0/dist/axios.min.js"></script>
    </head>
    <body class="bg-gray-100">
      <header class="bg-white shadow-sm border-b">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div class="flex justify-between items-center h-16">
            <div class="flex items-center">
              <i class="fas fa-shield-alt text-2xl text-gray-900 mr-3"></i>
              <h1 class="text-2xl font-bold text-gray-900">케어조아 관리자</h1>
            </div>
            <div class="flex items-center gap-3">
              <a href="/admin/dashboard" class="text-gray-600 hover:text-gray-900 px-4 py-2 rounded-lg hover:bg-gray-100">
                <i class="fas fa-arrow-left mr-1"></i>돌아가기
              </a>
            </div>
          </div>
        </div>
      </header>

      <div class="max-w-7xl mx-auto px-4 py-8">
        <div id="loadingMessage" class="text-center py-12">
          <i class="fas fa-spinner fa-spin text-4xl text-gray-400 mb-4"></i>
          <p class="text-gray-600">견적 정보를 불러오는 중...</p>
        </div>

        <div id="quoteDetailContent" style="display: none;">
          <!-- 견적 기본 정보 -->
          <div class="bg-white rounded-xl shadow-lg p-6 mb-6">
            <h2 class="text-2xl font-bold text-gray-900 mb-6 flex items-center">
              <i class="fas fa-file-invoice text-purple-600 mr-3"></i>
              견적 기본 정보
            </h2>
            <div class="grid md:grid-cols-2 gap-6">
              <div class="space-y-4">
                <div class="flex items-start">
                  <span class="text-gray-600 font-semibold w-32">견적 ID:</span>
                  <span id="quoteId" class="text-gray-900 font-mono"></span>
                </div>
                <div class="flex items-start">
                  <span class="text-gray-600 font-semibold w-32">신청자:</span>
                  <span id="applicantName" class="text-gray-900"></span>
                </div>
                <div class="flex items-start">
                  <span class="text-gray-600 font-semibold w-32">연락처:</span>
                  <span id="applicantPhone" class="text-gray-900"></span>
                </div>
                <div class="flex items-start">
                  <span class="text-gray-600 font-semibold w-32">요청일시:</span>
                  <span id="requestedAt" class="text-gray-900"></span>
                </div>
              </div>
              <div class="space-y-4">
                <div class="flex items-start">
                  <span class="text-gray-600 font-semibold w-32">환자명:</span>
                  <span id="patientName" class="text-gray-900"></span>
                </div>
                <div class="flex items-start">
                  <span class="text-gray-600 font-semibold w-32">시설유형:</span>
                  <span id="facilityType" class="text-gray-900"></span>
                </div>
                <div class="flex items-start">
                  <span class="text-gray-600 font-semibold w-32">희망지역:</span>
                  <span id="region" class="text-gray-900"></span>
                </div>
                <div class="flex items-start">
                  <span class="text-gray-600 font-semibold w-32">상태:</span>
                  <span id="status" class="inline-flex px-3 py-1 rounded-full text-sm font-semibold"></span>
                </div>
              </div>
            </div>
          </div>

          <!-- 상세 요청 내용 -->
          <div class="bg-white rounded-xl shadow-lg p-6 mb-6">
            <h2 class="text-xl font-bold text-gray-900 mb-4 flex items-center">
              <i class="fas fa-clipboard-list text-blue-600 mr-3"></i>
              상세 요청 내용
            </h2>
            <div id="detailsContent" class="space-y-4"></div>
          </div>

          <!-- 받은 견적 응답 -->
          <div class="bg-white rounded-xl shadow-lg p-6">
            <h2 class="text-xl font-bold text-gray-900 mb-4 flex items-center">
              <i class="fas fa-comments text-green-600 mr-3"></i>
              받은 견적 응답
              <span id="responseCount" class="ml-3 text-sm text-gray-500"></span>
            </h2>
            <div id="responsesContent"></div>
          </div>
        </div>

        <div id="errorMessage" style="display: none;" class="text-center py-12">
          <i class="fas fa-exclamation-triangle text-4xl text-red-500 mb-4"></i>
          <p class="text-red-600 text-lg mb-4">견적 정보를 불러오지 못했습니다</p>
          <a href="/admin/dashboard" class="text-blue-600 hover:underline">대시보드로 돌아가기</a>
        </div>
      </div>

      <script>
        const quoteId = '${quoteId}';

        async function loadQuoteDetail() {
          try {
            const response = await axios.get(\`/api/quote/\${quoteId}\`);
            console.log('견적 상세 데이터:', response.data);

            if (response.data.success) {
              const quote = response.data.quote;
              const responses = response.data.responses || [];

              // 기본 정보 표시
              document.getElementById('quoteId').textContent = quote.quote_id;
              document.getElementById('applicantName').textContent = quote.applicant_name || '-';
              document.getElementById('applicantPhone').textContent = quote.applicant_phone || '-';
              document.getElementById('patientName').textContent = quote.patient_name || '-';
              document.getElementById('facilityType').textContent = quote.facility_type || '-';
              
              const region = quote.sido && quote.sigungu 
                ? \`\${quote.sido} \${quote.sigungu}\` 
                : (quote.region || '-');
              document.getElementById('region').textContent = region;

              const requestedDate = quote.requested_at 
                ? new Date(quote.requested_at).toLocaleString('ko-KR')
                : '-';
              document.getElementById('requestedAt').textContent = requestedDate;

              // 상태 표시
              const status = quote.request_status || 'pending';
              const statusEl = document.getElementById('status');
              const statusText = status === 'completed' ? '완료' : 
                               status === 'received' ? '견적 받음' : '대기중';
              const statusColor = status === 'completed' ? 'bg-green-100 text-green-700' : 
                                status === 'received' ? 'bg-blue-100 text-blue-700' : 
                                'bg-yellow-100 text-yellow-700';
              statusEl.textContent = statusText;
              statusEl.className = \`inline-flex px-3 py-1 rounded-full text-sm font-semibold \${statusColor}\`;

              // 상세 내용 표시
              displayDetails(quote);

              // 응답 표시
              displayResponses(responses);

              // 로딩 완료
              document.getElementById('loadingMessage').style.display = 'none';
              document.getElementById('quoteDetailContent').style.display = 'block';
            } else {
              throw new Error(response.data.message || '데이터 로드 실패');
            }
          } catch (error) {
            console.error('견적 상세 로드 실패:', error);
            document.getElementById('loadingMessage').style.display = 'none';
            document.getElementById('errorMessage').style.display = 'block';
          }
        }

        function displayDetails(quote) {
          const detailsEl = document.getElementById('detailsContent');
          const details = [];

          // quote_type에 따라 다른 정보 표시
          if (quote.quote_type === 'simple') {
            details.push(\`<div class="bg-gray-50 p-4 rounded-lg"><span class="text-gray-600">견적 유형:</span> <span class="font-semibold">간편 견적</span></div>\`);
          } else {
            details.push(\`<div class="bg-gray-50 p-4 rounded-lg"><span class="text-gray-600">견적 유형:</span> <span class="font-semibold">상세 견적</span></div>\`);
          }

          if (quote.patient_age) {
            details.push(\`<div class="bg-gray-50 p-4 rounded-lg"><span class="text-gray-600">환자 나이:</span> <span class="font-semibold">\${quote.patient_age}세</span></div>\`);
          }

          if (quote.patient_gender) {
            const gender = quote.patient_gender === 'male' ? '남성' : '여성';
            details.push(\`<div class="bg-gray-50 p-4 rounded-lg"><span class="text-gray-600">성별:</span> <span class="font-semibold">\${gender}</span></div>\`);
          }

          if (quote.care_grade) {
            details.push(\`<div class="bg-gray-50 p-4 rounded-lg"><span class="text-gray-600">등급:</span> <span class="font-semibold">\${quote.care_grade}</span></div>\`);
          }

          if (quote.diseases) {
            details.push(\`<div class="bg-gray-50 p-4 rounded-lg"><span class="text-gray-600">질병:</span> <span class="font-semibold">\${quote.diseases}</span></div>\`);
          }

          if (quote.mobility_status) {
            details.push(\`<div class="bg-gray-50 p-4 rounded-lg"><span class="text-gray-600">거동 상태:</span> <span class="font-semibold">\${quote.mobility_status}</span></div>\`);
          }

          if (quote.cognitive_status) {
            details.push(\`<div class="bg-gray-50 p-4 rounded-lg"><span class="text-gray-600">인지 상태:</span> <span class="font-semibold">\${quote.cognitive_status}</span></div>\`);
          }

          if (quote.special_care) {
            details.push(\`<div class="bg-gray-50 p-4 rounded-lg"><span class="text-gray-600">특수 치료:</span> <span class="font-semibold">\${quote.special_care}</span></div>\`);
          }

          if (quote.budget_range) {
            details.push(\`<div class="bg-gray-50 p-4 rounded-lg"><span class="text-gray-600">예산 범위:</span> <span class="font-semibold">\${quote.budget_range}</span></div>\`);
          }

          if (quote.additional_notes) {
            details.push(\`<div class="bg-gray-50 p-4 rounded-lg col-span-2"><span class="text-gray-600 block mb-2">추가 요청사항:</span> <span class="font-semibold">\${quote.additional_notes}</span></div>\`);
          }

          detailsEl.innerHTML = \`<div class="grid md:grid-cols-2 gap-4">\${details.join('')}</div>\`;
        }

        function displayResponses(responses) {
          const countEl = document.getElementById('responseCount');
          const contentEl = document.getElementById('responsesContent');

          countEl.textContent = \`(\${responses.length}개)\`;

          if (responses.length === 0) {
            contentEl.innerHTML = '<p class="text-gray-500 text-center py-8">아직 받은 견적이 없습니다</p>';
            return;
          }

          contentEl.innerHTML = responses.map((resp, index) => \`
            <div class="border rounded-lg p-4 mb-4 hover:shadow-md transition-shadow">
              <div class="flex justify-between items-start mb-3">
                <h3 class="font-bold text-lg text-gray-900">\${resp.facility_name || '시설명 없음'}</h3>
                <span class="text-sm text-gray-500">\${new Date(resp.created_at).toLocaleString('ko-KR')}</span>
              </div>
              <div class="grid md:grid-cols-2 gap-4 mb-3">
                <div><span class="text-gray-600">담당자:</span> <span class="font-semibold">\${resp.contact_person || resp.contact_name || '-'}</span></div>
                <div><span class="text-gray-600">연락처:</span> <span class="font-semibold">\${resp.contact_phone || '-'}</span></div>
                <div><span class="text-gray-600">월 비용:</span> <span class="font-semibold text-blue-600">\${resp.estimated_price ? Number(resp.estimated_price).toLocaleString() + '원' : '-'}</span></div>
                <div><span class="text-gray-600">입소 가능일:</span> <span class="font-semibold">\${resp.available_rooms || '-'}</span></div>
              </div>
              \${resp.response_message ? \`
                <div class="bg-gray-50 p-3 rounded mt-3">
                  <p class="text-sm text-gray-700">\${resp.response_message}</p>
                </div>
              \` : ''}
            </div>
          \`).join('');
        }

        loadQuoteDetail();
      </script>
    </body>
    </html>
  `)
})

// 관리자 일반고객 관리 페이지
app.get('/admin/customers', (c) => {
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
            <div class="flex items-center gap-3">
              <a href="/admin/dashboard" class="text-gray-600 hover:text-gray-900 px-4 py-2 rounded-lg hover:bg-gray-100">
                <i class="fas fa-home mr-1"></i>대시보드
              </a>
              <a href="/admin/facilities" class="text-gray-600 hover:text-gray-900 px-4 py-2 rounded-lg hover:bg-gray-100">
                <i class="fas fa-building mr-1"></i>시설 관리
              </a>
              <a href="/admin/customers" class="text-teal-600 bg-teal-50 px-4 py-2 rounded-lg font-semibold">
                <i class="fas fa-users mr-1"></i>일반고객
              </a>
              <button id="logoutBtn" class="bg-red-600 text-white px-4 py-2 rounded-lg hover:bg-red-700">
                <i class="fas fa-sign-out-alt mr-2"></i>로그아웃
              </button>
            </div>
          </div>
        </div>
      </header>

      <div class="max-w-7xl mx-auto px-4 py-8">
        <div class="bg-white rounded-xl shadow-lg">
          <div class="border-b px-6 py-4">
            <h3 class="text-xl font-bold flex items-center">
              <i class="fas fa-users text-purple-600 mr-2"></i>
              일반고객 목록
              <span class="ml-3 text-sm text-gray-500">(<span id="customerCount">0</span>명)</span>
            </h3>
          </div>
          
          <div class="overflow-x-auto">
            <table class="w-full">
              <thead class="bg-gray-50">
                <tr>
                  <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">순번</th>
                  <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">이메일</th>
                  <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">이름</th>
                  <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">전화번호</th>
                  <th class="px-4 py-3 text-left text-sm font-semibold text-gray-600">가입일</th>
                  <th class="px-4 py-3 text-center text-sm font-semibold text-gray-600">관리</th>
                </tr>
              </thead>
              <tbody id="customersList">
                <tr>
                  <td colspan="6" class="px-4 py-8 text-center text-gray-500">
                    로딩 중...
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>

      {/* 고객 상세 정보 모달 */}
      <div id="customerModal" class="hidden fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
        <div class="bg-white rounded-xl shadow-2xl max-w-2xl w-full mx-4 max-h-[90vh] overflow-y-auto">
          <div class="sticky top-0 bg-gradient-to-r from-purple-600 to-blue-600 text-white px-6 py-4 flex justify-between items-center">
            <h3 class="text-xl font-bold flex items-center">
              <i class="fas fa-user-circle mr-2"></i>
              일반고객 상세 정보
            </h3>
            <button onclick="closeCustomerModal()" class="text-white hover:text-gray-200">
              <i class="fas fa-times text-2xl"></i>
            </button>
          </div>
          
          <div id="customerDetailContent" class="p-6">
            {/* 여기에 상세 정보가 들어갑니다 */}
          </div>
        </div>
      </div>

      <script src="https://cdn.jsdelivr.net/npm/axios@1.6.0/dist/axios.min.js"></script>
      <script dangerouslySetInnerHTML={{
        __html: `
        document.getElementById('logoutBtn')?.addEventListener('click', async () => {
          const response = await fetch('/api/auth/logout', { method: 'POST' });
          if (response.ok) {
            window.location.href = '/admin';
          }
        });
        
        let allCustomers = [];
        
        // 일반고객 목록 로드
        async function loadCustomers() {
          try {
            console.log('📡 일반고객 목록 로드 시작...');
            const response = await axios.get('/api/admin/customers');
            allCustomers = response.data;
            
            console.log('✅ 일반고객 로드 완료:', allCustomers.length, '명');
            
            const listEl = document.getElementById('customersList');
            const countEl = document.getElementById('customerCount');
            
            countEl.textContent = allCustomers.length;
            
            if (allCustomers.length === 0) {
              listEl.innerHTML = '<tr><td colspan="6" class="px-4 py-8 text-center text-gray-500">등록된 일반고객이 없습니다</td></tr>';
              return;
            }
            
            listEl.innerHTML = allCustomers.map((customer, index) => {
              const date = new Date(customer.created_at);
              const dateStr = date.toLocaleDateString('ko-KR');
              
              return \`
                <tr class="border-t hover:bg-gray-50">
                  <td class="px-4 py-3 text-sm text-gray-600">\${index + 1}</td>
                  <td class="px-4 py-3 text-sm">\${customer.email || '-'}</td>
                  <td class="px-4 py-3 font-medium text-gray-900">\${customer.name || '-'}</td>
                  <td class="px-4 py-3 text-sm text-gray-600">\${customer.phone || '-'}</td>
                  <td class="px-4 py-3 text-sm text-gray-600">\${dateStr}</td>
                  <td class="px-4 py-3 text-center">
                    <button onclick="viewCustomer('\${customer.id}')" class="px-3 py-1 bg-blue-500 text-white text-xs rounded hover:bg-blue-600 transition-colors">
                      <i class="fas fa-eye"></i> 상세
                    </button>
                  </td>
                </tr>
              \`;
            }).join('');
          } catch (error) {
            console.error('❌ 일반고객 로드 실패:', error);
            document.getElementById('customersList').innerHTML = '<tr><td colspan="6" class="px-4 py-8 text-center text-red-500">데이터 로드 실패</td></tr>';
          }
        }
        
        // 고객 상세 정보 보기
        async function viewCustomer(customerId) {
          try {
            console.log('🔍 고객 상세 정보 조회:', customerId);
            
            // API로 상세 정보 가져오기
            const response = await axios.get(\`/api/admin/customers/\${customerId}\`);
            const customer = response.data;
            
            console.log('✅ 고객 정보:', customer);
            
            // 모달에 정보 표시
            const contentEl = document.getElementById('customerDetailContent');
            const createdDate = new Date(customer.created_at).toLocaleString('ko-KR', {
              year: 'numeric',
              month: '2-digit',
              day: '2-digit',
              hour: '2-digit',
              minute: '2-digit'
            });
            
            contentEl.innerHTML = \`
              <div class="space-y-6">
                {/* 기본 정보 */}
                <div class="bg-gradient-to-r from-purple-50 to-blue-50 rounded-lg p-6">
                  <h4 class="text-lg font-bold text-gray-800 mb-4 flex items-center">
                    <i class="fas fa-id-card text-purple-600 mr-2"></i>
                    기본 정보
                  </h4>
                  <div class="grid md:grid-cols-2 gap-4">
                    <div class="bg-white rounded-lg p-4 shadow-sm">
                      <div class="text-sm text-gray-500 mb-1">고객 ID</div>
                      <div class="font-semibold text-gray-900">\${customer.id}</div>
                    </div>
                    <div class="bg-white rounded-lg p-4 shadow-sm">
                      <div class="text-sm text-gray-500 mb-1">이름</div>
                      <div class="font-semibold text-gray-900">\${customer.name || '-'}</div>
                    </div>
                    <div class="bg-white rounded-lg p-4 shadow-sm">
                      <div class="text-sm text-gray-500 mb-1">이메일</div>
                      <div class="font-semibold text-gray-900">\${customer.email || '-'}</div>
                    </div>
                    <div class="bg-white rounded-lg p-4 shadow-sm">
                      <div class="text-sm text-gray-500 mb-1">전화번호</div>
                      <div class="font-semibold text-gray-900">\${customer.phone || '-'}</div>
                    </div>
                  </div>
                </div>
                
                {/* 활동 정보 */}
                <div class="bg-gradient-to-r from-green-50 to-teal-50 rounded-lg p-6">
                  <h4 class="text-lg font-bold text-gray-800 mb-4 flex items-center">
                    <i class="fas fa-chart-line text-green-600 mr-2"></i>
                    활동 정보
                  </h4>
                  <div class="grid md:grid-cols-3 gap-4">
                    <div class="bg-white rounded-lg p-4 shadow-sm text-center">
                      <div class="text-3xl font-bold text-purple-600">\${customer.quote_count || 0}</div>
                      <div class="text-sm text-gray-600 mt-1">견적 요청 수</div>
                    </div>
                    <div class="bg-white rounded-lg p-4 shadow-sm text-center">
                      <div class="text-3xl font-bold text-green-600">\${customer.response_count || 0}</div>
                      <div class="text-sm text-gray-600 mt-1">받은 견적 수</div>
                    </div>
                    <div class="bg-white rounded-lg p-4 shadow-sm text-center">
                      <div class="text-3xl font-bold text-blue-600">\${customer.days_since_join || 0}</div>
                      <div class="text-sm text-gray-600 mt-1">가입 일수</div>
                    </div>
                  </div>
                </div>
                
                {/* 가입 정보 */}
                <div class="bg-gradient-to-r from-orange-50 to-yellow-50 rounded-lg p-6">
                  <h4 class="text-lg font-bold text-gray-800 mb-4 flex items-center">
                    <i class="fas fa-clock text-orange-600 mr-2"></i>
                    가입 정보
                  </h4>
                  <div class="bg-white rounded-lg p-4 shadow-sm">
                    <div class="flex items-center justify-between">
                      <div>
                        <div class="text-sm text-gray-500">가입일시</div>
                        <div class="font-semibold text-gray-900 mt-1">\${createdDate}</div>
                      </div>
                      <div class="text-right">
                        <div class="text-sm text-gray-500">계정 상태</div>
                        <div class="mt-1">
                          <span class="inline-flex px-3 py-1 rounded-full text-xs font-semibold bg-green-100 text-green-700">
                            <i class="fas fa-check-circle mr-1"></i>활성
                          </span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                
                {/* 최근 견적 요청 */}
                <div class="bg-gray-50 rounded-lg p-6">
                  <h4 class="text-lg font-bold text-gray-800 mb-4 flex items-center">
                    <i class="fas fa-file-invoice text-blue-600 mr-2"></i>
                    최근 견적 요청
                  </h4>
                  <div id="recentQuotes">
                    <div class="text-center py-8 text-gray-500">로딩 중...</div>
                  </div>
                </div>
              </div>
            \`;
            
            // 모달 표시
            document.getElementById('customerModal').classList.remove('hidden');
            
            // 최근 견적 요청 로드
            loadCustomerQuotes(customerId);
            
          } catch (error) {
            console.error('❌ 고객 상세 정보 로드 실패:', error);
            alert('고객 정보를 불러오는데 실패했습니다.');
          }
        }
        
        // 고객의 견적 요청 목록 로드
        async function loadCustomerQuotes(customerId) {
          try {
            const response = await axios.get(\`/api/admin/customers/\${customerId}/quotes\`);
            const quotes = response.data;
            
            const quotesEl = document.getElementById('recentQuotes');
            
            if (quotes.length === 0) {
              quotesEl.innerHTML = '<div class="text-center py-8 text-gray-500">견적 요청 내역이 없습니다</div>';
              return;
            }
            
            quotesEl.innerHTML = quotes.map(quote => {
              const date = new Date(quote.created_at).toLocaleDateString('ko-KR');
              const statusColor = quote.status === 'completed' ? 'bg-green-100 text-green-700' : 'bg-yellow-100 text-yellow-700';
              const statusText = quote.status === 'completed' ? '완료' : '대기중';
              
              return \`
                <div class="bg-white rounded-lg p-4 shadow-sm mb-3 hover:shadow-md transition-shadow">
                  <div class="flex justify-between items-start">
                    <div class="flex-1">
                      <div class="font-semibold text-gray-900">\${quote.facility_type || '-'}</div>
                      <div class="text-sm text-gray-600 mt-1">\${quote.sido || '-'} \${quote.sigungu || '-'}</div>
                      <div class="text-xs text-gray-500 mt-1">견적 ID: \${quote.quote_id}</div>
                    </div>
                    <div class="text-right">
                      <span class="inline-flex px-2 py-1 rounded-full text-xs font-semibold \${statusColor}">
                        \${statusText}
                      </span>
                      <div class="text-xs text-gray-500 mt-2">\${date}</div>
                    </div>
                  </div>
                  <div class="mt-3 pt-3 border-t flex items-center justify-between">
                    <div class="text-sm text-gray-600">
                      <i class="fas fa-reply text-blue-500 mr-1"></i>
                      받은 견적: <span class="font-semibold">\${quote.response_count || 0}개</span>
                    </div>
                  </div>
                </div>
              \`;
            }).join('');
            
          } catch (error) {
            console.error('견적 요청 로드 실패:', error);
            document.getElementById('recentQuotes').innerHTML = '<div class="text-center py-8 text-red-500">견적 요청 로드 실패</div>';
          }
        }
        
        // 모달 닫기
        function closeCustomerModal() {
          document.getElementById('customerModal').classList.add('hidden');
        }
        
        // ESC 키로 모달 닫기
        document.addEventListener('keydown', (e) => {
          if (e.key === 'Escape') {
            closeCustomerModal();
          }
        });
        
        // 페이지 로드 시 실행
        loadCustomers();
        `
      }} />
    </div>
  )
})

// API 라우트 - 파트너(시설) 등록
app.post('/api/partner', async (c) => {
  try {
    const db = c.env.DB
    const data = await c.req.json()
    
    // D1 데이터베이스가 있는 경우 users 테이블에 저장
    if (db) {
      // 임시 비밀번호 생성 (나중에 이메일로 변경 링크 발송)
      const tempPassword = Math.random().toString(36).slice(-8)
      
      // 파트너(시설) 유저 생성
      await db.prepare(`
        INSERT INTO users (
          user_type, email, password_hash, name, phone,
          facility_type, region_sido, region_sigungu,
          address, created_at
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, CURRENT_TIMESTAMP)
      `).bind(
        'facility',
        data.managerPhone + '@temp.com', // 임시 이메일 (전화번호 기반)
        tempPassword, // 실제로는 bcrypt 해시 사용
        data.facilityName,
        data.managerPhone,
        data.facilityType,
        data.facilitySido,
        data.facilitySigungu,
        data.facilityDetailAddress
      ).run()
      
      // facilities 테이블에도 추가 (위도/경도는 기본값)
      await db.prepare(`
        INSERT INTO facilities (
          facility_type, name, address,
          sido, sigungu, phone,
          latitude, longitude, created_at
        ) VALUES (?, ?, ?, ?, ?, ?, 0, 0, CURRENT_TIMESTAMP)
      `).bind(
        data.facilityType,
        data.facilityName,
        data.facilitySido + ' ' + data.facilitySigungu + ' ' + data.facilityDetailAddress,
        data.facilitySido,
        data.facilitySigungu,
        data.managerPhone
      ).run()
    }
    
    // 메모리에도 저장 (호환성)
    dataStore.partners.push({
      ...data,
      createdAt: new Date().toISOString()
    })
    
    return c.json({ 
      success: true, 
      message: '파트너 등록이 완료되었습니다!\n해당 지역 견적 요청 시 자동으로 발송됩니다.' 
    })
  } catch (error) {
    console.error('Partner registration error:', error)
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

// 견적 요청 API (기존)
app.post('/api/quote-request', async (c) => {
  try {
    const db = c.env.DB
    const data = await c.req.json()
    
    // 🔒 월 2회 제한 체크 (전화번호 기준)
    if (db && data.applicantPhone) {
      try {
        // 이번 달 시작일 계산
        const now = new Date()
        const firstDayOfMonth = new Date(now.getFullYear(), now.getMonth(), 1)
        const firstDayStr = firstDayOfMonth.toISOString().split('T')[0] + ' 00:00:00'
        
        // 이번 달 해당 전화번호로 신청한 견적 수 조회
        const countResult = await db.prepare(`
          SELECT COUNT(*) as count
          FROM quote_requests
          WHERE applicant_phone = ?
          AND created_at >= datetime(?)
        `).bind(data.applicantPhone, firstDayStr).first()
        
        const monthlyCount = countResult?.count || 0
        
        if (monthlyCount >= 2) {
          return c.json({ 
            success: false, 
            message: '이번 달 견적 신청 횟수를 초과했습니다. (월 2회 제한)',
            error: 'MONTHLY_LIMIT_EXCEEDED',
            remainingCount: 0,
            nextAvailableDate: new Date(now.getFullYear(), now.getMonth() + 1, 1).toLocaleDateString('ko-KR')
          }, 429)
        }
        
        console.log(`✅ 월 견적 신청 횟수: ${monthlyCount}/2회 (전화번호: ${data.applicantPhone})`)
      } catch (limitError) {
        console.error('견적 횟수 체크 오류 (계속 진행):', limitError)
      }
    }
    
    // 견적 요청 ID 생성
    const quoteId = 'Q' + Date.now()
    
    // 추가 정보 JSON 문자열로 변환
    const additionalNotes = JSON.stringify({
      insuranceType: data.insuranceType || '',
      careGrade: data.careGrade || '',
      facilitySize: data.facilitySize || '',
      careCost: data.careCost || '',
      carePrograms: data.carePrograms || '',
      religion: data.religion || '',
      mainSymptoms: data.mainSymptoms || '',
      communication: data.communication || '',
      eating: data.eating || '',
      dietType: data.dietType || '',
      mobility: data.mobility || '',
      toiletUse: data.toiletUse || '',
      additionalCare: data.additionalCare || '',
      otherSymptoms: data.otherSymptoms || ''
    })
    
    // D1 Database에 저장 (실제 스키마에 맞춤)
    if (db) {
      try {
        await db.prepare(`
          INSERT INTO quote_requests (
            quote_id, quote_type, applicant_name, applicant_phone,
            patient_name, patient_age, patient_gender,
            sido, sigungu, facility_type, care_grade,
            additional_notes, status, created_at
          ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'pending', CURRENT_TIMESTAMP)
        `).bind(
          quoteId,
          data.quoteType || 'simple',
          data.applicantName || '',
          data.applicantPhone || '',
          data.patientName || '',
          data.patientAge || 0,
          data.patientGender || '',
          data.sido || '',
          data.sigungu || '',
          data.facilityType || '',
          data.careGrade || '',
          additionalNotes
        ).run()
        
        // 🔥 견적 매칭 시스템: 동일 지역 + 시설 유형의 모든 시설에 발송
        try {
          const matchedFacilities = await db.prepare(`
            SELECT id, name, phone, email
            FROM users
            WHERE user_type = 'facility'
              AND facility_type = ?
              AND region_sido = ?
              AND region_sigungu = ?
          `).bind(
            data.facilityType || '',
            data.sido || '',
            data.sigungu || ''
          ).all()
          
          // 매칭된 시설에 견적 요청 알림 생성
          const matchCount = matchedFacilities.results?.length || 0
          console.log(`✅ 견적 매칭: ${matchCount}개 시설에 발송 - ${data.sido} ${data.sigungu} ${data.facilityType}`)
          
          // 실제로는 각 시설에 알림 발송 (SMS, 이메일, 푸시 등)
          // 여기서는 로그만 출력
          for (const facility of matchedFacilities.results || []) {
            console.log(`  - ${facility.name} (${facility.phone})`)
          }
        } catch (matchError) {
          console.error('매칭 오류 (무시):', matchError)
        }
      } catch (dbError) {
        console.error('D1 저장 오류 (메모리로 fallback):', dbError)
      }
    }
    
    // 메모리에도 저장 (호환성 유지)
    dataStore.quoteRequests.push({
      ...data,
      id: quoteId,
      quote_id: quoteId,
      status: 'pending',
      createdAt: new Date().toISOString()
    })
    
    return c.json({ 
      success: true, 
      message: '견적 신청이 완료되었습니다!',
      quoteId: quoteId
    })
  } catch (error) {
    console.error('Quote request error:', error)
    return c.json({ success: false, message: '견적 신청 실패' }, 500)
  }
})

// 새로운 다단계 견적 신청 API
app.post('/api/quote/submit-new', async (c) => {
  try {
    const db = c.env.DB
    const data = await c.req.json()
    
    // 🔒 월 2회 제한 체크 (전화번호 기준)
    if (db && data.applicantPhone) {
      try {
        // 이번 달 시작일 계산
        const now = new Date()
        const firstDayOfMonth = new Date(now.getFullYear(), now.getMonth(), 1)
        const firstDayStr = firstDayOfMonth.toISOString().split('T')[0] + ' 00:00:00'
        
        // 이번 달 해당 전화번호로 신청한 견적 수 조회
        const countResult = await db.prepare(`
          SELECT COUNT(*) as count
          FROM quote_requests
          WHERE applicant_phone = ?
          AND created_at >= datetime(?)
        `).bind(data.applicantPhone, firstDayStr).first()
        
        const monthlyCount = countResult?.count || 0
        
        if (monthlyCount >= 2) {
          return c.json({ 
            success: false, 
            message: '이번 달 견적 신청 횟수를 초과했습니다. (월 2회 제한)',
            error: 'MONTHLY_LIMIT_EXCEEDED',
            remainingCount: 0,
            nextAvailableDate: new Date(now.getFullYear(), now.getMonth() + 1, 1).toLocaleDateString('ko-KR')
          }, 429)
        }
        
        console.log(`✅ 월 견적 신청 횟수: ${monthlyCount}/2회 (전화번호: ${data.applicantPhone})`)
      } catch (limitError) {
        console.error('견적 횟수 체크 오류 (계속 진행):', limitError)
      }
    }
    
    // 견적 요청 ID 생성
    const quoteId = 'QN' + Date.now()
    
    // additional_notes JSON 생성 (모든 상세 정보 포함)
    const additionalNotes = JSON.stringify({
      // 기본 정보
      applicantEmail: data.applicantEmail || '',
      insuranceType: data.insuranceType || '',
      facilitySize: data.facilitySize || '',
      careCost: data.careCost || '',
      carePrograms: data.carePrograms || '',
      religion: data.religion || '',
      
      // 환자 상태
      mainSymptoms: data.mainSymptoms || '',
      communication: data.communication || '',
      eating: data.eating || '',
      dietType: data.dietType || '',
      mobility: data.mobility || '',
      toiletUse: data.toiletUse || '',
      additionalCare: data.additionalCare || '',
      otherSymptoms: data.otherSymptoms || '',
      
      // 요양병원 전용 필드
      birthYear: data.birthYear || '',
      birthMonth: data.birthMonth || '',
      birthDay: data.birthDay || '',
      careLevel: data.careLevel || '',
      beneficiaryType: data.beneficiaryType || '',
      diagnosis: data.diagnosis || '',
      adl: data.adl || '',
      dementia: data.dementia || '',
      
      // 재가복지 전용 필드
      serviceType: data.serviceType || '',
      homecareLevel: data.homecareLevel || '',
      weeklyHours: data.weeklyHours || '',
      
      // 보호자 정보
      guardianAge: data.guardianAge || '',
      spouseAge: data.spouseAge || '',
      guardianPhone: data.guardianPhone || '',
      housingType: data.housingType || '',
      
      // 추가 정보
      diseases: data.diseases || '',
      personalities: data.personalities || '',
      specialNotes: data.specialNotes || ''
    })
    
    // DB에 저장
    await db.prepare(`
      INSERT INTO quote_requests (
        quote_id, quote_type, applicant_name, applicant_phone, applicant_email,
        patient_name, patient_age, patient_gender,
        sido, sigungu, facility_type, care_grade,
        additional_notes, status, created_at
      ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, datetime('now'))
    `).bind(
      quoteId,
      'detailed',
      data.applicantName || '',
      data.applicantPhone || '',
      data.applicantEmail || '',
      data.patientName || '',
      data.patientAge || 0,
      data.patientGender || '',
      data.sido || '',
      data.sigungu || '',
      data.facilityType || '',
      data.careGrade || '',
      additionalNotes,
      'pending'
    ).run()
    
    // 견적 요청 객체 생성 (메모리 저장용 - 호환성 유지)
    const quoteRequest = {
      id: quoteId,
      quote_id: quoteId,
      facilityType: data.facilityType,
      patientName: data.patientName,
      patientAge: data.patientAge,
      patientGender: data.patientGender,
      sido: data.sido,
      sigungu: data.sigungu,
      careGrade: data.careGrade,
      status: 'pending',
      createdAt: new Date().toISOString()
    }
    
    // 메모리에도 저장 (호환성 유지)
    dataStore.quoteRequests.push(quoteRequest)
    
    console.log('New detailed quote request saved to DB:', quoteId, data.facilityType, data.sido, data.sigungu)
    
    return c.json({ 
      success: true, 
      message: '견적 신청이 완료되었습니다! 선택하신 지역의 시설들이 견적서를 작성하여 회신합니다.',
      quoteId: quoteId,
      estimatedResponse: '24-48시간 이내'
    })
  } catch (error) {
    console.error('Quote submission error:', error)
    return c.json({ 
      success: false, 
      message: '견적 신청 중 오류가 발생했습니다. 다시 시도해주세요.' 
    }, 500)
  }
})

app.post('/api/admin/login', async (c) => {
  try {
    const { password } = await c.req.json()
    const adminPassword = c.env.ADMIN_PASSWORD || '5874' // fallback for local dev
    
    if (password === adminPassword) {
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

// 시설 데이터 업로드 API
app.post('/api/admin/upload-facilities', async (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }

  try {
    const formData = await c.req.formData()
    const file = formData.get('file')

    if (!file || typeof file === 'string') {
      return c.json({ error: 'No file uploaded' }, 400)
    }

    // 파일 읽기
    const buffer = await file.arrayBuffer()
    const text = new TextDecoder('utf-8').decode(buffer)
    
    // CSV 파싱 (간단한 구현)
    const lines = text.split('\n')
    const headers = lines[0].split(',')
    
    const facilities = []
    for (let i = 1; i < lines.length; i++) {
      if (!lines[i].trim()) continue
      
      const values = lines[i].split(',')
      if (values.length >= 3) {
        facilities.push({
          name: values[0]?.trim() || '',
          phone: values[1]?.trim() || '',
          address: values[2]?.trim() || '',
          type: values[3]?.trim() || '기타'
        })
      }
    }

    // D1 데이터베이스에 저장
    const db = c.env.DB
    for (const facility of facilities) {
      await db.prepare(`
        INSERT INTO facilities (facility_type, name, phone, address, latitude, longitude, sido, sigungu, source_system, source_code)
        VALUES (?, ?, ?, ?, 0.0, 0.0, '', '', 'MANUAL_UPLOAD', '')
      `).bind(facility.type, facility.name, facility.phone, facility.address).run()
    }

    return c.json({ 
      success: true, 
      count: facilities.length,
      message: `${facilities.length}개 시설이 업로드되었습니다.`
    })
  } catch (error: any) {
    console.error('Upload error:', error)
    return c.json({ error: error.message || 'Upload failed' }, 500)
  }
})

// 지역별 상담센터 조회 API
// Redirect old API to new API
app.get('/api/regional-centers', async (c) => {
  const sido = c.req.query('sido')
  const sigungu = c.req.query('sigungu')
  
  if (!sido || !sigungu) {
    return c.json({ error: 'Missing parameters' }, 400)
  }
  
  // Redirect to new API
  return c.redirect(`/api/representative-facilities?sido=${encodeURIComponent(sido)}&sigungu=${encodeURIComponent(sigungu)}`)
})

app.get('/api/admin/data', async (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  const db = c.env.DB
  const result = {
    partners: dataStore.partners || [],
    familyCare: dataStore.familyCare || [],
    quoteRequests: []
  }
  
  // D1에서 견적 요청 데이터 가져오기
  if (db) {
    try {
      // quote_requests 테이블 사용 (새 스키마)
      const { results: quoteRequests } = await db.prepare(`
        SELECT 
          qr.*,
          COUNT(qres.id) as response_count
        FROM quote_requests qr
        LEFT JOIN quote_responses qres ON qr.quote_id = qres.quote_id
        GROUP BY qr.id
        ORDER BY qr.created_at DESC
      `).all()
      
      result.quoteRequests = quoteRequests
      console.log('✅ 견적 요청 데이터 로드:', quoteRequests.length, '개')
    } catch (error) {
      console.error('❌ 견적 요청 데이터 로드 실패:', error)
    }
  }
  
  return c.json(result)
})

// 파트너 승인 API
app.post('/api/admin/partner/approve', async (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const { index } = await c.req.json()
    if (dataStore.partners[index]) {
      dataStore.partners[index].approvalStatus = 'approved'
      dataStore.partners[index].approvalDate = new Date().toISOString()
    }
    return c.json({ success: true, message: '승인되었습니다.' })
  } catch (error) {
    return c.json({ success: false, message: '승인 처리 실패' }, 500)
  }
})

// 파트너 거부 API
app.post('/api/admin/partner/reject', async (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const { index, reason } = await c.req.json()
    if (dataStore.partners[index]) {
      dataStore.partners[index].approvalStatus = 'rejected'
      dataStore.partners[index].rejectionReason = reason
      dataStore.partners[index].approvalDate = new Date().toISOString()
    }
    return c.json({ success: true, message: '거부되었습니다.' })
  } catch (error) {
    return c.json({ success: false, message: '거부 처리 실패' }, 500)
  }
})

// 파트너 대표샵 지정 API
app.post('/api/admin/partner/set-representative', async (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const { index, isRepresentative } = await c.req.json()
    const partner = dataStore.partners[index]
    
    if (!partner) {
      return c.json({ success: false, message: '파트너를 찾을 수 없습니다.' }, 404)
    }
    
    if (partner.approvalStatus !== 'approved') {
      return c.json({ success: false, message: '승인된 파트너만 대표샵으로 지정할 수 있습니다.' }, 400)
    }
    
    // 같은 지역의 다른 대표샵 해제
    if (isRepresentative) {
      dataStore.partners.forEach((p, i) => {
        if (i !== index && 
            p.facilitySido === partner.facilitySido && 
            p.facilitySigungu === partner.facilitySigungu && 
            p.isRepresentative) {
          p.isRepresentative = false
        }
      })
    }
    
    partner.isRepresentative = isRepresentative
    partner.representativeDate = isRepresentative ? new Date().toISOString() : null
    
    return c.json({ 
      success: true, 
      message: isRepresentative ? '대표샵으로 지정되었습니다.' : '대표샵 지정이 해제되었습니다.' 
    })
  } catch (error) {
    return c.json({ success: false, message: '대표샵 설정 실패' }, 500)
  }
})

// 관리자: 일반고객 목록 조회
app.get('/api/admin/customers', async (c) => {
  // 관리자 권한 확인
  if (!isAdmin(c)) {
    return c.json({ error: '권한이 없습니다.' }, 403)
  }
  
  try {
    const db = c.env.DB
    if (!db) {
      console.log('⚠️ D1 데이터베이스가 없습니다.')
      return c.json([])
    }
    
    // users 테이블에서 일반고객(user_type = 'customer') 조회
    const { results } = await db.prepare(`
      SELECT 
        id, email, name, phone, created_at
      FROM users
      WHERE user_type = 'customer'
      ORDER BY created_at DESC
    `).all()
    
    console.log('✅ 일반고객 조회 성공:', results?.length || 0, '명')
    return c.json(results || [])
  } catch (error) {
    console.error('❌ 일반고객 목록 조회 오류:', error)
    return c.json({ error: '데이터 조회 실패', details: error.message }, 500)
  }
})

// 관리자: 일반고객 상세 정보 조회
app.get('/api/admin/customers/:id', async (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: '권한이 없습니다.' }, 403)
  }
  
  try {
    const customerId = c.req.param('id')
    const db = c.env.DB
    
    if (!db) {
      return c.json({ error: 'D1 데이터베이스 없음' }, 500)
    }
    
    // 고객 기본 정보 조회
    const { results: customers } = await db.prepare(`
      SELECT 
        id, email, name, phone, created_at
      FROM users
      WHERE id = ? AND user_type = 'customer'
    `).bind(customerId).all()
    
    if (!customers || customers.length === 0) {
      return c.json({ error: '고객을 찾을 수 없습니다.' }, 404)
    }
    
    const customer = customers[0]
    
    // 견적 요청 수 조회 (applicant_email로 조회)
    const { results: quoteStats } = await db.prepare(`
      SELECT COUNT(*) as quote_count
      FROM quote_requests
      WHERE applicant_email = ?
    `).bind(customer.email).all()
    
    // 받은 견적 응답 수 조회 (applicant_email로 조회)
    const { results: responseStats } = await db.prepare(`
      SELECT COUNT(DISTINCT qres.id) as response_count
      FROM quote_requests qr
      LEFT JOIN quote_responses qres ON qr.quote_id = qres.quote_id
      WHERE qr.applicant_email = ?
    `).bind(customer.email).all()
    
    // 가입 일수 계산
    const joinDate = new Date(customer.created_at)
    const today = new Date()
    const daysSinceJoin = Math.floor((today - joinDate) / (1000 * 60 * 60 * 24))
    
    // 정보 병합
    const customerDetail = {
      ...customer,
      quote_count: quoteStats[0]?.quote_count || 0,
      response_count: responseStats[0]?.response_count || 0,
      days_since_join: daysSinceJoin
    }
    
    console.log('✅ 고객 상세 정보 조회 성공:', customerId)
    return c.json(customerDetail)
    
  } catch (error) {
    console.error('❌ 고객 상세 정보 조회 오류:', error)
    return c.json({ error: '데이터 조회 실패', details: error.message }, 500)
  }
})

// 관리자: 고객의 견적 요청 목록 조회
app.get('/api/admin/customers/:id/quotes', async (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: '권한이 없습니다.' }, 403)
  }
  
  try {
    const customerId = c.req.param('id')
    const db = c.env.DB
    
    if (!db) {
      return c.json([])
    }
    
    // 먼저 고객 정보 조회
    const { results: customers } = await db.prepare(`
      SELECT email FROM users WHERE id = ? AND user_type = 'customer'
    `).bind(customerId).all()
    
    if (!customers || customers.length === 0) {
      return c.json([])
    }
    
    const customerEmail = customers[0].email
    
    // 고객의 견적 요청 목록 조회 (applicant_email로 조회)
    const { results: quotes } = await db.prepare(`
      SELECT 
        qr.id,
        qr.quote_id,
        qr.facility_type,
        qr.sido,
        qr.sigungu,
        qr.status,
        qr.created_at,
        COUNT(qres.id) as response_count
      FROM quote_requests qr
      LEFT JOIN quote_responses qres ON qr.quote_id = qres.quote_id
      WHERE qr.applicant_email = ?
      GROUP BY qr.id
      ORDER BY qr.created_at DESC
      LIMIT 10
    `).bind(customerEmail).all()
    
    console.log('✅ 고객 견적 요청 조회 성공:', quotes?.length || 0, '개')
    return c.json(quotes || [])
    
  } catch (error) {
    console.error('❌ 고객 견적 요청 조회 오류:', error)
    return c.json({ error: '데이터 조회 실패' }, 500)
  }
})

// 관리자: 대표시설 신청 목록 조회
app.get('/api/admin/representative-applications', async (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const db = c.env.DB
    
    const applications = await db.prepare(`
      SELECT * FROM representative_facility_applications 
      ORDER BY 
        CASE status 
          WHEN 'pending' THEN 1 
          WHEN 'approved' THEN 2 
          WHEN 'rejected' THEN 3 
        END,
        applied_at DESC
    `).all()
    
    return c.json({
      success: true,
      data: applications.results || []
    })
  } catch (error) {
    console.error('대표시설 신청 목록 조회 오류:', error)
    return c.json({ success: false, message: '조회 실패' }, 500)
  }
})

// 관리자: 대표시설 신청 승인
app.post('/api/admin/representative-applications/approve', async (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const db = c.env.DB
    const { application_id, review_note } = await c.req.json()
    
    await db.prepare(`
      UPDATE representative_facility_applications 
      SET status = 'approved',
          reviewed_at = CURRENT_TIMESTAMP,
          reviewed_by = 'admin',
          review_note = ?
      WHERE id = ?
    `).bind(review_note || '승인되었습니다.', application_id).run()
    
    return c.json({
      success: true,
      message: '대표시설로 승인되었습니다.'
    })
  } catch (error) {
    console.error('대표시설 승인 오류:', error)
    return c.json({ success: false, message: '승인 처리 실패' }, 500)
  }
})

// 관리자: 대표시설 신청 거절
app.post('/api/admin/representative-applications/reject', async (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const db = c.env.DB
    const { application_id, rejection_reason } = await c.req.json()
    
    if (!rejection_reason || rejection_reason.trim().length < 5) {
      return c.json({ 
        success: false, 
        message: '거절 사유를 최소 5자 이상 입력해주세요.' 
      }, 400)
    }
    
    await db.prepare(`
      UPDATE representative_facility_applications 
      SET status = 'rejected',
          reviewed_at = CURRENT_TIMESTAMP,
          reviewed_by = 'admin',
          review_note = ?
      WHERE id = ?
    `).bind(rejection_reason, application_id).run()
    
    return c.json({
      success: true,
      message: '대표시설 신청이 거절되었습니다.'
    })
  } catch (error) {
    console.error('대표시설 거절 오류:', error)
    return c.json({ success: false, message: '거절 처리 실패' }, 500)
  }
})

// 관리자: 견적서 수발신 모니터링
app.get('/api/admin/quote-monitoring', async (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const db = c.env.DB
    if (!db) {
      console.error('❌ D1 데이터베이스가 없습니다.')
      return c.json({ success: false, message: 'D1 데이터베이스 없음' }, 500)
    }
    
    console.log('📊 견적 모니터링 데이터 조회 시작...')
    
    // 견적 요청과 응답을 JOIN하여 조회
    const quotes = await db.prepare(`
      SELECT 
        qr.id as request_id,
        qr.quote_id,
        qr.applicant_name,
        qr.patient_name,
        qr.sido,
        qr.sigungu,
        qr.facility_type,
        qr.status as request_status,
        qr.created_at as requested_at,
        COUNT(qres.id) as response_count,
        GROUP_CONCAT(qres.partner_id) as responder_ids
      FROM quote_requests qr
      LEFT JOIN quote_responses qres ON qr.quote_id = qres.quote_id
      GROUP BY qr.id
      ORDER BY qr.created_at DESC
      LIMIT 100
    `).all()
    
    console.log('✅ 견적 모니터링 조회 성공:', quotes.results?.length || 0, '개')
    console.log('📋 샘플 데이터:', quotes.results?.slice(0, 3).map(q => ({
      quote_id: q.quote_id,
      applicant: q.applicant_name,
      responses: q.response_count
    })))
    
    return c.json({
      success: true,
      data: quotes.results || []
    })
  } catch (error) {
    console.error('❌ 견적서 모니터링 조회 오류:', error)
    return c.json({ 
      success: false, 
      message: '조회 실패',
      error: error.message 
    }, 500)
  }
})

// 시설 데이터 로드 함수 (서버사이드용)
// 참고: Cloudflare Workers에서는 fetch 시 절대 URL이 필요하므로
// 환경 변수나 요청 URL을 기반으로 도메인을 구성해야 합니다
async function loadFacilities(baseUrl?: string) {
  if (!dataStore.facilitiesLoaded) {
    try {
      // baseUrl이 제공되면 사용, 아니면 프로덕션 URL 사용
      const url = baseUrl 
        ? `${baseUrl}/static/facilities.json`
        : 'https://carejoa.kr/static/facilities.json'
      
      console.log(`📡 Fetching facilities from: ${url}`)
      const response = await fetch(url)
      
      if (!response.ok) {
        throw new Error(`HTTP ${response.status}: ${response.statusText}`)
      }
      
      const data = await response.json()
      
      // 배열인지 확인
      if (Array.isArray(data)) {
        dataStore.facilities = data
        dataStore.facilitiesLoaded = true
        console.log(`✅ Loaded ${dataStore.facilities.length} facilities`)
      } else {
        console.error('❌ Facilities data is not an array:', typeof data)
        dataStore.facilities = []
      }
    } catch (error) {
      console.error('❌ Failed to load facilities:', error)
      dataStore.facilities = []
    }
  }
  
  return dataStore.facilities
}

// D1에서 대표시설 정보를 로드하여 facilities에 병합
async function loadRepresentativeSettings(db: any) {
  if (!db) return
  
  try {
    const { results } = await db.prepare(`
      SELECT facility_id, is_representative, sido, sigungu
      FROM facility_settings
      WHERE is_representative = 1
    `).all()
    
    if (results && results.length > 0) {
      console.log(`Loaded ${results.length} representative facilities from D1`)
      
      // facilities 데이터에 대표시설 정보 병합
      dataStore.facilities.forEach((facility: any) => {
        const setting = results.find((s: any) => s.facility_id == facility.id)
        facility.isRepresentative = setting ? true : false
      })
    }
  } catch (error) {
    console.error('Failed to load representative settings:', error)
  }
}

// 시설 정보 업데이트 API
app.post('/api/admin/facility/update', async (c) => {
  console.log('🔧 시설 업데이트 API 호출됨')
  
  if (!isAdmin(c)) {
    console.log('❌ 권한 없음')
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const data = await c.req.json()
    console.log('📝 업데이트 요청 데이터:', { id: data.id, name: data.name, type: data.type })
    
    // 현재 요청 URL에서 baseUrl 추출
    const url = new URL(c.req.url)
    const baseUrl = `${url.protocol}//${url.host}`
    
    // 시설 데이터 로드
    const facilities = await loadFacilities(baseUrl)
    console.log('✅ 시설 데이터 로드 완료:', facilities.length, '개, 타입:', Array.isArray(facilities))
    
    // 배열 검증
    if (!Array.isArray(facilities) || facilities.length === 0) {
      console.error('❌ 시설 데이터가 배열이 아니거나 비어있음')
      return c.json({ success: false, message: '시설 데이터 로드 실패' }, 500)
    }
    
    // 시설 찾기 (ID 타입 유연하게 비교)
    const facility = facilities.find((f: any) => 
      f.id == data.id || String(f.id) === String(data.id)
    )
    
    if (!facility) {
      console.log('❌ 시설을 찾을 수 없음:', data.id)
      console.log('📋 샘플 ID들:', facilities.slice(0, 5).map((f: any) => f.id))
      return c.json({ success: false, message: '시설을 찾을 수 없습니다.' }, 404)
    }
    
    console.log('✅ 시설 찾음:', facility.name)
    
    // 시설 정보 업데이트 (기존 lat, lng, isRepresentative는 유지)
    facility.name = data.name
    facility.type = data.type
    facility.phone = data.phone || ''
    facility.sido = data.sido
    facility.sigungu = data.sigungu
    facility.address = data.address
    facility.zipcode = data.zipcode || ''
    
    return c.json({ 
      success: true, 
      message: '시설 정보가 업데이트되었습니다. (메모리 업데이트)',
      facility: facility,
      note: '서버 재시작 시 초기화됩니다. 영구 저장을 위해서는 D1 Database가 필요합니다.'
    })
  } catch (error) {
    console.error('시설 업데이트 오류:', error)
    return c.json({ success: false, message: '시설 정보 업데이트 실패', error: String(error) }, 500)
  }
})

// 관리자: 대표시설 정보만 조회 (가벼운 API)
app.get('/api/admin/facilities/representative-info', async (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const db = c.env.DB
    if (!db) {
      return c.json([]) // D1 없으면 빈 배열
    }
    
    const { results } = await db.prepare(`
      SELECT facility_id, is_representative, sido, sigungu
      FROM facility_settings
      WHERE is_representative = 1
    `).all()
    
    return c.json(results || [])
  } catch (error) {
    console.error('대표시설 정보 조회 오류:', error)
    return c.json([])
  }
})

// 관리자: 대표시설 정보 포함한 시설 목록 조회 API
app.get('/api/admin/facilities/with-representative', async (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    // 시설 데이터 로드
    await loadFacilities()
    
    const db = c.env.DB
    if (db) {
      // D1에서 대표시설 정보 로드
      await loadRepresentativeSettings(db)
    }
    
    return c.json(dataStore.facilities)
  } catch (error) {
    console.error('시설 목록 조회 오류:', error)
    return c.json({ error: '시설 목록 조회 실패' }, 500)
  }
})

// 시설 대표시설 지정 API
// 대표시설 정보 포함된 시설 목록 조회
app.get('/api/facilities/with-representative', async (c) => {
  try {
    // 현재 요청 URL에서 baseUrl 추출
    const url = new URL(c.req.url)
    const baseUrl = `${url.protocol}//${url.host}`
    
    // 기본 시설 데이터 로드
    const facilities = await loadFacilities(baseUrl)
    console.log('📊 로드된 시설 수:', facilities.length)
    
    // 배열 검증
    if (!Array.isArray(facilities)) {
      console.error('❌ 시설 데이터가 배열이 아님:', typeof facilities)
      return c.json([], 200)
    }
    
    // 복사본 생성
    const facilitiesData = [...facilities]
    
    // D1에서 대표시설 정보 가져오기
    const db = c.env.DB
    if (db) {
      try {
        const { results } = await db.prepare(`
          SELECT facility_id, is_representative 
          FROM facility_settings 
          WHERE is_representative = 1
        `).all()
        
        // 대표시설 정보 병합
        const representativeMap = new Map(
          results.map((r: any) => [String(r.facility_id), true])
        )
        
        facilitiesData.forEach(f => {
          f.isRepresentative = representativeMap.has(String(f.id)) || false
        })
        
        console.log(`✅ 대표시설 ${results.length}개 로드됨`)
      } catch (dbError) {
        console.error('❌ D1 조회 실패:', dbError)
        // D1 실패 시 메모리 데이터 사용
      }
    }
    
    return c.json(facilitiesData)
  } catch (error) {
    console.error('시설 목록 조회 실패:', error)
    return c.json({ error: 'Internal server error', details: String(error) }, 500)
  }
})

app.post('/api/admin/facility/set-representative', async (c) => {
  console.log('🔵 API 호출됨:', '/api/admin/facility/set-representative')
  
  const isAdminCheck = isAdmin(c)
  console.log('🔐 관리자 체크 결과:', isAdminCheck)
  
  if (!isAdminCheck) {
    console.log('❌ 관리자 권한 없음')
    return c.json({ error: 'Unauthorized', debug: '관리자 권한이 필요합니다' }, 401)
  }
  
  try {
    const { id, isRepresentative } = await c.req.json()
    console.log('📥 요청 데이터:', { id, isRepresentative })
    
    // 현재 요청 URL에서 baseUrl 추출
    const url = new URL(c.req.url)
    const baseUrl = `${url.protocol}//${url.host}`
    
    // 시설 데이터 로드
    const facilities = await loadFacilities(baseUrl)
    console.log('📊 로드된 시설 수:', facilities.length, '타입:', Array.isArray(facilities))
    
    // 배열 검증
    if (!Array.isArray(facilities) || facilities.length === 0) {
      console.error('❌ 시설 데이터가 배열이 아니거나 비어있음')
      return c.json({ success: false, message: '시설 데이터 로드 실패' }, 500)
    }
    
    // 대상 시설 찾기
    const targetFacility = facilities.find((f: any) => f.id == id || String(f.id) === String(id))
    console.log('🔍 시설 찾기 결과:', targetFacility?.name || '없음')
    
    if (!targetFacility) {
      return c.json({ success: false, message: '시설을 찾을 수 없습니다.' }, 404)
    }
    
    const db = c.env.DB
    
    if (db) {
      // D1 데이터베이스에 저장
      console.log('💾 D1 데이터베이스에 저장 시작')
      
      try {
        // 대표시설 지정 시, 같은 지역의 다른 대표시설 해제
        if (isRepresentative) {
          await db.prepare(`
            UPDATE facility_settings 
            SET is_representative = 0, updated_at = datetime('now')
            WHERE sido = ? AND sigungu = ? AND is_representative = 1 AND facility_id != ?
          `).bind(targetFacility.sido, targetFacility.sigungu, id).run()
          
          console.log('✅ 기존 대표시설 해제:', targetFacility.sido, targetFacility.sigungu)
        }
        
        // UPSERT: 시설 설정 업데이트 또는 삽입
        await db.prepare(`
          INSERT INTO facility_settings (facility_id, is_representative, sido, sigungu, updated_at)
          VALUES (?, ?, ?, ?, datetime('now'))
          ON CONFLICT(facility_id) DO UPDATE SET
            is_representative = excluded.is_representative,
            updated_at = datetime('now')
        `).bind(id, isRepresentative ? 1 : 0, targetFacility.sido, targetFacility.sigungu).run()
        
        console.log('✅ D1 데이터베이스 저장 완료')
        
        // 메모리 데이터도 업데이트
        targetFacility.isRepresentative = isRepresentative
        if (isRepresentative && Array.isArray(facilities)) {
          facilities.forEach((f: any) => {
            if (f.id !== id && 
                f.sido === targetFacility.sido && 
                f.sigungu === targetFacility.sigungu) {
              f.isRepresentative = false
            }
          })
        }
        
        return c.json({ 
          success: true, 
          message: isRepresentative ? '대표시설로 지정되었습니다. (D1 저장 완료)' : '대표시설 지정이 해제되었습니다. (D1 저장 완료)',
          storage: 'D1 Database'
        })
      } catch (dbError) {
        console.error('❌ D1 저장 실패:', dbError)
        throw dbError
      }
    } else {
      // D1이 없으면 메모리에만 저장 (폴백)
      console.log('⚠️ D1 없음, 메모리 저장')
      
      if (isRepresentative && Array.isArray(facilities)) {
        facilities.forEach((f: any) => {
          if (f.id !== id && 
              f.sido === targetFacility.sido && 
              f.sigungu === targetFacility.sigungu && 
              f.isRepresentative) {
            f.isRepresentative = false
          }
        })
      }
      
      targetFacility.isRepresentative = isRepresentative
      
      return c.json({ 
        success: true, 
        message: isRepresentative ? '대표시설로 지정되었습니다. (메모리 저장)' : '대표시설 지정이 해제되었습니다. (메모리 저장)',
        storage: 'Memory',
        note: '서버 재시작 시 초기화됩니다. D1 데이터베이스 연동 필요.'
      })
    }
  } catch (error) {
    console.error('대표시설 설정 오류:', error)
    return c.json({ success: false, message: '대표시설 설정 실패', error: String(error) }, 500)
  }
})

// 신규 시설 등록 API
app.post('/api/admin/facility/create', async (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const data = await c.req.json()
    
    // 현재 요청 URL에서 baseUrl 추출
    const url = new URL(c.req.url)
    const baseUrl = `${url.protocol}//${url.host}`
    
    // 시설 데이터 로드
    const facilities = await loadFacilities(baseUrl)
    
    // 배열 검증
    if (!Array.isArray(facilities)) {
      return c.json({ success: false, message: '시설 데이터 로드 실패' }, 500)
    }
    
    // 새로운 ID 생성
    const maxId = Math.max(...facilities.map((f: any) => parseInt(f.id) || 0))
    const newId = String(maxId + 1)
    
    // 새 시설 객체 생성
    const newFacility = {
      id: newId,
      name: data.name,
      type: data.type,
      phone: data.phone || '',
      sido: data.sido,
      sigungu: data.sigungu,
      address: data.address,
      zipcode: data.zipcode || '',
      lat: 0.0,
      lng: 0.0,
      isRepresentative: false
    }
    
    // 배열에 추가
    facilities.push(newFacility)
    
    return c.json({ 
      success: true, 
      message: '새로운 시설이 등록되었습니다. (메모리 업데이트)',
      facility: newFacility,
      note: '서버 재시작 시 초기화됩니다. 영구 저장을 위해서는 D1 Database가 필요합니다.'
    })
  } catch (error) {
    console.error('시설 등록 오류:', error)
    return c.json({ success: false, message: '시설 등록 실패' }, 500)
  }
})

// 시설 삭제 API
app.post('/api/admin/facility/delete', async (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const { id } = await c.req.json()
    
    // 현재 요청 URL에서 baseUrl 추출
    const url = new URL(c.req.url)
    const baseUrl = `${url.protocol}//${url.host}`
    
    // 시설 데이터 로드
    const facilities = await loadFacilities(baseUrl)
    
    // 배열 검증
    if (!Array.isArray(facilities)) {
      return c.json({ success: false, message: '시설 데이터 로드 실패' }, 500)
    }
    
    // 시설 찾기 (ID 타입 유연하게 비교)
    const index = facilities.findIndex((f: any) => 
      f.id == id || String(f.id) === String(id)
    )
    if (index === -1) {
      return c.json({ success: false, message: '시설을 찾을 수 없습니다.' }, 404)
    }
    
    // 시설 제거
    const deletedFacility = facilities.splice(index, 1)[0]
    
    return c.json({ 
      success: true, 
      message: '시설이 삭제되었습니다. (메모리 업데이트)',
      deleted: deletedFacility,
      note: '서버 재시작 시 초기화됩니다. 영구 저장을 위해서는 D1 Database가 필요합니다.'
    })
  } catch (error) {
    console.error('시설 삭제 오류:', error)
    return c.json({ success: false, message: '시설 삭제 실패' }, 500)
  }
})

// 실시간 견적 플랫폼 페이지
// 통합 신청 페이지 (견적/상담/왕진 통합)
app.get('/apply', (c) => {
  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>서비스 신청 - 케어조아</title>
      <script src="https://cdn.tailwindcss.com"></script>
      <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet">
    </head>
    <body class="bg-gradient-to-br from-indigo-50 via-purple-50 to-pink-50 min-h-screen">
      <!-- 헤더 -->
      <header class="bg-white shadow-sm sticky top-0 z-50">
        <div class="max-w-4xl mx-auto px-4 py-4 flex items-center justify-between">
          <button onclick="history.back()" class="text-gray-600 hover:text-purple-600">
            <i class="fas fa-arrow-left text-xl"></i>
          </button>
          <h1 class="text-lg font-bold text-gray-800">
            <i class="fas fa-clipboard-list text-purple-600 mr-2"></i>
            서비스 신청
          </h1>
          <div class="w-8"></div>
        </div>
      </header>

      <main class="max-w-4xl mx-auto px-4 py-6">
        <!-- 안내 -->
        <div class="bg-white rounded-2xl shadow-lg p-6 mb-6">
          <h2 class="text-xl font-bold text-gray-900 mb-3">
            <i class="fas fa-hand-holding-heart text-purple-600 mr-2"></i>
            필요하신 서비스를 선택해주세요
          </h2>
          <p class="text-sm text-gray-600">
            한 번의 신청으로 맞춤형 서비스를 받으실 수 있습니다
          </p>
        </div>

        <!-- Step 1: 서비스 유형 선택 -->
        <div id="step1" class="bg-white rounded-2xl shadow-lg p-6 mb-6">
          <div class="flex items-center mb-6">
            <div class="bg-purple-600 text-white rounded-full w-8 h-8 flex items-center justify-center font-bold mr-3">1</div>
            <h3 class="text-lg font-bold text-gray-900">신청 유형 선택</h3>
          </div>

          <div class="grid sm:grid-cols-2 gap-4">
            <label class="service-type-card cursor-pointer">
              <input type="radio" name="serviceType" value="상세견적" class="hidden" onchange="handleServiceTypeChange()">
              <div class="service-card border-2 border-gray-200 rounded-xl p-6 hover:border-purple-500 hover:shadow-lg transition-all">
                <div class="flex items-center mb-3">
                  <div class="bg-green-100 rounded-full p-3 mr-3">
                    <i class="fas fa-file-invoice text-green-600 text-2xl"></i>
                  </div>
                  <div>
                    <h4 class="font-bold text-gray-900">상세 견적</h4>
                    <p class="text-xs text-gray-500">5분 소요</p>
                  </div>
                </div>
                <p class="text-sm text-gray-600">상세한 요구사항 맞춤 견적</p>
              </div>
            </label>

            <label class="service-type-card cursor-pointer">
              <input type="radio" name="serviceType" value="전화상담" class="hidden" onchange="handleServiceTypeChange()">
              <div class="service-card border-2 border-gray-200 rounded-xl p-6 hover:border-purple-500 hover:shadow-lg transition-all">
                <div class="flex items-center mb-3">
                  <div class="bg-purple-100 rounded-full p-3 mr-3">
                    <i class="fas fa-phone-alt text-purple-600 text-2xl"></i>
                  </div>
                  <div>
                    <h4 class="font-bold text-gray-900">전화 상담</h4>
                    <p class="text-xs text-gray-500">전문가 연결</p>
                  </div>
                </div>
                <p class="text-sm text-gray-600">전문 상담사가 직접 안내</p>
              </div>
            </label>

            <label class="service-type-card cursor-pointer">
              <input type="radio" name="serviceType" value="한의사왕진" class="hidden" onchange="handleServiceTypeChange()">
              <div class="service-card border-2 border-gray-200 rounded-xl p-6 hover:border-purple-500 hover:shadow-lg transition-all">
                <div class="flex items-center mb-3">
                  <div class="bg-emerald-100 rounded-full p-3 mr-3">
                    <i class="fas fa-user-md text-emerald-600 text-2xl"></i>
                  </div>
                  <div>
                    <h4 class="font-bold text-gray-900">한의사 왕진</h4>
                    <p class="text-xs text-gray-500 bg-green-100 text-green-700 px-2 py-0.5 rounded-full inline-block">일차의료</p>
                  </div>
                </div>
                <p class="text-sm text-gray-600">집에서 편안한 한의 진료</p>
              </div>
            </label>
          </div>
        </div>

        <!-- Step 2: 공통 정보 입력 -->
        <div id="step2" class="hidden bg-white rounded-2xl shadow-lg p-6 mb-6">
          <div class="flex items-center mb-6">
            <div class="bg-purple-600 text-white rounded-full w-8 h-8 flex items-center justify-center font-bold mr-3">2</div>
            <h3 class="text-lg font-bold text-gray-900">기본 정보 입력</h3>
          </div>

          <div class="space-y-4">
            <div>
              <label class="block text-sm font-medium text-gray-700 mb-2">
                <i class="fas fa-user text-purple-600 mr-1"></i>
                이름 *
              </label>
              <input type="text" id="name" required class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-purple-600">
            </div>

            <div>
              <label class="block text-sm font-medium text-gray-700 mb-2">
                <i class="fas fa-phone text-green-600 mr-1"></i>
                연락처 *
              </label>
              <input type="tel" id="phone" required placeholder="010-0000-0000" class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-purple-600">
            </div>

            <div class="grid sm:grid-cols-2 gap-4">
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">
                  <i class="fas fa-map-marker-alt text-red-600 mr-1"></i>
                  시/도 *
                </label>
                <select id="sido" required class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-purple-600">
                  <option value="">선택해주세요</option>
                </select>
              </div>
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">
                  <i class="fas fa-map-pin text-blue-600 mr-1"></i>
                  시/군/구 *
                </label>
                <select id="sigungu" required disabled class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-purple-600">
                  <option value="">먼저 시/도를 선택해주세요</option>
                </select>
              </div>
            </div>
          </div>
        </div>

        <!-- Step 3: 유형별 추가 정보 -->
        <div id="step3" class="hidden bg-white rounded-2xl shadow-lg p-6 mb-6">
          <div class="flex items-center mb-6">
            <div class="bg-purple-600 text-white rounded-full w-8 h-8 flex items-center justify-center font-bold mr-3">3</div>
            <h3 class="text-lg font-bold text-gray-900">추가 정보</h3>
          </div>

          <!-- 간편견적 추가 정보 -->
          <div id="simple-quote-fields" class="hidden">
            <div class="space-y-4">
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">시설 유형</label>
                <select id="facilityType" class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-purple-600">
                  <option value="">선택해주세요</option>
                  <option value="요양병원">요양병원</option>
                  <option value="요양원">요양원</option>
                  <option value="주야간보호">주야간보호센터</option>
                </select>
              </div>
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">요양등급</label>
                <select id="careGrade" class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-purple-600">
                  <option value="">선택해주세요</option>
                  <option value="1">1등급</option>
                  <option value="2">2등급</option>
                  <option value="3">3등급</option>
                  <option value="4">4등급</option>
                  <option value="5">5등급</option>
                  <option value="인지지원">인지지원등급</option>
                </select>
              </div>
            </div>
          </div>

          <!-- 상세견적 추가 정보 -->
          <div id="detailed-quote-fields" class="hidden">
            <div class="space-y-4">
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">환자 나이</label>
                <input type="number" id="patientAge" class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-purple-600">
              </div>
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">특이사항</label>
                <textarea id="specialNotes" rows="4" class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-purple-600"></textarea>
              </div>
            </div>
          </div>

          <!-- 전화상담 추가 정보 -->
          <div id="call-consultation-fields" class="hidden">
            <div class="space-y-4">
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">상담 희망 시간</label>
                <select id="preferredTime" class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-purple-600">
                  <option value="">선택해주세요</option>
                  <option value="오전 9-12시">오전 9-12시</option>
                  <option value="오후 12-3시">오후 12-3시</option>
                  <option value="오후 3-6시">오후 3-6시</option>
                  <option value="저녁 6-9시">저녁 6-9시</option>
                </select>
              </div>
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">상담 내용</label>
                <textarea id="consultationContent" rows="4" class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-purple-600"></textarea>
              </div>
            </div>
          </div>

          <!-- 한의사왕진 추가 정보 -->
          <div id="haniwon-fields" class="hidden">
            <div class="space-y-4">
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">증상 (복수 선택 가능)</label>
                <div class="grid sm:grid-cols-2 gap-2">
                  <label class="flex items-center">
                    <input type="checkbox" value="근골격계 통증" class="mr-2">
                    <span class="text-sm">근골격계 통증</span>
                  </label>
                  <label class="flex items-center">
                    <input type="checkbox" value="만성 통증" class="mr-2">
                    <span class="text-sm">만성 통증</span>
                  </label>
                  <label class="flex items-center">
                    <input type="checkbox" value="중풍 후유증" class="mr-2">
                    <span class="text-sm">중풍 후유증</span>
                  </label>
                  <label class="flex items-center">
                    <input type="checkbox" value="소화기 질환" class="mr-2">
                    <span class="text-sm">소화기 질환</span>
                  </label>
                </div>
              </div>
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">희망 방문 일시</label>
                <input type="datetime-local" id="visitDateTime" class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-purple-600">
              </div>
            </div>
          </div>
        </div>

        <!-- 제출 버튼 -->
        <div id="submitSection" class="hidden">
          <button id="submitBtn" class="w-full bg-gradient-to-r from-purple-600 to-indigo-600 text-white py-4 rounded-xl font-bold text-lg shadow-xl hover:shadow-2xl transition-all transform hover:scale-105">
            <i class="fas fa-paper-plane mr-2"></i>
            신청하기
          </button>
        </div>
      </main>

      <script>
        const SIDO_LIST = [
          '서울특별시', '부산광역시', '대구광역시', '인천광역시', '광주광역시',
          '대전광역시', '울산광역시', '세종특별자치시', '경기도', '강원특별자치도',
          '충청북도', '충청남도', '전북특별자치도', '전라남도', '경상북도',
          '경상남도', '제주특별자치도'
        ];

        let selectedService = '';

        // 초기화
        document.addEventListener('DOMContentLoaded', () => {
          const sidoSelect = document.getElementById('sido');
          SIDO_LIST.forEach(sido => {
            const option = document.createElement('option');
            option.value = sido;
            option.textContent = sido;
            sidoSelect.appendChild(option);
          });
        });

        // 서비스 유형 선택
        function handleServiceTypeChange() {
          const selected = document.querySelector('input[name="serviceType"]:checked');
          if (!selected) return;

          selectedService = selected.value;

          // 모든 카드 초기화
          document.querySelectorAll('.service-card').forEach(card => {
            card.classList.remove('border-purple-500', 'bg-purple-50');
            card.classList.add('border-gray-200');
          });

          // 선택된 카드 강조
          const selectedCard = selected.parentElement.querySelector('.service-card');
          selectedCard.classList.remove('border-gray-200');
          selectedCard.classList.add('border-purple-500', 'bg-purple-50');

          // Step 2 표시
          document.getElementById('step2').classList.remove('hidden');
          document.getElementById('step3').classList.remove('hidden');
          document.getElementById('submitSection').classList.remove('hidden');

          // 추가 정보 필드 표시/숨김
          hideAllExtraFields();
          showExtraFields(selectedService);
        }

        function hideAllExtraFields() {
          document.getElementById('simple-quote-fields').classList.add('hidden');
          document.getElementById('detailed-quote-fields').classList.add('hidden');
          document.getElementById('call-consultation-fields').classList.add('hidden');
          document.getElementById('haniwon-fields').classList.add('hidden');
        }

        function showExtraFields(service) {
          switch(service) {
            case '간편견적':
              document.getElementById('simple-quote-fields').classList.remove('hidden');
              break;
            case '상세견적':
              document.getElementById('detailed-quote-fields').classList.remove('hidden');
              break;
            case '전화상담':
              document.getElementById('call-consultation-fields').classList.remove('hidden');
              break;
            case '한의사왕진':
              document.getElementById('haniwon-fields').classList.remove('hidden');
              break;
          }
        }

        // 제출
        document.getElementById('submitBtn')?.addEventListener('click', () => {
          const name = document.getElementById('name').value;
          const phone = document.getElementById('phone').value;
          const sido = document.getElementById('sido').value;
          const sigungu = document.getElementById('sigungu').value;

          if (!name || !phone || !sido || !sigungu) {
            alert('필수 정보를 모두 입력해주세요.');
            return;
          }

          alert(\`\${selectedService} 신청이 접수되었습니다.\\n담당자가 곧 연락드리겠습니다.\`);
          window.location.href = '/';
        });
      </script>
    </body>
    </html>
  `)
})

app.get('/quote-request', (c) => {
  return c.render(
    <div class="min-h-screen bg-gradient-to-br from-teal-50 via-white to-blue-50"><header class="bg-white shadow-md border-b-2 border-teal-500">
        <div class="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8">
          <div class="flex justify-between items-center h-16">
            <div class="flex items-center">
              <a href="/" class="flex items-center hover:opacity-80 transition">
                <img 
                  src="https://page.gensparksite.com/v1/base64_upload/b39dca8586af1dacd6d8417554313896" 
                  alt="케어조아 로고"
                  class="h-10 w-auto mr-3"
                />
                <h1 class="text-2xl font-bold text-teal-600">케어조아</h1>
              </a>
            </div>
            <a href="/" class="text-gray-600 hover:text-teal-600 transition font-medium">
              <i class="fas fa-home mr-2"></i>홈으로
            </a>
          </div>
        </div>
      </header>


      <div class="max-w-4xl mx-auto px-4 py-12"><div class="text-center mb-8">
          <h2 class="text-5xl font-extrabold text-gray-900 mb-4">
            <i class="fas fa-bolt text-teal-600 mr-3"></i>
            간편 견적 신청
          </h2>
          <p class="text-xl text-gray-600">
            3단계만 입력하면 해당 지역 시설에 자동으로 견적 요청이 전송됩니다
          </p>
        </div>
        
        {/* 월 신청 횟수 제한 안내 */}
        <div class="bg-yellow-50 border-2 border-yellow-200 rounded-xl p-6 mb-8">
          <div class="flex items-start">
            <i class="fas fa-exclamation-circle text-yellow-600 text-2xl mr-4 mt-1"></i>
            <div class="flex-1">
              <h3 class="font-bold text-gray-900 text-lg mb-2">
                📌 견적 신청 안내
              </h3>
              <ul class="space-y-2 text-gray-700">
                <li class="flex items-start">
                  <i class="fas fa-check-circle text-yellow-600 mr-2 mt-1"></i>
                  <span><strong>월 2회 제한:</strong> 견적 신청은 한 달에 최대 2회까지 가능합니다</span>
                </li>
                <li class="flex items-start">
                  <i class="fas fa-check-circle text-yellow-600 mr-2 mt-1"></i>
                  <span><strong>동일 전화번호:</strong> 전화번호를 기준으로 신청 횟수가 계산됩니다</span>
                </li>
                <li class="flex items-start">
                  <i class="fas fa-check-circle text-yellow-600 mr-2 mt-1"></i>
                  <span><strong>초기화:</strong> 매월 1일 자정에 신청 횟수가 초기화됩니다</span>
                </li>
              </ul>
            </div>
          </div>
        </div><div class="bg-white rounded-2xl shadow-2xl overflow-hidden">
          <form id="simpleQuoteForm" class="p-8 space-y-8"><div class="border-b-2 border-gray-200 pb-8">
              <div class="flex items-center mb-6">
                <div class="w-10 h-10 bg-teal-600 text-white rounded-full flex items-center justify-center font-bold text-lg mr-4">
                  1
                </div>
                <h3 class="text-2xl font-bold text-gray-900">시설을 선택해 주세요</h3>
              </div>
              
              <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
                <label class="relative cursor-pointer group">
                  <input type="radio" name="facility_type" value="요양병원" required class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-xl p-6 text-center hover:border-teal-500 peer-checked:border-teal-600 peer-checked:bg-teal-50 transition-all">
                    <i class="fas fa-hospital text-3xl text-gray-400 mb-3 group-hover:text-teal-600 peer-checked:text-teal-600"></i>
                    <div class="font-semibold text-gray-700 group-hover:text-teal-700 peer-checked:text-teal-700">요양병원</div>
                  </div>
                </label>
                
                <label class="relative cursor-pointer group">
                  <input type="radio" name="facility_type" value="요양원" required class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-xl p-6 text-center hover:border-teal-500 peer-checked:border-teal-600 peer-checked:bg-teal-50 transition-all">
                    <i class="fas fa-home text-3xl text-gray-400 mb-3 group-hover:text-teal-600 peer-checked:text-teal-600"></i>
                    <div class="font-semibold text-gray-700 group-hover:text-teal-700 peer-checked:text-teal-700">요양원</div>
                  </div>
                </label>
                
                <label class="relative cursor-pointer group">
                  <input type="radio" name="facility_type" value="주야간보호" required class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-xl p-6 text-center hover:border-teal-500 peer-checked:border-teal-600 peer-checked:bg-teal-50 transition-all">
                    <i class="fas fa-sun text-3xl text-gray-400 mb-3 group-hover:text-teal-600 peer-checked:text-teal-600"></i>
                    <div class="font-semibold text-gray-700 group-hover:text-teal-700 peer-checked:text-teal-700">주야간보호</div>
                  </div>
                </label>
                
                <label class="relative cursor-pointer group">
                  <input type="radio" name="facility_type" value="재가복지센터" required class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-xl p-6 text-center hover:border-teal-500 peer-checked:border-teal-600 peer-checked:bg-teal-50 transition-all">
                    <i class="fas fa-hands-helping text-3xl text-gray-400 mb-3 group-hover:text-teal-600 peer-checked:text-teal-600"></i>
                    <div class="font-semibold text-gray-700 group-hover:text-teal-700 peer-checked:text-teal-700">재가복지센터</div>
                  </div>
                </label>
                
                <label class="relative cursor-pointer group">
                  <input type="radio" name="facility_type" value="한의사왕진" required class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-xl p-6 text-center hover:border-teal-500 peer-checked:border-teal-600 peer-checked:bg-teal-50 transition-all">
                    <i class="fas fa-user-md text-3xl text-gray-400 mb-3 group-hover:text-teal-600 peer-checked:text-teal-600"></i>
                    <div class="font-semibold text-gray-700 group-hover:text-teal-700 peer-checked:text-teal-700">한의사왕진</div>
                    <span class="inline-block mt-1 bg-green-100 text-green-700 text-xs px-2 py-0.5 rounded-full">일차의료</span>
                  </div>
                </label>
              </div>
            </div><div class="border-b-2 border-gray-200 pb-8">
              <div class="flex items-center mb-6">
                <div class="w-10 h-10 bg-teal-600 text-white rounded-full flex items-center justify-center font-bold text-lg mr-4">
                  2
                </div>
                <h3 class="text-2xl font-bold text-gray-900">지역을 선택해 주세요</h3>
              </div>
              
              <div class="grid md:grid-cols-2 gap-6">
                <div>
                  <label class="block text-sm font-semibold text-gray-700 mb-3">
                    <i class="fas fa-map-marker-alt text-teal-600 mr-2"></i>시∙도
                  </label>
                  <select name="sido" id="simple-sido" required 
                    class="w-full px-4 py-3 border-2 border-gray-300 rounded-xl focus:ring-2 focus:ring-teal-500 focus:border-teal-500 transition text-lg">
                    <option value="">선택해주세요</option>
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
                  <label class="block text-sm font-semibold text-gray-700 mb-3">
                    <i class="fas fa-location-arrow text-teal-600 mr-2"></i>시∙군∙구
                  </label>
                  <select name="sigungu" id="simple-sigungu" required
                    class="w-full px-4 py-3 border-2 border-gray-300 rounded-xl focus:ring-2 focus:ring-teal-500 focus:border-teal-500 transition text-lg">
                    <option value="">시∙도를 먼저 선택해주세요</option>
                  </select>
                </div>
              </div>
            </div><div class="pb-4">
              <div class="flex items-center mb-6">
                <div class="w-10 h-10 bg-teal-600 text-white rounded-full flex items-center justify-center font-bold text-lg mr-4">
                  3
                </div>
                <h3 class="text-2xl font-bold text-gray-900">현재 상태를 입력해 주세요</h3>
              </div>
              
              <div class="bg-yellow-50 border-l-4 border-yellow-400 p-4 mb-4 rounded-r-lg">
                <p class="text-sm text-yellow-800">
                  <i class="fas fa-info-circle mr-2"></i>
                  <strong>※ 요양병원의 경우</strong> 병명·상병을 상세하게 입력해주시면 더 정확한 견적을 받으실 수 있습니다.
                </p>
              </div>
              
              <textarea 
                name="current_status" 
                required
                rows="6"
                placeholder="예시:&#10;- 나이: 75세&#10;- 진단명: 뇌경색 (중풍)&#10;- 거동 상태: 휠체어 사용&#10;- 장기요양등급: 2등급&#10;- 특이사항: 당뇨 있음, 식사 도움 필요&#10;&#10;환자의 현재 상태를 자세히 적어주실수록 정확한 견적을 받으실 수 있습니다."
                class="w-full px-4 py-3 border-2 border-gray-300 rounded-xl focus:ring-2 focus:ring-teal-500 focus:border-teal-500 transition text-base"
              ></textarea>
            </div><div class="flex justify-center pt-4">
              <button type="submit" 
                class="bg-gradient-to-r from-teal-500 to-teal-600 text-white px-16 py-5 rounded-2xl text-xl font-bold hover:from-teal-600 hover:to-teal-700 shadow-2xl transform hover:scale-105 transition-all duration-200">
                <i class="fas fa-paper-plane mr-3"></i>
                견적 신청하기
              </button>
            </div>
          </form>
        </div><div class="mt-8 bg-blue-50 border border-blue-200 rounded-xl p-6">
          <h4 class="font-bold text-blue-900 mb-3 text-lg">
            <i class="fas fa-lightbulb text-yellow-500 mr-2"></i>
            견적 신청 후 진행 안내
          </h4>
          <ul class="space-y-2 text-blue-800">
            <li class="flex items-start">
              <i class="fas fa-check-circle text-blue-600 mr-2 mt-1"></i>
              <span>선택하신 지역의 등록된 모든 시설에 자동으로 견적 요청이 전송됩니다</span>
            </li>
            <li class="flex items-start">
              <i class="fas fa-check-circle text-blue-600 mr-2 mt-1"></i>
              <span>시설에서 직접 견적서를 작성하여 연락을 드립니다</span>
            </li>
            <li class="flex items-start">
              <i class="fas fa-check-circle text-blue-600 mr-2 mt-1"></i>
              <span>여러 시설의 견적을 비교하여 최적의 선택을 하실 수 있습니다</span>
            </li>
          </ul>
        </div>
      </div>

      <script dangerouslySetInnerHTML={{__html: `
        // URL 파라미터 확인 및 한의사왕진 자동 선택
        const urlParams = new URLSearchParams(window.location.search);
        const typeParam = urlParams.get('type');
        
        // 페이지 로드 시 한의사왕진 자동 선택
        if (typeParam === '한의사왕진') {
          window.addEventListener('DOMContentLoaded', () => {
            const haniwonRadio = document.querySelector('input[name="facility_type"][value="한의사왕진"]');
            if (haniwonRadio) {
              haniwonRadio.checked = true;
              // 선택된 스타일 적용
              const haniwonCard = haniwonRadio.closest('label').querySelector('.border-2');
              if (haniwonCard) {
                haniwonCard.classList.remove('border-gray-300');
                haniwonCard.classList.add('border-teal-600', 'bg-teal-50');
              }
              // 스크롤 애니메이션
              setTimeout(() => {
                haniwonRadio.closest('label').scrollIntoView({ behavior: 'smooth', block: 'center' });
              }, 300);
            }
          });
        }
        
        // 시군구 데이터
        const sigunguData = {
          '서울특별시': ['강남구', '강동구', '강북구', '강서구', '관악구', '광진구', '구로구', '금천구', '노원구', '도봉구', '동대문구', '동작구', '마포구', '서대문구', '서초구', '성동구', '성북구', '송파구', '양천구', '영등포구', '용산구', '은평구', '종로구', '중구', '중랑구'],
          '경기도': ['가평군', '고양시', '과천시', '광명시', '광주시', '구리시', '군포시', '김포시', '남양주시', '동두천시', '부천시', '성남시', '수원시', '시흥시', '안산시', '안성시', '안양시', '양주시', '양평군', '여주시', '연천군', '오산시', '용인시', '의왕시', '의정부시', '이천시', '파주시', '평택시', '포천시', '하남시', '화성시'],
          '인천광역시': ['강화군', '계양구', '남동구', '동구', '미추홀구', '부평구', '서구', '연수구', '옹진군', '중구'],
          '부산광역시': ['강서구', '금정구', '기장군', '남구', '동구', '동래구', '부산진구', '북구', '사상구', '사하구', '서구', '수영구', '연제구', '영도구', '중구', '해운대구'],
          '대구광역시': ['남구', '달서구', '달성군', '동구', '북구', '서구', '수성구', '중구'],
          '대전광역시': ['대덕구', '동구', '서구', '유성구', '중구'],
          '광주광역시': ['광산구', '남구', '동구', '북구', '서구'],
          '울산광역시': ['남구', '동구', '북구', '울주군', '중구'],
          '세종특별자치시': ['세종시'],
          '강원도': ['강릉시', '고성군', '동해시', '삼척시', '속초시', '양구군', '양양군', '영월군', '원주시', '인제군', '정선군', '철원군', '춘천시', '태백시', '평창군', '홍천군', '화천군', '횡성군'],
          '충청북도': ['괴산군', '단양군', '보은군', '영동군', '옥천군', '음성군', '제천시', '진천군', '청주시', '충주시', '증평군'],
          '충청남도': ['계룡시', '공주시', '금산군', '논산시', '당진시', '보령시', '부여군', '서산시', '서천군', '아산시', '예산군', '천안시', '청양군', '태안군', '홍성군'],
          '전라북도': ['고창군', '군산시', '김제시', '남원시', '무주군', '부안군', '순창군', '완주군', '익산시', '임실군', '장수군', '전주시', '정읍시', '진안군'],
          '전라남도': ['강진군', '고흥군', '곡성군', '광양시', '구례군', '나주시', '담양군', '목포시', '무안군', '보성군', '순천시', '신안군', '여수시', '영광군', '영암군', '완도군', '장성군', '장흥군', '진도군', '함평군', '해남군', '화순군'],
          '경상북도': ['경산시', '경주시', '고령군', '구미시', '군위군', '김천시', '문경시', '봉화군', '상주시', '성주군', '안동시', '영덕군', '영양군', '영주시', '영천시', '예천군', '울릉군', '울진군', '의성군', '청도군', '청송군', '칠곡군', '포항시'],
          '경상남도': ['거제시', '거창군', '고성군', '김해시', '남해군', '밀양시', '사천시', '산청군', '양산시', '의령군', '진주시', '창녕군', '창원시', '통영시', '하동군', '함안군', '함양군', '합천군'],
          '제주특별자치도': ['서귀포시', '제주시']
        };

        // 시도 변경 이벤트
        const sidoSelect = document.getElementById('simple-sido');
        const sigunguSelect = document.getElementById('simple-sigungu');

        sidoSelect.addEventListener('change', function() {
          const sido = this.value;
          sigunguSelect.innerHTML = '<option value="">선택해주세요</option>';
          
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
          const facility_type = formData.get('facility_type');
          const sido = formData.get('sido');
          const sigungu = formData.get('sigungu');
          const current_status = formData.get('current_status');
          
          // 필수 필드 검증
          if (!facility_type) {
            alert('❌ 시설 유형을 선택해주세요.');
            return;
          }
          
          if (!sido) {
            alert('❌ 시∙도를 선택해주세요.');
            document.getElementById('simple-sido').focus();
            return;
          }
          
          if (!sigungu) {
            alert('❌ 시∙군∙구를 선택해주세요.');
            document.getElementById('simple-sigungu').focus();
            return;
          }
          
          if (!current_status || current_status.trim().length < 10) {
            alert('❌ 현재 상태를 최소 10자 이상 입력해주세요.');
            document.querySelector('[name="current_status"]').focus();
            return;
          }
          
          const data = {
            type: 'simple',
            facility_type,
            sido,
            sigungu,
            current_status,
            created_at: new Date().toISOString()
          };

          try {
            const response = await fetch('/api/quote-request', {
              method: 'POST',
              headers: { 'Content-Type': 'application/json' },
              credentials: 'include',
              body: JSON.stringify(data)
            });

            const result = await response.json();

            if (response.ok) {
              alert('✅ 견적 신청이 완료되었습니다!\\n\\n해당 지역의 시설에서 곧 연락을 드릴 예정입니다.');
              window.location.href = '/';
            } else if (response.status === 429) {
              // 월 제한 초과
              const nextDate = result.nextAvailableDate || '다음 달';
              alert(\`❌ \${result.message || '견적 신청 횟수를 초과했습니다.'}\\n\\n다음 신청 가능일: \${nextDate}\`);
            } else {
              alert(\`❌ \${result.message || '견적 신청 중 오류가 발생했습니다.'}\`);
            }
          } catch (error) {
            console.error('Error:', error);
            alert('❌ 네트워크 오류가 발생했습니다. 다시 시도해주세요.');
          }
        });
      `}} />
    </div>
  )
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

// ============================================
// 🤖 AI 매칭 API - 고급 알고리즘 (v2)
// ============================================
// 포함 기능:
// - 예산 최적화 매칭
// - 환자 상태 키워드 분석
// - 평점/리뷰 통합
// - 협업 필터링 (유사 사용자 선택 패턴)
// - 거리/지역 가중치
// - 실시간 추천 이유 생성
// ============================================

app.post('/api/ai-matching', async (c) => {
  try {
    const criteria = await c.req.json()
    console.log('🤖 AI 매칭 요청 (v2):', criteria)
    
    const { env } = c
    
    // 현재 요청 URL에서 baseUrl 추출
    const url = new URL(c.req.url)
    const baseUrl = `${url.protocol}//${url.host}`
    
    // 시설 데이터 로드
    const facilities = await loadFacilities(baseUrl)
    
    if (!Array.isArray(facilities) || facilities.length === 0) {
      return c.json({ 
        success: false, 
        message: '시설 데이터를 불러올 수 없습니다.' 
      }, 500)
    }
    
    console.log(`📦 전체 시설: ${facilities.length}개`)
    
    // 1단계: 기본 필터링 (필수 조건)
    let filtered = facilities.filter(f => {
      // 지역 필터
      if (criteria.sido && f.sido !== criteria.sido) return false
      if (criteria.sigungu && f.sigungu !== criteria.sigungu) return false
      
      // 시설 타입 필터
      if (criteria.facilityType && f.type !== criteria.facilityType) return false
      
      return true
    })
    
    console.log(`📊 기본 필터링: ${filtered.length}개`)
    
    // 🆕 필터링 결과가 없으면 지역 조건만으로 재검색
    if (filtered.length === 0) {
      console.log('⚠️ 필터링 결과 없음 - 지역 조건만으로 재검색')
      filtered = facilities.filter(f => {
        // 시도만 일치하면 OK
        if (criteria.sido && f.sido === criteria.sido) return true
        return false
      })
      console.log(`🔄 지역 재검색: ${filtered.length}개`)
    }
    
    // 🆕 여전히 없으면 전체 시설에서 무작위 2개 선택
    if (filtered.length === 0) {
      console.log('⚠️ 여전히 결과 없음 - 전체 시설에서 2개 샘플링')
      // 무작위로 2개 선택
      const shuffled = [...facilities].sort(() => 0.5 - Math.random())
      filtered = shuffled.slice(0, 2)
      console.log(`🎲 전체 샘플링: ${filtered.length}개`)
    }
    
    // 2단계: 거리 계산
    if (criteria.userLocation?.lat && criteria.userLocation?.lng) {
      filtered = filtered.map(f => {
        if (f.lat && f.lng) {
          const distance = calculateDistance(
            criteria.userLocation.lat,
            criteria.userLocation.lng,
            f.lat,
            f.lng
          )
          return { ...f, distance }
        }
        return { ...f, distance: 999 }
      })
      
      // 최대 거리 필터링 (결과가 충분하면 적용)
      const maxDistance = criteria.maxDistance || 50
      const distanceFiltered = filtered.filter(f => f.distance <= maxDistance)
      
      // 🆕 거리 필터링 결과가 2개 이상이면 적용
      if (distanceFiltered.length >= 2) {
        filtered = distanceFiltered
        console.log(`🚗 거리 필터링 (${maxDistance}km 이내): ${filtered.length}개`)
      } else {
        console.log(`⚠️ 거리 필터링 스킵 (결과 ${distanceFiltered.length}개 < 2개)`)
        // 거리 정보는 유지하되, 필터링은 하지 않음
      }
    }
    
    // 3단계: D1에서 평점/리뷰 데이터 로드
    let facilityStats = new Map<number, any>()
    if (env?.DB) {
      try {
        const facilityIds = filtered.map(f => f.id).slice(0, 100) // 최대 100개까지만
        if (facilityIds.length > 0) {
          const placeholders = facilityIds.map(() => '?').join(',')
          const query = `
            SELECT 
              facility_id,
              AVG(overall_rating) as avg_rating,
              COUNT(*) as review_count,
              AVG(cleanliness_rating) as avg_cleanliness,
              AVG(staff_rating) as avg_staff,
              AVG(food_rating) as avg_food,
              AVG(facilities_rating) as avg_facilities
            FROM facility_reviews
            WHERE facility_id IN (${placeholders})
            GROUP BY facility_id
          `
          
          const result = await env.DB.prepare(query).bind(...facilityIds).all()
          
          result.results?.forEach((row: any) => {
            facilityStats.set(row.facility_id, {
              avgRating: row.avg_rating || 0,
              reviewCount: row.review_count || 0,
              avgCleanliness: row.avg_cleanliness || 0,
              avgStaff: row.avg_staff || 0,
              avgFood: row.avg_food || 0,
              avgFacilities: row.avg_facilities || 0
            })
          })
          
          console.log(`⭐ 평점 데이터 로드: ${facilityStats.size}개 시설`)
        }
      } catch (error) {
        console.error('⚠️ 평점 데이터 로드 실패:', error)
      }
    }
    
    // 3.5단계: 🆕 시설 상세 정보 로드 (specialties, admission_types)
    if (env?.DB) {
      try {
        const facilityIds = filtered.map(f => f.id).slice(0, 100)
        if (facilityIds.length > 0) {
          const placeholders = facilityIds.map(() => '?').join(',')
          const query = `
            SELECT 
              facility_id,
              specialties,
              specialized_care,
              admission_types,
              monthly_cost,
              deposit
            FROM facility_details
            WHERE facility_id IN (${placeholders})
          `
          
          const result = await env.DB.prepare(query).bind(...facilityIds).all()
          
          // 시설 객체에 상세 정보 병합
          result.results?.forEach((row: any) => {
            const facility = filtered.find(f => f.id === row.facility_id)
            if (facility) {
              facility.specialties = row.specialties
              facility.specialized_care = row.specialized_care
              facility.admission_types = row.admission_types
              facility.monthly_cost = row.monthly_cost
              facility.deposit = row.deposit
            }
          })
          
          console.log(`🩺 상세 정보 로드: ${result.results?.length || 0}개 시설`)
        }
      } catch (error) {
        console.error('⚠️ 상세 정보 로드 실패:', error)
      }
    }
    
    // 4단계: 협업 필터링 - 유사 사용자들이 선택한 시설
    let collaborativeScores = new Map<number, number>()
    if (env?.DB && criteria.careGrade) {
      try {
        // 같은 등급의 사용자들이 많이 선택한 시설 찾기
        const query = `
          SELECT 
            qr.facility_id,
            COUNT(*) as selection_count,
            AVG(CASE WHEN fs.rating > 0 THEN fs.rating ELSE 0 END) as avg_user_rating
          FROM quote_requests qr
          LEFT JOIN feedback_stats fs ON qr.facility_id = fs.facility_id
          WHERE qr.care_grade = ?
            AND qr.facility_id IS NOT NULL
          GROUP BY qr.facility_id
          HAVING selection_count >= 2
          ORDER BY selection_count DESC, avg_user_rating DESC
          LIMIT 50
        `
        
        const result = await env.DB.prepare(query).bind(criteria.careGrade).all()
        
        result.results?.forEach((row: any, index: number) => {
          // 선택 빈도가 높을수록 높은 점수 (최대 15점)
          const score = Math.min(15, (50 - index) * 0.3)
          collaborativeScores.set(row.facility_id, score)
        })
        
        console.log(`🤝 협업 필터링: ${collaborativeScores.size}개 시설에 보너스`)
      } catch (error) {
        console.error('⚠️ 협업 필터링 실패:', error)
      }
    }
    
    // 5단계: 고급 매칭 스코어 계산
    const scored = filtered.map(f => {
      const stats = facilityStats.get(f.id)
      const collaborativeScore = collaborativeScores.get(f.id) || 0
      
      const matchScore = calculateEnhancedMatchScore(
        f, 
        criteria, 
        stats,
        collaborativeScore
      )
      
      return {
        ...f,
        matchScore,
        stats,
        collaborativeScore,
        matchReasons: generateEnhancedMatchReasons(f, criteria, matchScore, stats)
      }
    })
    
    // 6단계: 정렬 (매칭 점수 + 평점 + 협업 필터링)
    scored.sort((a, b) => b.matchScore - a.matchScore)
    
    // 7단계: 최소 2개 보장 - 결과가 부족하면 전체에서 추가
    if (scored.length < 2 && facilities.length >= 2) {
      console.log(`⚠️ 추천 결과 부족 (${scored.length}개) - 전체에서 2개 추가 샘플링`)
      const shuffled = [...facilities].sort(() => 0.5 - Math.random())
      const additional = shuffled.slice(0, 2 - scored.length).map(f => ({
        ...f,
        matchScore: 50, // 기본 점수
        stats: null,
        collaborativeScore: 0,
        matchReasons: ['조건에 정확히 일치하지 않지만 추천드립니다']
      }))
      scored.push(...additional)
    }
    
    // 8단계: 상위 10개 선택 및 포맷팅
    const recommendations = scored.slice(0, 10).map((f, index) => ({
      id: f.id,
      rank: index + 1,
      name: f.name,
      type: f.type,
      address: f.address,
      sido: f.sido,
      sigungu: f.sigungu,
      phone: f.phone || '미등록',
      lat: f.lat,
      lng: f.lng,
      distance: f.distance ? `${f.distance.toFixed(1)}km` : '거리 정보 없음',
      distanceValue: f.distance || 999,
      matchScore: Math.round(f.matchScore),
      matchReasons: f.matchReasons,
      isRepresentative: f.isRepresentative || false,
      // 평점 정보
      rating: f.stats ? {
        average: Math.round(f.stats.avgRating * 10) / 10,
        count: f.stats.reviewCount,
        cleanliness: Math.round(f.stats.avgCleanliness * 10) / 10,
        staff: Math.round(f.stats.avgStaff * 10) / 10,
        food: Math.round(f.stats.avgFood * 10) / 10,
        facilities: Math.round(f.stats.avgFacilities * 10) / 10
      } : null,
      // 협업 필터링 보너스
      popularityBonus: f.collaborativeScore > 0
    }))
    
    console.log(`✅ 추천 완료: ${recommendations.length}개 (최고: ${recommendations[0]?.matchScore || 0}점)`)
    
    // 8단계: 사용자 피드백 기록 (비동기)
    if (env?.DB) {
      try {
        const topFacilityId = recommendations[0]?.id
        if (topFacilityId) {
          // 피드백 통계 업데이트 (노출 수 증가)
          await env.DB.prepare(`
            INSERT INTO feedback_stats (facility_id, impressions, clicks, last_shown)
            VALUES (?, 1, 0, datetime('now'))
            ON CONFLICT(facility_id) DO UPDATE SET
              impressions = impressions + 1,
              last_shown = datetime('now')
          `).bind(topFacilityId).run()
        }
      } catch (error) {
        console.error('⚠️ 피드백 기록 실패:', error)
      }
    }
    
    return c.json({
      success: true,
      total: filtered.length,
      recommendations,
      algorithm: 'enhanced_ai_v2',
      features: [
        'distance_optimization',
        'budget_matching',
        'rating_integration',
        'collaborative_filtering',
        'keyword_analysis'
      ],
      criteria: {
        sido: criteria.sido,
        sigungu: criteria.sigungu,
        facilityType: criteria.facilityType,
        careGrade: criteria.careGrade,
        budget: criteria.budget,
        hasUserLocation: !!(criteria.userLocation?.lat && criteria.userLocation?.lng),
        maxDistance: criteria.maxDistance || 50
      }
    })
  } catch (error) {
    console.error('❌ AI 매칭 오류:', error)
    return c.json({ 
      success: false, 
      message: '매칭 중 오류가 발생했습니다.',
      error: String(error)
    }, 500)
  }
})

// ============================================
// 🧮 고급 매칭 스코어 계산 함수
// ============================================
function calculateEnhancedMatchScore(
  facility: any, 
  criteria: any,
  stats: any,
  collaborativeScore: number
): number {
  let score = 0
  
  // 가중치 설정 (총 100점)
  const weights = {
    location: 20,       // 지역 일치
    distance: 18,       // 거리
    rating: 15,         // 평점
    collaborative: 15,  // 협업 필터링
    budget: 12,         // 예산 적합성
    facilityType: 8,    // 시설 타입
    phone: 5,           // 연락처
    representative: 4,  // 대표시설
    coordinates: 3      // 좌표 정보
  }
  
  // 1. 지역 완전 일치
  if (facility.sido === criteria.sido) {
    score += weights.location * 0.6
    if (facility.sigungu === criteria.sigungu) {
      score += weights.location * 0.4
    }
  }
  
  // 2. 거리 점수 (exponential decay)
  if (facility.distance !== undefined && facility.distance !== 999) {
    const distanceScore = Math.max(0, weights.distance * Math.exp(-facility.distance / 15))
    score += distanceScore
  }
  
  // 3. 평점 점수 (0-5점 → 0-15점)
  if (stats && stats.avgRating > 0) {
    const ratingScore = (stats.avgRating / 5) * weights.rating
    score += ratingScore
    
    // 리뷰 수 보너스 (최대 3점)
    const reviewBonus = Math.min(3, Math.log10(stats.reviewCount + 1) * 1.5)
    score += reviewBonus
  }
  
  // 4. 협업 필터링 점수
  score += collaborativeScore
  
  // 5. 예산 적합성 (추정 비용)
  if (criteria.budget) {
    const estimatedCost = estimateFacilityCost(facility, criteria)
    const budgetDiff = Math.abs(criteria.budget - estimatedCost) / criteria.budget
    
    if (budgetDiff < 0.1) {
      score += weights.budget  // 예산과 거의 일치
    } else if (budgetDiff < 0.2) {
      score += weights.budget * 0.8
    } else if (budgetDiff < 0.3) {
      score += weights.budget * 0.5
    } else if (estimatedCost < criteria.budget) {
      score += weights.budget * 0.3  // 예산 이하면 최소 점수
    }
  }
  
  // 6. 시설 타입 일치
  if (facility.type === criteria.facilityType) {
    score += weights.facilityType
  }
  
  // 7. 전화번호 있음
  if (facility.phone && facility.phone !== '미등록' && facility.phone !== '') {
    score += weights.phone
  }
  
  // 8. 대표시설 보너스
  if (facility.isRepresentative) {
    score += weights.representative
  }
  
  // 9. 좌표 정보
  if (facility.lat && facility.lng) {
    score += weights.coordinates
  }
  
  // 10. 환자 상태 키워드 매칭 (기존 방식)
  if (criteria.patientCondition) {
    const keywordScore = analyzePatientKeywords(criteria.patientCondition, facility)
    score += keywordScore  // 최대 5점
  }
  
  // 11. 🆕 전문 분야 매칭 (안전장치 포함)
  if (criteria.requiredSpecialties && criteria.requiredSpecialties.length > 0) {
    const specialtyScore = matchSpecialtiesWithSafety(facility, criteria)
    score += specialtyScore  // 최대 10점
  }
  
  // 12. 🆕 입소 유형 매칭 (안전장치 포함)
  if (criteria.admissionType) {
    const admissionScore = matchAdmissionTypeWithSafety(facility, criteria)
    score += admissionScore  // 최대 8점
  }
  
  return Math.min(100, score)
}

// ============================================
// 💰 시설 비용 추정 함수
// ============================================
function estimateFacilityCost(facility: any, criteria: any): number {
  // 기본 비용 (시설 타입별)
  let baseCost = 0
  
  switch (facility.type) {
    case '요양병원':
      baseCost = 2500000  // 250만원
      break
    case '요양원':
      baseCost = 2200000  // 220만원
      break
    case '주야간보호':
      baseCost = 1500000  // 150만원
      break
    case '재가복지센터':
      baseCost = 1200000  // 120만원
      break
    default:
      baseCost = 2000000
  }
  
  // 지역별 가격 조정 (서울/경기는 1.2배)
  if (facility.sido === '서울특별시' || facility.sido === '경기도') {
    baseCost *= 1.2
  }
  
  // 간병등급별 조정
  if (criteria.careGrade) {
    const gradeMultiplier: any = {
      '1등급': 1.3,
      '2등급': 1.2,
      '3등급': 1.1,
      '4등급': 1.0,
      '5등급': 0.9
    }
    baseCost *= gradeMultiplier[criteria.careGrade] || 1.0
  }
  
  return Math.round(baseCost)
}

// ============================================
// 🔍 환자 상태 키워드 분석 함수
// ============================================
function analyzePatientKeywords(condition: string, facility: any): number {
  if (!condition) return 0
  
  let score = 0
  const keywords = condition.toLowerCase()
  
  // 🆕 안전장치 1: facility_details에 specialties가 있으면 우선 사용
  const hasDetailedInfo = facility.specialties && Array.isArray(facility.specialties) && facility.specialties.length > 0
  
  // 치매 관련 키워드
  if (keywords.includes('치매') || keywords.includes('인지저하') || keywords.includes('알츠하이머')) {
    // 요양병원/요양원이 치매에 더 적합
    if (facility.type === '요양병원' || facility.type === '요양원') {
      score += 3
    }
  }
  
  // 중풍/뇌졸중 관련
  if (keywords.includes('중풍') || keywords.includes('뇌졸중') || keywords.includes('편마비')) {
    // 요양병원이 의료 케어에 더 적합
    if (facility.type === '요양병원') {
      score += 4
    } else if (facility.type === '요양원') {
      score += 2
    }
  }
  
  // 거동 불편
  if (keywords.includes('거동불편') || keywords.includes('휠체어') || keywords.includes('와상')) {
    if (facility.type === '요양병원' || facility.type === '요양원') {
      score += 3
    }
  }
  
  // 경증 (주간보호 적합)
  if (keywords.includes('경증') || keywords.includes('독립생활') || keywords.includes('일상생활')) {
    if (facility.type === '주야간보호' || facility.type === '재가복지센터') {
      score += 3
    }
  }
  
  return Math.min(5, score)
}

// ============================================
// 🆕 전문 분야 매칭 (안전장치 포함)
// ============================================
function matchSpecialtiesWithSafety(facility: any, criteria: any): number {
  const requiredSpecialties = criteria.requiredSpecialties || []
  if (requiredSpecialties.length === 0) return 0
  
  // 안전장치 1: facility_details가 없으면 시설 타입으로 추정
  let facilitySpecialties = []
  
  try {
    if (facility.specialties) {
      facilitySpecialties = typeof facility.specialties === 'string' 
        ? JSON.parse(facility.specialties) 
        : facility.specialties
    }
  } catch (e) {
    facilitySpecialties = []
  }
  
  // 안전장치 2: 상세정보가 없으면 시설 타입으로 기본 점수
  if (!facilitySpecialties || facilitySpecialties.length === 0) {
    return estimateSpecialtyByType(facility, requiredSpecialties)
  }
  
  // 상세정보가 있으면 정확한 매칭
  const matchCount = requiredSpecialties.filter((req: string) => 
    facilitySpecialties.includes(req)
  ).length
  
  const matchRate = matchCount / requiredSpecialties.length
  return Math.round(10 * matchRate)  // 최대 10점
}

// 시설 타입 기반 전문 분야 추정 (안전장치)
function estimateSpecialtyByType(facility: any, requiredSpecialties: string[]): number {
  let score = 0
  
  for (const specialty of requiredSpecialties) {
    if (specialty === '재활' || specialty === '중풍') {
      if (facility.type === '요양병원') score += 2
      else if (facility.type === '요양원') score += 1
    } else if (specialty === '치매') {
      if (facility.type === '요양병원' || facility.type === '요양원') score += 2
    } else if (specialty === '암' || specialty === '신장투석') {
      if (facility.type === '요양병원') score += 3  // 전문 의료 필요
    } else if (specialty === '당뇨' || specialty === '호흡기') {
      if (facility.type === '요양병원') score += 1
    }
  }
  
  return Math.min(5, score)  // 상세정보 없으면 최대 5점 (절반)
}

// ============================================
// 🆕 입소 유형 매칭 (안전장치 포함)
// ============================================
function matchAdmissionTypeWithSafety(facility: any, criteria: any): number {
  const requestedType = criteria.admissionType
  if (!requestedType) return 0
  
  // 안전장치: admission_types가 없으면 시설 타입으로 추정
  let admissionTypes = []
  
  try {
    if (facility.admission_types) {
      admissionTypes = typeof facility.admission_types === 'string'
        ? JSON.parse(facility.admission_types)
        : facility.admission_types
    }
  } catch (e) {
    admissionTypes = []
  }
  
  // 상세정보가 있으면 정확한 매칭
  if (admissionTypes && admissionTypes.length > 0) {
    return admissionTypes.includes(requestedType) ? 8 : 0
  }
  
  // 안전장치: 상세정보 없으면 시설 타입 기반 기본 점수
  if (requestedType === '정규입소') {
    return 4  // 모든 시설이 가능하다고 가정
  } else if (requestedType === '단기입소') {
    return facility.type === '요양병원' || facility.type === '요양원' ? 3 : 0
  } else if (requestedType === '야간입소' || requestedType === '주말입소') {
    return facility.type === '주야간보호' ? 3 : 0
  } else if (requestedType === '응급입소') {
    return facility.type === '요양병원' ? 3 : 0
  }
  
  return 0
}

// ============================================
// 📝 고급 매칭 이유 생성 함수
// ============================================
function generateEnhancedMatchReasons(
  facility: any, 
  criteria: any, 
  score: number,
  stats: any
): string[] {
  const reasons: string[] = []
  
  // 1. 전체 점수 등급
  if (score >= 90) {
    reasons.push('🏆 최고 추천 시설')
  } else if (score >= 80) {
    reasons.push('⭐ 우수 매칭')
  } else if (score >= 70) {
    reasons.push('✅ 좋은 선택')
  } else if (score >= 60) {
    reasons.push('👍 적합한 시설')
  }
  
  // 2. 지역 정보
  if (facility.sido === criteria.sido && facility.sigungu === criteria.sigungu) {
    reasons.push(`📍 ${criteria.sigungu} 지역`)
  } else if (facility.sido === criteria.sido) {
    reasons.push(`📍 ${facility.sido} 내 위치`)
  }
  
  // 3. 거리 정보
  if (facility.distance !== undefined && facility.distance !== 999) {
    if (facility.distance < 3) {
      reasons.push('🚗 매우 가까움 (3km 이내)')
    } else if (facility.distance < 10) {
      reasons.push(`🚗 가까운 거리 (${facility.distance.toFixed(1)}km)`)
    } else if (facility.distance < 20) {
      reasons.push('🚗 적당한 거리 (20km 이내)')
    }
  }
  
  // 4. 평점 정보
  if (stats && stats.avgRating > 0) {
    if (stats.avgRating >= 4.5) {
      reasons.push(`⭐ 최고 평점 (${stats.avgRating.toFixed(1)}/5.0)`)
    } else if (stats.avgRating >= 4.0) {
      reasons.push(`⭐ 우수 평점 (${stats.avgRating.toFixed(1)}/5.0)`)
    } else if (stats.avgRating >= 3.5) {
      reasons.push(`⭐ 좋은 평점 (${stats.avgRating.toFixed(1)}/5.0)`)
    }
    
    if (stats.reviewCount >= 10) {
      reasons.push(`💬 다수의 리뷰 (${stats.reviewCount}개)`)
    }
  }
  
  // 5. 협업 필터링 (인기 시설)
  if (criteria.careGrade && facility.collaborativeScore > 10) {
    reasons.push('🔥 같은 등급의 다른 분들이 많이 선택')
  }
  
  // 6. 예산 적합성
  if (criteria.budget) {
    const estimatedCost = estimateFacilityCost(facility, criteria)
    if (estimatedCost <= criteria.budget * 1.1) {
      reasons.push('💰 예산 범위 내')
    }
  }
  
  // 7. 환자 상태 매칭
  if (criteria.patientCondition) {
    const keywordScore = analyzePatientKeywords(criteria.patientCondition, facility)
    if (keywordScore >= 3) {
      reasons.push('🏥 환자 상태에 적합')
    }
  }
  
  // 8. 🆕 전문 분야 일치
  if (criteria.requiredSpecialties && criteria.requiredSpecialties.length > 0) {
    let facilitySpecialties = []
    try {
      facilitySpecialties = typeof facility.specialties === 'string' 
        ? JSON.parse(facility.specialties) 
        : (facility.specialties || [])
    } catch (e) {}
    
    const matchedSpecialties = criteria.requiredSpecialties.filter((s: string) => 
      facilitySpecialties.includes(s)
    )
    
    if (matchedSpecialties.length > 0) {
      reasons.push(`🩺 ${matchedSpecialties.join(', ')} 전문`)
    }
  }
  
  // 9. 🆕 입소 유형 일치
  if (criteria.admissionType) {
    let admissionTypes = []
    try {
      admissionTypes = typeof facility.admission_types === 'string'
        ? JSON.parse(facility.admission_types)
        : (facility.admission_types || [])
    } catch (e) {}
    
    if (admissionTypes.includes(criteria.admissionType)) {
      reasons.push(`🛏️ ${criteria.admissionType} 가능`)
    }
  }
  
  // 10. 대표시설
  if (facility.isRepresentative) {
    reasons.push('⭐ 지역 대표 시설')
  }
  
  // 11. 연락 가능
  if (facility.phone && facility.phone !== '미등록') {
    reasons.push('📞 전화 상담 가능')
  }
  
  return reasons.slice(0, 6)  // 최대 6개까지만
}

// 상세견적 페이지 - 2단계 폼
app.get('/quote-simple', (c) => {
  return c.render(
    <div class="min-h-screen bg-gradient-to-br from-green-50 via-white to-emerald-50">
      <header class="bg-white shadow-md border-b-2 border-green-500">
        <div class="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8">
          <div class="flex justify-between items-center h-16">
            <div class="flex items-center">
              <a href="/" class="flex items-center hover:opacity-80 transition">
                <img 
                  src="https://page.gensparksite.com/v1/base64_upload/b39dca8586af1dacd6d8417554313896" 
                  alt="케어조아 로고"
                  class="h-10 w-auto mr-3"
                />
                <h1 class="text-2xl font-bold text-green-600">케어조아</h1>
              </a>
            </div>
            <a href="/" class="text-gray-600 hover:text-green-600 transition font-medium">
              <i class="fas fa-home mr-2"></i>홈으로
            </a>
          </div>
        </div>
      </header>

      <div class="max-w-4xl mx-auto px-4 py-12"><div class="text-center mb-12">
          <h2 class="text-5xl font-extrabold text-gray-900 mb-4">
            <i class="fas fa-file-invoice text-green-600 mr-3"></i>
            상세 견적 신청
          </h2>
          <p class="text-xl text-gray-600">
            정확한 맞춤 견적을 위해 상세 정보를 입력해주세요
          </p>
        </div><div class="mb-8 flex justify-center items-center space-x-4">
          <div id="step-indicator-1" class="flex items-center">
            <div class="w-10 h-10 bg-green-600 text-white rounded-full flex items-center justify-center font-bold">1</div>
            <span class="ml-2 font-semibold text-green-600">시설정보</span>
          </div>
          <div class="w-16 h-1 bg-gray-300"></div>
          <div id="step-indicator-2" class="flex items-center opacity-50">
            <div class="w-10 h-10 bg-gray-300 text-white rounded-full flex items-center justify-center font-bold">2</div>
            <span class="ml-2 font-semibold text-gray-500">환자정보</span>
          </div>
        </div><div class="bg-white rounded-2xl shadow-2xl overflow-hidden">
        <form id="detailedQuoteForm" class="p-8 space-y-8"><div id="page-1" class="space-y-8"><div class="border-b-2 border-gray-200 pb-8">
              <h3 class="text-xl font-bold text-gray-900 mb-4">
                1. 시설 유형을 선택해 주세요.
              </h3>
              
              <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
                <label class="relative cursor-pointer group">
                  <input type="radio" name="facilityType" value="요양병원" required class="peer sr-only" id="facilityType-hospital" />
                  <div class="border-2 border-gray-300 rounded-xl p-6 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all relative">
                    <i class="fas fa-check-circle absolute top-2 right-2 text-green-600 text-xl hidden peer-checked:inline-block"></i>
                    <i class="fas fa-hospital text-3xl text-gray-400 mb-3 group-hover:text-green-600 peer-checked:text-green-600"></i>
                    <div class="font-semibold text-gray-700 peer-checked:text-green-700">요양병원</div>
                  </div>
                </label>
                
                <label class="relative cursor-pointer group">
                  <input type="radio" name="facilityType" value="요양원" required class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-xl p-6 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all relative">
                    <i class="fas fa-check-circle absolute top-2 right-2 text-green-600 text-xl hidden peer-checked:inline-block"></i>
                    <i class="fas fa-home text-3xl text-gray-400 mb-3 group-hover:text-green-600 peer-checked:text-green-600"></i>
                    <div class="font-semibold text-gray-700 peer-checked:text-green-700">요양원</div>
                  </div>
                </label>
                
                <label class="relative cursor-pointer group">
                  <input type="radio" name="facilityType" value="주야간보호" required class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-xl p-6 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all relative">
                    <i class="fas fa-check-circle absolute top-2 right-2 text-green-600 text-xl hidden peer-checked:inline-block"></i>
                    <i class="fas fa-sun text-3xl text-gray-400 mb-3 group-hover:text-green-600 peer-checked:text-green-600"></i>
                    <div class="font-semibold text-gray-700 peer-checked:text-green-700">주야간보호</div>
                  </div>
                </label>
                
                <label class="relative cursor-pointer group">
                  <input type="radio" name="facilityType" value="재가복지센터" required class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-xl p-6 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all relative">
                    <i class="fas fa-check-circle absolute top-2 right-2 text-green-600 text-xl hidden peer-checked:inline-block"></i>
                    <i class="fas fa-hands-helping text-3xl text-gray-400 mb-3 group-hover:text-green-600 peer-checked:text-green-600"></i>
                    <div class="font-semibold text-gray-700 peer-checked:text-green-700">재가복지센터</div>
                  </div>
                </label>
              </div>
            </div><div class="border-b-2 border-gray-200 pb-8">
              <h3 class="text-xl font-bold text-gray-900 mb-4">
                2. 지역을 선택해 주세요.
              </h3>
            
            <div class="grid md:grid-cols-2 gap-6">
              <div>
                <label class="block text-sm font-semibold text-gray-700 mb-3">
                  <i class="fas fa-map-marker-alt text-green-600 mr-2"></i>시∙도
                </label>
                <select id="sido" name="sido" required 
                  class="w-full px-4 py-3 border-2 border-gray-300 rounded-xl focus:ring-2 focus:ring-green-500 focus:border-green-500 transition text-lg">
                  <option value="">선택해주세요</option>
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
                <label class="block text-sm font-semibold text-gray-700 mb-3">
                  <i class="fas fa-location-arrow text-green-600 mr-2"></i>시∙군∙구
                </label>
                <select id="sigungu" name="sigungu" required
                  class="w-full px-4 py-3 border-2 border-gray-300 rounded-xl focus:ring-2 focus:ring-green-500 focus:border-green-500 transition text-lg">
                  <option value="">시∙도를 먼저 선택해주세요</option>
                </select>
              </div>
            </div>
          </div><div class="border-b-2 border-gray-200 pb-8">
              <h3 class="text-xl font-bold text-gray-900 mb-4">
                3. 보험 유형 및 등급을 선택해 주세요.
              </h3><div id="insurance-hospital" class="hidden space-y-4">
                <div class="grid grid-cols-2 md:grid-cols-4 gap-3">
                  <label class="cursor-pointer">
                    <input type="radio" name="insuranceType" value="건강보험" class="peer sr-only" />
                    <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                      <span class="text-sm font-medium">건강보험</span>
                    </div>
                  </label>
                  <label class="cursor-pointer">
                    <input type="radio" name="insuranceType" value="보호1종" class="peer sr-only" />
                    <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                      <span class="text-sm font-medium">보호 1종</span>
                    </div>
                  </label>
                  <label class="cursor-pointer">
                    <input type="radio" name="insuranceType" value="보호2종" class="peer sr-only" />
                    <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                      <span class="text-sm font-medium">보호 2종</span>
                    </div>
                  </label>
                  <label class="cursor-pointer">
                    <input type="radio" name="insuranceType" value="차상위1종" class="peer sr-only" />
                    <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                      <span class="text-sm font-medium">차상위 1종</span>
                    </div>
                  </label>
                  <label class="cursor-pointer">
                    <input type="radio" name="insuranceType" value="차상위2종" class="peer sr-only" />
                    <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                      <span class="text-sm font-medium">차상위 2종</span>
                    </div>
                  </label>
                  <label class="cursor-pointer">
                    <input type="radio" name="insuranceType" value="희귀난치질환" class="peer sr-only" />
                    <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                      <span class="text-sm font-medium">희귀 난치질환 등록</span>
                    </div>
                  </label>
                  <label class="cursor-pointer">
                    <input type="radio" name="insuranceType" value="암등록" class="peer sr-only" />
                    <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                      <span class="text-sm font-medium">암등록</span>
                    </div>
                  </label>
                  <label class="cursor-pointer">
                    <input type="radio" name="insuranceType" value="기타" class="peer sr-only" id="insurance-etc-hospital" />
                    <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                      <span class="text-sm font-medium">기타</span>
                    </div>
                  </label>
                </div>
                <div id="insurance-etc-input-hospital" class="hidden mt-3">
                  <input type="text" name="insuranceTypeEtc" placeholder="기타 보험 유형을 입력해주세요"
                    class="w-full px-4 py-3 border-2 border-gray-300 rounded-xl focus:ring-2 focus:ring-green-500 focus:border-green-500 transition" />
                </div>
              </div><div id="insurance-other" class="hidden space-y-4">
                <div class="grid grid-cols-2 md:grid-cols-4 gap-3">
                  <label class="cursor-pointer">
                    <input type="radio" name="careGrade" value="기초수급자" class="peer sr-only" />
                    <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                      <span class="text-sm font-medium">기초수급자</span>
                    </div>
                  </label>
                  <label class="cursor-pointer">
                    <input type="radio" name="careGrade" value="1등급" class="peer sr-only" />
                    <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                      <span class="text-sm font-medium">1등급</span>
                    </div>
                  </label>
                  <label class="cursor-pointer">
                    <input type="radio" name="careGrade" value="2등급" class="peer sr-only" />
                    <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                      <span class="text-sm font-medium">2등급</span>
                    </div>
                  </label>
                  <label class="cursor-pointer">
                    <input type="radio" name="careGrade" value="3등급" class="peer sr-only" />
                    <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                      <span class="text-sm font-medium">3등급</span>
                    </div>
                  </label>
                  <label class="cursor-pointer">
                    <input type="radio" name="careGrade" value="4등급" class="peer sr-only" />
                    <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                      <span class="text-sm font-medium">4등급</span>
                    </div>
                  </label>
                  <label class="cursor-pointer">
                    <input type="radio" name="careGrade" value="5등급" class="peer sr-only" />
                    <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                      <span class="text-sm font-medium">5등급</span>
                    </div>
                  </label>
                  <label class="cursor-pointer">
                    <input type="radio" name="careGrade" value="인지지원등급" class="peer sr-only" />
                    <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                      <span class="text-sm font-medium">인지 지원 등급</span>
                    </div>
                  </label>
                  <label class="cursor-pointer">
                    <input type="radio" name="careGrade" value="기타" class="peer sr-only" id="insurance-etc-other" />
                    <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                      <span class="text-sm font-medium">기타</span>
                    </div>
                  </label>
                </div>
                <div id="insurance-etc-input-other" class="hidden mt-3">
                  <input type="text" name="careGradeEtc" placeholder="기타 등급을 입력해주세요"
                    class="w-full px-4 py-3 border-2 border-gray-300 rounded-xl focus:ring-2 focus:ring-green-500 focus:border-green-500 transition" />
                </div>
              </div>
            </div><div class="border-b-2 border-gray-200 pb-8">
              <h3 class="text-xl font-bold text-gray-900 mb-4">
                4. 요양 시설 크기를 선택해 주세요.
              </h3>
              <div class="grid grid-cols-2 md:grid-cols-5 gap-3">
                <label class="cursor-pointer">
                  <input type="radio" name="facilitySize" value="대형" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">대형</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="facilitySize" value="중형" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">중형</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="facilitySize" value="소형" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">소형</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="facilitySize" value="치매전담형" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">치매전담형</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="facilitySize" value="상관없음" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">상관 없음</span>
                  </div>
                </label>
              </div>
            </div><div class="border-b-2 border-gray-200 pb-8">
              <h3 class="text-xl font-bold text-gray-900 mb-4">
                5. 요양 비용을 선택해 주세요.
              </h3>
              <div class="grid grid-cols-2 md:grid-cols-4 gap-3">
                <label class="cursor-pointer">
                  <input type="radio" name="careCost" value="고급형" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">고급형</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="careCost" value="일반형" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">일반형</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="careCost" value="실속형" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">실속형</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="careCost" value="상관없음" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">상관 없음</span>
                  </div>
                </label>
              </div>
            </div><div class="border-b-2 border-gray-200 pb-8">
              <h3 class="text-xl font-bold text-gray-900 mb-4">
                6. 요양 프로그램을 선택해 주세요 (복수 선택 가능).
              </h3>
              <div class="grid grid-cols-2 md:grid-cols-3 gap-3">
                <label class="cursor-pointer">
                  <input type="checkbox" name="carePrograms" value="운동보조" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">운동 보조</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="checkbox" name="carePrograms" value="인지기능향상" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">인지 기능 향상</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="checkbox" name="carePrograms" value="재활특화" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">재활 특화</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="checkbox" name="carePrograms" value="치매특화" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">치매 특화</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="checkbox" name="carePrograms" value="맞춤형서비스" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">맞춤형 서비스</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="checkbox" name="carePrograms" value="기타" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">기타</span>
                  </div>
                </label>
              </div>
            </div><div class="pb-8">
              <h3 class="text-xl font-bold text-gray-900 mb-4">
                7. 종교 활동 지원 여부를 선택해 주세요.
              </h3>
              <div class="grid grid-cols-2 md:grid-cols-4 gap-3">
                <label class="cursor-pointer">
                  <input type="radio" name="religion" value="기독교" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">기독교</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="religion" value="불교" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">불교</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="religion" value="천주교" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">천주교</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="religion" value="기타" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">기타</span>
                  </div>
                </label>
              </div>
            </div><div class="flex justify-center pt-4">
              <button type="button" id="next-to-page2" 
                class="bg-gradient-to-r from-green-500 to-green-600 text-white px-16 py-5 rounded-2xl text-xl font-bold hover:from-green-600 hover:to-green-700 shadow-2xl transform hover:scale-105 transition-all duration-200">
                <span>다음</span>
                <i class="fas fa-arrow-right ml-3"></i>
              </button>
            </div>
          </div><div id="page-2" class="hidden space-y-8"><div class="border-b-2 border-gray-200 pb-8">
              <h3 class="text-xl font-bold text-gray-900 mb-4">
                1. 주요 증상을 선택해 주세요.
              </h3>
              <div class="grid grid-cols-2 md:grid-cols-4 gap-3">
                <label class="cursor-pointer">
                  <input type="radio" name="mainSymptom" value="치매" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">치매</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="mainSymptom" value="뇌출혈" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">뇌출혈</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="mainSymptom" value="뇌경색" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">뇌경색</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="mainSymptom" value="척추손상" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">척추 손상</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="mainSymptom" value="암" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">암</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="mainSymptom" value="골절" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">골절</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="mainSymptom" value="호스피스" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">호스피스</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="mainSymptom" value="기타질환" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">기타질환</span>
                  </div>
                </label>
              </div>
            </div><div class="border-b-2 border-gray-200 pb-8">
              <h3 class="text-xl font-bold text-gray-900 mb-4">
                2. 연세를 선택해 주세요.
              </h3>
              <div class="grid grid-cols-2 md:grid-cols-4 gap-3">
                <label class="cursor-pointer">
                  <input type="radio" name="patientAge" value="81세이상" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">81세 이상</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="patientAge" value="71-80세" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">71-80세</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="patientAge" value="65-70세" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">65-70세</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="patientAge" value="64세이하" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">64세 이하</span>
                  </div>
                </label>
              </div>
            </div><div class="border-b-2 border-gray-200 pb-8">
              <h3 class="text-xl font-bold text-gray-900 mb-4">
                3. 의사소통 가능 여부를 선택해 주세요.
              </h3>
              <div class="grid grid-cols-3 gap-3">
                <label class="cursor-pointer">
                  <input type="radio" name="communication" value="소통" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">소통</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="communication" value="듣기만가능" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">듣기만 가능</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="communication" value="소통불가능" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">소통 불가능</span>
                  </div>
                </label>
              </div>
            </div><div class="border-b-2 border-gray-200 pb-8">
              <h3 class="text-xl font-bold text-gray-900 mb-4">
                4. 식사 가능 여부를 선택해 주세요.
              </h3>
              <div class="grid grid-cols-2 gap-3">
                <label class="cursor-pointer">
                  <input type="radio" name="mealAbility" value="스스로가능" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">스스로 가능</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="mealAbility" value="간병사도움필요" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">간병사 도움 필요</span>
                  </div>
                </label>
              </div>
            </div><div class="border-b-2 border-gray-200 pb-8">
              <h3 class="text-xl font-bold text-gray-900 mb-4">
                5. 식사 종류를 선택해 주세요.
              </h3>
              <div class="grid grid-cols-2 md:grid-cols-3 gap-3">
                <label class="cursor-pointer">
                  <input type="radio" name="mealType" value="일반식" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">일반식</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="mealType" value="죽" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">죽</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="mealType" value="미음" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">미음</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="mealType" value="유동식" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">유동식</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="mealType" value="비위관" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">비위관(L-tube)</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="mealType" value="TPN" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">TPN(정맥영양)</span>
                  </div>
                </label>
              </div>
            </div><div class="border-b-2 border-gray-200 pb-8">
              <h3 class="text-xl font-bold text-gray-900 mb-4">
                6. 거동 여부를 선택해 주세요.
              </h3>
              <div class="grid grid-cols-2 md:grid-cols-3 gap-3">
                <label class="cursor-pointer">
                  <input type="radio" name="mobility" value="스스로가능" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">스스로 가능</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="mobility" value="보행기" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">보행기</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="mobility" value="휠체어" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">휠체어</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="mobility" value="거동불가" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">거동 불가</span>
                  </div>
                </label>
              </div>
            </div><div class="border-b-2 border-gray-200 pb-8">
              <h3 class="text-xl font-bold text-gray-900 mb-4">
                7. 화장실 출입 가능 여부를 선택해 주세요.
              </h3>
              <div class="grid grid-cols-2 md:grid-cols-5 gap-3">
                <label class="cursor-pointer">
                  <input type="radio" name="toiletUse" value="스스로가능" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">스스로 가능</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="toiletUse" value="부축" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">부축</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="toiletUse" value="소변줄" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">소변줄</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="toiletUse" value="기저귀" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">기저귀</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="radio" name="toiletUse" value="야간빈뇨" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">야간 빈뇨</span>
                  </div>
                </label>
              </div>
            </div><div class="border-b-2 border-gray-200 pb-8">
              <h3 class="text-xl font-bold text-gray-900 mb-4">
                8. 추가사항을 선택해 주세요 (복수 선택 가능).
              </h3>
              <div class="grid grid-cols-2 md:grid-cols-4 gap-3">
                <label class="cursor-pointer">
                  <input type="checkbox" name="additionalCare" value="산소" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">산소</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="checkbox" name="additionalCare" value="고혈압" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">고혈압</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="checkbox" name="additionalCare" value="당뇨" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">당뇨</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="checkbox" name="additionalCare" value="기관절개술" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">기관절개술(T-tube)</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="checkbox" name="additionalCare" value="욕창" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">욕창</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="checkbox" name="additionalCare" value="석션" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">석션</span>
                  </div>
                </label>
                <label class="cursor-pointer">
                  <input type="checkbox" name="additionalCare" value="소변줄Foley" class="peer sr-only" />
                  <div class="border-2 border-gray-300 rounded-lg p-3 text-center hover:border-green-500 peer-checked:border-green-600 peer-checked:bg-green-50 transition-all">
                    <span class="text-sm font-medium">소변줄(Foley)</span>
                  </div>
                </label>
              </div>
            </div><div class="border-b-2 border-gray-200 pb-8">
              <h3 class="text-xl font-bold text-gray-900 mb-4">
                9. 기타 증상을 입력해 주세요.
              </h3>
              <textarea name="otherSymptoms" rows="4" placeholder="환자 상태 입력"
                class="w-full px-4 py-3 border-2 border-gray-300 rounded-xl focus:ring-2 focus:ring-green-500 focus:border-green-500 transition"></textarea>
            </div><div class="pb-8">
              <h3 class="text-xl font-bold text-gray-900 mb-4">
                10. 서류 첨부
              </h3>
              <p class="text-sm text-gray-600 mb-4">
                (진단서 또는 소견서, 기타 추가 서류가 있다면 첨부해 주세요.)
              </p>
              <div class="border-2 border-dashed border-gray-300 rounded-xl p-8 text-center hover:border-green-500 transition-all">
                <input type="file" name="documents" id="document-upload" accept="image/*,.pdf" multiple class="hidden" />
                <label for="document-upload" class="cursor-pointer">
                  <i class="fas fa-cloud-upload-alt text-4xl text-gray-400 mb-3"></i>
                  <p class="text-gray-700 font-medium">파일 업로드 (선택사항)</p>
                  <p class="text-sm text-gray-500 mt-2">이미지 또는 PDF 파일을 선택해주세요</p>
                </label>
              </div>
              <div id="file-list" class="mt-4 space-y-2 hidden"></div>
            </div><div class="flex justify-between pt-4">
              <button type="button" id="back-to-page1" 
                class="bg-gray-500 text-white px-12 py-4 rounded-xl text-lg font-bold hover:bg-gray-600 shadow-lg transition-all duration-200">
                <i class="fas fa-arrow-left mr-3"></i>
                <span>이전</span>
              </button>
              <button type="submit" 
                class="bg-gradient-to-r from-green-500 to-green-600 text-white px-12 py-4 rounded-xl text-lg font-bold hover:from-green-600 hover:to-green-700 shadow-lg transform hover:scale-105 transition-all duration-200">
                <i class="fas fa-paper-plane mr-3"></i>
                <span>상세 견적 신청하기</span>
              </button>
            </div>
          </div>
        </form>
        </div><div class="mt-8 bg-green-50 border border-green-200 rounded-xl p-6">
          <h4 class="font-bold text-green-900 mb-3 text-lg">
            <i class="fas fa-lightbulb text-yellow-500 mr-2"></i>
            상세 견적 신청 후 진행 안내
          </h4>
          <ul class="space-y-2 text-green-800">
            <li class="flex items-start">
              <i class="fas fa-check-circle text-green-600 mr-2 mt-1"></i>
              <span>선택하신 지역의 등록된 전문 시설에 상세 견적 요청이 전송됩니다</span>
            </li>
            <li class="flex items-start">
              <i class="fas fa-check-circle text-green-600 mr-2 mt-1"></i>
              <span>시설에서 환자 상태에 맞는 맞춤 견적서를 작성하여 연락을 드립니다</span>
            </li>
            <li class="flex items-start">
              <i class="fas fa-check-circle text-green-600 mr-2 mt-1"></i>
              <span>여러 시설의 견적을 비교하여 최적의 선택을 하실 수 있습니다</span>
            </li>
            <li class="flex items-start">
              <i class="fas fa-check-circle text-green-600 mr-2 mt-1"></i>
              <span>상세한 정보 입력으로 더 정확하고 빠른 견적을 받으실 수 있습니다</span>
            </li>
          </ul>
        </div>
      </div>

      <script src="https://cdn.jsdelivr.net/npm/axios@1.6.0/dist/axios.min.js"></script>
      <script dangerouslySetInnerHTML={{
        __html: `
        // 모든 라디오/체크박스 버튼에 체크 아이콘 추가
        document.addEventListener('DOMContentLoaded', function() {
          // 모든 라디오 버튼 레이블 찾기
          document.querySelectorAll('label').forEach(label => {
            const radio = label.querySelector('input[type="radio"]');
            const checkbox = label.querySelector('input[type="checkbox"]');
            const targetInput = radio || checkbox;
            
            if (targetInput && targetInput.classList.contains('peer')) {
              const div = label.querySelector('div');
              if (div && !div.querySelector('.check-icon')) {
                // relative 클래스가 없으면 추가
                if (!div.classList.contains('relative')) {
                  div.classList.add('relative');
                }
                
                // 체크 아이콘 생성
                const checkIcon = document.createElement('i');
                checkIcon.className = 'fas fa-check-circle absolute top-2 right-2 text-green-600 text-lg opacity-0 peer-checked:opacity-100 transition-opacity check-icon';
                div.insertBefore(checkIcon, div.firstChild);
              }
            }
          });
          
          // peer-checked 효과를 위한 이벤트 리스너
          document.querySelectorAll('input[type="radio"], input[type="checkbox"]').forEach(input => {
            if (input.classList.contains('peer')) {
              input.addEventListener('change', function() {
                // 같은 name을 가진 다른 라디오 버튼의 체크 해제
                if (this.type === 'radio') {
                  document.querySelectorAll(\`input[type="radio"][name="\${this.name}"]\`).forEach(r => {
                    const label = r.closest('label');
                    if (label) {
                      const icon = label.querySelector('.check-icon');
                      if (icon) {
                        if (r.checked) {
                          icon.style.opacity = '1';
                        } else {
                          icon.style.opacity = '0';
                        }
                      }
                    }
                  });
                } else if (this.type === 'checkbox') {
                  const label = this.closest('label');
                  if (label) {
                    const icon = label.querySelector('.check-icon');
                    if (icon) {
                      icon.style.opacity = this.checked ? '1' : '0';
                    }
                  }
                }
              });
            }
          });
        });
        
        // 지역 데이터
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

        // 시/도 선택시 시/군/구 업데이트
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

        // 시설 유형 선택시 보험 유형 표시/숨김
        document.querySelectorAll('input[name="facilityType"]').forEach(radio => {
          radio.addEventListener('change', function() {
            const hospitalSection = document.getElementById('insurance-hospital');
            const otherSection = document.getElementById('insurance-other');
            
            if (this.value === '요양병원') {
              hospitalSection.classList.remove('hidden');
              otherSection.classList.add('hidden');
            } else {
              hospitalSection.classList.add('hidden');
              otherSection.classList.remove('hidden');
            }
          });
        });

        // 요양병원 보험 유형 기타 선택시 입력창 표시
        document.getElementById('insurance-etc-hospital')?.addEventListener('change', function() {
          if (this.checked) {
            document.getElementById('insurance-etc-input-hospital').classList.remove('hidden');
          }
        });

        // 그 외 시설 등급 기타 선택시 입력창 표시
        document.getElementById('insurance-etc-other')?.addEventListener('change', function() {
          if (this.checked) {
            document.getElementById('insurance-etc-input-other').classList.remove('hidden');
          }
        });

        // 페이지 전환
        document.getElementById('next-to-page2').addEventListener('click', function() {
          // 필수 항목 검증
          const facilityType = document.querySelector('input[name="facilityType"]:checked');
          const sido = document.getElementById('sido').value;
          const sigungu = document.getElementById('sigungu').value;
          
          if (!facilityType) {
            alert('시설 유형을 선택해주세요.');
            return;
          }
          if (!sido || !sigungu) {
            alert('지역을 선택해주세요.');
            return;
          }
          
          // 페이지 전환
          document.getElementById('page-1').classList.add('hidden');
          document.getElementById('page-2').classList.remove('hidden');
          
          // 단계 표시 업데이트
          document.getElementById('step-indicator-1').classList.add('opacity-50');
          document.getElementById('step-indicator-1').querySelector('div').classList.remove('bg-green-600');
          document.getElementById('step-indicator-1').querySelector('div').classList.add('bg-gray-300');
          document.getElementById('step-indicator-1').querySelector('span').classList.remove('text-green-600');
          document.getElementById('step-indicator-1').querySelector('span').classList.add('text-gray-500');
          
          document.getElementById('step-indicator-2').classList.remove('opacity-50');
          document.getElementById('step-indicator-2').querySelector('div').classList.remove('bg-gray-300');
          document.getElementById('step-indicator-2').querySelector('div').classList.add('bg-green-600');
          document.getElementById('step-indicator-2').querySelector('span').classList.remove('text-gray-500');
          document.getElementById('step-indicator-2').querySelector('span').classList.add('text-green-600');
          
          // 페이지 상단으로 스크롤
          window.scrollTo({ top: 0, behavior: 'smooth' });
        });

        // 이전 버튼
        document.getElementById('back-to-page1').addEventListener('click', function() {
          document.getElementById('page-2').classList.add('hidden');
          document.getElementById('page-1').classList.remove('hidden');
          
          // 단계 표시 복원
          document.getElementById('step-indicator-1').classList.remove('opacity-50');
          document.getElementById('step-indicator-1').querySelector('div').classList.remove('bg-gray-300');
          document.getElementById('step-indicator-1').querySelector('div').classList.add('bg-green-600');
          document.getElementById('step-indicator-1').querySelector('span').classList.remove('text-gray-500');
          document.getElementById('step-indicator-1').querySelector('span').classList.add('text-green-600');
          
          document.getElementById('step-indicator-2').classList.add('opacity-50');
          document.getElementById('step-indicator-2').querySelector('div').classList.remove('bg-green-600');
          document.getElementById('step-indicator-2').querySelector('div').classList.add('bg-gray-300');
          document.getElementById('step-indicator-2').querySelector('span').classList.remove('text-green-600');
          document.getElementById('step-indicator-2').querySelector('span').classList.add('text-gray-500');
          
          window.scrollTo({ top: 0, behavior: 'smooth' });
        });

        // 파일 업로드 처리
        document.getElementById('document-upload').addEventListener('change', function(e) {
          const fileList = document.getElementById('file-list');
          const files = e.target.files;
          
          if (files.length > 0) {
            fileList.classList.remove('hidden');
            fileList.innerHTML = '';
            
            Array.from(files).forEach((file, index) => {
              const fileItem = document.createElement('div');
              fileItem.className = 'flex items-center justify-between p-3 bg-gray-50 rounded-lg';
              fileItem.innerHTML = \`
                <div class="flex items-center">
                  <i class="fas fa-file-alt text-green-600 mr-3"></i>
                  <span class="text-sm text-gray-700">\${file.name}</span>
                </div>
                <span class="text-xs text-gray-500">\${(file.size / 1024).toFixed(1)} KB</span>
              \`;
              fileList.appendChild(fileItem);
            });
          }
        });

        // 폼 제출
        document.getElementById('detailedQuoteForm').addEventListener('submit', async function(e) {
          e.preventDefault();
          const formData = new FormData(this);
          
          // 복수 선택 항목 처리
          const carePrograms = [];
          document.querySelectorAll('input[name="carePrograms"]:checked').forEach(cb => {
            carePrograms.push(cb.value);
          });
          
          const additionalCare = [];
          document.querySelectorAll('input[name="additionalCare"]:checked').forEach(cb => {
            additionalCare.push(cb.value);
          });
          
          const data = {};
          for (let [key, value] of formData.entries()) {
            if (key !== 'carePrograms' && key !== 'additionalCare' && key !== 'documents') {
              data[key] = value;
            }
          }
          
          data.carePrograms = carePrograms.join(', ');
          data.additionalCare = additionalCare.join(', ');
          
          try {
            const response = await axios.post('/api/quote-request', {
              ...data,
              quoteType: 'detailed',
              createdAt: new Date().toISOString()
            });
            
            if (response.data.success) {
              alert('✅ 상세 견적 신청이 완료되었습니다!\\n\\n선택하신 지역의 시설에서 상세 견적서를 작성하여 연락드릴 예정입니다.');
              window.location.href = '/';
            }
          } catch (error) {
            console.error('Error:', error);
            alert('❌ 견적 신청 중 오류가 발생했습니다. 다시 시도해주세요.');
          }
        });
        `
      }} />
    </div>
  )
})

// 새로운 다단계 견적 신청 페이지
app.get('/quote-new', (c) => {
  return c.render(
    <div class="min-h-screen bg-gray-50"><header class="bg-white shadow-sm border-b">
        <div class="max-w-4xl mx-auto px-4 py-4">
          <div class="flex justify-between items-center">
            <div class="flex items-center">
              <img 
                src="https://page.gensparksite.com/v1/base64_upload/b39dca8586af1dacd6d8417554313896" 
                alt="케어조아 로고"
                class="h-8 w-auto mr-3"
              />
              <h1 class="text-xl font-bold text-teal-600">케어조아</h1>
            </div>
            <a href="/" class="text-sm text-gray-600 hover:text-gray-900">
              <i class="fas fa-times"></i>
            </a>
          </div>
        </div>
      </header><div class="bg-white border-b">
        <div class="max-w-4xl mx-auto px-4 py-4">
          <div class="flex items-center justify-between mb-2">
            <div class="flex-1">
              <div class="h-2 bg-gray-200 rounded-full overflow-hidden">
                <div id="progressBar" class="h-full bg-teal-500 transition-all duration-300" style="width: 14%"></div>
              </div>
            </div>
          </div>
          <div class="flex justify-between text-xs text-gray-600">
            <span id="stepIndicator">1/7 단계</span>
            <span id="stepTitle">견적서 전체 선택</span>
          </div>
        </div>
      </div><div class="max-w-4xl mx-auto px-4 py-8">
        <div class="bg-white rounded-xl shadow-lg p-6 md:p-8"><div id="step1" class="step-content">
            <h2 class="text-2xl font-bold text-gray-900 mb-2">견적서 전체 선택</h2>
            <p class="text-sm text-gray-600 mb-6">
              계속 진행할 견적서를 선택하세요<br/>
              견적을 진행한 시설은 내시설목록에서 삭제되지 않습니다
            </p>
            
            <div class="space-y-3">
              <button type="button" onclick="selectFacilityType('nursing_hospital')" 
                class="w-full p-4 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-left transition-all">
                <div class="flex items-center">
                  <div class="w-6 h-6 rounded-full border-2 border-gray-400 mr-3 facility-radio" data-type="nursing_hospital"></div>
                  <span class="font-medium text-gray-900">요양병원</span>
                </div>
              </button>
              
              <button type="button" onclick="selectFacilityType('home_care')" 
                class="w-full p-4 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-left transition-all">
                <div class="flex items-center">
                  <div class="w-6 h-6 rounded-full border-2 border-gray-400 mr-3 facility-radio" data-type="home_care"></div>
                  <span class="font-medium text-gray-900">재가복지 (방문요양/주야간보호)</span>
                </div>
              </button>
            </div>
          </div><div id="step2" class="step-content hidden">
            <h2 class="text-2xl font-bold text-gray-900 mb-2">신청 정보 입력</h2>
            <p class="text-sm text-gray-600 mb-6">신청자의 기본 정보를 입력해주세요</p>
            
            <div class="space-y-4">
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">1. 성함 (어르신 성함)</label>
                <input type="text" id="patientName" required
                  class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500" />
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">2. 연령대</label>
                <div class="grid grid-cols-3 gap-3">
                  <button type="button" onclick="selectAge('60대 이상')" 
                    class="age-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 transition-all">
                    60대 이상
                  </button>
                  <button type="button" onclick="selectAge('70대 이상')" 
                    class="age-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 transition-all">
                    70대 이상
                  </button>
                  <button type="button" onclick="selectAge('80대 이상')" 
                    class="age-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 transition-all">
                    80대 이상
                  </button>
                </div>
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">3. 성별</label>
                <div class="grid grid-cols-2 gap-3">
                  <button type="button" onclick="selectGender('남성')" 
                    class="gender-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 transition-all">
                    남성
                  </button>
                  <button type="button" onclick="selectGender('여성')" 
                    class="gender-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 transition-all">
                    여성
                  </button>
                </div>
              </div>
            </div>
          </div><div id="step3" class="step-content hidden">
            <h2 class="text-2xl font-bold text-gray-900 mb-2">지역 선택</h2>
            <p class="text-sm text-gray-600 mb-6">희망하시는 시설의 지역을 선택해주세요</p>
            
            <div class="space-y-4">
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">시/도 *</label>
                <select id="quoteNewSido" onchange="updateQuoteNewSigungu()" required
                  class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500">
                  <option value="">선택하세요</option>
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
                <select id="quoteNewSigungu" required
                  class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500">
                  <option value="">먼저 시/도를 선택하세요</option>
                </select>
              </div>
            </div>
          </div><div id="step4-hospital" class="step-content hidden">
            <h2 class="text-2xl font-bold text-gray-900 mb-2">환자 정보 입력</h2>
            <p class="text-sm text-gray-600 mb-6">환자분의 상세 정보를 입력해주세요</p>
            
            <div class="space-y-4">
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">1. 환자의 생년월일을 알려주세요</label>
                <div class="grid grid-cols-3 gap-3">
                  <input type="number" id="birthYear" placeholder="년도 (예: 1945)" min="1900" max="2024"
                    class="px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500" />
                  <input type="number" id="birthMonth" placeholder="월 (1-12)" min="1" max="12"
                    class="px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500" />
                  <input type="number" id="birthDay" placeholder="일 (1-31)" min="1" max="31"
                    class="px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500" />
                </div>
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">2. 환자 성별</label>
                <div class="grid grid-cols-2 gap-3">
                  <button type="button" onclick="selectPatientGender('남성')" 
                    class="patient-gender-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50">
                    남성
                  </button>
                  <button type="button" onclick="selectPatientGender('여성')" 
                    class="patient-gender-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50">
                    여성
                  </button>
                </div>
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">3. 장기요양등급 (선택사항)</label>
                <div class="grid grid-cols-3 gap-2">
                  <button type="button" onclick="selectCareLevel('1등급')" 
                    class="care-level-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    1등급
                  </button>
                  <button type="button" onclick="selectCareLevel('2등급')" 
                    class="care-level-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    2등급
                  </button>
                  <button type="button" onclick="selectCareLevel('3등급')" 
                    class="care-level-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    3등급
                  </button>
                  <button type="button" onclick="selectCareLevel('4등급')" 
                    class="care-level-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    4등급
                  </button>
                  <button type="button" onclick="selectCareLevel('5등급')" 
                    class="care-level-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    5등급
                  </button>
                  <button type="button" onclick="selectCareLevel('등급없음')" 
                    class="care-level-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    등급없음
                  </button>
                </div>
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">4. 수급자 유형 *</label>
                <div class="space-y-2">
                  <button type="button" onclick="selectBeneficiaryType('기초수급자')" 
                    class="w-full beneficiary-type-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-left">
                    기초수급자
                  </button>
                  <button type="button" onclick="selectBeneficiaryType('차상위계층')" 
                    class="w-full beneficiary-type-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-left">
                    차상위계층
                  </button>
                  <button type="button" onclick="selectBeneficiaryType('건강보험')" 
                    class="w-full beneficiary-type-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-left">
                    건강보험
                  </button>
                  <button type="button" onclick="selectBeneficiaryType('일반')" 
                    class="w-full beneficiary-type-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-left">
                    일반
                  </button>
                </div>
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">5. 진단명 (중복선택 가능)</label>
                <div class="grid grid-cols-2 gap-2">
                  <button type="button" onclick="toggleDiagnosis('치매')" 
                    class="diagnosis-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    치매
                  </button>
                  <button type="button" onclick="toggleDiagnosis('중풍')" 
                    class="diagnosis-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    중풍
                  </button>
                  <button type="button" onclick="toggleDiagnosis('암환자')" 
                    class="diagnosis-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    암환자
                  </button>
                  <button type="button" onclick="toggleDiagnosis('당뇨')" 
                    class="diagnosis-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    당뇨
                  </button>
                  <button type="button" onclick="toggleDiagnosis('고혈압')" 
                    class="diagnosis-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    고혈압
                  </button>
                  <button type="button" onclick="toggleDiagnosis('기타')" 
                    class="diagnosis-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    기타
                  </button>
                </div>
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">6. ADL (일상생활수행능력)</label>
                <div class="grid grid-cols-3 gap-2">
                  <button type="button" onclick="selectADL('상')" 
                    class="adl-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    상
                  </button>
                  <button type="button" onclick="selectADL('중')" 
                    class="adl-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    중
                  </button>
                  <button type="button" onclick="selectADL('하')" 
                    class="adl-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    하
                  </button>
                </div>
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">7. 치매 (인지상태)</label>
                <div class="grid grid-cols-3 gap-2">
                  <button type="button" onclick="selectDementia('경증')" 
                    class="dementia-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    경증
                  </button>
                  <button type="button" onclick="selectDementia('중등도')" 
                    class="dementia-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    중등도
                  </button>
                  <button type="button" onclick="selectDementia('중증')" 
                    class="dementia-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    중증
                  </button>
                </div>
              </div>
            </div>
          </div><div id="step4-homecare" class="step-content hidden">
            <h2 class="text-2xl font-bold text-gray-900 mb-2">서비스 정보 입력</h2>
            <p class="text-sm text-gray-600 mb-6">필요하신 서비스 정보를 입력해주세요</p>
            
            <div class="space-y-4">
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">1. 서비스 유형 *</label>
                <div class="space-y-2">
                  <button type="button" onclick="selectServiceType('방문요양')" 
                    class="w-full service-type-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-left">
                    방문요양
                  </button>
                  <button type="button" onclick="selectServiceType('방문목욕')" 
                    class="w-full service-type-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-left">
                    방문목욕
                  </button>
                  <button type="button" onclick="selectServiceType('주야간보호')" 
                    class="w-full service-type-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-left">
                    주야간보호
                  </button>
                  <button type="button" onclick="selectServiceType('단기보호')" 
                    class="w-full service-type-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-left">
                    단기보호
                  </button>
                </div>
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">2. 장기요양등급 *</label>
                <div class="grid grid-cols-3 gap-2">
                  <button type="button" onclick="selectHomeCareLevel('1등급')" 
                    class="homecare-level-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    1등급
                  </button>
                  <button type="button" onclick="selectHomeCareLevel('2등급')" 
                    class="homecare-level-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    2등급
                  </button>
                  <button type="button" onclick="selectHomeCareLevel('3등급')" 
                    class="homecare-level-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    3등급
                  </button>
                  <button type="button" onclick="selectHomeCareLevel('4등급')" 
                    class="homecare-level-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    4등급
                  </button>
                  <button type="button" onclick="selectHomeCareLevel('5등급')" 
                    class="homecare-level-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    5등급
                  </button>
                  <button type="button" onclick="selectHomeCareLevel('인지지원등급')" 
                    class="homecare-level-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    인지지원등급
                  </button>
                </div>
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">3. 주간 이용 시간</label>
                <select id="weeklyHours" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500">
                  <option value="">선택하세요</option>
                  <option value="주 1회">주 1회</option>
                  <option value="주 2회">주 2회</option>
                  <option value="주 3회">주 3회</option>
                  <option value="주 4회">주 4회</option>
                  <option value="주 5회">주 5회</option>
                  <option value="매일">매일</option>
                </select>
              </div>
            </div>
          </div><div id="step5" class="step-content hidden">
            <h2 class="text-2xl font-bold text-gray-900 mb-2">본인/배우자 정보</h2>
            <p class="text-sm text-gray-600 mb-6">보호자의 정보를 입력해주세요</p>
            
            <div class="space-y-4">
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">1. 본인 나이를 선택하세요</label>
                <div class="grid grid-cols-4 gap-2">
                  <button type="button" onclick="selectGuardianAge('30대')" 
                    class="guardian-age-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    30대
                  </button>
                  <button type="button" onclick="selectGuardianAge('40대')" 
                    class="guardian-age-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    40대
                  </button>
                  <button type="button" onclick="selectGuardianAge('50대')" 
                    class="guardian-age-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    50대
                  </button>
                  <button type="button" onclick="selectGuardianAge('60대 이상')" 
                    class="guardian-age-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    60대+
                  </button>
                </div>
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">2. 배우자 나이를 선택하세요</label>
                <div class="grid grid-cols-4 gap-2">
                  <button type="button" onclick="selectSpouseAge('30대')" 
                    class="spouse-age-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    30대
                  </button>
                  <button type="button" onclick="selectSpouseAge('40대')" 
                    class="spouse-age-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    40대
                  </button>
                  <button type="button" onclick="selectSpouseAge('50대')" 
                    class="spouse-age-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    50대
                  </button>
                  <button type="button" onclick="selectSpouseAge('60대 이상')" 
                    class="spouse-age-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    60대+
                  </button>
                </div>
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">3. 연락처 (선택)</label>
                <input type="tel" id="guardianPhone" placeholder="010-0000-0000"
                  class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500" />
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">4. 주거형태</label>
                <div class="grid grid-cols-2 gap-2">
                  <button type="button" onclick="selectHousingType('자가')" 
                    class="housing-type-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    자가
                  </button>
                  <button type="button" onclick="selectHousingType('전세')" 
                    class="housing-type-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    전세
                  </button>
                  <button type="button" onclick="selectHousingType('월세')" 
                    class="housing-type-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    월세
                  </button>
                  <button type="button" onclick="selectHousingType('기타')" 
                    class="housing-type-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    기타
                  </button>
                </div>
              </div>
            </div>
          </div><div id="step6" class="step-content hidden">
            <h2 class="text-2xl font-bold text-gray-900 mb-2">질환/선호사항</h2>
            <p class="text-sm text-gray-600 mb-6">추가 정보를 입력해주세요</p>
            
            <div class="space-y-4">
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">1. 질병 (중복선택 가능)</label>
                <div class="grid grid-cols-2 gap-2">
                  <button type="button" onclick="toggleDisease('고혈압')" 
                    class="disease-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    고혈압
                  </button>
                  <button type="button" onclick="toggleDisease('당뇨')" 
                    class="disease-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    당뇨
                  </button>
                  <button type="button" onclick="toggleDisease('심혈관질환')" 
                    class="disease-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    심혈관질환
                  </button>
                  <button type="button" onclick="toggleDisease('호흡기질환')" 
                    class="disease-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    호흡기질환
                  </button>
                </div>
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">2. 성향 (중복선택 가능)</label>
                <div class="grid grid-cols-2 gap-2">
                  <button type="button" onclick="togglePersonality('온순함')" 
                    class="personality-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    온순함
                  </button>
                  <button type="button" onclick="togglePersonality('급함')" 
                    class="personality-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    급함
                  </button>
                  <button type="button" onclick="togglePersonality('활발함')" 
                    class="personality-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    활발함
                  </button>
                  <button type="button" onclick="togglePersonality('조용함')" 
                    class="personality-btn px-3 py-2 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 text-sm">
                    조용함
                  </button>
                </div>
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">3. 특이사항 (자유롭게 작성)</label>
                <textarea id="specialNotes" rows="4" placeholder="시설에 전달하고 싶은 특이사항을 입력해주세요"
                  class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500"></textarea>
              </div>
            </div>
          </div><div id="step7" class="step-content hidden">
            <h2 class="text-2xl font-bold text-gray-900 mb-4">견적 신청 완료</h2>
            <p class="text-sm text-gray-600 mb-6">입력하신 정보를 확인해주세요</p>
            
            <div class="space-y-4 mb-8">
              <div class="bg-gray-50 rounded-lg p-4">
                <h3 class="font-bold text-gray-900 mb-2">기본 정보</h3>
                <div class="text-sm text-gray-700 space-y-1">
                  <p><strong>시설 유형:</strong> <span id="summary-facility-type"></span></p>
                  <p><strong>신청자:</strong> <span id="summary-patient-name"></span></p>
                  <p><strong>지역:</strong> <span id="summary-region"></span></p>
                </div>
              </div>
              
              <div class="bg-gray-50 rounded-lg p-4">
                <h3 class="font-bold text-gray-900 mb-2">환자 정보</h3>
                <div class="text-sm text-gray-700 space-y-1" id="summary-patient-info">
                </div>
              </div>
              
              <div class="bg-gray-50 rounded-lg p-4">
                <h3 class="font-bold text-gray-900 mb-2">보호자 정보</h3>
                <div class="text-sm text-gray-700 space-y-1" id="summary-guardian-info">
                </div>
              </div>
            </div>
            
            <div class="bg-blue-50 border border-blue-200 rounded-lg p-4 mb-6">
              <p class="text-sm text-blue-800">
                <i class="fas fa-info-circle mr-2"></i>
                <strong>신청 완료 후</strong> 선택하신 지역의 시설들이 견적서를 작성하여 회신합니다. 
                마이페이지에서 받은 견적서를 확인하실 수 있습니다.
              </p>
            </div>
          </div><div class="flex justify-between mt-8 pt-6 border-t">
            <button type="button" id="prevBtn" onclick="prevStep()" 
              class="px-6 py-3 border-2 border-gray-300 rounded-lg text-gray-700 hover:bg-gray-50 transition-colors hidden">
              <i class="fas fa-chevron-left mr-2"></i>이전
            </button>
            <button type="button" id="nextBtn" onclick="nextStep()" 
              class="ml-auto px-8 py-3 bg-teal-600 text-white rounded-lg hover:bg-teal-700 transition-colors disabled:bg-gray-300 disabled:cursor-not-allowed"
              disabled>
              다음<i class="fas fa-chevron-right ml-2"></i>
            </button>
            <button type="button" id="submitBtn" onclick="submitQuote()" 
              class="ml-auto px-8 py-3 bg-teal-600 text-white rounded-lg hover:bg-teal-700 transition-colors hidden">
              견적 신청하기<i class="fas fa-paper-plane ml-2"></i>
            </button>
          </div>
        </div>
      </div><script src="https://cdn.jsdelivr.net/npm/axios@1.6.0/dist/axios.min.js"></script>
      <script dangerouslySetInnerHTML={{__html: `
        let currentStep = 1;
        const totalSteps = 7;
        const quoteData = {
          facilityType: '',
          patientName: '',
          age: '',
          gender: '',
          sido: '',
          sigungu: '',
          
          // 요양병원 전용
          birthYear: '',
          birthMonth: '',
          birthDay: '',
          patientGender: '',
          careLevel: '',
          beneficiaryType: '',
          diagnosis: [],
          adl: '',
          dementia: '',
          
          // 재가복지 전용
          serviceType: '',
          homecareLevel: '',
          weeklyHours: '',
          
          // 보호자 정보
          guardianAge: '',
          spouseAge: '',
          guardianPhone: '',
          housingType: '',
          
          // 추가 정보
          diseases: [],
          personalities: [],
          specialNotes: ''
        };

        const sigunguData = {
          '서울특별시': ['강남구', '강동구', '강북구', '강서구', '관악구', '광진구', '구로구', '금천구', '노원구', '도봉구', '동대문구', '동작구', '마포구', '서대문구', '서초구', '성동구', '성북구', '송파구', '양천구', '영등포구', '용산구', '은평구', '종로구', '중구', '중랑구'],
          '경기도': ['가평군', '고양시', '과천시', '광명시', '광주시', '구리시', '군포시', '김포시', '남양주시', '동두천시', '부천시', '성남시', '수원시', '시흥시', '안산시', '안성시', '안양시', '양주시', '양평군', '여주시', '연천군', '오산시', '용인시', '의왕시', '의정부시', '이천시', '파주시', '평택시', '포천시', '하남시', '화성시']
        };

        function updateQuoteNewSigungu() {
          const sidoSelect = document.getElementById('quoteNewSido');
          const sigunguSelect = document.getElementById('quoteNewSigungu');
          const selectedSido = sidoSelect.value;

          sigunguSelect.innerHTML = '<option value="">선택하세요</option>';

          if (selectedSido && sigunguData[selectedSido]) {
            sigunguData[selectedSido].forEach(sigungu => {
              const option = document.createElement('option');
              option.value = sigungu;
              option.textContent = sigungu;
              sigunguSelect.appendChild(option);
            });
          }
        }

        function selectFacilityType(type) {
          quoteData.facilityType = type;
          document.querySelectorAll('.facility-radio').forEach(el => {
            el.classList.remove('bg-teal-600', 'border-teal-600');
            el.classList.add('border-gray-400');
          });
          const selected = document.querySelector(\`[data-type="\${type}"]\`);
          selected.classList.remove('border-gray-400');
          selected.classList.add('bg-teal-600', 'border-teal-600');
          
          document.getElementById('nextBtn').disabled = false;
        }

        function selectAge(age) {
          quoteData.age = age;
          document.querySelectorAll('.age-btn').forEach(btn => {
            btn.classList.remove('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
          });
          event.target.classList.add('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
          checkStep2Valid();
        }

        function selectGender(gender) {
          quoteData.gender = gender;
          document.querySelectorAll('.gender-btn').forEach(btn => {
            btn.classList.remove('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
          });
          event.target.classList.add('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
          checkStep2Valid();
        }

        function checkStep2Valid() {
          const name = document.getElementById('patientName').value;
          const age = quoteData.age;
          const gender = quoteData.gender;
          
          document.getElementById('nextBtn').disabled = !(name && age && gender);
        }

        document.getElementById('patientName').addEventListener('input', checkStep2Valid);

        function selectPatientGender(gender) {
          quoteData.patientGender = gender;
          document.querySelectorAll('.patient-gender-btn').forEach(btn => {
            btn.classList.remove('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
          });
          event.target.classList.add('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
        }

        function selectCareLevel(level) {
          quoteData.careLevel = level;
          document.querySelectorAll('.care-level-btn').forEach(btn => {
            btn.classList.remove('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
          });
          event.target.classList.add('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
        }

        function selectBeneficiaryType(type) {
          quoteData.beneficiaryType = type;
          document.querySelectorAll('.beneficiary-type-btn').forEach(btn => {
            btn.classList.remove('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
          });
          event.target.classList.add('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
        }

        function toggleDiagnosis(diagnosis) {
          const btn = event.target;
          const index = quoteData.diagnosis.indexOf(diagnosis);
          
          if (index > -1) {
            quoteData.diagnosis.splice(index, 1);
            btn.classList.remove('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
          } else {
            quoteData.diagnosis.push(diagnosis);
            btn.classList.add('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
          }
        }

        function selectADL(level) {
          quoteData.adl = level;
          document.querySelectorAll('.adl-btn').forEach(btn => {
            btn.classList.remove('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
          });
          event.target.classList.add('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
        }

        function selectDementia(level) {
          quoteData.dementia = level;
          document.querySelectorAll('.dementia-btn').forEach(btn => {
            btn.classList.remove('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
          });
          event.target.classList.add('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
        }

        function selectServiceType(type) {
          quoteData.serviceType = type;
          document.querySelectorAll('.service-type-btn').forEach(btn => {
            btn.classList.remove('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
          });
          event.target.classList.add('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
        }

        function selectHomeCareLevel(level) {
          quoteData.homecareLevel = level;
          document.querySelectorAll('.homecare-level-btn').forEach(btn => {
            btn.classList.remove('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
          });
          event.target.classList.add('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
        }

        function selectGuardianAge(age) {
          quoteData.guardianAge = age;
          document.querySelectorAll('.guardian-age-btn').forEach(btn => {
            btn.classList.remove('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
          });
          event.target.classList.add('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
        }

        function selectSpouseAge(age) {
          quoteData.spouseAge = age;
          document.querySelectorAll('.spouse-age-btn').forEach(btn => {
            btn.classList.remove('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
          });
          event.target.classList.add('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
        }

        function selectHousingType(type) {
          quoteData.housingType = type;
          document.querySelectorAll('.housing-type-btn').forEach(btn => {
            btn.classList.remove('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
          });
          event.target.classList.add('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
        }

        function toggleDisease(disease) {
          const btn = event.target;
          const index = quoteData.diseases.indexOf(disease);
          
          if (index > -1) {
            quoteData.diseases.splice(index, 1);
            btn.classList.remove('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
          } else {
            quoteData.diseases.push(disease);
            btn.classList.add('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
          }
        }

        function togglePersonality(personality) {
          const btn = event.target;
          const index = quoteData.personalities.indexOf(personality);
          
          if (index > -1) {
            quoteData.personalities.splice(index, 1);
            btn.classList.remove('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
          } else {
            quoteData.personalities.push(personality);
            btn.classList.add('border-teal-500', 'bg-teal-50', 'text-teal-700', 'font-bold');
          }
        }

        function updateStepUI() {
          // Hide all steps
          document.querySelectorAll('.step-content').forEach(el => el.classList.add('hidden'));
          
          // Show current step
          if (currentStep === 4) {
            if (quoteData.facilityType === 'nursing_hospital') {
              document.getElementById('step4-hospital').classList.remove('hidden');
            } else {
              document.getElementById('step4-homecare').classList.remove('hidden');
            }
          } else {
            const currentStepEl = document.getElementById(\`step\${currentStep}\`);
            if (currentStepEl) currentStepEl.classList.remove('hidden');
          }

          // Update progress bar
          const progress = (currentStep / totalSteps) * 100;
          document.getElementById('progressBar').style.width = progress + '%';
          document.getElementById('stepIndicator').textContent = \`\${currentStep}/\${totalSteps} 단계\`;

          // Update step title
          const titles = [
            '견적서 전체 선택',
            '신청 정보 입력',
            '지역 선택',
            quoteData.facilityType === 'nursing_hospital' ? '환자 정보 입력' : '서비스 정보 입력',
            '본인/배우자 정보',
            '질환/선호사항',
            '최종 확인'
          ];
          document.getElementById('stepTitle').textContent = titles[currentStep - 1];

          // Update buttons
          document.getElementById('prevBtn').classList.toggle('hidden', currentStep === 1);
          document.getElementById('nextBtn').classList.toggle('hidden', currentStep === totalSteps);
          document.getElementById('submitBtn').classList.toggle('hidden', currentStep !== totalSteps);
        }

        function nextStep() {
          if (currentStep < totalSteps) {
            // Collect data from current step
            if (currentStep === 2) {
              quoteData.patientName = document.getElementById('patientName').value;
            } else if (currentStep === 3) {
              quoteData.sido = document.getElementById('quoteNewSido').value;
              quoteData.sigungu = document.getElementById('quoteNewSigungu').value;
              if (!quoteData.sido || !quoteData.sigungu) {
                alert('지역을 선택해주세요');
                return;
              }
            } else if (currentStep === 4 && quoteData.facilityType === 'nursing_hospital') {
              quoteData.birthYear = document.getElementById('birthYear').value;
              quoteData.birthMonth = document.getElementById('birthMonth').value;
              quoteData.birthDay = document.getElementById('birthDay').value;
            } else if (currentStep === 5) {
              quoteData.guardianPhone = document.getElementById('guardianPhone').value;
            } else if (currentStep === 6) {
              quoteData.specialNotes = document.getElementById('specialNotes').value;
            }

            currentStep++;
            updateStepUI();
            
            if (currentStep === totalSteps) {
              showSummary();
            }
            
            // Reset next button state
            document.getElementById('nextBtn').disabled = false;
          }
        }

        function prevStep() {
          if (currentStep > 1) {
            currentStep--;
            updateStepUI();
          }
        }

        function showSummary() {
          document.getElementById('summary-facility-type').textContent = 
            quoteData.facilityType === 'nursing_hospital' ? '요양병원' : '재가복지';
          document.getElementById('summary-patient-name').textContent = quoteData.patientName;
          document.getElementById('summary-region').textContent = \`\${quoteData.sido} \${quoteData.sigungu}\`;

          let patientInfo = '';
          if (quoteData.facilityType === 'nursing_hospital') {
            patientInfo = \`
              <p><strong>생년월일:</strong> \${quoteData.birthYear}년 \${quoteData.birthMonth}월 \${quoteData.birthDay}일</p>
              <p><strong>성별:</strong> \${quoteData.patientGender}</p>
              <p><strong>장기요양등급:</strong> \${quoteData.careLevel || '선택안함'}</p>
              <p><strong>수급자 유형:</strong> \${quoteData.beneficiaryType}</p>
              <p><strong>진단명:</strong> \${quoteData.diagnosis.join(', ') || '없음'}</p>
              <p><strong>ADL:</strong> \${quoteData.adl || '선택안함'}</p>
              <p><strong>치매:</strong> \${quoteData.dementia || '선택안함'}</p>
            \`;
          } else {
            patientInfo = \`
              <p><strong>서비스 유형:</strong> \${quoteData.serviceType}</p>
              <p><strong>장기요양등급:</strong> \${quoteData.homecareLevel}</p>
              <p><strong>주간 이용 시간:</strong> \${quoteData.weeklyHours || '선택안함'}</p>
            \`;
          }
          document.getElementById('summary-patient-info').innerHTML = patientInfo;

          document.getElementById('summary-guardian-info').innerHTML = \`
            <p><strong>본인 나이:</strong> \${quoteData.guardianAge || '선택안함'}</p>
            <p><strong>배우자 나이:</strong> \${quoteData.spouseAge || '선택안함'}</p>
            <p><strong>연락처:</strong> \${quoteData.guardianPhone || '미입력'}</p>
            <p><strong>주거형태:</strong> \${quoteData.housingType || '선택안함'}</p>
          \`;
        }

        async function submitQuote() {
          try {
            const response = await axios.post('/api/quote/submit-new', quoteData);
            
            if (response.data.success) {
              alert('견적 신청이 완료되었습니다! 시설들의 견적서를 기다려주세요.');
              window.location.href = '/';
            } else {
              alert('견적 신청 중 오류가 발생했습니다: ' + response.data.message);
            }
          } catch (error) {
            console.error('Submit error:', error);
            
            // 월 제한 초과 체크
            if (error.response && error.response.status === 429) {
              const data = error.response.data;
              const nextDate = data.nextAvailableDate || '다음 달';
              alert(\`❌ \${data.message || '견적 신청 횟수를 초과했습니다.'}\\n\\n다음 신청 가능일: \${nextDate}\`);
            } else {
              alert('견적 신청 중 오류가 발생했습니다. 다시 시도해주세요.');
            }
          }
        }

        // Initialize
        updateStepUI();
      `}}></script>
    </div>
  )
})

// ========== 대시보드 라우트 ==========

// ========== 견적 요청/응답 시스템 API ==========

// 견적 상세 조회 API
app.get('/api/quote/:quoteId', async (c) => {
  try {
    const quoteId = c.req.param('quoteId')
    console.log('[견적 조회 API] quoteId:', quoteId)
    
    const db = c.env.DB
    console.log('[견적 조회 API] DB 연결 상태:', db ? '연결됨' : '연결 안됨')
    
    if (!db) {
      console.error('[견적 조회 API] DB가 바인딩되지 않음')
      return c.json({ 
        success: false, 
        message: 'D1 데이터베이스가 바인딩되지 않았습니다. Cloudflare Pages 설정을 확인해주세요.' 
      }, 500)
    }
    
    // 견적 요청 조회
    console.log('[견적 조회 API] 견적 요청 조회 시작')
    const quote = await db.prepare(`
      SELECT *
      FROM quote_requests
      WHERE quote_id = ?
    `).bind(quoteId).first()
    
    console.log('[견적 조회 API] 견적 조회 결과:', quote ? '발견' : '없음')
    
    if (!quote) {
      return c.json({ 
        success: false, 
        message: '견적을 찾을 수 없습니다' 
      }, 404)
    }
    
    // 견적 응답 조회
    console.log('[견적 조회 API] 견적 응답 조회 시작')
    const responses = await db.prepare(`
      SELECT *
      FROM quote_responses
      WHERE quote_id = ?
      ORDER BY created_at DESC
    `).bind(quoteId).all()
    
    console.log('[견적 조회 API] 견적 응답 개수:', responses.results?.length || 0)
    
    return c.json({
      success: true,
      quote: quote,
      responses: responses.results || []
    })
  } catch (error) {
    console.error('[견적 조회 API] 오류:', error)
    console.error('[견적 조회 API] 오류 상세:', error instanceof Error ? error.message : String(error))
    return c.json({ 
      success: false, 
      message: `견적 조회 중 오류: ${error instanceof Error ? error.message : String(error)}` 
    }, 500)
  }
})

// 고객 대시보드 데이터 조회 API
app.get('/api/customer/dashboard', async (c) => {
  const user = await getUser(c)
  
  if (!user || user.type !== 'customer') {
    return c.json({ success: false, message: '인증 필요' }, 401)
  }

  try {
    const db = c.env.DB
    
    // D1 데이터베이스가 없는 경우 빈 데이터 반환
    if (!db) {
      return c.json({
        success: true,
        data: {
          quoteRequests: [],
          stats: {
            totalRequests: 0,
            totalResponses: 0,
            savedFacilities: 0,
            activeConsultations: 0
          }
        }
      })
    }
    
    // 고객의 견적 요청 목록 조회
    const quoteRequests = await db.prepare(`
      SELECT 
        id, quote_id, quote_type, applicant_name, 
        patient_name, patient_age, sido, sigungu, 
        facility_type, status, created_at
      FROM quote_requests
      WHERE applicant_phone = ? OR applicant_email = ?
      ORDER BY created_at DESC
    `).bind(user.phone, user.email).all()
    
    // 각 견적 요청에 대한 응답 개수 조회
    const requestsWithResponses = await Promise.all(
      (quoteRequests.results || []).map(async (req: any) => {
        const responses = await db.prepare(`
          SELECT COUNT(*) as count
          FROM quote_responses
          WHERE quote_id = ?
        `).bind(req.quote_id).first()
        
        return {
          ...req,
          responseCount: responses?.count || 0
        }
      })
    )
    
    // 받은 견적서 총 개수
    const allResponses = await db.prepare(`
      SELECT COUNT(*) as count
      FROM quote_responses
      WHERE quote_id IN (
        SELECT quote_id FROM quote_requests 
        WHERE applicant_phone = ? OR applicant_email = ?
      )
    `).bind(user.phone, user.email).first()
    
    return c.json({
      success: true,
      data: {
        quoteRequests: requestsWithResponses,
        stats: {
          totalRequests: (quoteRequests.results || []).length,
          totalResponses: allResponses?.count || 0,
          savedFacilities: 0,
          activeConsultations: 0
        }
      }
    })
  } catch (error) {
    console.error('고객 대시보드 데이터 조회 오류:', error)
    // 에러 발생 시에도 빈 데이터 반환 (500 에러 대신)
    return c.json({
      success: true,
      data: {
        quoteRequests: [],
        stats: {
          totalRequests: 0,
          totalResponses: 0,
          savedFacilities: 0,
          activeConsultations: 0
        }
      }
    })
  }
})

// 시설 대시보드 데이터 조회 API
app.get('/api/facility/dashboard', async (c) => {
  const user = await getUser(c)
  
  if (!user || user.type !== 'facility') {
    return c.json({ success: false, message: '인증 필요' }, 401)
  }

  try {
    const db = c.env.DB
    
    // D1 데이터베이스가 없는 경우 빈 데이터 반환
    if (!db) {
      return c.json({
        success: true,
        data: {
          newRequests: [],
          myResponses: [],
          stats: {
            newRequests: 0,
            sentQuotes: 0,
            viewedQuotes: 0,
            activeConsultations: 0
          }
        }
      })
    }
    
    try {
      // 시설이 속한 지역 파악 (region_sido, region_sigungu, facility_type 사용)
      const userSido = user.region_sido || ''
      const userSigungu = user.region_sigungu || ''
      const userFacilityType = user.facility_type || ''
      
      console.log('시설 대시보드 조회:', {
        userId: user.id,
        sido: userSido,
        sigungu: userSigungu,
        facilityType: userFacilityType
      })
      
      // 해당 지역의 견적 요청 목록 조회
      const quoteRequests = await db.prepare(`
        SELECT 
          id, quote_id, quote_type, applicant_name, applicant_phone, applicant_email,
          patient_name, patient_age, patient_gender, sido, sigungu, 
          facility_type, care_grade, additional_notes, status, created_at
        FROM quote_requests
        WHERE sido = ? AND sigungu = ? AND facility_type = ?
        AND status = 'pending'
        ORDER BY created_at DESC
        LIMIT 50
      `).bind(userSido, userSigungu, userFacilityType).all()
      
      // 이미 응답한 견적 요청 제외
      const requestsNotResponded = await Promise.all(
        (quoteRequests.results || []).map(async (req: any) => {
          const response = await db.prepare(`
            SELECT id FROM quote_responses
            WHERE quote_id = ? AND partner_id = ?
          `).bind(req.quote_id, user.id).first()
          
          return response ? null : req
        })
      )
      
      const filteredRequests = requestsNotResponded.filter(req => req !== null)
      
      // 내가 보낸 견적서 개수
      const sentQuotes = await db.prepare(`
        SELECT COUNT(*) as count
        FROM quote_responses
        WHERE partner_id = ?
      `).bind(user.id).first()
      
      // 내가 보낸 견적서 목록
      const myResponses = await db.prepare(`
        SELECT 
          qr.id, qr.response_id, qr.quote_id, qr.estimated_price,
          qr.status, qr.created_at,
          qq.applicant_name, qq.patient_name, qq.patient_age
        FROM quote_responses qr
        JOIN quote_requests qq ON qr.quote_id = qq.quote_id
        WHERE qr.partner_id = ?
        ORDER BY qr.created_at DESC
        LIMIT 50
      `).bind(user.id).all()
      
      return c.json({
        success: true,
        data: {
          newRequests: filteredRequests,
          myResponses: myResponses.results || [],
          stats: {
            newRequests: filteredRequests.length,
            sentQuotes: sentQuotes?.count || 0,
            viewedQuotes: 0,
            activeConsultations: 0
          }
        }
      })
    } catch (dbError) {
      console.error('시설 대시보드 DB 오류 (빈 데이터 반환):', dbError)
      // DB 오류 시에도 빈 데이터 반환
      return c.json({
        success: true,
        data: {
          newRequests: [],
          myResponses: [],
          stats: {
            newRequests: 0,
            sentQuotes: 0,
            viewedQuotes: 0,
            activeConsultations: 0
          }
        }
      })
    }
  } catch (error) {
    console.error('시설 대시보드 데이터 조회 오류:', error)
    // 최악의 경우에도 빈 데이터 반환
    return c.json({
      success: true,
      data: {
        newRequests: [],
        myResponses: [],
        stats: {
          newRequests: 0,
          sentQuotes: 0,
          viewedQuotes: 0,
          activeConsultations: 0
        }
      }
    })
  }
})

// 견적서 작성 및 전송 API
app.post('/api/facility/send-quote', async (c) => {
  const user = await getUser(c)
  
  if (!user || user.type !== 'facility') {
    return c.json({ success: false, message: '인증 필요' }, 401)
  }

  try {
    const db = c.env.DB
    const data = await c.req.json()
    
    const responseId = `QR${Date.now()}-${Math.random().toString(36).substring(2, 9).toUpperCase()}`
    
    // 견적서 저장
    await db.prepare(`
      INSERT INTO quote_responses (
        response_id, quote_id, partner_id,
        estimated_price, service_details, available_rooms, special_services,
        response_message, contact_person, contact_phone,
        status, created_at
      ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'sent', CURRENT_TIMESTAMP)
    `).bind(
      responseId,
      data.quoteId,
      user.id,
      data.estimatedPrice,
      data.serviceDetails,
      data.availableRooms,
      data.specialServices,
      data.responseMessage,
      user.name,
      user.phone
    ).run()
    
    return c.json({
      success: true,
      message: '견적서가 전송되었습니다.',
      responseId
    })
  } catch (error) {
    console.error('견적서 전송 오류:', error)
    return c.json({ success: false, message: '견적서 전송 실패' }, 500)
  }
})

// 시설 정보 수정 API
app.post('/api/facility/update-info', async (c) => {
  const user = await getUser(c)
  
  if (!user || user.type !== 'facility') {
    return c.json({ success: false, message: '인증 필요' }, 401)
  }

  try {
    const db = c.env.DB
    const data = await c.req.json()
    
    // users 테이블 업데이트
    if (db) {
      try {
        await db.prepare(`
          UPDATE users 
          SET 
            name = ?,
            facility_type = ?,
            region_sido = ?,
            region_sigungu = ?,
            address = ?,
            phone = ?,
            updated_at = CURRENT_TIMESTAMP
          WHERE id = ?
        `).bind(
          data.name,
          data.facility_type,
          data.region_sido,
          data.region_sigungu,
          data.address,
          data.phone,
          user.id
        ).run()

        // facilities 테이블도 업데이트 (존재하는 경우)
        await db.prepare(`
          UPDATE facilities 
          SET 
            name = ?,
            facility_type = ?,
            sido = ?,
            sigungu = ?,
            address = ?,
            phone = ?,
            postal_code = ?,
            updated_at = CURRENT_TIMESTAMP
          WHERE id IN (SELECT facility_id FROM users WHERE id = ?)
        `).bind(
          data.name,
          data.facility_type,
          data.region_sido,
          data.region_sigungu,
          data.address,
          data.phone,
          data.postal_code || null,
          user.id
        ).run()
      } catch (dbError) {
        console.error('DB 업데이트 오류 (무시):', dbError)
      }
    }

    return c.json({
      success: true,
      message: '시설 정보가 수정되었습니다.'
    })
  } catch (error) {
    console.error('시설 정보 수정 오류:', error)
    return c.json({ success: false, message: '시설 정보 수정 실패' }, 500)
  }
})

// ========== 대표시설 신청 API ==========

// 대표시설 신청
app.post('/api/facility/apply-representative', async (c) => {
  const user = await getUser(c)
  
  if (!user || user.type !== 'facility') {
    return c.json({ success: false, message: '시설 권한이 필요합니다.' }, 401)
  }

  try {
    const db = c.env.DB
    const { application_reason } = await c.req.json()
    
    // 시설 정보 확인
    if (!user.facility_type || !user.region_sido || !user.region_sigungu) {
      return c.json({ 
        success: false, 
        message: '시설 유형, 시/도, 시/군/구 정보를 먼저 등록해주세요.' 
      }, 400)
    }
    
    // 이미 신청한 내역이 있는지 확인
    const existing = await db.prepare(`
      SELECT * FROM representative_facility_applications 
      WHERE facility_id = ? AND status = 'pending'
    `).bind(user.id).first()
    
    if (existing) {
      return c.json({ 
        success: false, 
        message: '이미 대표시설 신청이 진행 중입니다. 관리자의 승인을 기다려주세요.' 
      }, 400)
    }
    
    // 신청 등록
    await db.prepare(`
      INSERT INTO representative_facility_applications (
        facility_id, facility_name, facility_type,
        region_sido, region_sigungu,
        manager_name, manager_phone, business_number,
        application_reason, status, applied_at
      ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 'pending', CURRENT_TIMESTAMP)
    `).bind(
      user.id,
      user.name,
      user.facility_type,
      user.region_sido,
      user.region_sigungu,
      user.name,
      user.phone,
      user.business_number || '',
      application_reason || '지역 대표시설로 활동하고 싶습니다.'
    ).run()
    
    return c.json({
      success: true,
      message: '대표시설 신청이 완료되었습니다. 관리자의 승인 후 대표시설로 지정됩니다.'
    })
  } catch (error) {
    console.error('대표시설 신청 오류:', error)
    return c.json({ success: false, message: '신청 처리 실패' }, 500)
  }
})

// 내 대표시설 신청 상태 조회
app.get('/api/facility/representative-status', async (c) => {
  const user = await getUser(c)
  
  if (!user || user.type !== 'facility') {
    return c.json({ success: false, message: '시설 권한이 필요합니다.' }, 401)
  }

  try {
    const db = c.env.DB
    
    const application = await db.prepare(`
      SELECT * FROM representative_facility_applications 
      WHERE facility_id = ? 
      ORDER BY applied_at DESC 
      LIMIT 1
    `).bind(user.id).first()
    
    return c.json({
      success: true,
      data: application
    })
  } catch (error) {
    console.error('신청 상태 조회 오류:', error)
    return c.json({ success: false, message: '조회 실패' }, 500)
  }
})

// ========== 메시지 교환 API ==========

// 메시지 전송 (고객 → 시설) - DEPRECATED: 하단에 통합된 버전 사용
/* DEPRECATED - 중복 라우트
app.post('/api/messages/send', async (c) => {
  const user = await getUser(c)
  
  if (!user || user.type !== 'customer') {
    return c.json({ success: false, message: '인증 필요' }, 401)
  }

  try {
    const db = c.env.DB
    const { responseId, message } = await c.req.json()
    
    if (!responseId || !message) {
      return c.json({ success: false, message: '필수 정보가 없습니다.' }, 400)
    }

    // 견적서 응답 정보 조회
    const response = await db.prepare(`
      SELECT qr.*, qu.quote_id, qu.applicant_name, qu.patient_name
      FROM quote_responses qr
      JOIN quote_requests qu ON qr.quote_id = qu.quote_id
      WHERE qr.response_id = ?
    `).bind(responseId).first()

    if (!response) {
      return c.json({ success: false, message: '견적서를 찾을 수 없습니다.' }, 404)
    }

    // 메시지 저장
    const messageId = `MSG${Date.now()}-${Math.random().toString(36).substring(2, 9).toUpperCase()}`
    
    await db.prepare(`
      INSERT INTO chat_messages (
        message_id, quote_id, response_id, sender_id, sender_type, message, created_at
      ) VALUES (?, ?, ?, ?, 'customer', ?, CURRENT_TIMESTAMP)
    `).bind(
      messageId,
      response.quote_id,
      responseId,
      user.id,
      message
    ).run()
    
    return c.json({
      success: true,
      message: '메시지가 전송되었습니다.',
      messageId
    })
  } catch (error) {
    console.error('메시지 전송 오류:', error)
    return c.json({ success: false, message: '메시지 전송 실패' }, 500)
  }
})
*/

// 메시지 목록 조회 (견적서별)
app.get('/api/messages/:responseId', async (c) => {
  const user = await getUser(c)
  
  if (!user) {
    return c.json({ success: false, message: '인증 필요' }, 401)
  }

  try {
    const db = c.env.DB
    const responseId = c.req.param('responseId')
    
    // 메시지 목록 조회
    const messages = await db.prepare(`
      SELECT 
        message_id,
        sender_id,
        sender_type,
        message,
        created_at,
        is_read
      FROM chat_messages
      WHERE response_id = ?
      ORDER BY created_at ASC
    `).bind(responseId).all()
    
    return c.json({
      success: true,
      data: messages.results || []
    })
  } catch (error) {
    console.error('메시지 조회 오류:', error)
    return c.json({ success: false, message: '메시지 조회 실패' }, 500)
  }
})

// 시설 메시지 응답
app.post('/api/messages/reply', async (c) => {
  const user = await getUser(c)
  
  if (!user || user.type !== 'facility') {
    return c.json({ success: false, message: '인증 필요' }, 401)
  }

  try {
    const db = c.env.DB
    const { responseId, message } = await c.req.json()
    
    if (!responseId || !message) {
      return c.json({ success: false, message: '필수 정보가 없습니다.' }, 400)
    }

    // 견적서 응답 정보 조회
    const response = await db.prepare(`
      SELECT * FROM quote_responses WHERE response_id = ? AND partner_id = ?
    `).bind(responseId, user.id).first()

    if (!response) {
      return c.json({ success: false, message: '권한이 없습니다.' }, 403)
    }

    // 메시지 저장
    const messageId = `MSG${Date.now()}-${Math.random().toString(36).substring(2, 9).toUpperCase()}`
    
    await db.prepare(`
      INSERT INTO chat_messages (
        message_id, quote_id, response_id, sender_id, sender_type, message, created_at
      ) VALUES (?, ?, ?, ?, 'facility', ?, CURRENT_TIMESTAMP)
    `).bind(
      messageId,
      response.quote_id,
      responseId,
      user.id,
      message
    ).run()
    
    return c.json({
      success: true,
      message: '답변이 전송되었습니다.',
      messageId
    })
  } catch (error) {
    console.error('답변 전송 오류:', error)
    return c.json({ success: false, message: '답변 전송 실패' }, 500)
  }
})

// ========== 리뷰 시스템 API ==========

// 리뷰 작성 (고객만 가능, 견적서 받은 경우에만)
app.post('/api/reviews/create', async (c) => {
  const user = await getUser(c)
  
  if (!user || user.type !== 'customer') {
    return c.json({ success: false, message: '고객만 리뷰를 작성할 수 있습니다.' }, 401)
  }

  try {
    const db = c.env.DB
    const { responseId, rating, title, content } = await c.req.json()
    
    // 입력 검증
    if (!responseId || !rating || !content) {
      return c.json({ success: false, message: '필수 정보가 없습니다.' }, 400)
    }

    if (rating < 1 || rating > 5) {
      return c.json({ success: false, message: '별점은 1-5 사이여야 합니다.' }, 400)
    }

    if (content.trim().length < 10) {
      return c.json({ success: false, message: '리뷰는 최소 10자 이상 작성해주세요.' }, 400)
    }

    // 견적서 응답 확인 (해당 고객이 받은 견적서인지 확인)
    const quoteResponse = await db.prepare(`
      SELECT qr.*, qu.applicant_phone, qu.applicant_email
      FROM quote_responses qr
      JOIN quote_requests qu ON qr.quote_id = qu.quote_id
      WHERE qr.response_id = ?
    `).bind(responseId).first()

    if (!quoteResponse) {
      return c.json({ success: false, message: '견적서를 찾을 수 없습니다.' }, 404)
    }

    // 해당 고객의 견적서인지 확인 (이메일 또는 전화번호 매칭)
    // 실제로는 user 테이블과 연결해서 확인해야 하지만, 간단하게 처리
    
    // 이미 리뷰를 작성했는지 확인
    const existingReview = await db.prepare(`
      SELECT * FROM reviews WHERE response_id = ? AND customer_id = ?
    `).bind(responseId, user.id).first()

    if (existingReview) {
      return c.json({ success: false, message: '이미 리뷰를 작성하셨습니다.' }, 400)
    }

    // 리뷰 ID 생성
    const reviewId = `RV${Date.now()}-${Math.random().toString(36).substring(2, 9).toUpperCase()}`
    
    // 리뷰 저장
    await db.prepare(`
      INSERT INTO reviews (
        review_id, response_id, customer_id, facility_id,
        rating, title, content, status, is_verified, created_at
      ) VALUES (?, ?, ?, ?, ?, ?, ?, 'pending', 1, CURRENT_TIMESTAMP)
    `).bind(
      reviewId,
      responseId,
      user.id,
      quoteResponse.partner_id,
      rating,
      title || '',
      content
    ).run()
    
    return c.json({
      success: true,
      message: '리뷰가 등록되었습니다. 관리자 승인 후 공개됩니다.',
      reviewId
    })
  } catch (error) {
    console.error('리뷰 작성 오류:', error)
    return c.json({ success: false, message: '리뷰 작성 실패' }, 500)
  }
})

// 시설별 리뷰 목록 조회 (승인된 리뷰만)
app.get('/api/reviews/facility/:facilityId', async (c) => {
  try {
    const db = c.env.DB
    const facilityId = c.req.param('facilityId')
    
    // 승인된 리뷰만 조회
    const reviews = await db.prepare(`
      SELECT 
        r.review_id,
        r.rating,
        r.title,
        r.content,
        r.is_verified,
        r.created_at,
        rr.response_text as facility_response,
        rr.created_at as response_created_at
      FROM reviews r
      LEFT JOIN review_responses rr ON r.review_id = rr.review_id
      WHERE r.facility_id = ? AND r.status = 'approved'
      ORDER BY r.created_at DESC
    `).bind(facilityId).all()
    
    // 평균 별점 계산
    const avgRating = await db.prepare(`
      SELECT AVG(rating) as avg_rating, COUNT(*) as review_count
      FROM reviews
      WHERE facility_id = ? AND status = 'approved'
    `).bind(facilityId).first()
    
    return c.json({
      success: true,
      data: {
        reviews: reviews.results || [],
        avgRating: avgRating?.avg_rating ? parseFloat(avgRating.avg_rating.toFixed(1)) : 0,
        reviewCount: avgRating?.review_count || 0
      }
    })
  } catch (error) {
    console.error('리뷰 조회 오류:', error)
    return c.json({ success: false, message: '리뷰 조회 실패' }, 500)
  }
})

// 견적서 응답별 리뷰 조회
app.get('/api/reviews/response/:responseId', async (c) => {
  try {
    const db = c.env.DB
    const responseId = c.req.param('responseId')
    
    const review = await db.prepare(`
      SELECT 
        r.review_id,
        r.rating,
        r.title,
        r.content,
        r.status,
        r.is_verified,
        r.created_at,
        rr.response_text as facility_response,
        rr.created_at as response_created_at
      FROM reviews r
      LEFT JOIN review_responses rr ON r.review_id = rr.review_id
      WHERE r.response_id = ?
    `).bind(responseId).first()
    
    return c.json({
      success: true,
      data: review || null
    })
  } catch (error) {
    console.error('리뷰 조회 오류:', error)
    return c.json({ success: false, message: '리뷰 조회 실패' }, 500)
  }
})

// 시설의 리뷰 답변 작성
app.post('/api/reviews/respond', async (c) => {
  const user = await getUser(c)
  
  if (!user || user.type !== 'facility') {
    return c.json({ success: false, message: '시설만 답변할 수 있습니다.' }, 401)
  }

  try {
    const db = c.env.DB
    const { reviewId, responseText } = await c.req.json()
    
    if (!reviewId || !responseText || responseText.trim().length < 10) {
      return c.json({ success: false, message: '답변은 최소 10자 이상 작성해주세요.' }, 400)
    }

    // 리뷰가 해당 시설의 것인지 확인
    const review = await db.prepare(`
      SELECT * FROM reviews WHERE review_id = ? AND facility_id = ?
    `).bind(reviewId, user.id).first()

    if (!review) {
      return c.json({ success: false, message: '리뷰를 찾을 수 없거나 권한이 없습니다.' }, 404)
    }

    // 이미 답변이 있는지 확인
    const existingResponse = await db.prepare(`
      SELECT * FROM review_responses WHERE review_id = ?
    `).bind(reviewId).first()

    if (existingResponse) {
      // 답변 수정
      await db.prepare(`
        UPDATE review_responses 
        SET response_text = ?, created_at = CURRENT_TIMESTAMP
        WHERE review_id = ?
      `).bind(responseText, reviewId).run()
    } else {
      // 새 답변 추가
      await db.prepare(`
        INSERT INTO review_responses (review_id, facility_id, response_text, created_at)
        VALUES (?, ?, ?, CURRENT_TIMESTAMP)
      `).bind(reviewId, user.id, responseText).run()
    }
    
    return c.json({
      success: true,
      message: '답변이 등록되었습니다.'
    })
  } catch (error) {
    console.error('리뷰 답변 오류:', error)
    return c.json({ success: false, message: '답변 등록 실패' }, 500)
  }
})

// 관리자: 리뷰 승인/거부
app.post('/api/admin/reviews/:reviewId/status', async (c) => {
  const user = await getUser(c)
  
  // 관리자 권한 확인 (간단하게 처리)
  const sessionId = getCookie(c, 'admin_session')
  if (!sessionId) {
    return c.json({ success: false, message: '관리자 권한이 필요합니다.' }, 401)
  }

  try {
    const db = c.env.DB
    const reviewId = c.req.param('reviewId')
    const { status } = await c.req.json()
    
    if (!['approved', 'rejected'].includes(status)) {
      return c.json({ success: false, message: '잘못된 상태값입니다.' }, 400)
    }

    await db.prepare(`
      UPDATE reviews SET status = ?, updated_at = CURRENT_TIMESTAMP
      WHERE review_id = ?
    `).bind(status, reviewId).run()
    
    return c.json({
      success: true,
      message: status === 'approved' ? '리뷰가 승인되었습니다.' : '리뷰가 거부되었습니다.'
    })
  } catch (error) {
    console.error('리뷰 상태 변경 오류:', error)
    return c.json({ success: false, message: '상태 변경 실패' }, 500)
  }
})

// 관리자: 대기 중인 리뷰 목록 조회
app.get('/api/admin/reviews/pending', async (c) => {
  const sessionId = getCookie(c, 'admin_session')
  if (!sessionId) {
    return c.json({ success: false, message: '관리자 권한이 필요합니다.' }, 401)
  }

  try {
    const db = c.env.DB
    
    const reviews = await db.prepare(`
      SELECT 
        r.review_id,
        r.rating,
        r.title,
        r.content,
        r.status,
        r.created_at,
        p.facility_name
      FROM reviews r
      JOIN partners p ON r.facility_id = p.id
      WHERE r.status = 'pending'
      ORDER BY r.created_at DESC
    `).all()
    
    return c.json({
      success: true,
      data: reviews.results || []
    })
  } catch (error) {
    console.error('리뷰 목록 조회 오류:', error)
    return c.json({ success: false, message: '목록 조회 실패' }, 500)
  }
})

// ========== 긴급 전원 시스템 API ==========

// 긴급 전원 요청 생성
app.post('/api/emergency/create', async (c) => {
  try {
    const db = c.env.DB
    const data = await c.req.json()
    
    // 필수 필드 검증
    const required = ['urgencyLevel', 'patientName', 'requesterType', 'requesterName', 'requesterPhone']
    for (const field of required) {
      if (!data[field]) {
        return c.json({ success: false, message: `${field}는 필수 항목입니다.` }, 400)
      }
    }

    // 긴급도 검증
    if (!['normal', 'urgent', 'critical'].includes(data.urgencyLevel)) {
      return c.json({ success: false, message: '올바른 긴급도를 선택해주세요.' }, 400)
    }

    // 전원 ID 생성
    const transferId = `ET${Date.now()}-${Math.random().toString(36).substring(2, 9).toUpperCase()}`
    
    // DB 저장
    await db.prepare(`
      INSERT INTO emergency_transfers (
        transfer_id, urgency_level, patient_name, patient_age, patient_gender,
        diagnosis, care_level, special_notes,
        desired_admission_date, region_sido, region_sigungu, facility_type,
        requester_type, requester_name, requester_phone, requester_email,
        hospital_name, department,
        status, created_at
      ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'pending', CURRENT_TIMESTAMP)
    `).bind(
      transferId,
      data.urgencyLevel,
      data.patientName,
      data.patientAge || null,
      data.patientGender || null,
      data.diagnosis || null,
      data.careLevel || null,
      data.specialNotes || null,
      data.desiredAdmissionDate || null,
      data.regionSido || null,
      data.regionSigungu || null,
      data.facilityType || null,
      data.requesterType,
      data.requesterName,
      data.requesterPhone,
      data.requesterEmail || null,
      data.hospitalName || null,
      data.department || null
    ).run()
    
    return c.json({
      success: true,
      message: '긴급 전원 요청이 접수되었습니다.',
      transferId,
      urgencyLevel: data.urgencyLevel
    })
  } catch (error) {
    console.error('긴급 전원 요청 생성 오류:', error)
    return c.json({ success: false, message: '요청 처리 실패' }, 500)
  }
})

// 긴급 전원 요청 목록 조회
app.get('/api/emergency/list', async (c) => {
  try {
    const db = c.env.DB
    const { urgency, status } = c.req.query()
    
    let query = `
      SELECT 
        transfer_id, urgency_level, patient_name, patient_age, patient_gender,
        diagnosis, care_level, region_sido, region_sigungu, facility_type,
        requester_type, requester_name, requester_phone, hospital_name,
        status, created_at
      FROM emergency_transfers
      WHERE 1=1
    `
    
    const params = []
    
    if (urgency) {
      query += ` AND urgency_level = ?`
      params.push(urgency)
    }
    
    if (status) {
      query += ` AND status = ?`
      params.push(status)
    }
    
    query += ` ORDER BY 
      CASE urgency_level 
        WHEN 'critical' THEN 1 
        WHEN 'urgent' THEN 2 
        WHEN 'normal' THEN 3 
      END,
      created_at DESC
      LIMIT 50
    `
    
    const result = await db.prepare(query).bind(...params).all()
    
    return c.json({
      success: true,
      data: result.results || []
    })
  } catch (error) {
    console.error('긴급 전원 목록 조회 오류:', error)
    return c.json({ success: false, message: '목록 조회 실패' }, 500)
  }
})

// 긴급 전원 상세 조회
app.get('/api/emergency/:transferId', async (c) => {
  try {
    const db = c.env.DB
    const transferId = c.req.param('transferId')
    
    const transfer = await db.prepare(`
      SELECT * FROM emergency_transfers WHERE transfer_id = ?
    `).bind(transferId).first()
    
    if (!transfer) {
      return c.json({ success: false, message: '요청을 찾을 수 없습니다.' }, 404)
    }
    
    return c.json({
      success: true,
      data: transfer
    })
  } catch (error) {
    console.error('긴급 전원 상세 조회 오류:', error)
    return c.json({ success: false, message: '조회 실패' }, 500)
  }
})

// 사회복지사 회원가입
app.post('/api/social-worker/register', async (c) => {
  try {
    const db = c.env.DB
    const { email, password, name, phone, hospitalName, department, licenseNumber } = await c.req.json()
    
    // 필수 필드 검증
    if (!email || !password || !name || !phone || !hospitalName) {
      return c.json({ success: false, message: '필수 정보를 모두 입력해주세요.' }, 400)
    }

    // 이메일 중복 확인
    const existing = await db.prepare(`
      SELECT * FROM social_workers WHERE email = ?
    `).bind(email).first()

    if (existing) {
      return c.json({ success: false, message: '이미 등록된 이메일입니다.' }, 400)
    }

    // 비밀번호 간단 해시 (실제로는 bcrypt 사용 권장)
    const hashedPassword = password // TODO: 실제 해시 처리 필요
    
    // DB 저장
    await db.prepare(`
      INSERT INTO social_workers (
        email, password, name, phone, hospital_name, department, license_number,
        status, created_at
      ) VALUES (?, ?, ?, ?, ?, ?, ?, 'active', CURRENT_TIMESTAMP)
    `).bind(email, hashedPassword, name, phone, hospitalName, department || null, licenseNumber || null).run()
    
    return c.json({
      success: true,
      message: '사회복지사 계정이 생성되었습니다.'
    })
  } catch (error) {
    console.error('사회복지사 회원가입 오류:', error)
    return c.json({ success: false, message: '회원가입 실패' }, 500)
  }
})

// 사회복지사 로그인
app.post('/api/social-worker/login', async (c) => {
  try {
    const db = c.env.DB
    const { email, password } = await c.req.json()
    
    if (!email || !password) {
      return c.json({ success: false, message: '이메일과 비밀번호를 입력해주세요.' }, 400)
    }

    const socialWorker = await db.prepare(`
      SELECT * FROM social_workers WHERE email = ? AND password = ?
    `).bind(email, password).first()

    if (!socialWorker) {
      return c.json({ success: false, message: '이메일 또는 비밀번호가 일치하지 않습니다.' }, 401)
    }

    if (socialWorker.status !== 'active') {
      return c.json({ success: false, message: '비활성화된 계정입니다.' }, 403)
    }

    // 세션 생성 (간단 버전)
    setCookie(c, 'social_worker_session', email, {
      maxAge: 3600,
      httpOnly: true,
      path: '/'
    })
    
    return c.json({
      success: true,
      message: '로그인 성공',
      user: {
        id: socialWorker.id,
        email: socialWorker.email,
        name: socialWorker.name,
        hospitalName: socialWorker.hospital_name,
        department: socialWorker.department
      }
    })
  } catch (error) {
    console.error('사회복지사 로그인 오류:', error)
    return c.json({ success: false, message: '로그인 실패' }, 500)
  }
})

// ========== 시설 템플릿 관리 API ==========

// 시설 템플릿 조회
app.get('/api/facility/template', async (c) => {
  const user = await getUser(c)
  
  if (!user || user.type !== 'facility') {
    return c.json({ success: false, message: '인증 필요' }, 401)
  }

  try {
    const db = c.env.DB
    
    const template = await db.prepare(`
      SELECT * FROM facility_templates WHERE facility_id = ?
    `).bind(user.id).first()
    
    return c.json({
      success: true,
      data: template || null
    })
  } catch (error) {
    console.error('템플릿 조회 오류:', error)
    return c.json({ success: false, message: '템플릿 조회 실패' }, 500)
  }
})

// 시설 템플릿 저장/수정
app.post('/api/facility/template', async (c) => {
  const user = await getUser(c)
  
  if (!user || user.type !== 'facility') {
    return c.json({ success: false, message: '인증 필요' }, 401)
  }

  try {
    const db = c.env.DB
    const data = await c.req.json()
    
    // 기존 템플릿 확인
    const existing = await db.prepare(`
      SELECT id FROM facility_templates WHERE facility_id = ?
    `).bind(user.id).first()
    
    if (existing) {
      // 업데이트
      await db.prepare(`
        UPDATE facility_templates SET
          facility_name = ?,
          facility_description = ?,
          default_service_details = ?,
          default_special_services = ?,
          default_message = ?,
          price_range_min = ?,
          price_range_max = ?,
          available_room_types = ?,
          updated_at = datetime('now')
        WHERE facility_id = ?
      `).bind(
        data.facilityName || '',
        data.facilityDescription || '',
        data.defaultServiceDetails || '',
        data.defaultSpecialServices || '',
        data.defaultMessage || '',
        data.priceRangeMin || null,
        data.priceRangeMax || null,
        data.availableRoomTypes || '',
        user.id
      ).run()
    } else {
      // 새로 생성
      await db.prepare(`
        INSERT INTO facility_templates (
          facility_id, facility_name, facility_description,
          default_service_details, default_special_services, default_message,
          price_range_min, price_range_max, available_room_types,
          created_at, updated_at
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, datetime('now'), datetime('now'))
      `).bind(
        user.id,
        data.facilityName || '',
        data.facilityDescription || '',
        data.defaultServiceDetails || '',
        data.defaultSpecialServices || '',
        data.defaultMessage || '',
        data.priceRangeMin || null,
        data.priceRangeMax || null,
        data.availableRoomTypes || ''
      ).run()
    }
    
    return c.json({
      success: true,
      message: '템플릿이 저장되었습니다.'
    })
  } catch (error) {
    console.error('템플릿 저장 오류:', error)
    return c.json({ success: false, message: '템플릿 저장 실패' }, 500)
  }
})

// ========== 메시지 교환 시스템 API ==========

// 메시지 전송 API
app.post('/api/messages/send', async (c) => {
  const user = await getUser(c)
  
  if (!user) {
    return c.json({ success: false, message: '인증 필요' }, 401)
  }

  try {
    const db = c.env.DB
    const data = await c.req.json()
    
    const messageId = `MSG${Date.now()}-${Math.random().toString(36).substring(2, 9).toUpperCase()}`
    
    // 메시지 저장
    await db.prepare(`
      INSERT INTO chat_messages (
        message_id, quote_id, sender_type, sender_id, sender_name,
        message, is_read, created_at
      ) VALUES (?, ?, ?, ?, ?, ?, 0, datetime('now'))
    `).bind(
      messageId,
      data.quoteId,
      user.type,
      user.id,
      user.name,
      data.message
    ).run()
    
    return c.json({
      success: true,
      message: '메시지가 전송되었습니다.',
      messageId
    })
  } catch (error) {
    console.error('메시지 전송 오류:', error)
    return c.json({ success: false, message: '메시지 전송 실패' }, 500)
  }
})

// 메시지 목록 조회 API
app.get('/api/messages/:quoteId', async (c) => {
  const user = await getUser(c)
  
  if (!user) {
    return c.json({ success: false, message: '인증 필요' }, 401)
  }

  try {
    const db = c.env.DB
    const quoteId = c.req.param('quoteId')
    
    // 메시지 목록 조회
    const messages = await db.prepare(`
      SELECT * FROM chat_messages
      WHERE quote_id = ?
      ORDER BY created_at ASC
    `).bind(quoteId).all()
    
    // 읽지 않은 메시지를 읽음으로 표시 (상대방이 보낸 메시지만)
    await db.prepare(`
      UPDATE chat_messages
      SET is_read = 1
      WHERE quote_id = ? AND sender_id != ? AND is_read = 0
    `).bind(quoteId, user.id).run()
    
    return c.json({
      success: true,
      data: messages.results
    })
  } catch (error) {
    console.error('메시지 조회 오류:', error)
    return c.json({ success: false, message: '메시지 조회 실패' }, 500)
  }
})

// 읽지 않은 메시지 개수 조회 API
app.get('/api/messages/unread-count/:quoteId', async (c) => {
  const user = await getUser(c)
  
  if (!user) {
    return c.json({ success: false, message: '인증 필요' }, 401)
  }

  try {
    const db = c.env.DB
    const quoteId = c.req.param('quoteId')
    
    const result = await db.prepare(`
      SELECT COUNT(*) as count
      FROM chat_messages
      WHERE quote_id = ? AND sender_id != ? AND is_read = 0
    `).bind(quoteId, user.id).first()
    
    return c.json({
      success: true,
      count: result?.count || 0
    })
  } catch (error) {
    console.error('읽지 않은 메시지 개수 조회 오류:', error)
    return c.json({ success: false, message: '조회 실패' }, 500)
  }
})

// 고객이 받은 견적서 상세 조회 API
app.get('/api/customer/quote-responses/:quoteId', async (c) => {
  const user = await getUser(c)
  
  if (!user || user.type !== 'customer') {
    return c.json({ success: false, message: '인증 필요' }, 401)
  }

  try {
    const db = c.env.DB
    const quoteId = c.req.param('quoteId')
    
    // 견적 요청 정보 조회
    const quoteRequest = await db.prepare(`
      SELECT * FROM quote_requests WHERE quote_id = ?
    `).bind(quoteId).first()
    
    if (!quoteRequest) {
      return c.json({ success: false, message: '견적 요청을 찾을 수 없습니다.' }, 404)
    }
    
    // 해당 견적에 대한 응답 목록 조회
    const responses = await db.prepare(`
      SELECT * FROM quote_responses WHERE quote_id = ?
      ORDER BY created_at DESC
    `).bind(quoteId).all()
    
    return c.json({
      success: true,
      data: {
        quoteRequest,
        responses: responses.results
      }
    })
  } catch (error) {
    console.error('견적서 조회 오류:', error)
    return c.json({ success: false, message: '견적서 조회 실패' }, 500)
  }
})

// 고객 대시보드
app.get('/dashboard/customer', async (c) => {
  const user = await getUser(c)
  
  if (!user || user.type !== 'customer') {
    return c.redirect('/login')
  }

  // 상태 배지 생성 헬퍼 함수
  const getStatusBadge = (status: string) => {
    const statusMap: Record<string, { text: string; color: string }> = {
      'pending': { text: '대기 중', color: 'yellow' },
      'received': { text: '견적 수신', color: 'green' },
      'completed': { text: '완료', color: 'blue' },
      'cancelled': { text: '취소', color: 'red' }
    };
    
    const statusInfo = statusMap[status] || { text: '알 수 없음', color: 'gray' };
    const colorClasses: Record<string, string> = {
      'yellow': 'bg-yellow-100 text-yellow-700',
      'green': 'bg-green-100 text-green-700',
      'blue': 'bg-blue-100 text-blue-700',
      'red': 'bg-red-100 text-red-700',
      'gray': 'bg-gray-100 text-gray-700'
    };
    
    return `<span class="px-3 py-1 rounded-full text-xs font-semibold ${colorClasses[statusInfo.color]}">${statusInfo.text}</span>`;
  };

  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>고객 대시보드 - 케어조아</title>
      <link href="/static/tailwind.css" rel="stylesheet">
      <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet">
    </head>
    <body class="bg-gray-50">
      <!-- 헤더 -->
      <header class="bg-white shadow-sm border-b">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div class="flex justify-between items-center h-16">
            <div class="flex items-center">
              <img src="https://page.gensparksite.com/v1/base64_upload/b39dca8586af1dacd6d8417554313896" 
                   alt="케어조아 로고" class="h-6 sm:h-8 w-auto mr-2 sm:mr-3" />
              <h1 class="text-lg sm:text-2xl font-bold text-teal-600">케어조아</h1>
            </div><div class="hidden md:flex items-center space-x-4">
              <span class="text-gray-700">
                <i class="fas fa-user-circle text-teal-600 mr-2"></i>
                <strong>${user.name}</strong>님
              </span>
              <a href="/profile" class="bg-gray-600 text-white px-4 py-2 rounded-lg hover:bg-gray-700 whitespace-nowrap">
                <i class="fas fa-user-cog mr-1"></i>프로필
              </a>
              <button onclick="handleLogout()" class="bg-red-600 text-white px-4 py-2 rounded-lg hover:bg-red-700 whitespace-nowrap">
                <i class="fas fa-sign-out-alt mr-1"></i>로그아웃
              </button>
            </div><button id="mobile-menu-btn" class="md:hidden p-2 text-gray-600 hover:text-teal-600">
              <i class="fas fa-bars text-xl"></i>
            </button>
          </div>
        </div><div id="mobile-menu" class="hidden md:hidden bg-white border-t">
          <nav class="px-4 py-3 space-y-2">
            <div class="text-gray-700 py-2 px-4 bg-gray-100 rounded-lg">
              <i class="fas fa-user-circle text-teal-600 mr-2"></i>
              <strong>${user.name}</strong>님
            </div>
            <a href="/profile" class="block bg-gray-600 text-white px-4 py-3 rounded-lg hover:bg-gray-700 text-center">
              <i class="fas fa-user-cog mr-2"></i>프로필
            </a>
            <button onclick="handleLogout()" class="w-full bg-red-600 text-white px-4 py-3 rounded-lg hover:bg-red-700">
              <i class="fas fa-sign-out-alt mr-2"></i>로그아웃
            </button>
          </nav>
        </div>
      </header>
      
      <script>
        // 모바일 메뉴 토글
        document.getElementById('mobile-menu-btn')?.addEventListener('click', function() {
          const menu = document.getElementById('mobile-menu');
          if (menu) {
            menu.classList.toggle('hidden');
          }
        });
      </script>

      <!-- 메인 컨텐츠 -->
      <div class="max-w-7xl mx-auto px-4 py-8">
        <div class="mb-8">
          <div class="flex items-center justify-between">
            <div>
              <h2 class="text-3xl font-bold text-gray-800 mb-2">
                <i class="fas fa-tachometer-alt text-teal-600 mr-3"></i>
                고객 대시보드
              </h2>
              <p class="text-gray-600">안녕하세요, ${user.name}님! 요양시설 비교 및 견적 관리를 한눈에 확인하세요.</p>
            </div>
            <a href="/" class="bg-white border-2 border-teal-600 text-teal-600 px-6 py-3 rounded-lg hover:bg-teal-50 transition-colors font-semibold flex items-center gap-2 shadow-md">
              <i class="fas fa-home text-xl"></i>
              <span class="hidden sm:inline">홈으로</span>
            </a>
          </div>
        </div>

        <!-- 통계 카드 -->
        <div class="grid grid-cols-2 md:grid-cols-4 gap-3 sm:gap-6 mb-8">
          <div class="bg-white rounded-xl shadow-md p-4 sm:p-6 border-l-4 border-blue-500">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-600 text-xs sm:text-sm">견적 신청</p>
                <p id="totalRequests" class="text-2xl sm:text-3xl font-bold text-gray-800 mt-1">0</p>
              </div>
              <div class="bg-blue-100 p-2 sm:p-4 rounded-full">
                <i class="fas fa-file-invoice text-blue-600 text-lg sm:text-2xl"></i>
              </div>
            </div>
          </div>

          <div class="bg-white rounded-xl shadow-md p-4 sm:p-6 border-l-4 border-green-500">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-600 text-xs sm:text-sm">받은 견적서</p>
                <p id="totalResponses" class="text-2xl sm:text-3xl font-bold text-gray-800 mt-1">0</p>
              </div>
              <div class="bg-green-100 p-2 sm:p-4 rounded-full">
                <i class="fas fa-envelope-open-text text-green-600 text-lg sm:text-2xl"></i>
              </div>
            </div>
          </div>

          <div class="bg-white rounded-xl shadow-md p-4 sm:p-6 border-l-4 border-purple-500">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-600 text-xs sm:text-sm">찜한 시설</p>
                <p id="savedFacilities" class="text-2xl sm:text-3xl font-bold text-gray-800 mt-1">0</p>
              </div>
              <div class="bg-purple-100 p-2 sm:p-4 rounded-full">
                <i class="fas fa-heart text-purple-600 text-lg sm:text-2xl"></i>
              </div>
            </div>
          </div>

          <div class="bg-white rounded-xl shadow-md p-4 sm:p-6 border-l-4 border-orange-500">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-600 text-xs sm:text-sm">상담 진행</p>
                <p id="activeConsultations" class="text-2xl sm:text-3xl font-bold text-gray-800 mt-1">0</p>
              </div>
              <div class="bg-orange-100 p-2 sm:p-4 rounded-full">
                <i class="fas fa-comments text-orange-600 text-lg sm:text-2xl"></i>
              </div>
            </div>
          </div>
        </div>

        <!-- 빠른 액션 버튼 -->
        <div class="bg-white rounded-xl shadow-md p-6 mb-8">
          <h3 class="text-xl font-bold text-gray-800 mb-4">
            <i class="fas fa-bolt text-yellow-500 mr-2"></i>
            빠른 액션
          </h3>
          <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
            <a href="/quote-request" class="bg-teal-600 text-white p-4 rounded-lg hover:bg-teal-700 transition-colors text-center">
              <i class="fas fa-plus-circle text-2xl mb-2"></i>
              <p class="font-semibold">간편 견적 신청</p>
            </a>
            <a href="/facilities" class="bg-blue-600 text-white p-4 rounded-lg hover:bg-blue-700 transition-colors text-center">
              <i class="fas fa-search text-2xl mb-2"></i>
              <p class="font-semibold">시설 찾기</p>
            </a>
            <a href="/call-consultation" class="bg-green-600 text-white p-4 rounded-lg hover:bg-green-700 transition-colors text-center">
              <i class="fas fa-phone text-2xl mb-2"></i>
              <p class="font-semibold">전화 상담</p>
            </a>
          </div>
        </div>

        <!-- 나의 견적 요청 목록 -->
        <div class="bg-white rounded-xl shadow-md p-6">
          <div class="flex justify-between items-center mb-4">
            <h3 class="text-xl font-bold text-gray-800">
              <i class="fas fa-list-alt text-gray-600 mr-2"></i>
              나의 견적 요청
            </h3>
            <a href="/quote-request" class="text-teal-600 hover:text-teal-700 text-sm font-medium">
              <i class="fas fa-plus mr-1"></i>새 견적 신청
            </a>
          </div>
          <div id="quoteRequestsList" class="space-y-4">
            <!-- 로딩 중 -->
            <div class="text-center py-8 text-gray-500">
              <i class="fas fa-spinner fa-spin text-4xl mb-2"></i>
              <p>데이터를 불러오는 중...</p>
            </div>
          </div>
        </div>
      </div>

      <script>
        let dashboardData = null;

        // 대시보드 데이터 로드
        async function loadDashboardData() {
          try {
            const response = await fetch('/api/customer/dashboard', { credentials: 'include' });
            const result = await response.json();
            
            if (result.success) {
              dashboardData = result.data;
              updateStats(result.data.stats);
              updateQuoteRequestsList(result.data.quoteRequests);
            } else {
              console.error('데이터 로드 실패:', result.message);
              showEmptyState();
            }
          } catch (error) {
            console.error('데이터 로드 오류:', error);
            showEmptyState();
          }
        }

        // 통계 업데이트
        function updateStats(stats) {
          document.getElementById('totalRequests').textContent = stats.totalRequests || 0;
          document.getElementById('totalResponses').textContent = stats.totalResponses || 0;
          document.getElementById('savedFacilities').textContent = stats.savedFacilities || 0;
          document.getElementById('activeConsultations').textContent = stats.activeConsultations || 0;
        }

        // 견적 요청 목록 업데이트
        function updateQuoteRequestsList(requests) {
          const container = document.getElementById('quoteRequestsList');
          
          if (!requests || requests.length === 0) {
            container.innerHTML = \`
              <div class="text-center py-8 text-gray-500">
                <i class="fas fa-inbox text-4xl mb-2"></i>
                <p>아직 견적 신청 내역이 없습니다.</p>
                <p class="text-sm mt-2">견적을 신청해보세요!</p>
              </div>
            \`;
            return;
          }

          container.innerHTML = requests.map(req => {
            const statusBadge = getStatusBadge(req.status);
            const date = new Date(req.created_at).toLocaleDateString('ko-KR');
            
            return \`
              <div class="border rounded-lg p-4 hover:shadow-lg transition-shadow cursor-pointer"
                   onclick="viewQuoteDetails('\${req.quote_id}')">
                <div class="flex justify-between items-start mb-2">
                  <div>
                    <h4 class="font-semibold text-gray-800 text-lg">
                      <i class="fas fa-hospital text-teal-600 mr-2"></i>
                      \${req.facility_type} 견적 신청
                    </h4>
                    <p class="text-sm text-gray-600 mt-1">
                      <i class="fas fa-map-marker-alt mr-1"></i>
                      \${req.sido} \${req.sigungu}
                    </p>
                  </div>
                  <div class="text-right">
                    \${statusBadge}
                    <p class="text-sm text-gray-500 mt-1">\${date}</p>
                  </div>
                </div>
                <div class="flex items-center justify-between mt-3 pt-3 border-t">
                  <div class="text-sm text-gray-600">
                    <i class="fas fa-user mr-1"></i>
                    환자: \${req.patient_name} (\${req.patient_age}세)
                  </div>
                  <div class="text-sm font-semibold text-teal-600">
                    <i class="fas fa-envelope mr-1"></i>
                    견적서 \${req.responseCount || 0}개 수신
                  </div>
                </div>
              </div>
            \`;
          }).join('');
        }

        // 상태 배지 생성
        function getStatusBadge(status) {
          const statusMap = {
            'pending': { text: '대기 중', color: 'yellow' },
            'received': { text: '견적 수신', color: 'green' },
            'completed': { text: '완료', color: 'blue' },
            'cancelled': { text: '취소', color: 'red' }
          };
          
          const statusInfo = statusMap[status] || { text: status, color: 'gray' };
          
          return \`
            <span class="px-3 py-1 bg-\${statusInfo.color}-100 text-\${statusInfo.color}-800 text-xs font-semibold rounded-full">
              \${statusInfo.text}
            </span>
          \`;
        }

        // 견적 상세 보기
        function viewQuoteDetails(quoteId) {
          window.location.href = \`/quote-details/\${quoteId}\`;
        }

        // 빈 상태 표시
        function showEmptyState() {
          const container = document.getElementById('quoteRequestsList');
          container.innerHTML = \`
            <div class="text-center py-8 text-gray-500">
              <i class="fas fa-exclamation-circle text-4xl mb-2 text-red-500"></i>
              <p>데이터를 불러올 수 없습니다.</p>
              <button onclick="loadDashboardData()" class="mt-4 px-4 py-2 bg-teal-600 text-white rounded-lg hover:bg-teal-700">
                다시 시도
              </button>
            </div>
          \`;
        }

        async function handleLogout() {
          try {
            const response = await fetch('/api/auth/logout', { method: 'POST', credentials: 'include' });
            if (response.ok) {
              alert('로그아웃되었습니다.');
              window.location.href = '/';
            }
          } catch (error) {
            console.error(error);
            alert('로그아웃 중 오류가 발생했습니다.');
          }
        }

        // 페이지 로드 시 데이터 가져오기
        window.addEventListener('DOMContentLoaded', loadDashboardData);
      </script>
    </body>
    </html>
  `)
})

// 시설 대시보드
app.get('/dashboard/facility', async (c) => {
  const user = await getUser(c)
  
  if (!user || user.type !== 'facility') {
    return c.redirect('/login')
  }

  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>시설 대시보드 - 케어조아</title>
      <link href="/static/tailwind.css" rel="stylesheet">
      <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet">
    </head>
    <body class="bg-gray-50">
      <!-- 헤더 -->
      <header class="bg-white shadow-sm border-b">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div class="flex justify-between items-center h-16">
            <div class="flex items-center">
              <img src="https://page.gensparksite.com/v1/base64_upload/b39dca8586af1dacd6d8417554313896" 
                   alt="케어조아 로고" class="h-6 sm:h-8 w-auto mr-2 sm:mr-3" />
              <h1 class="text-lg sm:text-2xl font-bold text-teal-600">케어조아</h1>
            </div><div class="hidden md:flex items-center space-x-4">
              <span class="text-gray-700">
                <i class="fas fa-building text-teal-600 mr-2"></i>
                <strong>${user.name}</strong>
                <span class="text-sm text-gray-500 ml-2">(${user.facilityType})</span>
              </span>
              <a href="/facility/template" class="bg-blue-600 text-white px-4 py-2 rounded-lg hover:bg-blue-700 whitespace-nowrap">
                <i class="fas fa-file-alt mr-1"></i>견적 템플릿
              </a>
              <a href="/profile" class="bg-gray-600 text-white px-4 py-2 rounded-lg hover:bg-gray-700 whitespace-nowrap">
                <i class="fas fa-user-cog mr-1"></i>프로필
              </a>
              <button onclick="handleLogout()" class="bg-red-600 text-white px-4 py-2 rounded-lg hover:bg-red-700 whitespace-nowrap">
                <i class="fas fa-sign-out-alt mr-1"></i>로그아웃
              </button>
            </div><button id="mobile-menu-btn" class="md:hidden p-2 text-gray-600 hover:text-teal-600">
              <i class="fas fa-bars text-xl"></i>
            </button>
          </div>
        </div><div id="mobile-menu" class="hidden md:hidden bg-white border-t">
          <nav class="px-4 py-3 space-y-2">
            <div class="text-gray-700 py-2 px-4 bg-gray-100 rounded-lg">
              <i class="fas fa-building text-teal-600 mr-2"></i>
              <strong>${user.name}</strong>
              <span class="text-sm text-gray-500 ml-2">(${user.facilityType})</span>
            </div>
            <a href="/facility/template" class="block bg-blue-600 text-white px-4 py-3 rounded-lg hover:bg-blue-700 text-center">
              <i class="fas fa-file-alt mr-2"></i>견적 템플릿
            </a>
            <a href="/profile" class="block bg-gray-600 text-white px-4 py-3 rounded-lg hover:bg-gray-700 text-center">
              <i class="fas fa-user-cog mr-2"></i>프로필
            </a>
            <button onclick="handleLogout()" class="w-full bg-red-600 text-white px-4 py-3 rounded-lg hover:bg-red-700">
              <i class="fas fa-sign-out-alt mr-2"></i>로그아웃
            </button>
          </nav>
        </div>
      </header>
      
      <script>
        // 모바일 메뉴 토글
        document.getElementById('mobile-menu-btn')?.addEventListener('click', function() {
          const menu = document.getElementById('mobile-menu');
          if (menu) {
            menu.classList.toggle('hidden');
          }
        });
      </script>

      <!-- 메인 컨텐츠 -->
      <div class="max-w-7xl mx-auto px-4 py-8">
        <div class="mb-8">
          <h2 class="text-3xl font-bold text-gray-800 mb-2">
            <i class="fas fa-hospital-alt text-teal-600 mr-3"></i>
            시설 대시보드
          </h2>
          <p class="text-gray-600">안녕하세요, ${user.name}님! 시설 운영 현황을 한눈에 확인하세요.</p>
        </div>
        
        <!-- 시설 정보 미등록 경고 배너 -->
        ${!user.facility_type || !user.region_sido || !user.region_sigungu ? `
        <div class="bg-yellow-50 border-l-4 border-yellow-400 p-6 mb-8 rounded-r-lg shadow-md">
          <div class="flex items-start">
            <div class="flex-shrink-0">
              <i class="fas fa-exclamation-triangle text-yellow-600 text-2xl"></i>
            </div>
            <div class="ml-4 flex-1">
              <h3 class="text-lg font-bold text-yellow-800 mb-2">
                ⚠️ 시설 정보 등록이 필요합니다
              </h3>
              <p class="text-yellow-700 mb-4">
                견적서를 수신하려면 <strong>시설 유형</strong>, <strong>시/도</strong>, <strong>시/군/구</strong> 정보를 반드시 등록해야 합니다.
                <br/>
                현재 상태: ${!user.facility_type ? '<span class="text-red-600 font-semibold">❌ 시설 유형 미등록</span>' : '✅ 시설 유형 등록됨'} | 
                ${!user.region_sido ? '<span class="text-red-600 font-semibold">❌ 시/도 미등록</span>' : '✅ 시/도 등록됨'} | 
                ${!user.region_sigungu ? '<span class="text-red-600 font-semibold">❌ 시/군/구 미등록</span>' : '✅ 시/군/구 등록됨'}
              </p>
              <button 
                onclick="document.getElementById('facilityEditModal').classList.remove('hidden')"
                class="bg-yellow-600 hover:bg-yellow-700 text-white px-6 py-3 rounded-lg font-semibold transition-colors inline-flex items-center"
              >
                <i class="fas fa-edit mr-2"></i>
                지금 시설 정보 등록하기
              </button>
            </div>
          </div>
        </div>
        ` : ''}

        <!-- 시설 정보 카드 -->
        <div class="bg-gradient-to-r from-teal-500 to-blue-500 text-white rounded-xl shadow-lg p-6 mb-8">
          <h3 class="text-2xl font-bold mb-4">
            <i class="fas fa-building mr-2"></i>
            ${user.name}
          </h3>
          <div class="grid grid-cols-1 md:grid-cols-3 gap-4 text-sm">
            <div>
              <p class="opacity-80">시설 유형</p>
              <p class="text-lg font-semibold">${user.facilityType}</p>
            </div>
            <div>
              <p class="opacity-80">주소</p>
              <p class="text-lg font-semibold">${user.address}</p>
            </div>
            <div>
              <p class="opacity-80">연락처</p>
              <p class="text-lg font-semibold">${user.phone}</p>
            </div>
          </div>
        </div>

        <!-- 통계 카드 -->
        <div class="grid grid-cols-2 md:grid-cols-4 gap-3 sm:gap-6 mb-8">
          <div class="bg-white rounded-xl shadow-md p-4 sm:p-6 border-l-4 border-blue-500">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-600 text-xs sm:text-sm">받은 견적요청</p>
                <p id="newRequests" class="text-2xl sm:text-3xl font-bold text-gray-800 mt-1">0</p>
              </div>
              <div class="bg-blue-100 p-2 sm:p-4 rounded-full">
                <i class="fas fa-inbox text-blue-600 text-lg sm:text-2xl"></i>
              </div>
            </div>
          </div>

          <div class="bg-white rounded-xl shadow-md p-6 border-l-4 border-green-500">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-600 text-sm">발송한 견적서</p>
                <p id="sentQuotes" class="text-3xl font-bold text-gray-800 mt-1">0</p>
              </div>
              <div class="bg-green-100 p-4 rounded-full">
                <i class="fas fa-paper-plane text-green-600 text-2xl"></i>
              </div>
            </div>
          </div>

          <div class="bg-white rounded-xl shadow-md p-6 border-l-4 border-purple-500">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-600 text-sm">상담 진행중</p>
                <p id="activeConsultations" class="text-3xl font-bold text-gray-800 mt-1">0</p>
              </div>
              <div class="bg-purple-100 p-4 rounded-full">
                <i class="fas fa-comments text-purple-600 text-2xl"></i>
              </div>
            </div>
          </div>

          <div class="bg-white rounded-xl shadow-md p-6 border-l-4 border-orange-500">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-600 text-sm">계약 성사</p>
                <p id="viewedQuotes" class="text-3xl font-bold text-gray-800 mt-1">0</p>
              </div>
              <div class="bg-orange-100 p-4 rounded-full">
                <i class="fas fa-handshake text-orange-600 text-2xl"></i>
              </div>
            </div>
          </div>
        </div>

        <!-- 빠른 액션 버튼 -->
        <div class="bg-white rounded-xl shadow-md p-6 mb-8">
          <h3 class="text-xl font-bold text-gray-800 mb-4">
            <i class="fas fa-bolt text-yellow-500 mr-2"></i>
            빠른 액션
          </h3>
          <div class="grid grid-cols-1 md:grid-cols-4 gap-4">
            <button onclick="openFacilityEditModal()" class="bg-teal-600 text-white p-4 rounded-lg hover:bg-teal-700 transition-colors">
              <i class="fas fa-edit text-2xl mb-2"></i>
              <p class="font-semibold">시설 정보 수정</p>
            </button>
            <button onclick="applyRepresentativeFacility()" class="bg-purple-600 text-white p-4 rounded-lg hover:bg-purple-700 transition-colors">
              <i class="fas fa-star text-2xl mb-2"></i>
              <p class="font-semibold">대표시설 신청</p>
            </button>
            <button onclick="alert('요금표 관리 기능은 곧 출시됩니다')" class="bg-blue-600 text-white p-4 rounded-lg hover:bg-blue-700 transition-colors">
              <i class="fas fa-dollar-sign text-2xl mb-2"></i>
              <p class="font-semibold">요금표 관리</p>
            </button>
            <button onclick="alert('시설 사진 관리 기능은 곧 출시됩니다')" class="bg-green-600 text-white p-4 rounded-lg hover:bg-green-700 transition-colors">
              <i class="fas fa-images text-2xl mb-2"></i>
              <p class="font-semibold">시설 사진 관리</p>
            </button>
          </div>
        </div>

        <!-- 새로운 견적 요청 -->
        <div class="bg-white rounded-xl shadow-md p-6 mb-8">
          <h3 class="text-xl font-bold text-gray-800 mb-4">
            <i class="fas fa-bell text-yellow-500 mr-2"></i>
            새로운 견적 요청
          </h3>
          <div id="newQuoteRequestsList" class="space-y-4">
            <div class="text-center py-8 text-gray-500">
              <i class="fas fa-spinner fa-spin text-4xl mb-2"></i>
              <p>데이터를 불러오는 중...</p>
            </div>
          </div>
        </div>

        <!-- 내가 보낸 견적서 -->
        <div class="bg-white rounded-xl shadow-md p-6">
          <h3 class="text-xl font-bold text-gray-800 mb-4">
            <i class="fas fa-paper-plane text-gray-600 mr-2"></i>
            내가 보낸 견적서
          </h3>
          <div id="myResponsesList" class="space-y-4">
            <div class="text-center py-8 text-gray-500">
              <i class="fas fa-spinner fa-spin text-4xl mb-2"></i>
              <p>데이터를 불러오는 중...</p>
            </div>
          </div>
        </div>
      </div>

      <!-- 견적서 작성 모달 -->
      <div id="quoteModal" class="hidden fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
        <div class="bg-white rounded-xl shadow-2xl max-w-2xl w-full max-h-[90vh] overflow-y-auto m-4">
          <div class="sticky top-0 bg-white border-b px-6 py-4 flex justify-between items-center">
            <h3 class="text-2xl font-bold text-gray-800">
              <i class="fas fa-file-invoice text-teal-600 mr-2"></i>
              견적서 작성
            </h3>
            <button onclick="closeQuoteModal()" class="text-gray-500 hover:text-gray-700">
              <i class="fas fa-times text-2xl"></i>
            </button>
          </div>
          <div id="quoteModalContent" class="p-6">
            <!-- 견적서 폼 내용 -->
          </div>
        </div>
      </div>

      <!-- 시설 정보 수정 모달 -->
      <div id="facilityEditModal" class="hidden fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
        <div class="bg-white rounded-xl shadow-2xl max-w-2xl w-full max-h-[90vh] overflow-y-auto m-4">
          <div class="sticky top-0 bg-white border-b px-6 py-4 flex justify-between items-center">
            <h3 class="text-2xl font-bold text-gray-800">
              <i class="fas fa-edit text-teal-600 mr-2"></i>
              시설 정보 수정
            </h3>
            <button onclick="closeFacilityEditModal()" class="text-gray-500 hover:text-gray-700">
              <i class="fas fa-times text-2xl"></i>
            </button>
          </div>
          <form id="facilityEditForm" class="p-6 space-y-6">
            <!-- 시설명 -->
            <div>
              <label class="block text-sm font-semibold text-gray-700 mb-2">
                시설명 <span class="text-red-500">*</span>
              </label>
              <input type="text" id="facilityName" required
                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent"
                placeholder="예: 청은노인요양원">
            </div>

            <!-- 시설 유형 -->
            <div>
              <label class="block text-sm font-semibold text-gray-700 mb-2">
                시설 유형 <span class="text-red-500">*</span>
              </label>
              <select id="facilityType" required
                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent">
                <option value="">선택하세요</option>
                <option value="요양원">요양원</option>
                <option value="요양병원">요양병원</option>
                <option value="주야간보호센터">주야간보호센터</option>
                <option value="재가복지">재가복지센터</option>
              </select>
            </div>

            <!-- 시/도 -->
            <div>
              <label class="block text-sm font-semibold text-gray-700 mb-2">
                시/도 <span class="text-red-500">*</span>
              </label>
              <select id="facilitySido" required
                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent">
                <option value="">선택하세요</option>
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

            <!-- 시/군/구 -->
            <div>
              <label class="block text-sm font-semibold text-gray-700 mb-2">
                시/군/구 <span class="text-red-500">*</span>
              </label>
              <select id="facilitySigungu" required
                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent">
                <option value="">시/도를 먼저 선택하세요</option>
              </select>
            </div>

            <!-- 상세 주소 -->
            <div>
              <label class="block text-sm font-semibold text-gray-700 mb-2">
                상세 주소 <span class="text-red-500">*</span>
              </label>
              <textarea id="facilityAddress" required rows="2"
                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent"
                placeholder="예: 서울특별시 종로구 비봉길 76 (구기동)"></textarea>
            </div>

            <!-- 연락처 -->
            <div>
              <label class="block text-sm font-semibold text-gray-700 mb-2">
                대표 연락처 <span class="text-red-500">*</span>
              </label>
              <input type="tel" id="facilityPhone" required
                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent"
                placeholder="02-1234-5678">
            </div>

            <!-- 우편번호 (선택) -->
            <div>
              <label class="block text-sm font-semibold text-gray-700 mb-2">
                우편번호
              </label>
              <input type="text" id="facilityPostalCode"
                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent"
                placeholder="3001">
            </div>

            <!-- 저장 버튼 -->
            <div class="flex gap-4">
              <button type="submit" class="flex-1 bg-teal-600 text-white py-3 rounded-lg hover:bg-teal-700 transition-colors font-semibold">
                <i class="fas fa-save mr-2"></i>
                저장
              </button>
              <button type="button" onclick="closeFacilityEditModal()" class="flex-1 bg-gray-200 text-gray-700 py-3 rounded-lg hover:bg-gray-300 transition-colors font-semibold">
                <i class="fas fa-times mr-2"></i>
                취소
              </button>
            </div>
          </form>
        </div>
      </div>

      <script>
        let dashboardData = null;
        let selectedRequest = null;

        // 대시보드 데이터 로드
        async function loadDashboardData() {
          try {
            const response = await fetch('/api/facility/dashboard', { credentials: 'include' });
            const result = await response.json();
            
            if (result.success) {
              dashboardData = result.data;
              updateStats(result.data.stats);
              updateNewRequestsList(result.data.newRequests);
              updateMyResponsesList(result.data.myResponses);
            } else {
              console.error('데이터 로드 실패:', result.message);
              showEmptyState('newQuoteRequestsList');
              showEmptyState('myResponsesList');
            }
          } catch (error) {
            console.error('데이터 로드 오류:', error);
            showEmptyState('newQuoteRequestsList');
            showEmptyState('myResponsesList');
          }
        }

        // 통계 업데이트
        function updateStats(stats) {
          document.getElementById('newRequests').textContent = stats.newRequests || 0;
          document.getElementById('sentQuotes').textContent = stats.sentQuotes || 0;
          document.getElementById('activeConsultations').textContent = stats.activeConsultations || 0;
          document.getElementById('viewedQuotes').textContent = stats.viewedQuotes || 0;
        }

        // 새로운 견적 요청 목록 업데이트
        function updateNewRequestsList(requests) {
          const container = document.getElementById('newQuoteRequestsList');
          
          if (!requests || requests.length === 0) {
            container.innerHTML = \`
              <div class="text-center py-8 text-gray-500">
                <i class="fas fa-inbox text-4xl mb-2"></i>
                <p>새로운 견적 요청이 없습니다.</p>
                <p class="text-sm mt-2">고객들의 견적 요청을 기다려주세요!</p>
              </div>
            \`;
            return;
          }

          container.innerHTML = requests.map(req => {
            const date = new Date(req.created_at).toLocaleDateString('ko-KR');
            
            // additional_notes 파싱
            let additionalInfo = {};
            try {
              if (req.additional_notes) {
                additionalInfo = JSON.parse(req.additional_notes);
              }
            } catch (e) {
              console.error('추가 정보 파싱 오류:', e);
            }
            
            return \`
              <div class="border-2 border-blue-200 rounded-lg p-5 bg-gradient-to-r from-blue-50 to-white hover:shadow-xl transition-all duration-300">
                <div class="flex justify-between items-start mb-4">
                  <div class="flex-1">
                    <h4 class="font-bold text-gray-800 text-xl mb-2">
                      <i class="fas fa-user text-blue-600 mr-2"></i>
                      \${req.applicant_name}님의 견적 요청
                    </h4>
                    <div class="flex items-center space-x-3 text-sm text-gray-600">
                      <span>
                        <i class="fas fa-map-marker-alt text-red-500 mr-1"></i>
                        \${req.sido} \${req.sigungu}
                      </span>
                      <span>
                        <i class="fas fa-calendar-alt text-blue-500 mr-1"></i>
                        \${date}
                      </span>
                    </div>
                  </div>
                  <span class="px-3 py-1 bg-yellow-100 text-yellow-800 text-xs font-bold rounded-full border-2 border-yellow-200">
                    <i class="fas fa-clock mr-1"></i>신규
                  </span>
                </div>
                
                <!-- 환자 기본 정보 -->
                <div class="bg-white rounded-lg p-4 mb-3 border border-gray-200">
                  <div class="grid grid-cols-2 gap-3 text-sm">
                    <div>
                      <span class="text-gray-500">
                        <i class="fas fa-user-injured mr-1 text-teal-600"></i>환자:
                      </span>
                      <strong class="ml-1 text-gray-800">\${req.patient_name}</strong>
                    </div>
                    <div>
                      <span class="text-gray-500">
                        <i class="fas fa-birthday-cake mr-1 text-purple-600"></i>나이:
                      </span>
                      <strong class="ml-1 text-gray-800">\${req.patient_age}세 \${req.patient_gender || ''}</strong>
                    </div>
                    <div>
                      <span class="text-gray-500">
                        <i class="fas fa-phone mr-1 text-green-600"></i>연락처:
                      </span>
                      <strong class="ml-1 text-gray-800">\${req.applicant_phone}</strong>
                    </div>
                    <div>
                      <span class="text-gray-500">
                        <i class="fas fa-certificate mr-1 text-orange-600"></i>요양등급:
                      </span>
                      <strong class="ml-1 text-gray-800">\${req.care_grade || '-'}</strong>
                    </div>
                  </div>
                </div>

                <!-- 상세 요청 사항 (있는 경우만 표시) -->
                \${additionalInfo && (additionalInfo.mainSymptoms || additionalInfo.communication || additionalInfo.mobility) ? \`
                <div class="bg-teal-50 rounded-lg p-3 mb-3 border border-teal-200">
                  <div class="text-xs font-semibold text-teal-700 mb-2">
                    <i class="fas fa-clipboard-check mr-1"></i>주요 정보
                  </div>
                  <div class="grid grid-cols-3 gap-2 text-xs">
                    \${additionalInfo.mainSymptoms ? \`
                      <div>
                        <span class="text-gray-500">증상:</span>
                        <span class="font-semibold text-gray-700 ml-1">\${additionalInfo.mainSymptoms}</span>
                      </div>
                    \` : ''}
                    \${additionalInfo.communication ? \`
                      <div>
                        <span class="text-gray-500">소통:</span>
                        <span class="font-semibold text-gray-700 ml-1">\${additionalInfo.communication}</span>
                      </div>
                    \` : ''}
                    \${additionalInfo.mobility ? \`
                      <div>
                        <span class="text-gray-500">거동:</span>
                        <span class="font-semibold text-gray-700 ml-1">\${additionalInfo.mobility}</span>
                      </div>
                    \` : ''}
                  </div>
                </div>
                \` : ''}
                
                <div class="flex justify-between items-center pt-3 border-t border-gray-200">
                  <button onclick="openQuoteModal('\${req.quote_id}')"
                    class="text-sm text-teal-600 hover:text-teal-700 font-medium">
                    <i class="fas fa-info-circle mr-1"></i>상세정보 보기
                  </button>
                  <button onclick="openQuoteModal('\${req.quote_id}')"
                    class="px-5 py-2.5 bg-gradient-to-r from-teal-600 to-blue-600 text-white rounded-lg hover:from-teal-700 hover:to-blue-700 transition-all duration-300 text-sm font-bold shadow-md hover:shadow-lg">
                    <i class="fas fa-file-invoice mr-2"></i>견적서 작성
                  </button>
                </div>
              </div>
            \`;
          }).join('');
        }

        // 내가 보낸 견적서 목록 업데이트
        function updateMyResponsesList(responses) {
          const container = document.getElementById('myResponsesList');
          
          if (!responses || responses.length === 0) {
            container.innerHTML = \`
              <div class="text-center py-8 text-gray-500">
                <i class="fas fa-inbox text-4xl mb-2"></i>
                <p>보낸 견적서가 없습니다.</p>
                <p class="text-sm mt-2">새로운 견적 요청에 응답해보세요!</p>
              </div>
            \`;
            return;
          }

          container.innerHTML = responses.map(res => {
            const statusBadge = getResponseStatusBadge(res.status);
            const date = new Date(res.created_at).toLocaleDateString('ko-KR');
            const price = new Intl.NumberFormat('ko-KR').format(res.estimated_price);
            
            return \`
              <div class="border rounded-lg p-4 hover:shadow-lg transition-shadow">
                <div class="flex justify-between items-start mb-2">
                  <div>
                    <h4 class="font-semibold text-gray-800">
                      <i class="fas fa-user text-gray-600 mr-2"></i>
                      \${res.applicant_name}님께 전송
                    </h4>
                    <p class="text-sm text-gray-600 mt-1">
                      환자: \${res.patient_name} (\${res.patient_age}세)
                    </p>
                  </div>
                  \${statusBadge}
                </div>
                <div class="flex justify-between items-center pt-3 border-t mt-3">
                  <span class="text-lg font-bold text-teal-600">월 \${price}원</span>
                  <span class="text-sm text-gray-500">\${date}</span>
                </div>
              </div>
            \`;
          }).join('');
        }

        // 응답 상태 배지
        function getResponseStatusBadge(status) {
          const statusMap = {
            'sent': { text: '전송됨', color: 'blue' },
            'viewed': { text: '확인됨', color: 'green' },
            'accepted': { text: '수락됨', color: 'purple' },
            'rejected': { text: '거절됨', color: 'red' }
          };
          
          const statusInfo = statusMap[status] || { text: status, color: 'gray' };
          
          return \`
            <span class="px-3 py-1 bg-\${statusInfo.color}-100 text-\${statusInfo.color}-800 text-xs font-semibold rounded-full">
              \${statusInfo.text}
            </span>
          \`;
        }

        // 견적서 모달 열기
        async function openQuoteModal(quoteId) {
          const request = dashboardData.newRequests.find(r => r.quote_id === quoteId);
          if (!request) {
            alert('견적 요청을 찾을 수 없습니다.');
            return;
          }
          
          selectedRequest = request;
          
          // 템플릿 로드
          let template = null;
          try {
            const templateResponse = await fetch('/api/facility/template', { credentials: 'include' });
            const templateData = await templateResponse.json();
            if (templateData.success && templateData.data) {
              template = templateData.data;
            }
          } catch (error) {
            console.error('템플릿 로드 오류:', error);
          }
          
          // additional_notes JSON 파싱
          let additionalInfo = {};
          try {
            if (request.additional_notes) {
              additionalInfo = JSON.parse(request.additional_notes);
            }
          } catch (e) {
            console.error('추가 정보 파싱 오류:', e);
          }
          
          const modalContent = document.getElementById('quoteModalContent');
          modalContent.innerHTML = \`
            <div class="space-y-4">
              <!-- 기본 정보 -->
              <div class="bg-gradient-to-r from-blue-50 to-teal-50 p-4 rounded-lg border-2 border-blue-200">
                <h4 class="font-bold text-gray-800 mb-3 text-lg">
                  <i class="fas fa-info-circle text-blue-600 mr-2"></i>
                  기본 정보
                </h4>
                <div class="grid grid-cols-2 gap-3 text-sm">
                  <div class="bg-white p-2 rounded">
                    <span class="text-gray-500">신청자:</span>
                    <strong class="ml-2 text-gray-800">\${request.applicant_name}</strong>
                  </div>
                  <div class="bg-white p-2 rounded">
                    <span class="text-gray-500">연락처:</span>
                    <strong class="ml-2 text-gray-800">\${request.applicant_phone}</strong>
                  </div>
                  <div class="bg-white p-2 rounded">
                    <span class="text-gray-500">환자명:</span>
                    <strong class="ml-2 text-gray-800">\${request.patient_name}</strong>
                  </div>
                  <div class="bg-white p-2 rounded">
                    <span class="text-gray-500">나이/성별:</span>
                    <strong class="ml-2 text-gray-800">\${request.patient_age}세 \${request.patient_gender || ''}</strong>
                  </div>
                  <div class="bg-white p-2 rounded">
                    <span class="text-gray-500">지역:</span>
                    <strong class="ml-2 text-gray-800">\${request.sido} \${request.sigungu}</strong>
                  </div>
                  <div class="bg-white p-2 rounded">
                    <span class="text-gray-500">요양등급:</span>
                    <strong class="ml-2 text-gray-800">\${request.care_grade || '-'}</strong>
                  </div>
                </div>
              </div>

              <!-- 상세 정보 -->
              \${additionalInfo && Object.keys(additionalInfo).length > 0 ? \`
              <div class="bg-gray-50 p-4 rounded-lg border border-gray-200">
                <h4 class="font-bold text-gray-800 mb-3">
                  <i class="fas fa-clipboard-list text-teal-600 mr-2"></i>
                  상세 요청 사항
                </h4>
                <div class="space-y-3 text-sm">
                  <!-- 기본 정보 -->
                  \${additionalInfo.applicantEmail ? \`<div><span class="text-gray-500">이메일:</span> <strong>\${additionalInfo.applicantEmail}</strong></div>\` : ''}
                  \${additionalInfo.insuranceType ? \`<div><span class="text-gray-500">보험유형:</span> <strong>\${additionalInfo.insuranceType}</strong></div>\` : ''}
                  \${additionalInfo.facilitySize ? \`<div><span class="text-gray-500">시설규모:</span> <strong>\${additionalInfo.facilitySize}</strong></div>\` : ''}
                  \${additionalInfo.careCost ? \`<div><span class="text-gray-500">비용범위:</span> <strong>\${additionalInfo.careCost}</strong></div>\` : ''}
                  \${additionalInfo.carePrograms ? \`<div><span class="text-gray-500">희망프로그램:</span> <strong>\${additionalInfo.carePrograms}</strong></div>\` : ''}
                  \${additionalInfo.religion ? \`<div><span class="text-gray-500">종교활동:</span> <strong>\${additionalInfo.religion}</strong></div>\` : ''}
                  
                  <!-- 환자 상태 -->
                  \${additionalInfo.mainSymptoms ? \`<div><span class="text-gray-500">주요증상:</span> <strong>\${additionalInfo.mainSymptoms}</strong></div>\` : ''}
                  \${additionalInfo.communication ? \`<div><span class="text-gray-500">의사소통:</span> <strong>\${additionalInfo.communication}</strong></div>\` : ''}
                  \${additionalInfo.eating ? \`<div><span class="text-gray-500">식사능력:</span> <strong>\${additionalInfo.eating}</strong></div>\` : ''}
                  \${additionalInfo.dietType ? \`<div><span class="text-gray-500">식사유형:</span> <strong>\${additionalInfo.dietType}</strong></div>\` : ''}
                  \${additionalInfo.mobility ? \`<div><span class="text-gray-500">거동능력:</span> <strong>\${additionalInfo.mobility}</strong></div>\` : ''}
                  \${additionalInfo.toiletUse ? \`<div><span class="text-gray-500">화장실:</span> <strong>\${additionalInfo.toiletUse}</strong></div>\` : ''}
                  \${additionalInfo.additionalCare ? \`<div><span class="text-gray-500">추가케어:</span> <strong>\${additionalInfo.additionalCare}</strong></div>\` : ''}
                  \${additionalInfo.otherSymptoms ? \`<div><span class="text-gray-500">기타증상:</span> <strong>\${additionalInfo.otherSymptoms}</strong></div>\` : ''}
                  
                  <!-- 생년월일 -->
                  \${(additionalInfo.birthYear || additionalInfo.birthMonth || additionalInfo.birthDay) ? \`
                    <div><span class="text-gray-500">생년월일:</span> 
                      <strong>\${additionalInfo.birthYear || ''}년 \${additionalInfo.birthMonth || ''}월 \${additionalInfo.birthDay || ''}일</strong>
                    </div>
                  \` : ''}
                  
                  <!-- 의료 정보 -->
                  \${additionalInfo.diagnosis ? \`<div><span class="text-gray-500">진단명:</span> <strong>\${additionalInfo.diagnosis}</strong></div>\` : ''}
                  \${additionalInfo.adl ? \`<div><span class="text-gray-500">일상생활수행능력:</span> <strong>\${additionalInfo.adl}</strong></div>\` : ''}
                  \${additionalInfo.dementia ? \`<div><span class="text-gray-500">치매정도:</span> <strong>\${additionalInfo.dementia}</strong></div>\` : ''}
                  \${additionalInfo.serviceType ? \`<div><span class="text-gray-500">서비스유형:</span> <strong>\${additionalInfo.serviceType}</strong></div>\` : ''}
                  
                  <!-- 보호자 정보 -->
                  \${additionalInfo.guardianAge ? \`<div><span class="text-gray-500">보호자 나이:</span> <strong>\${additionalInfo.guardianAge}세</strong></div>\` : ''}
                  \${additionalInfo.spouseAge ? \`<div><span class="text-gray-500">배우자 나이:</span> <strong>\${additionalInfo.spouseAge}세</strong></div>\` : ''}
                  \${additionalInfo.housingType ? \`<div><span class="text-gray-500">주거형태:</span> <strong>\${additionalInfo.housingType}</strong></div>\` : ''}
                  
                  <!-- 추가 정보 -->
                  \${additionalInfo.diseases ? \`<div><span class="text-gray-500">질병:</span> <strong>\${additionalInfo.diseases}</strong></div>\` : ''}
                  \${additionalInfo.personalities ? \`<div><span class="text-gray-500">성격:</span> <strong>\${additionalInfo.personalities}</strong></div>\` : ''}
                  \${additionalInfo.specialNotes ? \`<div class="bg-yellow-50 p-2 rounded border border-yellow-200"><span class="text-gray-500">특이사항:</span> <strong class="text-yellow-900">\${additionalInfo.specialNotes}</strong></div>\` : ''}
                </div>
              </div>
              \` : ''}

              <hr class="my-6 border-t-2 border-gray-300" />

              <!-- 견적서 작성 폼 -->
              <form onsubmit="handleSubmitQuote(event)" class="space-y-6">
                <div class="bg-gradient-to-r from-teal-50 to-blue-50 p-4 rounded-lg border-2 border-teal-200">
                  <h4 class="font-bold text-gray-800 mb-4 text-lg">
                    <i class="fas fa-file-invoice-dollar text-teal-600 mr-2"></i>
                    견적 정보 입력
                  </h4>
                  
                  <!-- 비용 정보 -->
                  <div class="bg-white p-4 rounded-lg mb-4">
                    <label class="block text-sm font-bold text-gray-700 mb-3">
                      <i class="fas fa-won-sign text-green-600 mr-2"></i>예상 월 비용 (필수)
                    </label>
                    <div class="relative">
                      <input type="number" id="estimatedPrice" required
                        placeholder="예: 2500000"
                        class="w-full px-4 py-3 pr-12 border-2 border-gray-300 rounded-lg focus:border-teal-500 focus:ring-2 focus:ring-teal-200 text-lg font-semibold" />
                      <span class="absolute right-4 top-1/2 transform -translate-y-1/2 text-gray-500 font-medium">원</span>
                    </div>
                    <p class="text-xs text-gray-500 mt-2">
                      <i class="fas fa-info-circle mr-1"></i>
                      월 이용료 기준 (식대, 간호비, 관리비 포함)
                    </p>
                  </div>

                  <!-- 서비스 상세 -->
                  <div class="bg-white p-4 rounded-lg mb-4">
                    <label class="block text-sm font-bold text-gray-700 mb-3">
                      <i class="fas fa-clipboard-list text-blue-600 mr-2"></i>서비스 상세 내용
                      \${template ? '<span class="ml-2 text-xs text-teal-600"><i class="fas fa-magic mr-1"></i>템플릿 자동 입력됨</span>' : ''}
                    </label>
                    <textarea id="serviceDetails" rows="4"
                      placeholder="예시:
• 24시간 전문 간호 서비스
• 전문의 주 2회 정기 회진
• 물리치료 주 3회 제공
• 작업치료 및 인지재활 프로그램
• 영양사 식단 관리"
                      class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:border-teal-500 focus:ring-2 focus:ring-teal-200">\${template?.default_service_details || ''}</textarea>
                    <p class="text-xs text-gray-500 mt-2">
                      <i class="fas fa-lightbulb mr-1"></i>
                      제공되는 서비스를 구체적으로 작성하면 고객의 신뢰도가 높아집니다
                    </p>
                  </div>

                  <!-- 가용 객실 -->
                  <div class="bg-white p-4 rounded-lg mb-4">
                    <label class="block text-sm font-bold text-gray-700 mb-3">
                      <i class="fas fa-bed text-purple-600 mr-2"></i>가용 병상/객실 정보
                      \${template ? '<span class="ml-2 text-xs text-teal-600"><i class="fas fa-magic mr-1"></i>템플릿 기본값</span>' : ''}
                    </label>
                    <input type="text" id="availableRooms"
                      value="\${template?.available_room_types || ''}"
                      placeholder="예: 1인실 1개, 2인실 2개, 4인실 1개 입소 가능"
                      class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:border-teal-500 focus:ring-2 focus:ring-teal-200" />
                    <p class="text-xs text-gray-500 mt-2">
                      <i class="fas fa-info-circle mr-1"></i>
                      현재 입소 가능한 객실 종류와 개수를 입력해주세요
                    </p>
                  </div>

                  <!-- 특별 서비스 -->
                  <div class="bg-white p-4 rounded-lg mb-4">
                    <label class="block text-sm font-bold text-gray-700 mb-3">
                      <i class="fas fa-star text-yellow-600 mr-2"></i>특별 서비스 및 프로그램
                      \${template ? '<span class="ml-2 text-xs text-teal-600"><i class="fas fa-magic mr-1"></i>템플릿 자동 입력됨</span>' : ''}
                    </label>
                    <textarea id="specialServices" rows="3"
                      placeholder="예시:
• 치매 전문 케어 프로그램
• 욕창 예방 및 관리
• 투약 관리 시스템
• 24시간 CCTV 모니터링
• 정기적인 건강 상태 리포트"
                      class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:border-teal-500 focus:ring-2 focus:ring-teal-200">\${template?.default_special_services || ''}</textarea>
                    <p class="text-xs text-gray-500 mt-2">
                      <i class="fas fa-lightbulb mr-1"></i>
                      시설의 차별화된 서비스나 특장점을 강조해주세요
                    </p>
                  </div>

                  <!-- 추가 메시지 -->
                  <div class="bg-white p-4 rounded-lg">
                    <label class="block text-sm font-bold text-gray-700 mb-3">
                      <i class="fas fa-comment-dots text-indigo-600 mr-2"></i>고객에게 전달할 메시지
                      \${template ? '<span class="ml-2 text-xs text-teal-600"><i class="fas fa-magic mr-1"></i>템플릿 자동 입력됨</span>' : ''}
                    </label>
                    <textarea id="responseMessage" rows="4"
                      placeholder="예시:
안녕하세요, 저희 시설은 20년 경력의 전문 의료진이 상주하며, 환자분의 상태에 최적화된 케어를 제공하고 있습니다.

특히 치매 환자 케어 경험이 풍부하며, 낙상 예방 시스템과 24시간 모니터링 체계를 갖추고 있습니다.

방문 상담 가능하오니 언제든 연락주시기 바랍니다."
                      class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:border-teal-500 focus:ring-2 focus:ring-teal-200">\${template?.default_message || ''}</textarea>
                    <p class="text-xs text-gray-500 mt-2">
                      <i class="fas fa-heart mr-1 text-red-500"></i>
                      고객의 상황에 공감하는 따뜻한 메시지를 작성해주세요
                    </p>
                  </div>
                </div>

                <!-- 버튼 -->
                <div class="flex space-x-3 pt-4">
                  <button type="button" onclick="closeQuoteModal()"
                    class="flex-1 px-6 py-4 border-2 border-gray-300 rounded-lg text-gray-700 hover:bg-gray-100 transition-all font-semibold text-lg">
                    <i class="fas fa-times mr-2"></i>취소
                  </button>
                  <button type="submit"
                    class="flex-1 px-6 py-4 bg-gradient-to-r from-teal-600 to-blue-600 text-white rounded-lg hover:from-teal-700 hover:to-blue-700 transition-all font-bold text-lg shadow-lg hover:shadow-xl transform hover:scale-105">
                    <i class="fas fa-paper-plane mr-2"></i>견적서 전송
                  </button>
                </div>
              </form>
            </div>
          \`;
          
          document.getElementById('quoteModal').classList.remove('hidden');
        }

        // 견적서 모달 닫기
        function closeQuoteModal() {
          document.getElementById('quoteModal').classList.add('hidden');
          selectedRequest = null;
        }

        // 견적서 제출
        async function handleSubmitQuote(event) {
          event.preventDefault();
          
          if (!selectedRequest) {
            alert('견적 요청 정보가 없습니다.');
            return;
          }

          const data = {
            quoteId: selectedRequest.quote_id,
            estimatedPrice: parseInt(document.getElementById('estimatedPrice').value),
            serviceDetails: document.getElementById('serviceDetails').value,
            availableRooms: document.getElementById('availableRooms').value,
            specialServices: document.getElementById('specialServices').value,
            responseMessage: document.getElementById('responseMessage').value
          };

          try {
            const response = await fetch('/api/facility/send-quote', {
              method: 'POST',
              headers: { 'Content-Type': 'application/json' },
              credentials: 'include',
              body: JSON.stringify(data)
            });

            const result = await response.json();

            if (result.success) {
              alert('견적서가 성공적으로 전송되었습니다!');
              closeQuoteModal();
              loadDashboardData(); // 데이터 새로고침
            } else {
              alert(result.message || '견적서 전송 실패');
            }
          } catch (error) {
            console.error('견적서 전송 오류:', error);
            alert('견적서 전송 중 오류가 발생했습니다.');
          }
        }

        // 빈 상태 표시
        function showEmptyState(containerId) {
          const container = document.getElementById(containerId);
          container.innerHTML = \`
            <div class="text-center py-8 text-gray-500">
              <i class="fas fa-exclamation-circle text-4xl mb-2 text-red-500"></i>
              <p>데이터를 불러올 수 없습니다.</p>
              <button onclick="loadDashboardData()" class="mt-4 px-4 py-2 bg-teal-600 text-white rounded-lg hover:bg-teal-700">
                다시 시도
              </button>
            </div>
          \`;
        }

        // 시설 정보 수정 모달 열기
        async function openFacilityEditModal() {
          const modal = document.getElementById('facilityEditModal');
          modal.classList.remove('hidden');

          // 현재 사용자 정보 로드
          try {
            const response = await fetch('/api/auth/me', { credentials: 'include' });
            const result = await response.json();
            
            if (result.success && result.user) {
              const user = result.user;
              document.getElementById('facilityName').value = user.name || '';
              document.getElementById('facilityType').value = user.facility_type || '';
              document.getElementById('facilitySido').value = user.region_sido || '';
              
              // 시도 선택 시 시군구 업데이트
              if (user.region_sido) {
                updateSigunguOptions(user.region_sido);
                setTimeout(() => {
                  document.getElementById('facilitySigungu').value = user.region_sigungu || '';
                }, 100);
              }
              
              document.getElementById('facilityAddress').value = user.address || '';
              document.getElementById('facilityPhone').value = user.phone || '';
              document.getElementById('facilityPostalCode').value = user.postal_code || '';
            }
          } catch (error) {
            console.error('사용자 정보 로드 실패:', error);
          }
        }

        // 시설 정보 수정 모달 닫기
        function closeFacilityEditModal() {
          const modal = document.getElementById('facilityEditModal');
          modal.classList.add('hidden');
        }

        // 시군구 옵션 업데이트
        function updateSigunguOptions(sido) {
          const sigunguSelect = document.getElementById('facilitySigungu');
          const sigunguData = {
            '서울특별시': ['강남구', '강동구', '강북구', '강서구', '관악구', '광진구', '구로구', '금천구', '노원구', '도봉구', '동대문구', '동작구', '마포구', '서대문구', '서초구', '성동구', '성북구', '송파구', '양천구', '영등포구', '용산구', '은평구', '종로구', '중구', '중랑구'],
            '부산광역시': ['강서구', '금정구', '남구', '동구', '동래구', '부산진구', '북구', '사상구', '사하구', '서구', '수영구', '연제구', '영도구', '중구', '해운대구', '기장군'],
            '대구광역시': ['남구', '달서구', '동구', '북구', '서구', '수성구', '중구', '달성군'],
            '인천광역시': ['계양구', '남동구', '동구', '미추홀구', '부평구', '서구', '연수구', '중구', '강화군', '옹진군'],
            '광주광역시': ['광산구', '남구', '동구', '북구', '서구'],
            '대전광역시': ['대덕구', '동구', '서구', '유성구', '중구'],
            '울산광역시': ['남구', '동구', '북구', '중구', '울주군'],
            '세종특별자치시': ['세종시'],
            '경기도': ['고양시', '과천시', '광명시', '광주시', '구리시', '군포시', '김포시', '남양주시', '동두천시', '부천시', '성남시', '수원시', '시흥시', '안산시', '안성시', '안양시', '양주시', '오산시', '용인시', '의왕시', '의정부시', '이천시', '파주시', '평택시', '포천시', '하남시', '화성시', '가평군', '양평군', '여주군', '연천군'],
            '강원도': ['강릉시', '동해시', '삼척시', '속초시', '원주시', '춘천시', '태백시', '고성군', '양구군', '양양군', '영월군', '인제군', '정선군', '철원군', '평창군', '홍천군', '화천군', '횡성군'],
            '충청북도': ['제천시', '청주시', '충주시', '괴산군', '단양군', '보은군', '영동군', '옥천군', '음성군', '증평군', '진천군'],
            '충청남도': ['계룡시', '공주시', '논산시', '보령시', '서산시', '아산시', '천안시', '금산군', '당진군', '부여군', '서천군', '연기군', '예산군', '청양군', '태안군', '홍성군'],
            '전라북도': ['군산시', '김제시', '남원시', '익산시', '전주시', '정읍시', '고창군', '무주군', '부안군', '순창군', '완주군', '임실군', '장수군', '진안군'],
            '전라남도': ['광양시', '나주시', '목포시', '순천시', '여수시', '강진군', '고흥군', '곡성군', '구례군', '담양군', '무안군', '보성군', '신안군', '영광군', '영암군', '완도군', '장성군', '장흥군', '진도군', '함평군', '해남군', '화순군'],
            '경상북도': ['경산시', '경주시', '구미시', '김천시', '문경시', '상주시', '안동시', '영주시', '영천시', '포항시', '고령군', '군위군', '봉화군', '성주군', '영덕군', '영양군', '예천군', '울릉군', '울진군', '의성군', '청도군', '청송군', '칠곡군'],
            '경상남도': ['거제시', '김해시', '마산시', '밀양시', '사천시', '양산시', '진주시', '진해시', '창원시', '통영시', '거창군', '고성군', '남해군', '산청군', '의령군', '창녕군', '하동군', '함안군', '함양군', '합천군'],
            '제주특별자치도': ['서귀포시', '제주시']
          };

          sigunguSelect.innerHTML = '<option value="">선택하세요</option>';
          
          if (sigunguData[sido]) {
            sigunguData[sido].forEach(sigungu => {
              const option = document.createElement('option');
              option.value = sigungu;
              option.textContent = sigungu;
              sigunguSelect.appendChild(option);
            });
          }
        }

        // 시설 정보 수정 폼 제출
        document.getElementById('facilityEditForm').addEventListener('submit', async (e) => {
          e.preventDefault();

          const data = {
            name: document.getElementById('facilityName').value,
            facility_type: document.getElementById('facilityType').value,
            region_sido: document.getElementById('facilitySido').value,
            region_sigungu: document.getElementById('facilitySigungu').value,
            address: document.getElementById('facilityAddress').value,
            phone: document.getElementById('facilityPhone').value,
            postal_code: document.getElementById('facilityPostalCode').value || null
          };

          try {
            const response = await fetch('/api/facility/update-info', {
              method: 'POST',
              headers: { 'Content-Type': 'application/json' },
              credentials: 'include',
              body: JSON.stringify(data)
            });

            const result = await response.json();

            if (result.success) {
              alert('시설 정보가 성공적으로 수정되었습니다!');
              closeFacilityEditModal();
              window.location.reload(); // 페이지 새로고침
            } else {
              alert(result.message || '시설 정보 수정 실패');
            }
          } catch (error) {
            console.error('시설 정보 수정 오류:', error);
            alert('시설 정보 수정 중 오류가 발생했습니다.');
          }
        });

        // 시도 선택 시 시군구 업데이트
        document.getElementById('facilitySido').addEventListener('change', function() {
          updateSigunguOptions(this.value);
        });

        // 대표시설 신청
        async function applyRepresentativeFacility() {
          try {
            // 먼저 현재 신청 상태 확인
            const statusResponse = await fetch('/api/facility/representative-status', { credentials: 'include' });
            const statusResult = await statusResponse.json();
            
            if (statusResult.success && statusResult.data) {
              const app = statusResult.data;
              
              if (app.status === 'pending') {
                alert('⏳ 이미 대표시설 신청이 진행 중입니다.\\n\\n관리자의 승인을 기다려주세요.');
                return;
              } else if (app.status === 'approved') {
                alert('✅ 이미 대표시설로 승인되었습니다!\\n\\n감사합니다.');
                return;
              } else if (app.status === 'rejected') {
                const reapply = confirm('이전 신청이 거절되었습니다.\\n\\n거절 사유: ' + (app.review_note || '없음') + '\\n\\n다시 신청하시겠습니까?');
                if (!reapply) return;
              }
            }
            
            // 신청 사유 입력
            const reason = prompt('대표시설로 신청하시는 이유를 간단히 입력해주세요:\\n(예: 지역 내 최고의 시설로서 많은 분들께 도움을 드리고 싶습니다)', 
                                  '지역 대표시설로 활동하여 더 많은 분들께 양질의 서비스를 제공하고 싶습니다.');
            
            if (!reason || reason.trim().length < 10) {
              alert('신청 사유를 최소 10자 이상 입력해주세요.');
              return;
            }
            
            // 신청 처리
            const response = await fetch('/api/facility/apply-representative', {
              method: 'POST',
              headers: { 'Content-Type': 'application/json' },
              credentials: 'include',
              body: JSON.stringify({ application_reason: reason })
            });
            
            const result = await response.json();
            
            if (result.success) {
              alert('✅ 대표시설 신청이 완료되었습니다!\\n\\n관리자의 승인 후 대표시설로 지정됩니다.\\n승인까지 1-2일 정도 소요될 수 있습니다.');
            } else {
              alert('❌ ' + (result.message || '신청 처리 실패'));
            }
          } catch (error) {
            console.error('대표시설 신청 오류:', error);
            alert('❌ 신청 처리 중 오류가 발생했습니다.');
          }
        }

        async function handleLogout() {
          try {
            const response = await fetch('/api/auth/logout', { method: 'POST', credentials: 'include' });
            if (response.ok) {
              alert('로그아웃되었습니다.');
              window.location.href = '/';
            }
          } catch (error) {
            console.error(error);
            alert('로그아웃 중 오류가 발생했습니다.');
          }
        }

        // 페이지 로드 시 데이터 가져오기
        window.addEventListener('DOMContentLoaded', loadDashboardData);
      </script>
    </body>
    </html>
  `)
})

// ========== 파트너 대시보드 (상급병원/정부복지) ==========
app.get('/dashboard/partner', async (c) => {
  const user = await getUser(c)
  
  if (!user || (user.type !== 'hospital_manager' && user.type !== 'welfare_manager')) {
    return c.redirect('/login')
  }

  const partnerTypeLabel = user.type === 'hospital_manager' ? '상급병원' : '정부복지담당자'
  const partnerIcon = user.type === 'hospital_manager' ? 'hospital' : 'landmark'
  const referralTitle = user.type === 'hospital_manager' ? '환자 의뢰' : '주민 복지서비스 신청'
  const patientLabel = user.type === 'hospital_manager' ? '환자 이름' : '주민 이름'

  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>${partnerTypeLabel} 대시보드 - 케어조아</title>
      <link href="/static/tailwind.css" rel="stylesheet">
      <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet">
    </head>
    <body class="bg-gray-50">
      <header class="bg-white shadow-sm border-b">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div class="flex justify-between items-center h-16">
            <div class="flex items-center">
              <img 
                src="https://page.gensparksite.com/v1/base64_upload/b39dca8586af1dacd6d8417554313896" 
                alt="케어조아 로고"
                class="h-6 md:h-8 w-auto mr-3"
              />
              <h1 class="text-lg md:text-2xl font-bold text-teal-600">케어조아 파트너</h1>
            </div>
            
            <div class="flex items-center space-x-2 md:space-x-4">
              <a href="/" class="text-gray-600 hover:text-gray-900 px-3 py-2 rounded-lg">
                <i class="fas fa-home mr-1"></i>홈
              </a>
              <form method="POST" action="/api/auth/logout" class="inline">
                <button type="submit" class="bg-gray-200 hover:bg-gray-300 text-gray-700 px-4 py-2 rounded-lg">
                  <i class="fas fa-sign-out-alt mr-1"></i>로그아웃
                </button>
              </form>
            </div>
          </div>
        </div>
      </header>

      <div class="max-w-7xl mx-auto px-4 py-8">
        <!-- 환영 메시지 -->
        <div class="mb-8">
          <h2 class="text-2xl md:text-3xl font-bold text-gray-800">
            <i class="fas fa-${partnerIcon} text-purple-600 mr-2"></i>
            ${user.name}님, 환영합니다!
          </h2>
          <p class="text-gray-600 mt-2">${partnerTypeLabel} 파트너 대시보드</p>
        </div>

        <!-- 기관 정보 카드 -->
        <div class="bg-gradient-to-r from-purple-50 to-blue-50 rounded-2xl shadow-lg p-6 mb-8">
          <h3 class="text-xl font-bold text-gray-800 mb-4">
            <i class="fas fa-building text-purple-600 mr-2"></i>기관 정보
          </h3>
          <div class="grid md:grid-cols-3 gap-4">
            <div>
              <p class="text-sm text-gray-600">기관명</p>
              <p class="font-semibold text-gray-800">${user.organization_name || '미등록'}</p>
            </div>
            <div>
              <p class="text-sm text-gray-600">부서</p>
              <p class="font-semibold text-gray-800">${user.department || '미등록'}</p>
            </div>
            <div>
              <p class="text-sm text-gray-600">직책</p>
              <p class="font-semibold text-gray-800">${user.position || '미등록'}</p>
            </div>
          </div>
          <div class="mt-4 pt-4 border-t">
            <p class="text-sm text-gray-600">이메일</p>
            <p class="font-semibold text-gray-800">${user.email}</p>
          </div>
          <div class="mt-4 pt-4 border-t">
            <p class="text-sm text-gray-600">연락처</p>
            <p class="font-semibold text-gray-800">${user.phone || '미등록'}</p>
          </div>
        </div>

        <!-- 통계 카드 -->
        <div class="grid grid-cols-2 md:grid-cols-4 gap-3 md:gap-6 mb-8">
          <div class="bg-white rounded-xl shadow-md p-4 md:p-6 border-l-4 border-blue-500">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-600 text-xs md:text-sm">의뢰 건수</p>
                <p class="text-2xl md:text-3xl font-bold text-gray-800 mt-1" id="totalReferrals">0</p>
              </div>
              <div class="bg-blue-100 p-3 md:p-4 rounded-full">
                <i class="fas fa-user-plus text-blue-600 text-lg md:text-2xl"></i>
              </div>
            </div>
          </div>

          <div class="bg-white rounded-xl shadow-md p-4 md:p-6 border-l-4 border-green-500">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-600 text-xs md:text-sm">매칭 완료</p>
                <p class="text-2xl md:text-3xl font-bold text-gray-800 mt-1" id="matchedCount">0</p>
              </div>
              <div class="bg-green-100 p-3 md:p-4 rounded-full">
                <i class="fas fa-check-circle text-green-600 text-lg md:text-2xl"></i>
              </div>
            </div>
          </div>

          <div class="bg-white rounded-xl shadow-md p-4 md:p-6 border-l-4 border-purple-500">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-600 text-xs md:text-sm">진행 중</p>
                <p class="text-2xl md:text-3xl font-bold text-gray-800 mt-1" id="pendingCount">0</p>
              </div>
              <div class="bg-purple-100 p-3 md:p-4 rounded-full">
                <i class="fas fa-spinner text-purple-600 text-lg md:text-2xl"></i>
              </div>
            </div>
          </div>

          <div class="bg-white rounded-xl shadow-md p-4 md:p-6 border-l-4 border-orange-500">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-600 text-xs md:text-sm">완료</p>
                <p class="text-2xl md:text-3xl font-bold text-gray-800 mt-1" id="completedCount">0</p>
              </div>
              <div class="bg-orange-100 p-3 md:p-4 rounded-full">
                <i class="fas fa-flag-checkered text-orange-600 text-lg md:text-2xl"></i>
              </div>
            </div>
          </div>
        </div>

        <!-- 환자/주민 의뢰 폼 -->
        <div class="bg-white rounded-2xl shadow-lg p-6 mb-8">
          <h3 class="text-xl font-bold text-gray-800 mb-4">
            <i class="fas fa-plus-circle text-teal-600 mr-2"></i>
            ${referralTitle}
          </h3>
          
          <form id="referralForm" class="space-y-4">
            <div class="grid md:grid-cols-2 gap-4">
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">
                  ${patientLabel} *
                </label>
                <input type="text" name="patient_name" required
                  class="w-full px-4 py-3 border rounded-lg focus:ring-2 focus:ring-teal-500" 
                  placeholder="이름을 입력하세요" />
              </div>
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">연령 *</label>
                <input type="number" name="patient_age" required min="1" max="150"
                  class="w-full px-4 py-3 border rounded-lg focus:ring-2 focus:ring-teal-500" 
                  placeholder="나이를 입력하세요" />
              </div>
            </div>

            <div>
              <label class="block text-sm font-medium text-gray-700 mb-2">건강 상태 / 요구사항 *</label>
              <textarea rows="4" name="patient_condition" required
                class="w-full px-4 py-3 border rounded-lg focus:ring-2 focus:ring-teal-500"
                placeholder="건강 상태, 질병, 특별한 요구사항 등을 상세히 입력해주세요"></textarea>
            </div>

            <div class="grid md:grid-cols-3 gap-4">
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">의뢰 유형 *</label>
                <select name="referral_type" required class="w-full px-4 py-3 border rounded-lg focus:ring-2 focus:ring-teal-500">
                  <option value="">선택하세요</option>
                  <option value="입원">입원</option>
                  <option value="퇴원">퇴원 후 전원</option>
                  <option value="상담">상담</option>
                </select>
              </div>
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">선호 지역 (시/도) *</label>
                <select name="preferred_region" required class="w-full px-4 py-3 border rounded-lg focus:ring-2 focus:ring-teal-500">
                  <option value="">선택하세요</option>
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
                <label class="block text-sm font-medium text-gray-700 mb-2">시설 유형 *</label>
                <select name="target_facility_type" required class="w-full px-4 py-3 border rounded-lg focus:ring-2 focus:ring-teal-500">
                  <option value="">선택하세요</option>
                  <option value="요양병원">요양병원</option>
                  <option value="요양원">요양원</option>
                  <option value="주야간보호">주야간보호</option>
                  <option value="재가복지센터">재가복지센터</option>
                </select>
              </div>
            </div>

            <div>
              <label class="block text-sm font-medium text-gray-700 mb-2">긴급도 *</label>
              <select name="urgency_level" required class="w-full px-4 py-3 border rounded-lg focus:ring-2 focus:ring-teal-500">
                <option value="">선택하세요</option>
                <option value="긴급">긴급 (24시간 이내)</option>
                <option value="보통">보통 (1주일 이내)</option>
                <option value="여유">여유 (시간 제약 없음)</option>
              </select>
            </div>

            <button type="submit"
              class="w-full bg-teal-600 text-white py-3 rounded-lg hover:bg-teal-700 font-semibold">
              <i class="fas fa-paper-plane mr-2"></i>의뢰하기
            </button>
          </form>
        </div>

        <!-- 최근 의뢰 목록 -->
        <div class="bg-white rounded-2xl shadow-lg p-6">
          <h3 class="text-xl font-bold text-gray-800 mb-4">
            <i class="fas fa-list text-teal-600 mr-2"></i>최근 의뢰 목록
          </h3>
          
          <div id="referralList" class="space-y-4">
            <div class="text-center py-12 text-gray-500">
              <i class="fas fa-spinner fa-spin text-4xl mb-4"></i>
              <p>의뢰 목록을 불러오는 중...</p>
            </div>
          </div>
        </div>
      </div>

      <script src="https://cdn.jsdelivr.net/npm/axios@1.6.0/dist/axios.min.js"></script>
      <script>
        // 의뢰 폼 제출
        document.getElementById('referralForm').addEventListener('submit', async (e) => {
          e.preventDefault();
          
          const formData = new FormData(e.target);
          const data = Object.fromEntries(formData.entries());
          
          try {
            const response = await axios.post('/api/partner/referral', data);
            
            if (response.data.success) {
              alert('✅ 의뢰가 성공적으로 등록되었습니다!\\n\\n의뢰 번호: ' + response.data.referral_id);
              e.target.reset();
              loadReferrals(); // 목록 새로고침
            } else {
              alert('❌ ' + response.data.message);
            }
          } catch (error) {
            console.error('Error:', error);
            alert('❌ 의뢰 등록 중 오류가 발생했습니다.');
          }
        });

        // 의뢰 목록 로드
        async function loadReferrals() {
          try {
            const response = await axios.get('/api/partner/referrals');
            
            const listContainer = document.getElementById('referralList');
            
            if (response.data.success && response.data.referrals.length > 0) {
              const referrals = response.data.referrals;
              
              // 통계 업데이트
              document.getElementById('totalReferrals').textContent = referrals.length;
              document.getElementById('matchedCount').textContent = referrals.filter(r => r.status === 'matched').length;
              document.getElementById('pendingCount').textContent = referrals.filter(r => r.status === 'pending').length;
              document.getElementById('completedCount').textContent = referrals.filter(r => r.status === 'completed').length;
              
              listContainer.innerHTML = referrals.map(ref => \`
                <div class="border rounded-lg p-4 hover:shadow-md transition-shadow">
                  <div class="flex justify-between items-start mb-2">
                    <div>
                      <h4 class="font-bold text-gray-800">\${ref.patient_name} (\${ref.patient_age}세)</h4>
                      <p class="text-sm text-gray-600">\${ref.referral_type} · \${ref.target_facility_type}</p>
                    </div>
                    <span class="px-3 py-1 rounded-full text-xs font-semibold
                      \${ref.status === 'pending' ? 'bg-yellow-100 text-yellow-800' : ''}
                      \${ref.status === 'matched' ? 'bg-blue-100 text-blue-800' : ''}
                      \${ref.status === 'completed' ? 'bg-green-100 text-green-800' : ''}">
                      \${ref.status === 'pending' ? '대기 중' : ref.status === 'matched' ? '매칭 완료' : '완료'}
                    </span>
                  </div>
                  <p class="text-sm text-gray-700 mb-2">\${ref.patient_condition.substring(0, 100)}...</p>
                  <div class="flex items-center justify-between text-xs text-gray-500">
                    <span><i class="fas fa-map-marker-alt mr-1"></i>\${ref.preferred_region}</span>
                    <span><i class="fas fa-clock mr-1"></i>\${ref.urgency_level}</span>
                    <span>\${new Date(ref.created_at).toLocaleDateString('ko-KR')}</span>
                  </div>
                </div>
              \`).join('');
            } else {
              listContainer.innerHTML = \`
                <div class="text-center py-12 text-gray-500">
                  <i class="fas fa-inbox text-4xl mb-4"></i>
                  <p>아직 의뢰 내역이 없습니다</p>
                </div>
              \`;
            }
          } catch (error) {
            console.error('Error loading referrals:', error);
            document.getElementById('referralList').innerHTML = \`
              <div class="text-center py-12 text-red-500">
                <i class="fas fa-exclamation-triangle text-4xl mb-4"></i>
                <p>의뢰 목록을 불러오는데 실패했습니다</p>
              </div>
            \`;
          }
        }

        // 페이지 로드 시 의뢰 목록 로드
        loadReferrals();
      </script>
    </body>
    </html>
  `)
})

// ========== 시설 템플릿 설정 페이지 ==========
app.get('/facility/template', async (c) => {
  const user = await getUser(c)
  
  if (!user || user.type !== 'facility') {
    return c.redirect('/login')
  }

  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>견적 템플릿 설정 - 케어조아</title>
      <link href="/static/tailwind.css" rel="stylesheet">
      <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet">
      <script src="https://cdn.jsdelivr.net/npm/axios@1.6.0/dist/axios.min.js"></script>
    </head>
    <body class="bg-gray-50">
      <!-- 헤더 -->
      <header class="bg-white shadow-sm border-b">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div class="flex justify-between items-center h-16">
            <div class="flex items-center">
              <img src="https://page.gensparksite.com/v1/base64_upload/b39dca8586af1dacd6d8417554313896" 
                   alt="케어조아 로고" class="h-8 w-auto mr-3" />
              <h1 class="text-2xl font-bold text-teal-600">케어조아</h1>
            </div>
            <div class="flex items-center space-x-4">
              <a href="/dashboard/facility" class="text-gray-600 hover:text-gray-900">
                <i class="fas fa-arrow-left mr-1"></i>대시보드로 돌아가기
              </a>
            </div>
          </div>
        </div>
      </header>

      <!-- 메인 컨텐츠 -->
      <div class="max-w-4xl mx-auto px-4 py-8">
        <div class="bg-white rounded-xl shadow-lg p-8">
          <div class="mb-8">
            <h2 class="text-3xl font-bold text-gray-800 mb-2">
              <i class="fas fa-file-alt text-blue-600 mr-3"></i>
              견적서 기본 템플릿 설정
            </h2>
            <p class="text-gray-600">
              견적서 작성 시 자동으로 입력될 기본 정보를 설정하세요. 
              견적 작성 시 필요에 따라 수정할 수 있습니다.
            </p>
          </div>

          <form id="templateForm" class="space-y-6">
            <!-- 시설 기본 정보 -->
            <div class="bg-gradient-to-r from-blue-50 to-teal-50 p-6 rounded-lg border-2 border-blue-200">
              <h3 class="text-xl font-bold text-gray-800 mb-4">
                <i class="fas fa-building text-blue-600 mr-2"></i>
                시설 기본 정보
              </h3>
              
              <div class="space-y-4">
                <div>
                  <label class="block text-sm font-bold text-gray-700 mb-2">
                    시설명
                  </label>
                  <input type="text" id="facilityName" value="${user.name}"
                    class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:border-blue-500 focus:ring-2 focus:ring-blue-200" />
                </div>

                <div>
                  <label class="block text-sm font-bold text-gray-700 mb-2">
                    시설 소개
                  </label>
                  <textarea id="facilityDescription" rows="3"
                    placeholder="예: 20년 전통의 전문 요양 시설로..."
                    class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:border-blue-500 focus:ring-2 focus:ring-blue-200"></textarea>
                </div>
              </div>
            </div>

            <!-- 기본 서비스 내용 -->
            <div class="bg-white p-6 rounded-lg border-2 border-gray-200">
              <label class="block text-sm font-bold text-gray-700 mb-3">
                <i class="fas fa-clipboard-list text-green-600 mr-2"></i>
                기본 서비스 상세 내용
              </label>
              <textarea id="defaultServiceDetails" rows="6"
                placeholder="견적서에 기본으로 들어갈 서비스 설명을 입력하세요.

예시:
• 24시간 전문 간호 서비스
• 전문의 주 2회 정기 회진
• 물리치료 주 3회 제공
• 작업치료 및 인지재활 프로그램
• 영양사 식단 관리"
                class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:border-teal-500 focus:ring-2 focus:ring-teal-200"></textarea>
              <p class="text-xs text-gray-500 mt-2">
                <i class="fas fa-info-circle mr-1"></i>
                견적 작성 시 자동으로 입력되며, 필요시 수정 가능합니다
              </p>
            </div>

            <!-- 특별 서비스 -->
            <div class="bg-white p-6 rounded-lg border-2 border-gray-200">
              <label class="block text-sm font-bold text-gray-700 mb-3">
                <i class="fas fa-star text-yellow-600 mr-2"></i>
                특별 서비스 및 프로그램
              </label>
              <textarea id="defaultSpecialServices" rows="5"
                placeholder="시설의 특장점을 입력하세요.

예시:
• 치매 전문 케어 프로그램
• 욕창 예방 및 관리
• 투약 관리 시스템
• 24시간 CCTV 모니터링
• 정기적인 건강 상태 리포트"
                class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:border-teal-500 focus:ring-2 focus:ring-teal-200"></textarea>
            </div>

            <!-- 기본 메시지 -->
            <div class="bg-white p-6 rounded-lg border-2 border-gray-200">
              <label class="block text-sm font-bold text-gray-700 mb-3">
                <i class="fas fa-comment-dots text-indigo-600 mr-2"></i>
                기본 안내 메시지
              </label>
              <textarea id="defaultMessage" rows="5"
                placeholder="고객에게 전달할 기본 메시지를 입력하세요.

예시:
안녕하세요, 저희 시설은 20년 경력의 전문 의료진이 상주하며, 환자분의 상태에 최적화된 케어를 제공하고 있습니다.

특히 치매 환자 케어 경험이 풍부하며, 낙상 예방 시스템과 24시간 모니터링 체계를 갖추고 있습니다.

방문 상담 가능하오니 언제든 연락주시기 바랍니다."
                class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:border-teal-500 focus:ring-2 focus:ring-teal-200"></textarea>
            </div>

            <!-- 가격대 정보 -->
            <div class="bg-white p-6 rounded-lg border-2 border-gray-200">
              <label class="block text-sm font-bold text-gray-700 mb-3">
                <i class="fas fa-won-sign text-green-600 mr-2"></i>
                기본 가격대 (선택사항)
              </label>
              <div class="grid grid-cols-2 gap-4">
                <div>
                  <label class="block text-sm text-gray-600 mb-2">최소 금액</label>
                  <input type="number" id="priceRangeMin" 
                    placeholder="예: 2000000"
                    class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:border-teal-500" />
                </div>
                <div>
                  <label class="block text-sm text-gray-600 mb-2">최대 금액</label>
                  <input type="number" id="priceRangeMax" 
                    placeholder="예: 3000000"
                    class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:border-teal-500" />
                </div>
              </div>
              <p class="text-xs text-gray-500 mt-2">
                <i class="fas fa-info-circle mr-1"></i>
                참고용 가격대입니다. 실제 견적 작성 시 정확한 금액을 입력해주세요
              </p>
            </div>

            <!-- 가용 객실 정보 -->
            <div class="bg-white p-6 rounded-lg border-2 border-gray-200">
              <label class="block text-sm font-bold text-gray-700 mb-3">
                <i class="fas fa-bed text-purple-600 mr-2"></i>
                기본 객실 정보 (선택사항)
              </label>
              <input type="text" id="availableRoomTypes" 
                placeholder="예: 1인실, 2인실, 4인실 입소 가능"
                class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:border-teal-500" />
              <p class="text-xs text-gray-500 mt-2">
                <i class="fas fa-info-circle mr-1"></i>
                객실 종류를 입력하세요. 견적 작성 시 가용 객실 개수를 수정할 수 있습니다
              </p>
            </div>

            <!-- 버튼 -->
            <div class="flex space-x-4 pt-6">
              <a href="/dashboard/facility" 
                class="flex-1 px-6 py-4 border-2 border-gray-300 rounded-lg text-gray-700 hover:bg-gray-100 transition-all font-semibold text-lg text-center">
                <i class="fas fa-times mr-2"></i>취소
              </a>
              <button type="submit"
                class="flex-1 px-6 py-4 bg-gradient-to-r from-teal-600 to-blue-600 text-white rounded-lg hover:from-teal-700 hover:to-blue-700 transition-all font-bold text-lg shadow-lg hover:shadow-xl">
                <i class="fas fa-save mr-2"></i>템플릿 저장
              </button>
            </div>
          </form>
        </div>
      </div>

      <script>
        // 페이지 로드 시 기존 템플릿 불러오기
        window.addEventListener('DOMContentLoaded', async () => {
          try {
            const response = await axios.get('/api/facility/template');
            if (response.data.success && response.data.data) {
              const template = response.data.data;
              document.getElementById('facilityName').value = template.facility_name || '';
              document.getElementById('facilityDescription').value = template.facility_description || '';
              document.getElementById('defaultServiceDetails').value = template.default_service_details || '';
              document.getElementById('defaultSpecialServices').value = template.default_special_services || '';
              document.getElementById('defaultMessage').value = template.default_message || '';
              document.getElementById('priceRangeMin').value = template.price_range_min || '';
              document.getElementById('priceRangeMax').value = template.price_range_max || '';
              document.getElementById('availableRoomTypes').value = template.available_room_types || '';
            }
          } catch (error) {
            console.error('템플릿 로드 오류:', error);
          }
        });

        // 폼 제출
        document.getElementById('templateForm').addEventListener('submit', async (e) => {
          e.preventDefault();
          
          const data = {
            facilityName: document.getElementById('facilityName').value,
            facilityDescription: document.getElementById('facilityDescription').value,
            defaultServiceDetails: document.getElementById('defaultServiceDetails').value,
            defaultSpecialServices: document.getElementById('defaultSpecialServices').value,
            defaultMessage: document.getElementById('defaultMessage').value,
            priceRangeMin: parseInt(document.getElementById('priceRangeMin').value) || null,
            priceRangeMax: parseInt(document.getElementById('priceRangeMax').value) || null,
            availableRoomTypes: document.getElementById('availableRoomTypes').value
          };

          try {
            const response = await axios.post('/api/facility/template', data);
            if (response.data.success) {
              alert('템플릿이 저장되었습니다! 이제 견적 작성 시 자동으로 입력됩니다.');
              window.location.href = '/dashboard/facility';
            } else {
              alert('템플릿 저장 실패: ' + response.data.message);
            }
          } catch (error) {
            console.error('템플릿 저장 오류:', error);
            alert('템플릿 저장 중 오류가 발생했습니다.');
          }
        });
      </script>
    </body>
    </html>
  `)
})

// ========== 견적서 상세 페이지 ==========

// 견적서 상세 페이지
app.get('/quote-details/:quoteId', async (c) => {
  const user = await getUser(c)
  
  if (!user || user.type !== 'customer') {
    return c.redirect('/login')
  }

  const quoteId = c.req.param('quoteId')
  
  try {
    const db = c.env.DB
    
    console.log('[quote-details] 견적 조회 시작:', quoteId)
    
    // 견적 요청 정보 조회
    const quoteRequest = await db.prepare(`
      SELECT * FROM quote_requests WHERE quote_id = ?
    `).bind(quoteId).first()
    
    console.log('[quote-details] 견적 요청 조회 결과:', quoteRequest ? '발견' : '없음')
    
    if (!quoteRequest) {
      return c.html(`
        <!DOCTYPE html>
        <html lang="ko">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>견적서를 찾을 수 없습니다 - 케어조아</title>
          <link href="/static/tailwind.css" rel="stylesheet">
        </head>
        <body class="bg-gray-50 flex items-center justify-center min-h-screen">
          <div class="text-center">
            <i class="fas fa-exclamation-triangle text-6xl text-red-500 mb-4"></i>
            <h1 class="text-2xl font-bold text-gray-800 mb-2">견적서를 찾을 수 없습니다</h1>
            <p class="text-gray-600 mb-6">요청하신 견적서가 존재하지 않습니다.</p>
            <a href="/dashboard/customer" class="px-6 py-3 bg-teal-600 text-white rounded-lg hover:bg-teal-700">
              대시보드로 돌아가기
            </a>
          </div>
        </body>
        </html>
      `)
    }
    
    // 해당 견적에 대한 응답 목록 조회
    const responses = await db.prepare(`
      SELECT * FROM quote_responses WHERE quote_id = ?
      ORDER BY estimated_price ASC
    `).bind(quoteId).all()
    
    const responsesData = responses.results || []

    return c.html(`
      <!DOCTYPE html>
      <html lang="ko">
      <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>견적서 상세 - 케어조아</title>
        <link href="/static/tailwind.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet">
      </head>
      <body class="bg-gray-50">
        <!-- 헤더 -->
        <header class="bg-white shadow-sm border-b">
          <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between items-center h-16">
              <div class="flex items-center">
                <img src="https://page.gensparksite.com/v1/base64_upload/b39dca8586af1dacd6d8417554313896" 
                     alt="케어조아 로고" class="h-8 w-auto mr-3" />
                <h1 class="text-2xl font-bold text-teal-600">케어조아</h1>
              </div>
              <div class="flex items-center space-x-4">
                <a href="/dashboard/customer" class="text-gray-700 hover:text-teal-600">
                  <i class="fas fa-arrow-left mr-2"></i>대시보드
                </a>
                <span class="text-gray-700">
                  <i class="fas fa-user-circle text-teal-600 mr-2"></i>
                  <strong>${user.name}</strong>님
                </span>
              </div>
            </div>
          </div>
        </header>

        <!-- 메인 컨텐츠 -->
        <div class="max-w-7xl mx-auto px-4 py-8">
          <!-- 견적 요청 정보 -->
          <div class="bg-white rounded-xl shadow-md p-6 mb-8">
            <div class="flex justify-between items-start mb-6">
              <div>
                <h2 class="text-2xl font-bold text-gray-800 mb-2">
                  <i class="fas fa-file-invoice text-teal-600 mr-2"></i>
                  견적 요청 정보
                </h2>
                <p class="text-gray-600">신청일: ${new Date(quoteRequest.created_at).toLocaleDateString('ko-KR')}</p>
              </div>
              <span class="px-4 py-2 bg-blue-100 text-blue-800 font-semibold rounded-full">
                ${quoteRequest.quote_type === 'simple' ? '간편 견적' : '상세 견적'}
              </span>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
              <div class="space-y-3">
                <div class="flex items-center">
                  <i class="fas fa-user text-gray-400 w-6 mr-3"></i>
                  <div>
                    <p class="text-sm text-gray-500">신청자</p>
                    <p class="font-semibold text-gray-800">${quoteRequest.applicant_name}</p>
                  </div>
                </div>
                <div class="flex items-center">
                  <i class="fas fa-phone text-gray-400 w-6 mr-3"></i>
                  <div>
                    <p class="text-sm text-gray-500">연락처</p>
                    <p class="font-semibold text-gray-800">${quoteRequest.applicant_phone}</p>
                  </div>
                </div>
                <div class="flex items-center">
                  <i class="fas fa-user-injured text-gray-400 w-6 mr-3"></i>
                  <div>
                    <p class="text-sm text-gray-500">환자 정보</p>
                    <p class="font-semibold text-gray-800">${quoteRequest.patient_name} (${quoteRequest.patient_age}세)</p>
                  </div>
                </div>
              </div>

              <div class="space-y-3">
                <div class="flex items-center">
                  <i class="fas fa-map-marker-alt text-gray-400 w-6 mr-3"></i>
                  <div>
                    <p class="text-sm text-gray-500">지역</p>
                    <p class="font-semibold text-gray-800">${quoteRequest.sido} ${quoteRequest.sigungu}</p>
                  </div>
                </div>
                <div class="flex items-center">
                  <i class="fas fa-hospital text-gray-400 w-6 mr-3"></i>
                  <div>
                    <p class="text-sm text-gray-500">시설 유형</p>
                    <p class="font-semibold text-gray-800">${quoteRequest.facility_type}</p>
                  </div>
                </div>
                ${quoteRequest.care_grade ? `
                <div class="flex items-center">
                  <i class="fas fa-notes-medical text-gray-400 w-6 mr-3"></i>
                  <div>
                    <p class="text-sm text-gray-500">요양등급</p>
                    <p class="font-semibold text-gray-800">${quoteRequest.care_grade}</p>
                  </div>
                </div>
                ` : ''}
              </div>
            </div>

            ${quoteRequest.additional_notes ? `
            <div class="mt-6 pt-6 border-t">
              <p class="text-sm text-gray-500 mb-4">추가 요청사항</p>
              <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                ${(() => {
                  try {
                    const notes = typeof quoteRequest.additional_notes === 'string' 
                      ? JSON.parse(quoteRequest.additional_notes) 
                      : quoteRequest.additional_notes;
                    
                    // 표시할 필드만 선택 (이메일 등 민감 정보 제외)
                    const fieldLabels: Record<string, string> = {
                      insuranceType: '보험 유형',
                      facilitySize: '희망 시설 규모',
                      careCost: '희망 비용',
                      carePrograms: '원하는 프로그램',
                      religion: '종교',
                      mainSymptoms: '주요 증상',
                      communication: '의사소통',
                      eating: '식사',
                      dietType: '식사 형태',
                      mobility: '거동',
                      toiletUse: '화장실 사용',
                      additionalCare: '추가 케어',
                      otherSymptoms: '기타 증상'
                    };
                    
                    return Object.entries(notes)
                      .filter(([key, value]) => {
                        // 이메일 등 민감 정보 제외
                        if (key === 'applicantEmail' || key === 'birthYear' || key === 'guardianAge' || key === 'serviceType') {
                          return false;
                        }
                        return value && String(value).trim();
                      })
                      .map(([key, value]) => `
                        <div class="flex items-start space-x-2 p-3 bg-gray-50 rounded-lg">
                          <i class="fas fa-check-circle text-teal-500 mt-1"></i>
                          <div>
                            <p class="text-sm font-medium text-gray-600">${fieldLabels[key] || key}</p>
                            <p class="text-gray-800">${String(value).replace(/[<>]/g, '')}</p>
                          </div>
                        </div>
                      `).join('');
                  } catch (e) {
                    console.error('[quote-details] additional_notes 파싱 오류:', e);
                    return `<p class="text-gray-600">${String(quoteRequest.additional_notes).replace(/[<>]/g, '')}</p>`;
                  }
                })()}
              </div>
            </div>
            ` : ''}
          </div>

          <!-- 받은 견적서 목록 -->
          <div class="mb-6">
            <div class="flex justify-between items-center mb-4">
              <h3 class="text-xl font-bold text-gray-800">
                <i class="fas fa-envelope-open-text text-green-600 mr-2"></i>
                받은 견적서 (${responsesData.length}개)
              </h3>
              ${responsesData.length > 1 ? `
              <button onclick="toggleCompareMode()" id="compareBtn"
                class="px-4 py-2 border-2 border-teal-600 text-teal-600 rounded-lg hover:bg-teal-50 transition-colors">
                <i class="fas fa-balance-scale mr-2"></i>비교하기
              </button>
              ` : ''}
            </div>

            ${responsesData.length === 0 ? `
            <div class="bg-white rounded-xl shadow-md p-8 text-center text-gray-500">
              <i class="fas fa-inbox text-6xl mb-4"></i>
              <p class="text-lg font-semibold mb-2">아직 받은 견적서가 없습니다</p>
              <p class="text-sm">시설들이 견적서를 작성하고 있습니다. 조금만 기다려주세요!</p>
            </div>
            ` : ''}
          </div>

          <!-- 견적서 카드들 -->
          <div id="quotesContainer" class="space-y-6">
            ${responsesData.map((response, index) => {
              const price = new Intl.NumberFormat('ko-KR').format(response.estimated_price)
              const date = new Date(response.created_at).toLocaleDateString('ko-KR')
              
              // 상태 배지 인라인 생성
              const statusMap = {
                'sent': { text: '전송됨', color: 'bg-blue-100 text-blue-700' },
                'viewed': { text: '열람됨', color: 'bg-green-100 text-green-700' },
                'accepted': { text: '수락됨', color: 'bg-purple-100 text-purple-700' },
                'rejected': { text: '거절됨', color: 'bg-red-100 text-red-700' }
              }
              const statusInfo = statusMap[response.status] || { text: response.status, color: 'bg-gray-100 text-gray-700' }
              const statusBadge = `<span class="px-3 py-1 rounded-full text-xs font-semibold ${statusInfo.color}">${statusInfo.text}</span>`
              
              return `
                <div class="bg-white rounded-xl shadow-md hover:shadow-lg transition-shadow quote-card" data-index="${index}">
                  <div class="p-6">
                    <!-- 헤더 -->
                    <div class="flex justify-between items-start mb-4">
                      <div class="flex items-center">
                        <div class="w-12 h-12 bg-teal-100 rounded-full flex items-center justify-center mr-4">
                          <i class="fas fa-hospital text-teal-600 text-xl"></i>
                        </div>
                        <div>
                          <h4 class="text-xl font-bold text-gray-800">시설 #${index + 1}</h4>
                          <p class="text-sm text-gray-500">${date} 전송</p>
                        </div>
                      </div>
                      <div class="flex items-center space-x-3">
                        ${responsesData.length > 1 ? `
                        <label class="compare-checkbox hidden">
                          <input type="checkbox" class="compare-check" data-index="${index}" 
                            onchange="updateCompareSelection()"
                            class="w-5 h-5 text-teal-600 rounded">
                          <span class="ml-2 text-sm text-gray-600">선택</span>
                        </label>
                        ` : ''}
                        ${statusBadge}
                      </div>
                    </div>

                    <!-- 가격 -->
                    <div class="bg-gradient-to-r from-teal-50 to-blue-50 rounded-lg p-4 mb-4">
                      <p class="text-sm text-gray-600 mb-1">예상 월 비용</p>
                      <p class="text-3xl font-bold text-teal-600">월 ${price}원</p>
                    </div>

                    <!-- 서비스 상세 -->
                    <div class="space-y-3 mb-4">
                      ${response.service_details ? `
                      <div>
                        <p class="text-sm font-semibold text-gray-700 mb-1">
                          <i class="fas fa-list-ul text-gray-400 mr-2"></i>서비스 상세
                        </p>
                        <p class="text-gray-600 text-sm leading-relaxed">${response.service_details}</p>
                      </div>
                      ` : ''}

                      ${response.available_rooms ? `
                      <div>
                        <p class="text-sm font-semibold text-gray-700 mb-1">
                          <i class="fas fa-bed text-gray-400 mr-2"></i>가용 병상/객실
                        </p>
                        <p class="text-gray-600 text-sm">${response.available_rooms}</p>
                      </div>
                      ` : ''}

                      ${response.special_services ? `
                      <div>
                        <p class="text-sm font-semibold text-gray-700 mb-1">
                          <i class="fas fa-star text-gray-400 mr-2"></i>특별 서비스
                        </p>
                        <p class="text-gray-600 text-sm">${response.special_services}</p>
                      </div>
                      ` : ''}

                      ${response.response_message ? `
                      <div class="bg-gray-50 rounded-lg p-3 mt-3">
                        <p class="text-sm font-semibold text-gray-700 mb-1">
                          <i class="fas fa-comment-dots text-gray-400 mr-2"></i>시설 메시지
                        </p>
                        <p class="text-gray-600 text-sm italic">"${response.response_message}"</p>
                      </div>
                      ` : ''}
                    </div>

                    <!-- 담당자 정보 -->
                    <div class="flex items-center justify-between pt-4 border-t">
                      <div class="flex items-center text-sm text-gray-600">
                        <i class="fas fa-user-tie text-gray-400 mr-2"></i>
                        <span>${response.contact_person || '담당자'} | ${response.contact_phone}</span>
                      </div>
                      <div class="grid grid-cols-2 gap-2 mt-3">
                        <a href="tel:${response.contact_phone}"
                          class="flex items-center justify-center px-3 py-2.5 md:px-4 md:py-3 bg-green-600 text-white rounded-lg hover:bg-green-700 active:bg-green-800 transition-all text-sm font-semibold shadow-sm touch-manipulation">
                          <i class="fas fa-phone mr-1.5 text-base"></i>
                          <span>전화</span>
                        </a>
                        <a href="/chat?quote_id=${quoteRequest.quote_id}"
                          class="flex items-center justify-center px-3 py-2.5 md:px-4 md:py-3 bg-blue-600 text-white rounded-lg hover:bg-blue-700 active:bg-blue-800 transition-all text-sm font-semibold shadow-sm touch-manipulation">
                          <i class="fas fa-comments mr-1.5 text-base"></i>
                          <span>채팅</span>
                        </a>
                        <button onclick="openMessageModal('${response.response_id}')"
                          class="flex items-center justify-center px-3 py-2.5 md:px-4 md:py-3 bg-teal-600 text-white rounded-lg hover:bg-teal-700 active:bg-teal-800 transition-all text-sm font-semibold shadow-sm touch-manipulation">
                          <i class="fas fa-envelope mr-1.5 text-base"></i>
                          <span>문의</span>
                        </button>
                        <button onclick="openReviewModal('${response.response_id}')"
                          class="flex items-center justify-center px-3 py-2.5 md:px-4 md:py-3 bg-yellow-500 text-white rounded-lg hover:bg-yellow-600 active:bg-yellow-700 transition-all text-sm font-semibold shadow-sm touch-manipulation">
                          <i class="fas fa-star mr-1.5 text-base"></i>
                          <span>리뷰</span>
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              `
            }).join('')}
          </div>

          <!-- 비교 모드 버튼 -->
          <div id="comparePanel" class="hidden fixed bottom-0 left-0 right-0 bg-white shadow-lg border-t p-4">
            <div class="max-w-7xl mx-auto flex justify-between items-center">
              <div>
                <p class="text-sm text-gray-600">선택된 견적서: <span id="selectedCount" class="font-bold text-teal-600">0</span>개</p>
              </div>
              <div class="flex space-x-3">
                <button onclick="toggleCompareMode()" class="px-4 py-2 border border-gray-300 rounded-lg hover:bg-gray-50">
                  취소
                </button>
                <button onclick="compareSelected()" id="compareConfirmBtn" disabled
                  class="px-6 py-2 bg-teal-600 text-white rounded-lg hover:bg-teal-700 disabled:bg-gray-300 disabled:cursor-not-allowed">
                  <i class="fas fa-balance-scale mr-2"></i>비교하기
                </button>
              </div>
            </div>
          </div>
        </div>

        <!-- 문의하기 모달 -->
        <div id="contactModal" class="hidden fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
          <div class="bg-white rounded-xl shadow-2xl max-w-md w-full m-4">
            <div class="border-b px-6 py-4 flex justify-between items-center">
              <h3 class="text-xl font-bold text-gray-800">
                <i class="fas fa-envelope text-teal-600 mr-2"></i>
                시설에 문의하기
              </h3>
              <button onclick="closeContactModal()" class="text-gray-500 hover:text-gray-700">
                <i class="fas fa-times text-2xl"></i>
              </button>
            </div>
            <div id="contactModalContent" class="p-6">
              <!-- 문의 폼 내용 -->
            </div>
          </div>
        </div>

        <!-- 리뷰 작성 모달 -->
        <div id="reviewModal" class="hidden fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
          <div class="bg-white rounded-xl shadow-2xl max-w-lg w-full m-4">
            <div class="border-b px-6 py-4 flex justify-between items-center">
              <h3 class="text-xl font-bold text-gray-800">
                <i class="fas fa-star text-yellow-500 mr-2"></i>
                시설 이용 후기 작성
              </h3>
              <button onclick="closeReviewModal()" class="text-gray-500 hover:text-gray-700">
                <i class="fas fa-times text-2xl"></i>
              </button>
            </div>
            <div class="p-6">
              <form id="reviewForm" onsubmit="event.preventDefault(); submitReview();">
                <input type="hidden" id="reviewResponseId" value="">
                
                <!-- 별점 선택 -->
                <div class="mb-6">
                  <label class="block text-sm font-medium text-gray-700 mb-3">
                    <i class="fas fa-star text-yellow-500"></i> 별점 평가 <span class="text-red-500">*</span>
                  </label>
                  <div class="flex items-center space-x-2">
                    <div class="flex space-x-1" id="starRating">
                      ${[1,2,3,4,5].map(i => `
                        <button type="button" onclick="setRating(${i})" 
                          class="star-btn text-4xl text-gray-300 hover:text-yellow-400 transition-colors"
                          data-rating="${i}">
                          ★
                        </button>
                      `).join('')}
                    </div>
                    <span id="ratingText" class="text-sm text-gray-500 ml-3"></span>
                  </div>
                  <input type="hidden" id="reviewRating" required>
                </div>

                <!-- 리뷰 제목 (선택) -->
                <div class="mb-4">
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-heading text-gray-500"></i> 제목 (선택사항)
                  </label>
                  <input
                    type="text"
                    id="reviewTitle"
                    maxlength="50"
                    class="w-full px-4 py-2 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-yellow-500"
                    placeholder="예: 친절하고 깨끗한 시설이었습니다"
                  >
                </div>

                <!-- 리뷰 내용 -->
                <div class="mb-4">
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-comment text-gray-500"></i> 이용 후기 <span class="text-red-500">*</span>
                  </label>
                  <textarea
                    id="reviewContent"
                    rows="6"
                    required
                    minlength="10"
                    class="w-full px-4 py-2 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-yellow-500"
                    placeholder="시설을 이용하시면서 느낀 점을 솔직하게 작성해주세요. (최소 10자 이상)&#10;&#10;예시:&#10;- 직원분들이 매우 친절하셨고, 시설도 깨끗했습니다.&#10;- 식사 품질이 좋았고, 의료 서비스도 만족스러웠습니다.&#10;- 가격 대비 서비스가 훌륭했습니다."
                  ></textarea>
                  <p class="text-xs text-gray-500 mt-1">
                    <i class="fas fa-info-circle"></i> 작성하신 리뷰는 관리자 승인 후 공개됩니다.
                  </p>
                </div>

                <div class="bg-blue-50 p-4 rounded-lg mb-6">
                  <p class="text-sm text-blue-800">
                    <i class="fas fa-shield-alt mr-2"></i>
                    <strong>실제 이용자 인증 리뷰</strong>입니다. 다른 고객들에게 도움이 되는 솔직한 후기를 남겨주세요.
                  </p>
                </div>

                <div class="flex gap-3">
                  <button
                    type="button"
                    onclick="closeReviewModal()"
                    class="flex-1 px-6 py-3 border-2 border-gray-300 rounded-lg hover:bg-gray-50 transition-colors"
                  >
                    취소
                  </button>
                  <button
                    type="submit"
                    class="flex-1 px-6 py-3 bg-yellow-500 text-white rounded-lg hover:bg-yellow-600 transition-colors font-medium"
                  >
                    <i class="fas fa-check mr-2"></i>
                    리뷰 등록
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>

        <script>
          let compareMode = false;
          let selectedQuotes = new Set();
          const quotesData = ${JSON.stringify(responsesData)};

          function getStatusBadge(status) {
            const statusMap = {
              'sent': { text: '전송됨', color: 'blue' },
              'viewed': { text: '확인됨', color: 'green' },
              'accepted': { text: '수락됨', color: 'purple' },
              'rejected': { text: '거절됨', color: 'red' }
            };
            
            const statusInfo = statusMap[status] || { text: status, color: 'gray' };
            
            return \`
              <span class="px-3 py-1 bg-\${statusInfo.color}-100 text-\${statusInfo.color}-800 text-xs font-semibold rounded-full">
                \${statusInfo.text}
              </span>
            \`;
          }

          function toggleCompareMode() {
            compareMode = !compareMode;
            const checkboxes = document.querySelectorAll('.compare-checkbox');
            const comparePanel = document.getElementById('comparePanel');
            const compareBtn = document.getElementById('compareBtn');
            
            if (compareMode) {
              checkboxes.forEach(cb => cb.classList.remove('hidden'));
              comparePanel.classList.remove('hidden');
              if (compareBtn) compareBtn.classList.add('bg-teal-600', 'text-white');
            } else {
              checkboxes.forEach(cb => {
                cb.classList.add('hidden');
                cb.querySelector('input').checked = false;
              });
              comparePanel.classList.add('hidden');
              if (compareBtn) compareBtn.classList.remove('bg-teal-600', 'text-white');
              selectedQuotes.clear();
              updateCompareSelection();
            }
          }

          function updateCompareSelection() {
            const checks = document.querySelectorAll('.compare-check:checked');
            selectedQuotes = new Set([...checks].map(c => parseInt(c.dataset.index)));
            
            document.getElementById('selectedCount').textContent = selectedQuotes.size;
            document.getElementById('compareConfirmBtn').disabled = selectedQuotes.size < 2;
          }

          function compareSelected() {
            if (selectedQuotes.size < 2) {
              alert('최소 2개 이상의 견적서를 선택해주세요.');
              return;
            }

            const selectedData = [...selectedQuotes].map(i => quotesData[i]);
            
            // 비교 표 생성
            const compareHtml = generateCompareTable(selectedData);
            
            // 모달로 표시
            showCompareModal(compareHtml);
          }

          function generateCompareTable(quotes) {
            const priceFormatter = new Intl.NumberFormat('ko-KR');
            
            return \`
              <div class="overflow-x-auto">
                <table class="w-full border-collapse">
                  <thead>
                    <tr class="bg-gray-100">
                      <th class="border p-3 text-left">항목</th>
                      \${quotes.map((_, i) => \`<th class="border p-3 text-center">시설 #\${i + 1}</th>\`).join('')}
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td class="border p-3 font-semibold">월 비용</td>
                      \${quotes.map(q => \`<td class="border p-3 text-center font-bold text-teal-600">월 \${priceFormatter.format(q.estimated_price)}원</td>\`).join('')}
                    </tr>
                    <tr class="bg-gray-50">
                      <td class="border p-3 font-semibold">서비스 상세</td>
                      \${quotes.map(q => \`<td class="border p-3 text-sm">\${q.service_details || '-'}</td>\`).join('')}
                    </tr>
                    <tr>
                      <td class="border p-3 font-semibold">가용 병상/객실</td>
                      \${quotes.map(q => \`<td class="border p-3 text-sm text-center">\${q.available_rooms || '-'}</td>\`).join('')}
                    </tr>
                    <tr class="bg-gray-50">
                      <td class="border p-3 font-semibold">특별 서비스</td>
                      \${quotes.map(q => \`<td class="border p-3 text-sm">\${q.special_services || '-'}</td>\`).join('')}
                    </tr>
                    <tr>
                      <td class="border p-3 font-semibold">담당자</td>
                      \${quotes.map(q => \`<td class="border p-3 text-sm text-center">\${q.contact_person || '담당자'}<br/>\${q.contact_phone}</td>\`).join('')}
                    </tr>
                  </tbody>
                </table>
              </div>
            \`;
          }

          function showCompareModal(html) {
            const modal = document.createElement('div');
            modal.className = 'fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50 p-4';
            modal.innerHTML = \`
              <div class="bg-white rounded-xl shadow-2xl max-w-6xl w-full max-h-[90vh] overflow-y-auto">
                <div class="sticky top-0 bg-white border-b px-6 py-4 flex justify-between items-center">
                  <h3 class="text-2xl font-bold text-gray-800">
                    <i class="fas fa-balance-scale text-teal-600 mr-2"></i>
                    견적서 비교
                  </h3>
                  <button onclick="this.closest('.fixed').remove()" class="text-gray-500 hover:text-gray-700">
                    <i class="fas fa-times text-2xl"></i>
                  </button>
                </div>
                <div class="p-6">
                  \${html}
                </div>
              </div>
            \`;
            document.body.appendChild(modal);
          }

          async function openMessageModal(responseId) {
            const response = responsesData.find(r => r.response_id === responseId);
            if (!response) {
              alert('견적서를 찾을 수 없습니다.');
              return;
            }
            
            const modal = document.getElementById('contactModal');
            const content = document.getElementById('contactModalContent');
            
            content.innerHTML = \`
              <form onsubmit="handleSendMessage(event, '\${responseId}')" class="space-y-4">
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-pen text-blue-500"></i> 문의 내용
                  </label>
                  <textarea id="contactMessage" rows="5" required
                    placeholder="예: 치매 케어 프로그램에 대해 더 자세히 알고 싶습니다. 입소 가능한 날짜는 언제인가요?"
                    class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-blue-500"></textarea>
                  <p class="text-xs text-gray-500 mt-1">
                    궁금하신 점을 자유롭게 작성해주세요. 시설에서 확인 후 답변드립니다.
                  </p>
                </div>
                
                <div class="bg-blue-50 p-4 rounded-lg">
                  <p class="text-sm text-blue-800">
                    <i class="fas fa-info-circle mr-2"></i>
                    문의 내용은 \${response.contact_person || '시설 담당자'}에게 직접 전달됩니다.
                  </p>
                </div>

                <div class="flex space-x-3">
                  <button type="button" onclick="closeContactModal()"
                    class="flex-1 px-6 py-3 border-2 border-gray-300 rounded-lg text-gray-700 hover:bg-gray-50 transition-colors">
                    취소
                  </button>
                  <button type="submit"
                    class="flex-1 px-6 py-3 bg-blue-500 text-white rounded-lg hover:bg-blue-600 transition-colors font-semibold">
                    <i class="fas fa-paper-plane mr-2"></i>문의 전송
                  </button>
                </div>
              </form>
            \`;
            
            modal.classList.remove('hidden');
          }

          function closeContactModal() {
            document.getElementById('contactModal').classList.add('hidden');
          }

          async function handleSendMessage(event, responseId) {
            event.preventDefault();
            const message = document.getElementById('contactMessage').value.trim();
            
            if (!message) {
              alert('메시지 내용을 입력해주세요.');
              return;
            }

            try {
              const response = await fetch('/api/messages/send', {
              method: 'POST',
              headers: { 'Content-Type': 'application/json' },
              credentials: 'include',
                body: JSON.stringify({
                  responseId,
                  message: message
                })
              });

              const result = await response.json();

              if (result.success) {
                alert('문의가 전송되었습니다. 담당자가 확인 후 답변드립니다.');
                closeContactModal();
              } else {
                alert(result.message || '메시지 전송 실패');
              }
            } catch (error) {
              console.error('메시지 전송 오류:', error);
              alert('메시지 전송 중 오류가 발생했습니다.');
            }
            closeContactModal();
          }

          // 리뷰 모달 관련 함수
          let currentRating = 0;

          function openReviewModal(responseId) {
            document.getElementById('reviewResponseId').value = responseId;
            document.getElementById('reviewModal').classList.remove('hidden');
            currentRating = 0;
            updateStarDisplay();
          }

          function closeReviewModal() {
            document.getElementById('reviewModal').classList.add('hidden');
            document.getElementById('reviewForm').reset();
            currentRating = 0;
            updateStarDisplay();
          }

          function setRating(rating) {
            currentRating = rating;
            document.getElementById('reviewRating').value = rating;
            updateStarDisplay();
          }

          function updateStarDisplay() {
            const stars = document.querySelectorAll('.star-btn');
            stars.forEach((star, index) => {
              if (index < currentRating) {
                star.classList.remove('text-gray-300');
                star.classList.add('text-yellow-400');
              } else {
                star.classList.remove('text-yellow-400');
                star.classList.add('text-gray-300');
              }
            });

            const ratingText = document.getElementById('ratingText');
            const ratingTexts = ['', '매우 불만족', '불만족', '보통', '만족', '매우 만족'];
            ratingText.textContent = currentRating > 0 ? ratingTexts[currentRating] : '별점을 선택해주세요';
          }

          async function submitReview() {
            const responseId = document.getElementById('reviewResponseId').value;
            const rating = document.getElementById('reviewRating').value;
            const title = document.getElementById('reviewTitle').value.trim();
            const content = document.getElementById('reviewContent').value.trim();

            if (!rating) {
              alert('별점을 선택해주세요.');
              return;
            }

            if (content.length < 10) {
              alert('리뷰는 최소 10자 이상 작성해주세요.');
              return;
            }

            try {
              const response = await fetch('/api/reviews/create', {
              method: 'POST',
              headers: { 'Content-Type': 'application/json' },
              credentials: 'include',
                body: JSON.stringify({
                  responseId,
                  rating: parseInt(rating),
                  title,
                  content
                })
              });

              const result = await response.json();

              if (result.success) {
                alert('리뷰가 등록되었습니다! 관리자 승인 후 공개됩니다.');
                closeReviewModal();
                // 페이지 새로고침하여 리뷰 반영
                location.reload();
              } else {
                alert(result.message || '리뷰 등록에 실패했습니다.');
              }
            } catch (error) {
              console.error('리뷰 등록 오류:', error);
              alert('리뷰 등록 중 오류가 발생했습니다.');
            }
          }
        </script>
      </body>
      </html>
    `)
  } catch (error) {
    console.error('견적서 조회 오류:', error)
    console.error('견적서 조회 오류 상세:', {
      message: error.message,
      stack: error.stack,
      quoteId: quoteId
    })
    return c.html(`
      <!DOCTYPE html>
      <html lang="ko">
      <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>오류 발생 - 케어조아</title>
        <link href="/static/tailwind.css" rel="stylesheet">
      </head>
      <body class="bg-gray-50 flex items-center justify-center min-h-screen">
        <div class="text-center">
          <i class="fas fa-exclamation-circle text-6xl text-red-500 mb-4"></i>
          <h1 class="text-2xl font-bold text-gray-800 mb-2">오류가 발생했습니다</h1>
          <p class="text-gray-600 mb-6">견적서를 불러오는 중 문제가 발생했습니다.</p>
          <a href="/dashboard/customer" class="px-6 py-3 bg-teal-600 text-white rounded-lg hover:bg-teal-700">
            대시보드로 돌아가기
          </a>
        </div>
      </body>
      </html>
    `)
  }
})

// ========== 프로필 관리 ==========

// 프로필 조회 페이지
app.get('/profile', async (c) => {
  const user = await getUser(c)
  
  if (!user) {
    return c.redirect('/login')
  }

  const userTypeLabel = user.type === 'customer' ? '고객' : '시설'
  const dashboardUrl = user.type === 'customer' ? '/dashboard/customer' : '/dashboard/facility'

  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>프로필 관리 - 케어조아</title>
      <link href="/static/tailwind.css" rel="stylesheet">
      <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet">
    </head>
    <body class="bg-gray-50">
      <header class="bg-white shadow-sm border-b">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div class="flex justify-between items-center h-16">
            <div class="flex items-center">
              <img src="https://page.gensparksite.com/v1/base64_upload/b39dca8586af1dacd6d8417554313896" 
                   alt="케어조아 로고" class="h-8 w-auto mr-3" />
              <h1 class="text-2xl font-bold text-teal-600">케어조아</h1>
            </div>
            <div class="flex items-center space-x-4">
              <a href="${dashboardUrl}" class="text-gray-600 hover:text-gray-900">
                <i class="fas fa-arrow-left mr-1"></i>대시보드로
              </a>
            </div>
          </div>
        </div>
      </header>

      <div class="max-w-4xl mx-auto px-4 py-8">
        <h2 class="text-3xl font-bold text-gray-800 mb-8">
          <i class="fas fa-user-cog text-teal-600 mr-3"></i>
          프로필 관리
        </h2>

        <div class="bg-white rounded-xl shadow-md p-8 mb-6">
          <h3 class="text-xl font-bold text-gray-800 mb-6">기본 정보</h3>
          
          <form id="profileForm" onsubmit="handleUpdateProfile(event)">
            <div class="space-y-4">
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">가입 유형</label>
                <input type="text" value="${userTypeLabel}" disabled
                  class="w-full px-4 py-3 border border-gray-300 rounded-lg bg-gray-100" />
              </div>

              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">이메일</label>
                <input type="email" value="${user.email}" disabled
                  class="w-full px-4 py-3 border border-gray-300 rounded-lg bg-gray-100" />
              </div>

              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">이름 *</label>
                <input type="text" id="name" value="${user.name}" required
                  class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500" />
              </div>

              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">연락처 *</label>
                <input type="tel" id="phone" value="${user.phone}" required
                  class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500" />
              </div>

              ${user.type === 'facility' ? `
              <div class="pt-4 border-t">
                <h4 class="font-bold text-gray-800 mb-4">시설 정보</h4>
                
                <div class="space-y-4">
                  <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2">시설 유형</label>
                    <input type="text" value="${user.facilityType || ''}" disabled
                      class="w-full px-4 py-3 border border-gray-300 rounded-lg bg-gray-100" />
                  </div>

                  <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2">시설 주소 *</label>
                    <input type="text" id="address" value="${user.address || ''}" required
                      class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500" />
                  </div>

                  <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2">사업자등록번호</label>
                    <input type="text" id="businessNumber" value="${user.businessNumber || ''}"
                      class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500" />
                  </div>
                </div>
              </div>
              ` : ''}

              <div class="flex gap-4 pt-6">
                <button type="submit"
                  class="flex-1 bg-teal-600 text-white py-3 rounded-lg hover:bg-teal-700 transition-colors font-semibold">
                  <i class="fas fa-save mr-2"></i>저장
                </button>
                <button type="button" onclick="window.location.href='${dashboardUrl}'"
                  class="flex-1 bg-gray-500 text-white py-3 rounded-lg hover:bg-gray-600 transition-colors font-semibold">
                  <i class="fas fa-times mr-2"></i>취소
                </button>
              </div>
            </div>
          </form>
        </div>

        <div class="bg-white rounded-xl shadow-md p-8">
          <h3 class="text-xl font-bold text-gray-800 mb-6">비밀번호 변경</h3>
          
          <form id="passwordForm" onsubmit="handleChangePassword(event)">
            <div class="space-y-4">
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">현재 비밀번호 *</label>
                <input type="password" id="currentPassword" required
                  class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500" />
              </div>

              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">새 비밀번호 *</label>
                <input type="password" id="newPassword" required minlength="8"
                  class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500" />
              </div>

              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">새 비밀번호 확인 *</label>
                <input type="password" id="newPasswordConfirm" required minlength="8"
                  class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500" />
              </div>

              <button type="submit"
                class="w-full bg-blue-600 text-white py-3 rounded-lg hover:bg-blue-700 transition-colors font-semibold">
                <i class="fas fa-key mr-2"></i>비밀번호 변경
              </button>
            </div>
          </form>
        </div>
      </div>

      <script>
        async function handleUpdateProfile(event) {
          event.preventDefault();

          const data = {
            name: document.getElementById('name').value,
            phone: document.getElementById('phone').value
          };

          const addressField = document.getElementById('address');
          const businessNumberField = document.getElementById('businessNumber');
          
          if (addressField) {
            data.address = addressField.value;
          }
          if (businessNumberField) {
            data.businessNumber = businessNumberField.value;
          }

          try {
            const response = await fetch('/api/profile/update', {
              method: 'POST',
              headers: { 'Content-Type': 'application/json' },
              credentials: 'include',
              body: JSON.stringify(data)
            });

            const result = await response.json();

            if (result.success) {
              alert('프로필이 업데이트되었습니다.');
              location.reload();
            } else {
              alert(result.message || '프로필 업데이트 실패');
            }
          } catch (error) {
            alert('프로필 업데이트 중 오류가 발생했습니다.');
            console.error(error);
          }
        }

        async function handleChangePassword(event) {
          event.preventDefault();

          const currentPassword = document.getElementById('currentPassword').value;
          const newPassword = document.getElementById('newPassword').value;
          const newPasswordConfirm = document.getElementById('newPasswordConfirm').value;

          if (newPassword !== newPasswordConfirm) {
            alert('새 비밀번호가 일치하지 않습니다.');
            return;
          }

          try {
            const response = await fetch('/api/profile/change-password', {
              method: 'POST',
              headers: { 'Content-Type': 'application/json' },
              credentials: 'include',
              body: JSON.stringify({ currentPassword, newPassword })
            });

            const result = await response.json();

            if (result.success) {
              alert('비밀번호가 변경되었습니다.');
              document.getElementById('passwordForm').reset();
            } else {
              alert(result.message || '비밀번호 변경 실패');
            }
          } catch (error) {
            alert('비밀번호 변경 중 오류가 발생했습니다.');
            console.error(error);
          }
        }

        // 메시지 모달 관련 함수
        function openMessageModal(responseId) {
          const response = responsesData.find(r => r.response_id === responseId);
          if (!response) {
            alert('견적서를 찾을 수 없습니다.');
            return;
          }
          
          document.getElementById('messageResponseId').value = responseId;
          document.getElementById('messageFacilityName').textContent = response.contact_person || '시설';
          document.getElementById('messageModal').classList.remove('hidden');
        }

        function closeMessageModal() {
          document.getElementById('messageModal').classList.add('hidden');
          document.getElementById('messageForm').reset();
        }

        async function sendMessage() {
          const responseId = document.getElementById('messageResponseId').value;
          const messageContent = document.getElementById('messageContent').value.trim();

          if (!messageContent) {
            alert('메시지 내용을 입력해주세요.');
            return;
          }

          try {
            const response = await fetch('/api/messages/send', {
              method: 'POST',
              headers: { 'Content-Type': 'application/json' },
              credentials: 'include',
              body: JSON.stringify({
                responseId,
                message: messageContent
              })
            });

            const result = await response.json();

            if (result.success) {
              alert('메시지가 전송되었습니다.');
              closeMessageModal();
            } else {
              alert(result.message || '메시지 전송 실패');
            }
          } catch (error) {
            console.error('메시지 전송 오류:', error);
            alert('메시지 전송 중 오류가 발생했습니다.');
          }
        }
      </script>
    </body>
    </html>
  `)
})

// 프로필 업데이트 API
app.post('/api/profile/update', async (c) => {
  const user = await getUser(c)
  if (!user) {
    return c.json({ success: false, message: '로그인이 필요합니다.' }, 401)
  }

  const data = await c.req.json()
  
  // 실제 사용자 객체 찾기 및 업데이트
  const userIndex = dataStore.users.findIndex(u => u.id === user.id)
  if (userIndex === -1) {
    return c.json({ success: false, message: '사용자를 찾을 수 없습니다.' })
  }

  dataStore.users[userIndex].name = data.name
  dataStore.users[userIndex].phone = data.phone
  
  if (user.type === 'facility') {
    if (data.address) dataStore.users[userIndex].address = data.address
    if (data.businessNumber) dataStore.users[userIndex].businessNumber = data.businessNumber
  }

  // 세션 업데이트
  const sessionId = getCookie(c, 'user_session')
  if (sessionId) {
    dataStore.userSessions.set(sessionId, dataStore.users[userIndex])
  }

  return c.json({ success: true, message: '프로필이 업데이트되었습니다.' })
})

// 비밀번호 변경 API
app.post('/api/profile/change-password', async (c) => {
  const user = await getUser(c)
  if (!user) {
    return c.json({ success: false, message: '로그인이 필요합니다.' }, 401)
  }

  const { currentPassword, newPassword } = await c.req.json()
  
  const userIndex = dataStore.users.findIndex(u => u.id === user.id)
  if (userIndex === -1) {
    return c.json({ success: false, message: '사용자를 찾을 수 없습니다.' })
  }

  if (dataStore.users[userIndex].password !== currentPassword) {
    return c.json({ success: false, message: '현재 비밀번호가 일치하지 않습니다.' })
  }

  dataStore.users[userIndex].password = newPassword

  return c.json({ success: true, message: '비밀번호가 변경되었습니다.' })
})

// ============================================
// 파트너 의뢰 API
// ============================================

// 환자/주민 의뢰 생성 API
app.post('/api/partner/referral', async (c) => {
  const user = await getUser(c)
  
  // 인증 확인
  if (!user) {
    return c.json({ success: false, message: '로그인이 필요합니다.' }, 401)
  }

  // 파트너 권한 확인
  if (user.type !== 'hospital_manager' && user.type !== 'welfare_manager') {
    return c.json({ success: false, message: '파트너 권한이 필요합니다.' }, 403)
  }

  try {
    const { env } = c
    const body = await c.req.json()
    
    // 필수 필드 검증
    const requiredFields = ['patient_name', 'patient_age', 'patient_condition', 'referral_type', 'target_facility_type', 'preferred_region', 'urgency_level']
    for (const field of requiredFields) {
      if (!body[field]) {
        return c.json({ success: false, message: `${field} 필드가 필요합니다.` }, 400)
      }
    }

    // D1 데이터베이스에 의뢰 생성
    const result = await env.DB.prepare(`
      INSERT INTO partner_referrals (
        partner_id,
        patient_name,
        patient_age,
        patient_condition,
        referral_type,
        target_facility_type,
        preferred_region,
        urgency_level,
        status,
        created_at
      ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, datetime('now'))
    `).bind(
      user.id,
      body.patient_name,
      body.patient_age,
      body.patient_condition,
      body.referral_type,
      body.target_facility_type,
      body.preferred_region,
      body.urgency_level,
      'pending'
    ).run()

    if (!result.success) {
      return c.json({ success: false, message: '의뢰 생성에 실패했습니다.' }, 500)
    }

    return c.json({
      success: true,
      message: '의뢰가 성공적으로 생성되었습니다.',
      referral_id: result.meta.last_row_id,
      status: 'pending'
    })

  } catch (error) {
    console.error('Referral creation error:', error)
    return c.json({ success: false, message: '의뢰 생성 중 오류가 발생했습니다.' }, 500)
  }
})

// 의뢰 목록 조회 API
app.get('/api/partner/referrals', async (c) => {
  const user = await getUser(c)
  
  // 인증 확인
  if (!user) {
    return c.json({ success: false, message: '로그인이 필요합니다.' }, 401)
  }

  // 파트너 권한 확인
  if (user.type !== 'hospital_manager' && user.type !== 'welfare_manager') {
    return c.json({ success: false, message: '파트너 권한이 필요합니다.' }, 403)
  }

  try {
    const { env } = c
    
    // 해당 파트너의 의뢰 목록 조회
    const result = await env.DB.prepare(`
      SELECT 
        id,
        patient_name,
        patient_age,
        patient_condition,
        referral_type,
        target_facility_type,
        preferred_region,
        urgency_level,
        status,
        matched_facility_id,
        matched_at,
        completed_at,
        created_at
      FROM partner_referrals
      WHERE partner_id = ?
      ORDER BY created_at DESC
      LIMIT 50
    `).bind(user.id).all()

    return c.json({
      success: true,
      referrals: result.results || [],
      total: result.results?.length || 0
    })

  } catch (error) {
    console.error('Referral fetch error:', error)
    return c.json({ success: false, message: '의뢰 목록 조회 중 오류가 발생했습니다.' }, 500)
  }
})

// 의뢰 상세 조회 API
app.get('/api/partner/referral/:id', async (c) => {
  const user = await getUser(c)
  
  // 인증 확인
  if (!user) {
    return c.json({ success: false, message: '로그인이 필요합니다.' }, 401)
  }

  // 파트너 권한 확인
  if (user.type !== 'hospital_manager' && user.type !== 'welfare_manager') {
    return c.json({ success: false, message: '파트너 권한이 필요합니다.' }, 403)
  }

  try {
    const { env } = c
    const referralId = c.req.param('id')
    
    // 의뢰 조회
    const result = await env.DB.prepare(`
      SELECT 
        id,
        patient_name,
        patient_age,
        patient_condition,
        referral_type,
        target_facility_type,
        preferred_region,
        urgency_level,
        status,
        matched_facility_id,
        matched_at,
        completed_at,
        created_at
      FROM partner_referrals
      WHERE id = ? AND partner_id = ?
    `).bind(referralId, user.id).first()

    if (!result) {
      return c.json({ success: false, message: '의뢰를 찾을 수 없습니다.' }, 404)
    }

    return c.json({
      success: true,
      referral: result
    })

  } catch (error) {
    console.error('Referral detail fetch error:', error)
    return c.json({ success: false, message: '의뢰 조회 중 오류가 발생했습니다.' }, 500)
  }
})

// 긴급 전원 요청 페이지 (간단 버전)
app.get('/emergency-transfer', (c) => {
  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>긴급 전원 요청 - 케어조아</title>
      <link href="/static/tailwind.css" rel="stylesheet">
      <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet">
    </head>
    <body class="bg-gray-50">
      <div class="max-w-3xl mx-auto p-6">
        <div class="bg-white rounded-xl shadow-lg p-8">
          <h1 class="text-3xl font-bold text-gray-800 mb-2">
            <i class="fas fa-ambulance text-red-500 mr-2"></i>
            긴급 전원 요청
          </h1>
          <p class="text-gray-600 mb-6">상급병원에서 요양시설로의 긴급 전원을 지원합니다</p>

          <form id="emergencyForm" class="space-y-6">
            <!-- 긴급도 선택 -->
            <div class="bg-yellow-50 border-2 border-yellow-200 rounded-lg p-4">
              <label class="block text-sm font-bold text-gray-700 mb-3">
                <i class="fas fa-exclamation-triangle text-yellow-500"></i> 긴급도 선택 *
              </label>
              <div class="space-y-2">
                <label class="flex items-center p-3 border-2 rounded-lg cursor-pointer hover:bg-white">
                  <input type="radio" name="urgencyLevel" value="critical" class="mr-3" required>
                  <div>
                    <span class="font-bold text-red-600">🔴 극긴급 (6시간 이내)</span>
                    <p class="text-sm text-gray-600">즉시 입소 필요</p>
                  </div>
                </label>
                <label class="flex items-center p-3 border-2 rounded-lg cursor-pointer hover:bg-white">
                  <input type="radio" name="urgencyLevel" value="urgent" class="mr-3">
                  <div>
                    <span class="font-bold text-orange-600">🟠 긴급 (24시간 이내)</span>
                    <p class="text-sm text-gray-600">하루 내 입소 필요</p>
                  </div>
                </label>
                <label class="flex items-center p-3 border-2 rounded-lg cursor-pointer hover:bg-white">
                  <input type="radio" name="urgencyLevel" value="normal" class="mr-3">
                  <div>
                    <span class="font-bold text-green-600">🟢 일반 (1주일 이내)</span>
                    <p class="text-sm text-gray-600">여유있게 준비</p>
                  </div>
                </label>
              </div>
            </div>

            <!-- 환자 정보 -->
            <div class="border-2 border-gray-200 rounded-lg p-4">
              <h3 class="font-bold text-gray-700 mb-4">
                <i class="fas fa-user-injured text-blue-500"></i> 환자 정보
              </h3>
              <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                <input type="text" name="patientName" placeholder="환자 성명 *" required
                  class="px-4 py-2 border-2 rounded-lg focus:outline-none focus:border-blue-500">
                <input type="number" name="patientAge" placeholder="나이"
                  class="px-4 py-2 border-2 rounded-lg focus:outline-none focus:border-blue-500">
                <select name="patientGender" class="px-4 py-2 border-2 rounded-lg focus:outline-none focus:border-blue-500">
                  <option value="">성별 선택</option>
                  <option value="남성">남성</option>
                  <option value="여성">여성</option>
                </select>
                <input type="text" name="careLevel" placeholder="요양등급 (예: 1등급)"
                  class="px-4 py-2 border-2 rounded-lg focus:outline-none focus:border-blue-500">
              </div>
              <textarea name="diagnosis" placeholder="진단명 (예: 뇌경색)" rows="2"
                class="w-full mt-4 px-4 py-2 border-2 rounded-lg focus:outline-none focus:border-blue-500"></textarea>
              <textarea name="specialNotes" placeholder="특이사항 (예: 욕창, 기관절개 등)" rows="3"
                class="w-full mt-4 px-4 py-2 border-2 rounded-lg focus:outline-none focus:border-blue-500"></textarea>
            </div>

            <!-- 요청자 정보 -->
            <div class="border-2 border-gray-200 rounded-lg p-4">
              <h3 class="font-bold text-gray-700 mb-4">
                <i class="fas fa-hospital text-green-500"></i> 요청자 정보
              </h3>
              <div class="grid grid-cols-1 gap-4">
                <select name="requesterType" required class="px-4 py-2 border-2 rounded-lg focus:outline-none focus:border-blue-500">
                  <option value="">요청자 유형 선택 *</option>
                  <option value="hospital">병원 (의사/간호사)</option>
                  <option value="social_worker">사회복지사</option>
                  <option value="family">보호자</option>
                </select>
                <input type="text" name="requesterName" placeholder="요청자 성명 *" required
                  class="px-4 py-2 border-2 rounded-lg focus:outline-none focus:border-blue-500">
                <input type="tel" name="requesterPhone" placeholder="연락처 * (예: 010-1234-5678)" required
                  class="px-4 py-2 border-2 rounded-lg focus:outline-none focus:border-blue-500">
                <input type="email" name="requesterEmail" placeholder="이메일"
                  class="px-4 py-2 border-2 rounded-lg focus:outline-none focus:border-blue-500">
                <input type="text" name="hospitalName" placeholder="병원명 (해당시)"
                  class="px-4 py-2 border-2 rounded-lg focus:outline-none focus:border-blue-500">
              </div>
            </div>

            <button type="submit" class="w-full py-4 bg-red-600 text-white rounded-lg font-bold text-lg hover:bg-red-700 transition-colors">
              <i class="fas fa-paper-plane mr-2"></i>
              긴급 전원 요청 접수
            </button>
          </form>
        </div>
      </div>

      <script src="https://cdn.jsdelivr.net/npm/axios@1.6.0/dist/axios.min.js"></script>
      <script>
        document.getElementById('emergencyForm').addEventListener('submit', async (e) => {
          e.preventDefault();
          
          const formData = new FormData(e.target);
          const data = {
            urgencyLevel: formData.get('urgencyLevel'),
            patientName: formData.get('patientName'),
            patientAge: formData.get('patientAge') ? parseInt(formData.get('patientAge')) : null,
            patientGender: formData.get('patientGender') || null,
            diagnosis: formData.get('diagnosis') || null,
            careLevel: formData.get('careLevel') || null,
            specialNotes: formData.get('specialNotes') || null,
            requesterType: formData.get('requesterType'),
            requesterName: formData.get('requesterName'),
            requesterPhone: formData.get('requesterPhone'),
            requesterEmail: formData.get('requesterEmail') || null,
            hospitalName: formData.get('hospitalName') || null
          };

          try {
            const response = await axios.post('/api/emergency/create', data);
            
            if (response.data.success) {
              alert(\`✅ 긴급 전원 요청이 접수되었습니다!\\n\\n요청 번호: \${response.data.transferId}\\n긴급도: \${response.data.urgencyLevel}\\n\\n담당자가 곧 연락드리겠습니다.\`);
              window.location.href = '/';
            } else {
              alert('❌ ' + response.data.message);
            }
          } catch (error) {
            console.error('Error:', error);
            alert('❌ 요청 처리 중 오류가 발생했습니다.');
          }
        });
      </script>
    </body>
    </html>
  `)
})

// ========== 대표시설 자동 업데이트 로직 ==========

/**
 * 평점순/리뷰순으로 대표시설 자동 업데이트
 * - 각 지역(sido + sigungu) + 시설 유형별로 TOP 1 시설을 대표로 설정
 * - 점수 계산: 평균평점(70%) + 리뷰수(30%)
 * - 최소 기준: 리뷰 3개 이상, 평점 3.0 이상
 */
async function updateRepresentativeFacilities(db: D1Database) {
  console.log('[대표시설 자동 업데이트] 시작')
  
  try {
    // Step 1: 각 시설의 평점 및 리뷰수 기반 점수 계산
    const topFacilities = await db.prepare(`
      WITH facility_stats AS (
        SELECT 
          f.id,
          f.name,
          f.facility_type,
          f.sido,
          f.sigungu,
          f.address,
          f.phone,
          COUNT(r.id) as review_count,
          COALESCE(AVG(r.rating), 0) as avg_rating,
          -- 점수 = 평균평점(70%) + 리뷰수 정규화(30%)
          COALESCE(
            (AVG(r.rating) / 5.0) * 0.7 + 
            (COUNT(r.id) * 1.0 / NULLIF(MAX(COUNT(r.id)) OVER (PARTITION BY f.sido, f.sigungu, f.facility_type), 0)) * 0.3,
            0
          ) as representative_score
        FROM facilities f
        LEFT JOIN reviews r ON f.id = r.facility_id 
          AND r.status = 'approved'
        WHERE 1=1
        GROUP BY f.id, f.name, f.facility_type, f.sido, f.sigungu, f.address, f.phone
        HAVING COUNT(r.id) >= 3  -- 최소 3개 리뷰
          AND COALESCE(AVG(r.rating), 0) >= 3.0  -- 최소 평점 3.0
      ),
      
      -- Step 2: 각 지역 + 시설 유형별 TOP 1 선정
      top_facilities AS (
        SELECT *,
          ROW_NUMBER() OVER (
            PARTITION BY sido, sigungu, facility_type 
            ORDER BY representative_score DESC, review_count DESC
          ) as rank
        FROM facility_stats
      )
      
      SELECT 
        id as facility_id,
        name as facility_name,
        facility_type,
        sido,
        sigungu,
        address,
        phone,
        review_count,
        ROUND(avg_rating, 2) as avg_rating,
        ROUND(representative_score, 4) as score
      FROM top_facilities
      WHERE rank = 1
      ORDER BY sido, sigungu, facility_type
    `).all()
    
    let updated = 0
    
    if (topFacilities.results && topFacilities.results.length > 0) {
      // Step 3: 기존 대표시설 플래그 제거
      await db.prepare(`UPDATE partners SET is_regional_center = 0`).run()
      
      // Step 4: 새로운 대표시설 등록 또는 업데이트
      for (const facility of topFacilities.results as any[]) {
        const regionKey = `${facility.sido}_${facility.sigungu}_${facility.facility_type}`
        const partnerId = `AUTO_${facility.facility_id}`
        
        await db.prepare(`
          INSERT INTO partners (
            id, facility_name, facility_type, 
            facility_sido, facility_sigungu, facility_address,
            manager_name, manager_phone, region_key, is_regional_center
          ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 1)
          ON CONFLICT(id) DO UPDATE SET 
            is_regional_center = 1,
            updated_at = CURRENT_TIMESTAMP
        `).bind(
          partnerId,
          facility.facility_name,
          facility.facility_type,
          facility.sido,
          facility.sigungu,
          facility.address,
          '자동선정 대표시설',
          facility.phone || '1544-0000',
          regionKey
        ).run()
        
        updated++
      }
      
      console.log(`[대표시설 자동 업데이트] 완료: ${updated}개 시설 업데이트`)
    } else {
      console.log('[대표시설 자동 업데이트] 조건을 만족하는 시설이 없습니다 (리뷰 데이터 부족)')
    }
    
    return { success: true, updated }
  } catch (error) {
    console.error('[대표시설 자동 업데이트] 오류:', error)
    return { success: false, error: String(error) }
  }
}

// 대표시설 업데이트 API (관리자 전용)
app.post('/api/admin/update-representative-facilities', async (c) => {
  const db = c.env.DB
  
  if (!db) {
    return c.json({ success: false, message: '데이터베이스 연결 실패' }, 500)
  }
  
  const result = await updateRepresentativeFacilities(db)
  
  return c.json(result)
})

// 현재 대표시설 목록 조회 API (지역별 필터링 지원)
app.get('/api/representative-facilities', async (c) => {
  const db = c.env.DB
  
  if (!db) {
    return c.json({ success: false, message: '데이터베이스 연결 실패' }, 500)
  }
  
  const sido = c.req.query('sido')
  const sigungu = c.req.query('sigungu')
  
  try {
    let query = `
      SELECT 
        id,
        facility_name,
        facility_type,
        facility_sido,
        facility_sigungu,
        facility_address,
        manager_phone,
        region_key,
        created_at,
        updated_at
      FROM partners
      WHERE is_regional_center = 1
    `
    const params: string[] = []
    
    // 지역 필터링
    if (sido) {
      query += ` AND facility_sido = ?`
      params.push(sido)
    }
    
    if (sigungu) {
      query += ` AND facility_sigungu = ?`
      params.push(sigungu)
    }
    
    query += ` ORDER BY facility_type`
    
    const stmt = db.prepare(query)
    const facilities = params.length > 0 
      ? await stmt.bind(...params).all()
      : await stmt.all()
    
    return c.json({
      success: true,
      count: facilities.results?.length || 0,
      facilities: facilities.results || [],
      filters: {
        sido: sido || null,
        sigungu: sigungu || null
      }
    })
  } catch (error) {
    console.error('[대표시설 조회] 오류:', error)
    return c.json({ success: false, message: '조회 실패' }, 500)
  }
})

// ========== Phase 1: 스마트 매칭 API ==========

// 거리 계산 함수 (Haversine formula)
function calculateDistance(lat1: number, lon1: number, lat2: number, lon2: number): number {
  const R = 6371 // 지구 반지름 (km)
  const dLat = (lat2 - lat1) * Math.PI / 180
  const dLon = (lon2 - lon1) * Math.PI / 180
  const a = 
    Math.sin(dLat/2) * Math.sin(dLat/2) +
    Math.cos(lat1 * Math.PI / 180) * Math.cos(lat2 * Math.PI / 180) *
    Math.sin(dLon/2) * Math.sin(dLon/2)
  const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a))
  return R * c // 거리 (km)
}

// 장기요양등급별 월 한도액 (2025년 기준)
const CARE_GRADE_LIMITS: Record<string, number> = {
  '1등급': 1713000,
  '2등급': 1512100,
  '3등급': 1398000,
  '4등급': 1295700,
  '5등급': 1143700,
  '인지지원등급': 610500
}

// 스마트 매칭 API
app.post('/api/matching/facilities', async (c) => {
  const db = c.env.DB
  
  if (!db) {
    return c.json({ success: false, message: '데이터베이스 연결 실패' }, 500)
  }
  
  try {
    const body = await c.req.json()
    const {
      sido,
      sigungu,
      facilityType,
      careGrade,
      budgetMin,
      budgetMax,
      userLatitude,
      userLongitude,
      maxDistance = 20, // 기본 20km 반경
      specialties = null, // 전문분야 배열
      admissionTypes = null // 입소유형 배열
    } = body
    
    // 필수 파라미터 검증
    if (!sido || !sigungu || !facilityType) {
      return c.json({ 
        success: false, 
        message: '필수 파라미터가 누락되었습니다 (sido, sigungu, facilityType)' 
      }, 400)
    }
    
    // AI 매칭 API로 리디렉트 (고급 알고리즘 사용)
    const aiCriteria = {
      sido,
      sigungu,
      facilityType,
      careGrade,
      budget: budgetMax || budgetMin || null,
      userLocation: userLatitude && userLongitude ? {
        lat: parseFloat(userLatitude),
        lng: parseFloat(userLongitude)
      } : null,
      maxDistance
    }
    
    console.log('📞 /api/matching/facilities → AI 매칭으로 리디렉트:', aiCriteria)
    
    // baseUrl 추출
    const baseUrl = new URL(c.req.url).origin
    
    // 시설 데이터 로드
    const allFacilities = await loadFacilities(baseUrl)
    if (!allFacilities || allFacilities.length === 0) {
      return c.json({ success: false, message: '시설 데이터를 불러올 수 없습니다.' }, 500)
    }
    
    // 1단계: 기본 필터링 (지역 + 시설 타입)
    let filtered = allFacilities.filter((f: any) => {
      return f.sido === sido && 
             f.sigungu === sigungu && 
             f.type === facilityType
    })
    
    if (filtered.length === 0) {
      return c.json({
        success: true,
        count: 0,
        facilities: [],
        filters: aiCriteria,
        matchingInfo: {
          totalScanned: allFacilities.length,
          afterDistanceFilter: 0,
          returned: 0
        }
      })
    }
    
    // 2단계: 거리 계산
    if (userLatitude && userLongitude) {
      filtered = filtered.map((f: any) => {
        if (f.lat && f.lng) {
          const distance = calculateDistance(
            parseFloat(userLatitude),
            parseFloat(userLongitude),
            parseFloat(f.lat),
            parseFloat(f.lng)
          )
          return { ...f, distance: Math.round(distance * 10) / 10 }
        }
        return { ...f, distance: 999 }
      }).filter((f: any) => f.distance <= maxDistance)
    }
    
    // 3단계: 평점/리뷰 데이터 로드
    const facilityStats: Record<string, any> = {}
    if (filtered.length > 0 && db) {
      try {
        const facilityIds = filtered.slice(0, 100).map((f: any) => f.id)
        const statsQuery = await db.prepare(`
          SELECT 
            facility_id,
            AVG(overall_rating) as avg_rating,
            COUNT(*) as review_count,
            AVG(cleanliness_rating) as avg_cleanliness,
            AVG(staff_rating) as avg_staff,
            AVG(food_rating) as avg_food,
            AVG(facilities_rating) as avg_facilities
          FROM facility_reviews
          WHERE facility_id IN (${facilityIds.map(() => '?').join(',')})
          GROUP BY facility_id
        `).bind(...facilityIds).all()
        
        if (statsQuery.results) {
          statsQuery.results.forEach((row: any) => {
            facilityStats[row.facility_id] = {
              avgRating: Math.round((row.avg_rating || 0) * 10) / 10,
              reviewCount: row.review_count || 0,
              avgCleanliness: Math.round((row.avg_cleanliness || 0) * 10) / 10,
              avgStaff: Math.round((row.avg_staff || 0) * 10) / 10,
              avgFood: Math.round((row.avg_food || 0) * 10) / 10,
              avgFacilities: Math.round((row.avg_facilities || 0) * 10) / 10
            }
          })
        }
      } catch (error) {
        console.error('⚠️ 평점 데이터 로드 실패:', error)
      }
    }
    
    // 4단계: 협업 필터링 점수
    const collaborativeScores: Record<string, number> = {}
    if (careGrade && db) {
      try {
        const collabQuery = await db.prepare(`
          SELECT facility_id, COUNT(*) as selection_count, AVG(user_rating) as avg_user_rating
          FROM user_selections
          WHERE care_grade = ?
          GROUP BY facility_id
          HAVING selection_count >= 2
          ORDER BY selection_count DESC, avg_user_rating DESC
          LIMIT 50
        `).bind(careGrade).all()
        
        if (collabQuery.results) {
          collabQuery.results.forEach((row: any, index: number) => {
            const score = Math.min(15, (50 - index) * 0.3)
            collaborativeScores[row.facility_id] = score
          })
        }
      } catch (error) {
        console.error('⚠️ 협업 필터링 실패:', error)
      }
    }
    
    // 5단계: 상세 정보 로드
    const detailsMap: Record<string, any> = {}
    if (filtered.length > 0 && db) {
      try {
        const facilityIds = filtered.slice(0, 100).map((f: any) => f.id)
        const detailsQuery = await db.prepare(`
          SELECT facility_id, specialties, admission_types
          FROM facility_details
          WHERE facility_id IN (${facilityIds.map(() => '?').join(',')})
        `).bind(...facilityIds).all()
        
        if (detailsQuery.results) {
          detailsQuery.results.forEach((row: any) => {
            try {
              detailsMap[row.facility_id] = {
                specialties: row.specialties ? JSON.parse(row.specialties) : [],
                admissionTypes: row.admission_types ? JSON.parse(row.admission_types) : []
              }
            } catch (e) {
              detailsMap[row.facility_id] = { specialties: [], admissionTypes: [] }
            }
          })
        }
      } catch (error) {
        console.error('⚠️ 상세정보 로드 실패:', error)
      }
    }
    
    // 5.5단계: 전문분야 및 입소유형 필터링
    if (specialties && specialties.length > 0) {
      filtered = filtered.filter((f: any) => {
        const facilityDetails = detailsMap[f.id]
        if (!facilityDetails || !facilityDetails.specialties) return false
        
        // 사용자가 요청한 전문분야 중 하나라도 있으면 포함
        return specialties.some((requestedSpecialty: string) => 
          facilityDetails.specialties.includes(requestedSpecialty)
        )
      })
      console.log(`🩺 전문분야 필터링 (${specialties.join(', ')}): ${filtered.length}개`)
    }
    
    if (admissionTypes && admissionTypes.length > 0) {
      filtered = filtered.filter((f: any) => {
        const facilityDetails = detailsMap[f.id]
        if (!facilityDetails || !facilityDetails.admissionTypes) return false
        
        // 사용자가 요청한 입소유형 중 하나라도 있으면 포함
        return admissionTypes.some((requestedType: string) => 
          facilityDetails.admissionTypes.includes(requestedType)
        )
      })
      console.log(`📅 입소유형 필터링 (${admissionTypes.join(', ')}): ${filtered.length}개`)
    }
    
    // 6단계: 고급 매칭 스코어 계산
    const scored = filtered.map((facility: any) => {
      const stats = facilityStats[facility.id] || {}
      const collaborativeScore = collaborativeScores[facility.id] || 0
      const details = detailsMap[facility.id] || {}
      
      const matchScore = calculateEnhancedMatchScore(facility, aiCriteria, stats, collaborativeScore)
      const matchReasons = generateEnhancedMatchReasons(facility, aiCriteria, matchScore, stats, details)
      
      return {
        id: facility.id,
        name: facility.name,
        facility_type: facility.type,
        address: facility.address,
        sido: facility.sido,
        sigungu: facility.sigungu,
        phone: facility.phone,
        latitude: facility.lat,
        longitude: facility.lng,
        distance: facility.distance || null,
        matchScore,
        matchReasons,
        isRepresentative: facility.isRepresentative || false,
        stats,
        details
      }
    })
    
    // 7단계: 점수순 정렬 및 상위 10개
    scored.sort((a: any, b: any) => b.matchScore - a.matchScore)
    const topRecommendations = scored.slice(0, 10)
    
    console.log(`✅ 추천 완료: ${topRecommendations.length}개 시설 (최고점수: ${topRecommendations[0]?.matchScore || 0}점)`)
    
    return c.json({
      success: true,
      count: topRecommendations.length,
      facilities: topRecommendations,
      filters: aiCriteria,
      matchingInfo: {
        totalScanned: allFacilities.length,
        afterDistanceFilter: filtered.length,
        returned: topRecommendations.length
      }
    })
  } catch (error) {
    console.error('[AI 매칭 API] 오류:', error)
    return c.json({ success: false, message: '매칭 실패: ' + (error as Error).message }, 500)
  }
})

// ========== AI 맞춤 시설 찾기 페이지 ==========

app.get('/ai-matching', async (c) => {
  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>AI 맞춤 시설 찾기 - 케어조아</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet">
        <style>
          * {
            -webkit-tap-highlight-color: transparent;
            -webkit-touch-callout: none;
          }
        </style>
    </head>
    <body class="bg-gradient-to-br from-indigo-50 via-purple-50 to-pink-50 min-h-screen">
      <!-- 헤더 -->
      <header class="bg-white shadow-sm sticky top-0 z-50">
        <div class="max-w-4xl mx-auto px-4 py-4 flex items-center justify-between">
          <button onclick="history.back()" class="text-gray-600 hover:text-purple-600" aria-label="뒤로 가기">
            <i class="fas fa-arrow-left text-xl"></i>
          </button>
          <h1 class="text-lg font-bold text-gray-800">
            <i class="fas fa-robot text-purple-600 mr-2"></i>
            AI 맞춤 시설 찾기
          </h1>
          <div class="w-8"></div>
        </div>
      </header>

      <!-- 메인 컨텐츠 -->
      <main class="max-w-4xl mx-auto px-4 py-6">
        <!-- 특허 기술 설명 -->
        <div class="bg-white rounded-2xl shadow-xl p-6 mb-6 border-2 border-indigo-100">
          <div class="flex items-center mb-4">
            <div class="bg-gradient-to-r from-indigo-500 to-purple-600 rounded-full p-3 mr-3 shadow-lg">
              <i class="fas fa-certificate text-white text-xl"></i>
            </div>
            <div>
              <h2 class="text-xl font-bold text-gray-900">특허 출원 AI 매칭 시스템</h2>
              <p class="text-sm text-gray-500">특허번호: 10-2025-0058040</p>
            </div>
          </div>
          
          <div class="bg-gradient-to-br from-indigo-50 to-purple-50 rounded-xl p-5 mb-4">
            <h3 class="font-bold text-gray-800 mb-3 flex items-center">
              <i class="fas fa-brain text-indigo-600 mr-2"></i>
              12가지 매칭 변수로 정밀 분석
            </h3>
            <div class="grid sm:grid-cols-2 gap-3 text-sm">
              <div class="flex items-start">
                <i class="fas fa-check-circle text-green-500 mr-2 mt-0.5"></i>
                <span class="text-gray-700"><strong>지역 & 거리:</strong> 위치 기반 최적 매칭</span>
              </div>
              <div class="flex items-start">
                <i class="fas fa-check-circle text-green-500 mr-2 mt-0.5"></i>
                <span class="text-gray-700"><strong>시설 유형:</strong> 요양원/병원/센터</span>
              </div>
              <div class="flex items-start">
                <i class="fas fa-check-circle text-green-500 mr-2 mt-0.5"></i>
                <span class="text-gray-700"><strong>요양등급:</strong> 1~5등급 맞춤</span>
              </div>
              <div class="flex items-start">
                <i class="fas fa-check-circle text-green-500 mr-2 mt-0.5"></i>
                <span class="text-gray-700"><strong>예산 범위:</strong> 비용 최적화</span>
              </div>
              <div class="flex items-start">
                <i class="fas fa-check-circle text-green-500 mr-2 mt-0.5"></i>
                <span class="text-gray-700"><strong>시설 평점:</strong> 리뷰 데이터 반영</span>
              </div>
              <div class="flex items-start">
                <i class="fas fa-check-circle text-green-500 mr-2 mt-0.5"></i>
                <span class="text-gray-700"><strong>특화 프로그램:</strong> 맞춤 서비스</span>
              </div>
              <div class="flex items-start">
                <i class="fas fa-check-circle text-green-500 mr-2 mt-0.5"></i>
                <span class="text-gray-700"><strong>입소 가능성:</strong> 실시간 현황</span>
              </div>
              <div class="flex items-start">
                <i class="fas fa-check-circle text-green-500 mr-2 mt-0.5"></i>
                <span class="text-gray-700"><strong>협업 필터링:</strong> 유사 케이스</span>
              </div>
            </div>
          </div>
          
          <div class="grid sm:grid-cols-3 gap-3">
            <div class="bg-blue-50 rounded-lg p-4 border-l-4 border-blue-500">
              <div class="flex items-center mb-2">
                <i class="fas fa-filter text-blue-600 mr-2"></i>
                <h4 class="font-bold text-gray-800 text-sm">다단계 필터링</h4>
              </div>
              <p class="text-xs text-gray-600">기본 → 거리 → 평점 → 가격 순으로 정밀 매칭</p>
            </div>
            <div class="bg-green-50 rounded-lg p-4 border-l-4 border-green-500">
              <div class="flex items-center mb-2">
                <i class="fas fa-percentage text-green-600 mr-2"></i>
                <h4 class="font-bold text-gray-800 text-sm">적합도 점수</h4>
              </div>
              <p class="text-xs text-gray-600">0~100점 매칭 점수로 최적 시설 추천</p>
            </div>
            <div class="bg-purple-50 rounded-lg p-4 border-l-4 border-purple-500">
              <div class="flex items-center mb-2">
                <i class="fas fa-sync-alt text-purple-600 mr-2"></i>
                <h4 class="font-bold text-gray-800 text-sm">선순환 학습</h4>
              </div>
              <p class="text-xs text-gray-600">사용자 피드백으로 정확도 지속 향상</p>
            </div>
          </div>
        </div>

        <!-- 안내 -->
        <div class="bg-gradient-to-r from-purple-500 to-indigo-600 text-white rounded-2xl p-6 mb-6 shadow-lg">
          <div class="flex items-start gap-4">
            <div class="bg-white bg-opacity-20 rounded-xl p-3">
              <i class="fas fa-robot text-3xl"></i>
            </div>
            <div class="flex-1">
              <h2 class="text-xl font-bold mb-2">AI가 최적의 시설을 찾아드립니다</h2>
              <p class="text-sm opacity-90">12가지 매칭 변수를 분석하여 거리, 비용, 평점을 종합한 최적의 시설을 즉시 추천해드립니다.</p>
            </div>
          </div>
        </div>

        <!-- 입력 폼 -->
        <div class="bg-white rounded-2xl shadow-lg p-6 mb-6">
          <h3 class="text-lg font-bold text-gray-800 mb-4">
            <i class="fas fa-edit text-purple-600 mr-2"></i>
            정보 입력
          </h3>
          
          <div class="space-y-4">
            <!-- 지역 선택 -->
            <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
              <div>
                <label for="sido" class="block text-sm font-medium text-gray-700 mb-2">
                  <i class="fas fa-map-marker-alt text-red-500 mr-1"></i>
                  시/도 *
                </label>
                <select id="sido" class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-purple-600 text-base">
                  <option value="">선택해주세요</option>
                </select>
              </div>
              
              <div>
                <label for="sigungu" class="block text-sm font-medium text-gray-700 mb-2">
                  <i class="fas fa-map-pin text-blue-500 mr-1"></i>
                  시/군/구 *
                </label>
                <select id="sigungu" disabled class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-purple-600 text-base">
                  <option value="">먼저 시/도를 선택해주세요</option>
                </select>
              </div>
            </div>

            <!-- 시설 유형 -->
            <div>
              <label for="facilityType" class="block text-sm font-medium text-gray-700 mb-2">
                <i class="fas fa-hospital text-teal-500 mr-1"></i>
                시설 유형 *
              </label>
              <select id="facilityType" class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-purple-600 text-base">
                <option value="">선택해주세요</option>
                <option value="요양병원">요양병원</option>
                <option value="요양원">요양원</option>
                <option value="주야간보호">주야간보호센터</option>
                <option value="재가복지센터">재가복지센터</option>
              </select>
            </div>

            <!-- 장기요양등급 (요양원/주야간보호/재가복지센터 전용) -->
            <div id="careGradeSection" style="display: none;">
              <label for="careGrade" class="block text-sm font-medium text-gray-700 mb-2">
                <i class="fas fa-certificate text-yellow-500 mr-1"></i>
                장기요양등급 (선택)
              </label>
              <select id="careGrade" class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-purple-600 text-base">
                <option value="">선택해주세요</option>
                <option value="1등급">1등급 (월 한도액: 1,713,000원)</option>
                <option value="2등급">2등급 (월 한도액: 1,512,100원)</option>
                <option value="3등급">3등급 (월 한도액: 1,398,000원)</option>
                <option value="4등급">4등급 (월 한도액: 1,295,700원)</option>
                <option value="5등급">5등급 (월 한도액: 1,143,700원)</option>
                <option value="인지지원등급">인지지원등급 (월 한도액: 610,500원)</option>
              </select>
              <p class="text-xs text-gray-500 mt-1">
                <i class="fas fa-info-circle mr-1"></i>
                장기요양보험 적용 시설입니다
              </p>
            </div>

            <!-- 보험 유형 및 등급 (요양병원 전용) -->
            <div id="insuranceTypeSection" style="display: none;">
              <label for="insuranceType" class="block text-sm font-medium text-gray-700 mb-2">
                <i class="fas fa-id-card text-blue-500 mr-1"></i>
                보험 유형 및 등급을 선택해 주세요
              </label>
              <div class="grid grid-cols-2 sm:grid-cols-4 gap-2">
                <button type="button" class="insurance-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-blue-500 hover:bg-blue-50 transition-all text-sm font-medium" data-value="건강보험">
                  건강보험
                </button>
                <button type="button" class="insurance-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-blue-500 hover:bg-blue-50 transition-all text-sm font-medium" data-value="보훈 1종">
                  보훈 1종
                </button>
                <button type="button" class="insurance-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-blue-500 hover:bg-blue-50 transition-all text-sm font-medium" data-value="보훈 2종">
                  보훈 2종
                </button>
                <button type="button" class="insurance-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-blue-500 hover:bg-blue-50 transition-all text-sm font-medium" data-value="자상위 1종">
                  자상위 1종
                </button>
                <button type="button" class="insurance-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-blue-500 hover:bg-blue-50 transition-all text-sm font-medium" data-value="자상위 2종">
                  자상위 2종
                </button>
                <button type="button" class="insurance-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-blue-500 hover:bg-blue-50 transition-all text-sm font-medium" data-value="의료급여 1종">
                  의료급여 1종
                </button>
                <button type="button" class="insurance-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-blue-500 hover:bg-blue-50 transition-all text-sm font-medium" data-value="의료급여 2종">
                  의료급여 2종
                </button>
                <button type="button" class="insurance-btn px-4 py-3 border-2 border-gray-300 rounded-lg hover:border-blue-500 hover:bg-blue-50 transition-all text-sm font-medium" data-value="기타">
                  기타
                </button>
              </div>
              <input type="hidden" id="insuranceType" value="">
              <p class="text-xs text-gray-500 mt-2">
                <i class="fas fa-info-circle mr-1"></i>
                요양병원은 건강보험 적용 시설입니다
              </p>
            </div>

            <!-- 예산 (선택) -->
            <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
              <div>
                <label for="budgetMin" class="block text-sm font-medium text-gray-700 mb-2">
                  <i class="fas fa-won-sign text-green-500 mr-1"></i>
                  최소 예산 (선택)
                </label>
                <input type="number" id="budgetMin" placeholder="예: 1000000" 
                  class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-purple-600 text-base">
              </div>
              
              <div>
                <label for="budgetMax" class="block text-sm font-medium text-gray-700 mb-2">
                  <i class="fas fa-won-sign text-green-500 mr-1"></i>
                  최대 예산 (선택)
                </label>
                <input type="number" id="budgetMax" placeholder="예: 2000000"
                  class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-purple-600 text-base">
              </div>
            </div>

            <!-- 전문분야 (선택) -->
            <div>
              <label class="block text-sm font-medium text-gray-700 mb-2">
                <i class="fas fa-stethoscope text-blue-500 mr-1"></i>
                전문분야 (선택)
              </label>
              <div class="grid grid-cols-2 sm:grid-cols-3 gap-2">
                <label class="flex items-center p-3 border-2 border-gray-300 rounded-lg hover:border-blue-500 hover:bg-blue-50 transition-all cursor-pointer">
                  <input type="checkbox" name="specialty" value="치매" class="w-4 h-4 text-blue-600 mr-2">
                  <span class="text-sm">치매</span>
                </label>
                <label class="flex items-center p-3 border-2 border-gray-300 rounded-lg hover:border-blue-500 hover:bg-blue-50 transition-all cursor-pointer">
                  <input type="checkbox" name="specialty" value="재활" class="w-4 h-4 text-blue-600 mr-2">
                  <span class="text-sm">재활</span>
                </label>
                <label class="flex items-center p-3 border-2 border-gray-300 rounded-lg hover:border-blue-500 hover:bg-blue-50 transition-all cursor-pointer">
                  <input type="checkbox" name="specialty" value="암환자" class="w-4 h-4 text-blue-600 mr-2">
                  <span class="text-sm">암환자</span>
                </label>
                <label class="flex items-center p-3 border-2 border-gray-300 rounded-lg hover:border-blue-500 hover:bg-blue-50 transition-all cursor-pointer">
                  <input type="checkbox" name="specialty" value="당뇨" class="w-4 h-4 text-blue-600 mr-2">
                  <span class="text-sm">당뇨</span>
                </label>
                <label class="flex items-center p-3 border-2 border-gray-300 rounded-lg hover:border-blue-500 hover:bg-blue-50 transition-all cursor-pointer">
                  <input type="checkbox" name="specialty" value="와상" class="w-4 h-4 text-blue-600 mr-2">
                  <span class="text-sm">와상환자</span>
                </label>
                <label class="flex items-center p-3 border-2 border-gray-300 rounded-lg hover:border-blue-500 hover:bg-blue-50 transition-all cursor-pointer">
                  <input type="checkbox" name="specialty" value="호스피스" class="w-4 h-4 text-blue-600 mr-2">
                  <span class="text-sm">호스피스</span>
                </label>
              </div>
              <p class="text-xs text-gray-500 mt-1">
                <i class="fas fa-info-circle mr-1"></i>
                원하시는 전문분야를 선택하시면 더 정확한 추천을 받을 수 있습니다
              </p>
            </div>

            <!-- 입소유형 (선택) -->
            <div>
              <label class="block text-sm font-medium text-gray-700 mb-2">
                <i class="fas fa-calendar-check text-teal-500 mr-1"></i>
                입소유형 (선택)
              </label>
              <div class="grid grid-cols-2 sm:grid-cols-3 gap-2">
                <label class="flex items-center p-3 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 transition-all cursor-pointer">
                  <input type="checkbox" name="admissionType" value="정규입소" class="w-4 h-4 text-teal-600 mr-2">
                  <span class="text-sm">정규입소</span>
                </label>
                <label class="flex items-center p-3 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 transition-all cursor-pointer">
                  <input type="checkbox" name="admissionType" value="단기입소" class="w-4 h-4 text-teal-600 mr-2">
                  <span class="text-sm">단기입소</span>
                </label>
                <label class="flex items-center p-3 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 transition-all cursor-pointer">
                  <input type="checkbox" name="admissionType" value="응급입소" class="w-4 h-4 text-teal-600 mr-2">
                  <span class="text-sm">응급입소</span>
                </label>
                <label class="flex items-center p-3 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 transition-all cursor-pointer">
                  <input type="checkbox" name="admissionType" value="주말입소" class="w-4 h-4 text-teal-600 mr-2">
                  <span class="text-sm">주말입소</span>
                </label>
                <label class="flex items-center p-3 border-2 border-gray-300 rounded-lg hover:border-teal-500 hover:bg-teal-50 transition-all cursor-pointer">
                  <input type="checkbox" name="admissionType" value="야간입소" class="w-4 h-4 text-teal-600 mr-2">
                  <span class="text-sm">야간입소</span>
                </label>
              </div>
              <p class="text-xs text-gray-500 mt-1">
                <i class="fas fa-info-circle mr-1"></i>
                필요한 입소유형을 선택하시면 맞춤 추천을 받을 수 있습니다
              </p>
            </div>

            <!-- 최대 거리 -->
            <div>
              <label for="maxDistance" class="block text-sm font-medium text-gray-700 mb-2">
                <i class="fas fa-route text-orange-500 mr-1"></i>
                최대 거리 (km)
              </label>
              <input type="number" id="maxDistance" value="20" min="5" max="50"
                class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-purple-600 text-base">
              <p class="text-xs text-gray-500 mt-1">기본 20km 반경 내 시설을 검색합니다</p>
            </div>
          </div>

          <!-- 제출 버튼 -->
          <button onclick="searchFacilities()" 
                  class="mt-6 w-full py-4 bg-gradient-to-r from-purple-600 to-indigo-600 text-white rounded-lg font-bold hover:from-purple-700 hover:to-indigo-700 transition-colors shadow-lg">
            <i class="fas fa-search mr-2"></i>
            AI로 최적 시설 찾기
          </button>
        </div>

        <!-- 결과 표시 영역 -->
        <div id="results" class="hidden">
          <!-- 매칭 정보 -->
          <div class="bg-white rounded-2xl shadow-lg p-6 mb-6">
            <div class="flex items-center justify-between mb-4">
              <h3 class="text-lg font-bold text-gray-800">
                <i class="fas fa-chart-line text-purple-600 mr-2"></i>
                매칭 결과
              </h3>
              <span id="resultCount" class="text-sm font-semibold text-purple-600"></span>
            </div>
            <div id="matchingInfo" class="text-sm text-gray-600"></div>
          </div>

          <!-- 시설 목록 -->
          <div id="facilityList" class="space-y-4"></div>
        </div>

        <!-- 로딩 -->
        <div id="loading" class="hidden bg-white rounded-2xl shadow-lg p-12 text-center">
          <div class="flex flex-col items-center justify-center space-y-4">
            <div class="animate-spin rounded-full h-16 w-16 border-4 border-purple-500 border-t-transparent"></div>
            <p class="text-xl font-semibold text-gray-700">
              <i class="fas fa-robot mr-2 text-purple-500"></i>
              AI가 최적의 시설을 찾고 있습니다...
            </p>
            <p class="text-sm text-gray-500">잠시만 기다려주세요</p>
          </div>
        </div>
      </main>

      <script src="https://cdn.jsdelivr.net/npm/axios@1.6.0/dist/axios.min.js"></script>
      <script>
        // 시/도 목록
        const SIDO_LIST = [
          '서울특별시', '부산광역시', '대구광역시', '인천광역시', '광주광역시', 
          '대전광역시', '울산광역시', '세종특별자치시', '경기도', '강원특별자치도',
          '충청북도', '충청남도', '전북특별자치도', '전라남도', '경상북도', 
          '경상남도', '제주특별자치도'
        ];

        let sigunguMap = {};

        // 페이지 로드 시
        window.addEventListener('DOMContentLoaded', () => {
          const sidoSelect = document.getElementById('sido');
          
          SIDO_LIST.forEach(sido => {
            const option = document.createElement('option');
            option.value = sido;
            option.textContent = sido;
            sidoSelect.appendChild(option);
          });
          
          loadSigunguData();
        });

        // 시/군/구 데이터 로드
        async function loadSigunguData() {
          try {
            const response = await axios.get('/api/regions');
            if (response.data.success) {
              sigunguMap = response.data.regions;
            }
          } catch (error) {
            console.error('시/군/구 데이터 로드 실패:', error);
          }
        }

        // 시/도 변경 시
        document.getElementById('sido').addEventListener('change', function() {
          const sigunguSelect = document.getElementById('sigungu');
          const selectedSido = this.value;
          
          sigunguSelect.innerHTML = '<option value="">선택해주세요</option>';
          sigunguSelect.disabled = !selectedSido;
          
          if (selectedSido && sigunguMap[selectedSido]) {
            sigunguMap[selectedSido].forEach(sigungu => {
              const option = document.createElement('option');
              option.value = sigungu;
              option.textContent = sigungu;
              sigunguSelect.appendChild(option);
            });
          }
        });

        // 시설 유형 변경 시 (장기요양등급 vs 건강보험 유형)
        document.getElementById('facilityType').addEventListener('change', function() {
          const facilityType = this.value;
          const careGradeSection = document.getElementById('careGradeSection');
          const insuranceTypeSection = document.getElementById('insuranceTypeSection');
          
          if (facilityType === '요양병원') {
            // 요양병원: 건강보험 유형 표시
            careGradeSection.style.display = 'none';
            insuranceTypeSection.style.display = 'block';
          } else if (facilityType) {
            // 요양원/주야간보호/재가복지센터: 장기요양등급 표시
            careGradeSection.style.display = 'block';
            insuranceTypeSection.style.display = 'none';
          } else {
            // 선택 안 함: 둘 다 숨김
            careGradeSection.style.display = 'none';
            insuranceTypeSection.style.display = 'none';
          }
        });

        // 보험 유형 버튼 클릭 이벤트
        document.addEventListener('DOMContentLoaded', function() {
          const insuranceBtns = document.querySelectorAll('.insurance-btn');
          const insuranceTypeInput = document.getElementById('insuranceType');
          
          insuranceBtns.forEach(btn => {
            btn.addEventListener('click', function() {
              // 모든 버튼 비활성화
              insuranceBtns.forEach(b => {
                b.classList.remove('border-blue-500', 'bg-blue-50', 'text-blue-700');
                b.classList.add('border-gray-300');
              });
              
              // 선택된 버튼 활성화
              this.classList.remove('border-gray-300');
              this.classList.add('border-blue-500', 'bg-blue-50', 'text-blue-700');
              
              // hidden input 값 설정
              insuranceTypeInput.value = this.getAttribute('data-value');
            });
          });
        });

        // 시설 검색
        async function searchFacilities() {
          const sido = document.getElementById('sido').value;
          const sigungu = document.getElementById('sigungu').value;
          const facilityType = document.getElementById('facilityType').value;
          const careGrade = document.getElementById('careGrade').value;
          const insuranceType = document.getElementById('insuranceType').value;
          const budgetMin = document.getElementById('budgetMin').value;
          const budgetMax = document.getElementById('budgetMax').value;
          const maxDistance = document.getElementById('maxDistance').value;

          // 전문분야 체크박스 값 가져오기
          const specialties = Array.from(document.querySelectorAll('input[name="specialty"]:checked'))
            .map(cb => cb.value);

          // 입소유형 체크박스 값 가져오기
          const admissionTypes = Array.from(document.querySelectorAll('input[name="admissionType"]:checked'))
            .map(cb => cb.value);

          if (!sido || !sigungu || !facilityType) {
            alert('필수 항목을 모두 입력해주세요 (시/도, 시/군/구, 시설 유형)');
            return;
          }

          // 로딩 표시
          document.getElementById('loading').classList.remove('hidden');
          document.getElementById('results').classList.add('hidden');

          try {
            const response = await axios.post('/api/matching/facilities', {
              sido,
              sigungu,
              facilityType,
              careGrade: careGrade || insuranceType || null,
              budgetMin: budgetMin ? parseInt(budgetMin) : null,
              budgetMax: budgetMax ? parseInt(budgetMax) : null,
              maxDistance: parseInt(maxDistance) || 20,
              specialties: specialties.length > 0 ? specialties : null,
              admissionTypes: admissionTypes.length > 0 ? admissionTypes : null
            });

            // 로딩 숨기기
            document.getElementById('loading').classList.add('hidden');

            if (response.data.success) {
              displayResults(response.data);
            } else {
              alert('시설 검색에 실패했습니다: ' + response.data.message);
            }
          } catch (error) {
            console.error('검색 오류:', error);
            document.getElementById('loading').classList.add('hidden');
            alert('시설 검색 중 오류가 발생했습니다');
          }
        }

        // 결과 표시
        function displayResults(data) {
          const { facilities, count, matchingInfo = {}, filters = {} } = data;

          // 결과 카운트
          document.getElementById('resultCount').textContent = \`총 \${count}개 시설\`;

          // 매칭 정보
          const infoHtml = \`
            <div class="grid grid-cols-2 sm:grid-cols-4 gap-4">
              <div class="text-center p-3 bg-purple-50 rounded-lg">
                <div class="text-2xl font-bold text-purple-600">\${matchingInfo.totalScanned || 0}</div>
                <div class="text-xs text-gray-600">검색된 시설</div>
              </div>
              <div class="text-center p-3 bg-indigo-50 rounded-lg">
                <div class="text-2xl font-bold text-indigo-600">\${count}</div>
                <div class="text-xs text-gray-600">추천 시설</div>
              </div>
              <div class="text-center p-3 bg-green-50 rounded-lg">
                <div class="text-2xl font-bold text-green-600">\${filters.maxDistance || 20}km</div>
                <div class="text-xs text-gray-600">검색 반경</div>
              </div>
              <div class="text-center p-3 bg-yellow-50 rounded-lg">
                <div class="text-2xl font-bold text-yellow-600">\${matchingInfo.careGradeLimit ? (matchingInfo.careGradeLimit / 10000).toFixed(0) + '만원' : '-'}</div>
                <div class="text-xs text-gray-600">월 한도액</div>
              </div>
            </div>
          \`;
          document.getElementById('matchingInfo').innerHTML = infoHtml;

          // 시설 목록
          const facilityList = document.getElementById('facilityList');
          
          if (count === 0) {
            facilityList.innerHTML = \`
              <div class="bg-white rounded-2xl shadow-lg p-8 text-center">
                <i class="fas fa-search text-gray-300 text-5xl mb-4"></i>
                <p class="text-gray-700 font-semibold mb-2">조건에 맞는 시설이 없습니다</p>
                <p class="text-sm text-gray-500">검색 조건을 변경해주세요</p>
              </div>
            \`;
          } else {
            facilityList.innerHTML = facilities.map((facility, index) => {
              const typeConfig = {
                '요양병원': { icon: 'fa-hospital', color: 'blue' },
                '요양원': { icon: 'fa-home', color: 'green' },
                '주야간보호': { icon: 'fa-clock', color: 'purple' },
                '재가복지센터': { icon: 'fa-hands-helping', color: 'orange' }
              };
              const config = typeConfig[facility.facility_type] || { icon: 'fa-building', color: 'gray' };
              
              // 평점 표시
              const renderStars = (rating) => {
                if (!rating || rating === 0) return '<span class="text-gray-400 text-xs">평점 없음</span>';
                const fullStars = Math.floor(rating);
                const hasHalfStar = rating % 1 >= 0.5;
                let stars = '';
                for (let i = 0; i < fullStars; i++) {
                  stars += '<i class="fas fa-star text-yellow-500"></i>';
                }
                if (hasHalfStar) {
                  stars += '<i class="fas fa-star-half-alt text-yellow-500"></i>';
                }
                const emptyStars = 5 - Math.ceil(rating);
                for (let i = 0; i < emptyStars; i++) {
                  stars += '<i class="far fa-star text-yellow-500"></i>';
                }
                return \`<span class="inline-flex items-center gap-1">\${stars} <span class="text-sm font-semibold text-gray-700 ml-1">\${rating.toFixed(1)}</span></span>\`;
              };
              
              // 매칭 이유 표시
              const renderMatchReasons = (reasons) => {
                if (!reasons || reasons.length === 0) return '';
                return \`
                  <div class="mt-4 p-3 bg-gradient-to-r from-purple-50 to-indigo-50 rounded-lg border border-purple-200">
                    <div class="flex items-center gap-2 mb-2">
                      <i class="fas fa-check-circle text-purple-600"></i>
                      <span class="text-sm font-semibold text-gray-800">추천 이유</span>
                    </div>
                    <div class="flex flex-wrap gap-2">
                      \${reasons.slice(0, 4).map(reason => \`
                        <span class="inline-flex items-center px-2 py-1 bg-white rounded-full text-xs text-gray-700 border border-purple-200">
                          \${reason}
                        </span>
                      \`).join('')}
                    </div>
                  </div>
                \`;
              };
              
              // 상세정보 표시
              const renderDetails = (details) => {
                if (!details) return '';
                const { specialties, admissionTypes } = details;
                if ((!specialties || specialties.length === 0) && (!admissionTypes || admissionTypes.length === 0)) return '';
                
                return \`
                  <div class="mt-3 flex flex-wrap gap-2">
                    \${specialties && specialties.length > 0 ? \`
                      <div class="flex items-center gap-1 px-2 py-1 bg-blue-50 rounded-full text-xs text-blue-700 border border-blue-200">
                        <i class="fas fa-stethoscope"></i>
                        <span>\${specialties.slice(0, 2).join(', ')}\${specialties.length > 2 ? ' 외 ' + (specialties.length - 2) + '개' : ''}</span>
                      </div>
                    \` : ''}
                    \${admissionTypes && admissionTypes.length > 0 ? \`
                      <div class="flex items-center gap-1 px-2 py-1 bg-green-50 rounded-full text-xs text-green-700 border border-green-200">
                        <i class="fas fa-calendar-check"></i>
                        <span>\${admissionTypes.slice(0, 2).join(', ')}\${admissionTypes.length > 2 ? ' 외 ' + (admissionTypes.length - 2) + '개' : ''}</span>
                      </div>
                    \` : ''}
                  </div>
                \`;
              };
              
              return \`
                <div class="bg-white rounded-2xl shadow-lg p-6 hover:shadow-xl transition-shadow border-2 border-transparent hover:border-purple-200">
                  <!-- 순위 & 적합도 점수 & 평점 -->
                  <div class="flex items-center justify-between mb-4">
                    <div class="flex items-center gap-3">
                      <div class="bg-gradient-to-br from-purple-500 to-indigo-600 text-white rounded-full w-10 h-10 flex items-center justify-center font-bold text-lg shadow-lg">
                        \${index + 1}
                      </div>
                      <span class="inline-flex items-center px-3 py-1 rounded-full text-sm font-semibold bg-\${config.color}-100 text-\${config.color}-800">
                        <i class="fas \${config.icon} mr-1"></i>
                        \${facility.facility_type}
                      </span>
                    </div>
                    <div class="text-right">
                      <div class="flex items-center gap-2">
                        <div class="text-2xl font-bold bg-gradient-to-r from-purple-600 to-indigo-600 bg-clip-text text-transparent">\${facility.matchScore}</div>
                        <div class="text-xs text-gray-400">/100</div>
                      </div>
                      <div class="text-xs text-gray-500">
                        <i class="fas fa-chart-line mr-1"></i>
                        적합도 점수
                      </div>
                    </div>
                  </div>

                  <!-- 시설 정보 -->
                  <a href="/facility/\${facility.id}" class="block group">
                    <h3 class="text-xl font-bold text-gray-800 mb-2 group-hover:text-purple-600 transition-colors">
                      \${facility.name}
                      \${facility.isRepresentative ? '<span class="inline-flex items-center px-2 py-0.5 bg-yellow-100 text-yellow-800 text-xs font-semibold rounded-full ml-2"><i class="fas fa-crown mr-1"></i>대표시설</span>' : ''}
                      <i class="fas fa-arrow-right ml-2 text-sm opacity-0 group-hover:opacity-100 transition-opacity"></i>
                    </h3>
                  </a>
                  
                  <!-- 평점 & 리뷰 -->
                  <div class="flex items-center gap-4 mb-3">
                    \${renderStars(facility.stats?.avgRating || 0)}
                    \${facility.stats?.reviewCount > 0 ? \`
                      <span class="text-xs text-gray-500">
                        <i class="fas fa-comment-dots mr-1"></i>
                        리뷰 \${facility.stats.reviewCount}개
                      </span>
                    \` : ''}
                  </div>
                  
                  <div class="space-y-2 text-sm text-gray-600 mb-4">
                    <div class="flex items-start">
                      <i class="fas fa-map-marker-alt text-red-500 mr-2 mt-0.5"></i>
                      <span class="flex-1">\${facility.address}</span>
                    </div>
                    
                    \${facility.distance ? \`
                      <div class="flex items-center">
                        <i class="fas fa-route text-orange-500 mr-2"></i>
                        <span><strong>\${facility.distance}km</strong> 거리</span>
                      </div>
                    \` : ''}
                    
                    <div class="flex items-center">
                      <i class="fas fa-phone text-green-500 mr-2"></i>
                      <span>\${facility.phone || '전화번호 정보 없음'}</span>
                    </div>
                  </div>
                  
                  <!-- 상세정보 태그 -->
                  \${renderDetails(facility.details)}
                  
                  <!-- 매칭 이유 -->
                  \${renderMatchReasons(facility.matchReasons)}

                  <!-- 액션 버튼 -->
                  <div class="grid grid-cols-2 gap-2 mt-4">
                    <a href="/facility/\${facility.id}" 
                       class="block py-3 bg-white border-2 border-purple-600 text-purple-600 text-center rounded-lg font-bold hover:bg-purple-50 transition-colors">
                      <i class="fas fa-info-circle mr-1"></i>
                      상세보기
                    </a>
                    \${facility.phone ? \`
                      <a href="tel:\${facility.phone}" 
                         class="block py-3 bg-gradient-to-r from-purple-600 to-indigo-600 text-white text-center rounded-lg font-bold hover:from-purple-700 hover:to-indigo-700 transition-colors">
                        <i class="fas fa-phone-alt mr-1"></i>
                        전화상담
                      </a>
                    \` : \`
                      <button disabled
                         class="block py-3 bg-gray-400 text-white text-center rounded-lg font-bold cursor-not-allowed opacity-60">
                        <i class="fas fa-phone-slash mr-1"></i>
                        준비중
                      </button>
                    \`}
                  </div>
                </div>
              \`;
            }).join('');
          }

          // 결과 영역 표시
          document.getElementById('results').classList.remove('hidden');
          document.getElementById('results').scrollIntoView({ behavior: 'smooth', block: 'start' });
        }
      </script>
    </body>
    </html>
  `)
})

// ========== 전화상담 페이지 (지역별 대표시설) ==========

app.get('/call-consultation', async (c) => {
  const db = c.env.DB
  
  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>지역별 대표 요양시설 및 요양병원 전화상담 - 케어조아</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet">
        <style>
          * {
            -webkit-tap-highlight-color: transparent;
            -webkit-touch-callout: none;
          }
        </style>
    </head>
    <body class="bg-gray-50 min-h-screen">
      <!-- 헤더 -->
      <header class="bg-white shadow-sm sticky top-0 z-50">
        <div class="max-w-4xl mx-auto px-4 py-4 flex items-center justify-between">
          <button onclick="history.back()" class="text-gray-600 hover:text-teal-600" aria-label="뒤로 가기">
            <i class="fas fa-arrow-left text-xl"></i>
          </button>
          <h1 class="text-base sm:text-lg font-bold text-gray-800 text-center flex-1 mx-4">
            <i class="fas fa-phone-alt text-teal-600 mr-2"></i>
            지역별 대표 요양시설 및 요양병원 전화상담
          </h1>
          <div class="w-10"></div>
        </div>
      </header>

      <!-- 메인 컨텐츠 -->
      <main class="max-w-4xl mx-auto px-4 py-6">
        <!-- 안내 카드 -->
        <div class="bg-gradient-to-r from-teal-50 to-blue-50 rounded-lg p-4 mb-6 border-l-4 border-teal-600">
          <div class="flex items-start gap-3">
            <i class="fas fa-info-circle text-teal-600 text-xl mt-0.5"></i>
            <div class="flex-1">
              <h3 class="font-bold text-gray-800 mb-2">대표 시설 선정 기준</h3>
              <p class="text-sm text-gray-700 leading-relaxed mb-2">
                현재는 <span class="font-semibold text-teal-700">임의로 설정</span>된 시설입니다. 
                향후 다음 기준으로 선정될 예정입니다:
              </p>
              <ul class="text-sm text-gray-600 space-y-1 ml-4">
                <li class="flex items-start gap-2">
                  <i class="fas fa-check text-teal-600 mt-0.5 text-xs"></i>
                  <span>시설 평가 등급 및 서비스 품질</span>
                </li>
                <li class="flex items-start gap-2">
                  <i class="fas fa-check text-teal-600 mt-0.5 text-xs"></i>
                  <span>이용자 만족도 및 리뷰</span>
                </li>
                <li class="flex items-start gap-2">
                  <i class="fas fa-check text-teal-600 mt-0.5 text-xs"></i>
                  <span>케어조아 파트너십 및 신뢰도</span>
                </li>
              </ul>
            </div>
          </div>
        </div>

        <!-- 지역 선택 -->
        <div class="bg-white rounded-lg shadow-sm p-6 mb-6">
          <h2 class="text-lg font-bold text-gray-800 mb-4">
            <i class="fas fa-map-marker-alt text-teal-600 mr-2"></i>
            지역 선택
          </h2>
          
          <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
            <div>
              <label for="sido" class="block text-sm font-medium text-gray-700 mb-2">시/도</label>
              <select id="sido" class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-teal-600 text-base"
                      onchange="loadSigunguOptions()" aria-label="시/도 선택">
                <option value="">선택해주세요</option>
              </select>
            </div>
            
            <div>
              <label for="sigungu" class="block text-sm font-medium text-gray-700 mb-2">시/군/구</label>
              <select id="sigungu" class="w-full px-4 py-3 border-2 border-gray-300 rounded-lg focus:outline-none focus:border-teal-600 text-base" 
                      disabled onchange="loadRepresentativeFacilities()" aria-label="시/군/구 선택">
                <option value="">먼저 시/도를 선택해주세요</option>
              </select>
            </div>
          </div>
          
          <button onclick="loadRepresentativeFacilities()" 
                  class="mt-4 w-full py-3 bg-teal-600 text-white rounded-lg font-bold hover:bg-teal-700 transition-colors touch-manipulation">
            <i class="fas fa-search mr-2"></i>
            대표시설 찾기
          </button>
        </div>

        <!-- 대표시설 목록 -->
        <div id="facilityList" class="space-y-4">
          <!-- 초기 안내 메시지 -->
          <div class="bg-white rounded-lg shadow-sm p-8 text-center">
            <i class="fas fa-search text-gray-300 text-5xl mb-4"></i>
            <p class="text-gray-500">지역을 선택하고 '대표시설 찾기' 버튼을 눌러주세요</p>
          </div>
        </div>
      </main>

      <!-- 선정 기준 안내 모달 -->
      <script src="https://cdn.jsdelivr.net/npm/axios@1.6.0/dist/axios.min.js"></script>
      <script>
        // 시/도 목록
        const SIDO_LIST = [
          '서울특별시', '부산광역시', '대구광역시', '인천광역시', '광주광역시', 
          '대전광역시', '울산광역시', '세종특별자치시', '경기도', '강원특별자치도',
          '충청북도', '충청남도', '전북특별자치도', '전라남도', '경상북도', 
          '경상남도', '제주특별자치도'
        ];

        // 시/군/구 매핑 (API로 가져오는 것으로 대체 가능)
        let sigunguMap = {};

        // 페이지 로드 시 시/도 목록 로드
        window.addEventListener('DOMContentLoaded', async () => {
          const sidoSelect = document.getElementById('sido');
          
          // 시/군/구 데이터를 먼저 로드
          await loadSigunguData();
          
          // 데이터 로드 완료 후 시/도 목록 추가
          SIDO_LIST.forEach(sido => {
            const option = document.createElement('option');
            option.value = sido;
            option.textContent = sido;
            sidoSelect.appendChild(option);
          });
        });

        // 시/군/구 데이터 로드
        async function loadSigunguData() {
          try {
            const response = await axios.get('/api/regions');
            
            if (response.data.success) {
              sigunguMap = response.data.regions;
              console.log('✅ 시/군/구 데이터 로드 완료:', Object.keys(sigunguMap).length, '개 시/도');
            }
          } catch (error) {
            console.error('❌ 시/군/구 데이터 로드 실패:', error);
          }
        }

        // 시/도 선택 시 시/군/구 목록 로드
        function loadSigunguOptions() {
          const sidoSelect = document.getElementById('sido');
          const sigunguSelect = document.getElementById('sigungu');
          const selectedSido = sidoSelect.value;
          
          console.log('📍 선택된 시/도:', selectedSido);
          console.log('📍 sigunguMap 키 개수:', Object.keys(sigunguMap).length);
          
          // 초기화
          sigunguSelect.innerHTML = '<option value="">선택해주세요</option>';
          sigunguSelect.disabled = !selectedSido;
          
          if (selectedSido && sigunguMap[selectedSido]) {
            console.log('📍 시/군/구 옵션 추가:', sigunguMap[selectedSido].length, '개');
            sigunguMap[selectedSido].forEach(sigungu => {
              const option = document.createElement('option');
              option.value = sigungu;
              option.textContent = sigungu;
              sigunguSelect.appendChild(option);
            });
            console.log('✅ 시/군/구 옵션 추가 완료');
          } else {
            console.log('❌ 시/군/구 데이터 없음:', selectedSido);
          }
          
          // 시설 목록 초기화
          document.getElementById('facilityList').innerHTML = \`
            <div class="bg-white rounded-lg shadow-sm p-8 text-center">
              <i class="fas fa-search text-gray-300 text-5xl mb-4"></i>
              <p class="text-gray-500">시/군/구를 선택하고 '대표시설 찾기' 버튼을 눌러주세요</p>
            </div>
          \`;
        }

        // 대표시설 목록 로드
        async function loadRepresentativeFacilities() {
          const sido = document.getElementById('sido').value;
          const sigungu = document.getElementById('sigungu').value;
          
          if (!sido || !sigungu) {
            alert('지역을 선택해주세요');
            return;
          }
          
          const facilityList = document.getElementById('facilityList');
          facilityList.innerHTML = '<div class="text-center py-8"><i class="fas fa-spinner fa-spin text-3xl text-teal-600"></i><p class="mt-2 text-gray-600">로딩 중...</p></div>';
          
          try {
            const response = await axios.get(\`/api/representative-facilities?sido=\${encodeURIComponent(sido)}&sigungu=\${encodeURIComponent(sigungu)}\`);
            
            if (response.data.success && response.data.facilities.length > 0) {
              renderFacilities(response.data.facilities);
            } else {
              facilityList.innerHTML = \`
                <div class="bg-white rounded-lg shadow-sm p-8 text-center">
                  <i class="fas fa-exclamation-circle text-yellow-500 text-5xl mb-4"></i>
                  <p class="text-gray-700 font-semibold mb-2">\${sido} \${sigungu}의 대표시설이 없습니다</p>
                  <p class="text-sm text-gray-500">다른 지역을 선택해주세요</p>
                </div>
              \`;
            }
          } catch (error) {
            console.error('대표시설 로드 실패:', error);
            facilityList.innerHTML = \`
              <div class="bg-white rounded-lg shadow-sm p-8 text-center">
                <i class="fas fa-times-circle text-red-500 text-5xl mb-4"></i>
                <p class="text-gray-700 font-semibold mb-2">로드 실패</p>
                <p class="text-sm text-gray-500">잠시 후 다시 시도해주세요</p>
              </div>
            \`;
          }
        }

        // 시설 카드 렌더링
        function renderFacilities(facilities) {
          const facilityList = document.getElementById('facilityList');
          
          // 시설 유형별 아이콘 및 색상
          const typeConfig = {
            '요양병원': { icon: 'fa-hospital', color: 'blue', name: '요양병원' },
            '요양원': { icon: 'fa-home', color: 'green', name: '요양원' },
            '주야간보호': { icon: 'fa-clock', color: 'purple', name: '주야간보호센터' },
            '재가복지센터': { icon: 'fa-hands-helping', color: 'orange', name: '재가복지센터' }
          };
          
          facilityList.innerHTML = facilities.map(facility => {
            const config = typeConfig[facility.facility_type] || { icon: 'fa-building', color: 'gray', name: facility.facility_type };
            
            return \`
              <div class="bg-white rounded-lg shadow-sm p-5 hover:shadow-md transition-shadow">
                <!-- 시설 유형 배지 -->
                <div class="flex items-center justify-between mb-3">
                  <span class="inline-flex items-center px-3 py-1 rounded-full text-sm font-semibold bg-\${config.color}-100 text-\${config.color}-800">
                    <i class="fas \${config.icon} mr-1"></i>
                    \${config.name}
                  </span>
                  <span class="text-xs text-gray-500">
                    <i class="fas fa-star text-yellow-400"></i>
                    대표시설
                  </span>
                </div>
                
                <!-- 시설 정보 -->
                <h3 class="text-lg font-bold text-gray-800 mb-2">\${facility.facility_name}</h3>
                
                <div class="space-y-2 text-sm text-gray-600 mb-4">
                  <div class="flex items-start">
                    <i class="fas fa-map-marker-alt text-gray-400 mr-2 mt-0.5"></i>
                    <span class="flex-1">\${facility.facility_address}</span>
                  </div>
                  
                  <div class="flex items-center">
                    <i class="fas fa-phone text-gray-400 mr-2"></i>
                    <span>\${
                      !facility.manager_phone || facility.manager_phone === '' || facility.manager_phone === '1544-0000'
                        ? '<span class="text-orange-600 font-semibold">준비중</span>'
                        : facility.manager_phone
                    }</span>
                  </div>
                </div>
                
                <!-- 전화 버튼 -->
                \${
                  !facility.manager_phone || facility.manager_phone === '' || facility.manager_phone === '1544-0000'
                    ? \`
                      <button disabled
                         class="block w-full py-3 bg-gray-400 text-white text-center rounded-lg font-bold cursor-not-allowed opacity-60">
                        <i class="fas fa-phone-slash mr-2"></i>
                        전화번호 준비중
                      </button>
                    \`
                    : \`
                      <a href="tel:\${facility.manager_phone}" 
                         class="block w-full py-3 bg-teal-600 text-white text-center rounded-lg font-bold hover:bg-teal-700 active:bg-teal-800 transition-colors touch-manipulation">
                        <i class="fas fa-phone-alt mr-2"></i>
                        전화 상담하기
                      </a>
                    \`
                }
              </div>
            \`;
          }).join('');
        }
      </script>
    </body>
    </html>
  `)
})

// 지역(시/군/구) 목록 API
app.get('/api/regions', async (c) => {
  const db = c.env.DB
  
  if (!db) {
    return c.json({ success: false, message: '데이터베이스 연결 실패' }, 500)
  }
  
  try {
    const result = await db.prepare(`
      SELECT DISTINCT sido, sigungu
      FROM facilities
      ORDER BY sido, sigungu
    `).all()
    
    // 시/도별로 시/군/구 그룹화
    const regions: Record<string, string[]> = {}
    
    result.results?.forEach((row: any) => {
      if (!regions[row.sido]) {
        regions[row.sido] = []
      }
      if (!regions[row.sido].includes(row.sigungu)) {
        regions[row.sido].push(row.sigungu)
      }
    })
    
    return c.json({
      success: true,
      regions
    })
  } catch (error) {
    console.error('[지역 목록 조회] 오류:', error)
    return c.json({ success: false, message: '조회 실패' }, 500)
  }
})

// ========== SEO: Sitemap.xml (동적 생성, 페이지네이션) ==========
// 동적 Sitemap: 시설별 페이지 (sitemap-facilities-1.xml, sitemap-facilities-2.xml 등)
app.get('/sitemap-facilities-:page.xml', async (c) => {
  const db = c.env.DB
  
  if (!db) {
    return c.text('데이터베이스 연결 실패', 500)
  }
  
  try {
    const page = parseInt(c.req.param('page') || '1')
    const limit = 10000 // 한 페이지당 10000개 URL (Google 권장: 최대 50000)
    const offset = (page - 1) * limit
    
    // 시설 목록 조회 (페이지네이션)
    const facilities = await db
      .prepare('SELECT id, updated_at FROM facilities ORDER BY id LIMIT ? OFFSET ?')
      .bind(limit, offset)
      .all()
    
    // XML 생성
    let xml = '<?xml version="1.0" encoding="UTF-8"?>\n'
    xml += '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n'
    
    // 시설 상세 페이지들
    facilities.results?.forEach((facility: any) => {
      xml += '  <url>\n'
      xml += `    <loc>https://carejoa.kr/facility/${facility.id}</loc>\n`
      if (facility.updated_at) {
        xml += `    <lastmod>${facility.updated_at}</lastmod>\n`
      }
      xml += '    <changefreq>monthly</changefreq>\n'
      xml += '    <priority>0.7</priority>\n'
      xml += '  </url>\n'
    })
    
    xml += '</urlset>'
    
    // XML 응답 헤더
    c.header('Content-Type', 'application/xml; charset=utf-8')
    
    return c.body(xml)
  } catch (error) {
    console.error('[Sitemap 생성] 오류:', error)
    return c.text('Sitemap 생성 실패', 500)
  }
})

// ============================================
// 📊 평점/리뷰 API
// ============================================

// 시설 목록 조회 (페이지네이션)
app.get('/api/facilities', async (c) => {
  const { env } = c
  const page = parseInt(c.req.query('page') || '1')
  const limit = parseInt(c.req.query('limit') || '50')
  const sido = c.req.query('sido') || ''
  const sigungu = c.req.query('sigungu') || ''
  const facilityType = c.req.query('facility_type') || ''
  
  if (!env?.DB) {
    return c.json({ success: false, message: '데이터베이스 연결 실패' }, 500)
  }
  
  try {
    const offset = (page - 1) * limit
    
    // 필터 조건 생성
    let whereConditions = []
    let params: any[] = []
    
    if (sido) {
      whereConditions.push('sido = ?')
      params.push(sido)
    }
    if (sigungu) {
      whereConditions.push('sigungu = ?')
      params.push(sigungu)
    }
    if (facilityType) {
      whereConditions.push('facility_type = ?')
      params.push(facilityType)
    }
    
    const whereClause = whereConditions.length > 0 
      ? `WHERE ${whereConditions.join(' AND ')}`
      : ''
    
    // 전체 개수 조회
    const countQuery = `SELECT COUNT(*) as total FROM facilities ${whereClause}`
    const countResult = await env.DB.prepare(countQuery).bind(...params).first()
    const total = countResult?.total || 0
    
    // 시설 목록 조회
    const query = `
      SELECT 
        id, name, address, sido, sigungu, facility_type,
        phone, latitude, longitude
      FROM facilities
      ${whereClause}
      ORDER BY id ASC
      LIMIT ? OFFSET ?
    `
    
    const { results } = await env.DB.prepare(query)
      .bind(...params, limit, offset)
      .all()
    
    return c.json({
      success: true,
      data: results || [],
      pagination: {
        page,
        limit,
        total,
        totalPages: Math.ceil(total / limit)
      },
      filters: { sido, sigungu, facilityType }
    })
  } catch (error) {
    console.error('❌ 시설 목록 조회 실패:', error)
    return c.json({ 
      success: false, 
      message: '시설 목록 조회 중 오류가 발생했습니다.',
      error: String(error)
    }, 500)
  }
})

// 시설 전체 상세 정보 조회 (통합 API)
app.get('/api/facilities/:id', async (c) => {
  const { env } = c
  const facilityId = c.req.param('id')
  
  if (!env?.DB) {
    return c.json({ success: false, message: '데이터베이스 연결 실패' }, 500)
  }
  
  try {
    // 1. 기본 시설 정보 조회
    const facility = await env.DB.prepare(`
      SELECT 
        id, name, address, sido, sigungu, facility_type,
        phone, latitude, longitude
      FROM facilities
      WHERE id = ?
    `).bind(facilityId).first()
    
    if (!facility) {
      return c.json({ success: false, message: '시설을 찾을 수 없습니다.' }, 404)
    }
    
    // 2. 상세 정보 조회
    const details = await env.DB.prepare(`
      SELECT 
        specialties, admission_types, monthly_cost, deposit,
        total_beds, available_beds, notes, updated_at
      FROM facility_details
      WHERE facility_id = ?
    `).bind(facilityId).first()
    
    // 3. 평점 정보 조회
    const rating = await env.DB.prepare(`
      SELECT 
        AVG(rating) as avg_rating,
        COUNT(*) as review_count
      FROM facility_reviews
      WHERE facility_id = ?
    `).bind(facilityId).first()
    
    // JSON 문자열 파싱
    const parseJSON = (str: string | null) => {
      if (!str) return []
      try {
        return JSON.parse(str)
      } catch {
        return []
      }
    }
    
    return c.json({
      success: true,
      facility: {
        ...facility,
        details: details ? {
          specialties: parseJSON(details.specialties as string),
          admission_types: parseJSON(details.admission_types as string),
          monthly_cost: details.monthly_cost,
          deposit: details.deposit,
          total_beds: details.total_beds,
          available_beds: details.available_beds,
          notes: details.notes,
          updated_at: details.updated_at
        } : null,
        rating: {
          average: rating ? Math.round((rating.avg_rating || 0) * 10) / 10 : 0,
          count: rating ? (rating.review_count || 0) : 0
        }
      }
    })
  } catch (error) {
    console.error('❌ 시설 정보 조회 실패:', error)
    return c.json({ 
      success: false, 
      message: '시설 정보 조회 중 오류가 발생했습니다.',
      error: String(error)
    }, 500)
  }
})

// 시설 평점 조회
app.get('/api/facilities/:id/rating', async (c) => {
  const { env } = c
  const facilityId = c.req.param('id')
  
  if (!env?.DB) {
    return c.json({ success: false, message: '데이터베이스 연결 실패' }, 500)
  }
  
  try {
    const result = await env.DB.prepare(`
      SELECT 
        AVG(overall_rating) as avg_rating,
        COUNT(*) as review_count,
        AVG(cleanliness_rating) as avg_cleanliness,
        AVG(staff_rating) as avg_staff,
        AVG(food_rating) as avg_food,
        AVG(facilities_rating) as avg_facilities,
        SUM(CASE WHEN overall_rating = 5 THEN 1 ELSE 0 END) as five_star,
        SUM(CASE WHEN overall_rating = 4 THEN 1 ELSE 0 END) as four_star,
        SUM(CASE WHEN overall_rating = 3 THEN 1 ELSE 0 END) as three_star,
        SUM(CASE WHEN overall_rating = 2 THEN 1 ELSE 0 END) as two_star,
        SUM(CASE WHEN overall_rating = 1 THEN 1 ELSE 0 END) as one_star
      FROM facility_reviews
      WHERE facility_id = ?
    `).bind(facilityId).first()
    
    if (!result) {
      return c.json({
        success: true,
        rating: null,
        message: '리뷰가 없습니다'
      })
    }
    
    return c.json({
      success: true,
      rating: {
        average: Math.round((result.avg_rating || 0) * 10) / 10,
        count: result.review_count || 0,
        breakdown: {
          cleanliness: Math.round((result.avg_cleanliness || 0) * 10) / 10,
          staff: Math.round((result.avg_staff || 0) * 10) / 10,
          food: Math.round((result.avg_food || 0) * 10) / 10,
          facilities: Math.round((result.avg_facilities || 0) * 10) / 10
        },
        distribution: {
          5: result.five_star || 0,
          4: result.four_star || 0,
          3: result.three_star || 0,
          2: result.two_star || 0,
          1: result.one_star || 0
        }
      }
    })
  } catch (error) {
    console.error('❌ 평점 조회 실패:', error)
    return c.json({ 
      success: false, 
      message: '평점 조회 중 오류가 발생했습니다.' 
    }, 500)
  }
})

// 시설 리뷰 목록 조회
app.get('/api/facilities/:id/reviews', async (c) => {
  const { env } = c
  const facilityId = c.req.param('id')
  const page = parseInt(c.req.query('page') || '1')
  const limit = parseInt(c.req.query('limit') || '10')
  const offset = (page - 1) * limit
  
  if (!env?.DB) {
    return c.json({ success: false, message: '데이터베이스 연결 실패' }, 500)
  }
  
  try {
    // 리뷰 목록 조회
    const reviews = await env.DB.prepare(`
      SELECT 
        id,
        reviewer_name,
        overall_rating,
        cleanliness_rating,
        staff_rating,
        food_rating,
        facilities_rating,
        comment,
        pros,
        cons,
        stay_duration,
        created_at
      FROM facility_reviews
      WHERE facility_id = ?
      ORDER BY created_at DESC
      LIMIT ? OFFSET ?
    `).bind(facilityId, limit, offset).all()
    
    // 전체 리뷰 수 조회
    const countResult = await env.DB.prepare(`
      SELECT COUNT(*) as total
      FROM facility_reviews
      WHERE facility_id = ?
    `).bind(facilityId).first()
    
    return c.json({
      success: true,
      reviews: reviews.results || [],
      pagination: {
        page,
        limit,
        total: countResult?.total || 0,
        totalPages: Math.ceil((countResult?.total || 0) / limit)
      }
    })
  } catch (error) {
    console.error('❌ 리뷰 조회 실패:', error)
    return c.json({ 
      success: false, 
      message: '리뷰 조회 중 오류가 발생했습니다.' 
    }, 500)
  }
})

// 리뷰 작성 (일반 고객용)
app.post('/api/facilities/:id/reviews', async (c) => {
  const { env } = c
  const facilityId = c.req.param('id')
  
  if (!isCustomer(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  if (!env?.DB) {
    return c.json({ success: false, message: '데이터베이스 연결 실패' }, 500)
  }
  
  try {
    const data = await c.req.json()
    
    // 필수 필드 검증
    if (!data.overall_rating || data.overall_rating < 1 || data.overall_rating > 5) {
      return c.json({ 
        success: false, 
        message: '전체 평점은 1-5점 사이여야 합니다.' 
      }, 400)
    }
    
    // 리뷰 저장
    const result = await env.DB.prepare(`
      INSERT INTO facility_reviews (
        facility_id,
        reviewer_name,
        overall_rating,
        cleanliness_rating,
        staff_rating,
        food_rating,
        facilities_rating,
        comment,
        pros,
        cons,
        stay_duration,
        created_at
      ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, datetime('now'))
    `).bind(
      facilityId,
      data.reviewer_name || '익명',
      data.overall_rating,
      data.cleanliness_rating || data.overall_rating,
      data.staff_rating || data.overall_rating,
      data.food_rating || data.overall_rating,
      data.facilities_rating || data.overall_rating,
      data.comment || '',
      data.pros || '',
      data.cons || '',
      data.stay_duration || ''
    ).run()
    
    return c.json({
      success: true,
      message: '리뷰가 등록되었습니다.',
      reviewId: result.meta.last_row_id
    })
  } catch (error) {
    console.error('❌ 리뷰 작성 실패:', error)
    return c.json({ 
      success: false, 
      message: '리뷰 작성 중 오류가 발생했습니다.' 
    }, 500)
  }
})

// 피드백 기록 (클릭/노출 통계)
app.post('/api/feedback/click', async (c) => {
  const { env } = c
  
  if (!env?.DB) {
    return c.json({ success: false }, 500)
  }
  
  try {
    const { facilityId, action } = await c.req.json()
    
    if (action === 'click') {
      // 클릭 수 증가
      await env.DB.prepare(`
        INSERT INTO feedback_stats (facility_id, clicks, last_clicked)
        VALUES (?, 1, datetime('now'))
        ON CONFLICT(facility_id) DO UPDATE SET
          clicks = clicks + 1,
          last_clicked = datetime('now')
      `).bind(facilityId).run()
    }
    
    return c.json({ success: true })
  } catch (error) {
    console.error('❌ 피드백 기록 실패:', error)
    return c.json({ success: false }, 500)
  }
})

// 피드백 통계 조회 (관리자용)
app.get('/api/admin/feedback/stats', async (c) => {
  const { env } = c
  
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  if (!env?.DB) {
    return c.json({ success: false, message: '데이터베이스 연결 실패' }, 500)
  }
  
  try {
    const result = await env.DB.prepare(`
      SELECT 
        fs.facility_id,
        fs.impressions,
        fs.clicks,
        ROUND(CAST(fs.clicks AS FLOAT) / NULLIF(fs.impressions, 0) * 100, 2) as ctr,
        fs.rating,
        fs.last_shown,
        fs.last_clicked
      FROM feedback_stats fs
      ORDER BY fs.impressions DESC
      LIMIT 100
    `).all()
    
    return c.json({
      success: true,
      stats: result.results || []
    })
  } catch (error) {
    console.error('❌ 피드백 통계 조회 실패:', error)
    return c.json({ 
      success: false, 
      message: '통계 조회 중 오류가 발생했습니다.' 
    }, 500)
  }
})

// 피드백 분석 API (대시보드용)
app.get('/api/admin/feedback/analytics', async (c) => {
  const { env } = c
  
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  if (!env?.DB) {
    return c.json({ success: false, message: '데이터베이스 연결 실패' }, 500)
  }
  
  try {
    // 1. 최근 7일 피드백 추이
    const recentFeedback = await env.DB.prepare(`
      SELECT 
        DATE(created_at) as date,
        COUNT(*) as count,
        AVG(rating) as avg_rating
      FROM user_feedback
      WHERE created_at >= datetime('now', '-7 days')
      GROUP BY DATE(created_at)
      ORDER BY date DESC
    `).all()
    
    // 2. 전체 통계
    const overallStats = await env.DB.prepare(`
      SELECT 
        COUNT(*) as total_feedback,
        AVG(rating) as avg_rating,
        SUM(CASE WHEN rating >= 4 THEN 1 ELSE 0 END) as positive_count,
        SUM(CASE WHEN rating <= 2 THEN 1 ELSE 0 END) as negative_count
      FROM user_feedback
    `).first()
    
    // 3. 매칭 결과 통계
    const matchingStats = await env.DB.prepare(`
      SELECT 
        COUNT(*) as total_matches,
        AVG(result_count) as avg_results,
        MIN(result_count) as min_results,
        MAX(result_count) as max_results
      FROM user_feedback
      WHERE result_count > 0
    `).first()
    
    // 4. 최근 피드백 목록
    const recentList = await env.DB.prepare(`
      SELECT 
        id, user_id, rating, comment, result_count,
        created_at
      FROM user_feedback
      ORDER BY created_at DESC
      LIMIT 10
    `).all()
    
    return c.json({
      success: true,
      analytics: {
        trend: recentFeedback.results || [],
        overall: overallStats || {
          total_feedback: 0,
          avg_rating: 0,
          positive_count: 0,
          negative_count: 0
        },
        matching: matchingStats || {
          total_matches: 0,
          avg_results: 0,
          min_results: 0,
          max_results: 0
        },
        recent: recentList.results || []
      }
    })
  } catch (error) {
    console.error('❌ 피드백 분석 조회 실패:', error)
    return c.json({ 
      success: false, 
      message: '분석 조회 중 오류가 발생했습니다.',
      error: String(error)
    }, 500)
  }
})

// ============================================
// 📋 시설 상세 정보 관리 API
// ============================================

// 시설 상세 정보 조회 (관리자용)
app.get('/api/admin/facilities/:id/details', async (c) => {
  const { env } = c
  const facilityId = c.req.param('id')
  
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  if (!env?.DB) {
    return c.json({ success: false, message: '데이터베이스 연결 실패' }, 500)
  }
  
  try {
    const result = await env.DB.prepare(`
      SELECT 
        facility_id,
        specialties,
        specialized_care,
        admission_types,
        operating_hours,
        min_stay_period,
        short_term_available,
        monthly_cost,
        deposit,
        daily_cost,
        additional_costs,
        total_beds,
        available_beds,
        notes,
        updated_by,
        updated_at,
        average_cost_min,
        average_cost_max,
        services,
        description
      FROM facility_details
      WHERE facility_id = ?
    `).bind(facilityId).first()
    
    if (!result) {
      // 상세 정보가 없으면 빈 구조 반환
      return c.json({
        success: true,
        details: {
          facility_id: parseInt(facilityId),
          specialties: [],
          specialized_care: [],
          admission_types: [],
          operating_hours: {},
          min_stay_period: '',
          short_term_available: 0,
          monthly_cost: 0,
          deposit: 0,
          daily_cost: 0,
          additional_costs: {},
          total_beds: 0,
          available_beds: 0,
          notes: '',
          updated_by: '',
          updated_at: null
        }
      })
    }
    
    // JSON 파싱
    const parseJSON = (str: string | null, defaultVal: any) => {
      if (!str) return defaultVal
      try {
        return JSON.parse(str)
      } catch {
        return defaultVal
      }
    }
    
    return c.json({
      success: true,
      details: {
        facility_id: result.facility_id,
        specialties: parseJSON(result.specialties, []),
        specialized_care: parseJSON(result.specialized_care, []),
        admission_types: parseJSON(result.admission_types, []),
        operating_hours: parseJSON(result.operating_hours, {}),
        min_stay_period: result.min_stay_period || '',
        short_term_available: result.short_term_available || 0,
        monthly_cost: result.monthly_cost || 0,
        deposit: result.deposit || 0,
        daily_cost: result.daily_cost || 0,
        additional_costs: parseJSON(result.additional_costs, {}),
        total_beds: result.total_beds || 0,
        available_beds: result.available_beds || 0,
        notes: result.notes || '',
        updated_by: result.updated_by || '',
        updated_at: result.updated_at,
        // 기존 필드들
        average_cost_min: result.average_cost_min,
        average_cost_max: result.average_cost_max,
        services: result.services,
        description: result.description
      }
    })
  } catch (error) {
    console.error('❌ 시설 상세 정보 조회 실패:', error)
    return c.json({ 
      success: false, 
      message: '조회 중 오류가 발생했습니다.',
      error: String(error)
    }, 500)
  }
})

// 시설 상세 정보 저장/업데이트 (관리자용)
app.put('/api/admin/facilities/:id/details', async (c) => {
  const { env } = c
  const facilityId = c.req.param('id')
  
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  if (!env?.DB) {
    return c.json({ success: false, message: '데이터베이스 연결 실패' }, 500)
  }
  
  try {
    const data = await c.req.json()
    
    // 관리자 정보 추출
    const user = getUserFromCookie(c)
    const updatedBy = user?.email || 'admin'
    
    // JSON 문자열로 변환
    const toJSON = (val: any) => {
      if (val === null || val === undefined) return '[]'
      if (typeof val === 'string') return val
      return JSON.stringify(val)
    }
    
    console.log('📝 시설 상세 정보 저장:', {
      facilityId,
      updatedBy,
      data
    })
    
    // UPSERT (INSERT or UPDATE)
    await env.DB.prepare(`
      INSERT INTO facility_details (
        facility_id,
        specialties,
        specialized_care,
        admission_types,
        operating_hours,
        min_stay_period,
        short_term_available,
        monthly_cost,
        deposit,
        daily_cost,
        additional_costs,
        total_beds,
        available_beds,
        notes,
        updated_by,
        updated_at
      ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, datetime('now'))
      ON CONFLICT(facility_id) DO UPDATE SET
        specialties = excluded.specialties,
        specialized_care = excluded.specialized_care,
        admission_types = excluded.admission_types,
        operating_hours = excluded.operating_hours,
        min_stay_period = excluded.min_stay_period,
        short_term_available = excluded.short_term_available,
        monthly_cost = excluded.monthly_cost,
        deposit = excluded.deposit,
        daily_cost = excluded.daily_cost,
        additional_costs = excluded.additional_costs,
        total_beds = excluded.total_beds,
        available_beds = excluded.available_beds,
        notes = excluded.notes,
        updated_by = excluded.updated_by,
        updated_at = datetime('now')
    `).bind(
      facilityId,
      toJSON(data.specialties),
      toJSON(data.specialized_care),
      toJSON(data.admission_types),
      toJSON(data.operating_hours),
      data.min_stay_period || '',
      data.short_term_available ? 1 : 0,
      data.monthly_cost || 0,
      data.deposit || 0,
      data.daily_cost || 0,
      toJSON(data.additional_costs),
      data.total_beds || 0,
      data.available_beds || 0,
      data.notes || '',
      updatedBy
    ).run()
    
    console.log('✅ 시설 상세 정보 저장 완료')
    
    return c.json({
      success: true,
      message: '시설 정보가 저장되었습니다.',
      updated_by: updatedBy
    })
  } catch (error) {
    console.error('❌ 시설 상세 정보 저장 실패:', error)
    return c.json({ 
      success: false, 
      message: '저장 중 오류가 발생했습니다.',
      error: String(error)
    }, 500)
  }
})

// ========== 대량 데이터 삽입 API ==========
app.post('/api/admin/bulk-insert-details', async (c) => {
  const { env } = c
  
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  if (!env?.DB) {
    return c.json({ success: false, message: '데이터베이스 연결 실패' }, 500)
  }
  
  try {
    const data = await c.req.json()
    const details = Array.isArray(data) ? data : data.details || []
    
    console.log(`🚀 대량 삽입 시작: ${details.length}개 시설`)
    
    let successCount = 0
    let failCount = 0
    const errors: any[] = []
    
    // 배치 처리 (50개씩)
    const BATCH_SIZE = 50
    for (let i = 0; i < details.length; i += BATCH_SIZE) {
      const batch = details.slice(i, i + BATCH_SIZE)
      
      console.log(`📦 배치 ${Math.floor(i / BATCH_SIZE) + 1}/${Math.ceil(details.length / BATCH_SIZE)} (${i + 1}~${Math.min(i + BATCH_SIZE, details.length)})`)
      
      for (const item of batch) {
        try {
          const toJSON = (val: any) => {
            if (val === null || val === undefined) return '[]'
            if (typeof val === 'string') return val
            if (Array.isArray(val)) return JSON.stringify(val)
            return JSON.stringify(val)
          }
          
          await env.DB.prepare(`
            INSERT INTO facility_details (
              facility_id,
              specialties,
              admission_types,
              monthly_cost,
              deposit,
              notes,
              updated_by,
              updated_at
            ) VALUES (?, ?, ?, ?, ?, ?, ?, datetime('now'))
            ON CONFLICT(facility_id) DO UPDATE SET
              specialties = excluded.specialties,
              admission_types = excluded.admission_types,
              monthly_cost = excluded.monthly_cost,
              deposit = excluded.deposit,
              notes = excluded.notes,
              updated_by = excluded.updated_by,
              updated_at = datetime('now')
          `).bind(
            item.facility_id,
            toJSON(item.specialties),
            toJSON(item.admissionTypes),
            item.monthly_cost || 0,
            item.deposit || 0,
            '자동 생성 데이터',
            'auto_generator'
          ).run()
          
          successCount++
        } catch (error) {
          failCount++
          errors.push({
            facility_id: item.facility_id,
            error: String(error)
          })
          console.error(`❌ 시설 ${item.facility_id} 삽입 실패:`, error)
        }
      }
      
      // 진행률 표시
      console.log(`📈 진행률: ${Math.round((i + batch.length) / details.length * 100)}% (${successCount}/${details.length})`)
    }
    
    console.log(`✅ 대량 삽입 완료: 성공 ${successCount}개, 실패 ${failCount}개`)
    
    return c.json({
      success: true,
      total: details.length,
      successCount,
      failCount,
      successRate: (successCount / details.length * 100).toFixed(1) + '%',
      errors: errors.slice(0, 10) // 처음 10개 에러만 반환
    })
  } catch (error) {
    console.error('❌ 대량 삽입 실패:', error)
    return c.json({
      success: false,
      message: '대량 삽입 중 오류가 발생했습니다.',
      error: String(error)
    }, 500)
  }
})

// ========== SEO: robots.txt ==========
app.get('/robots.txt', (c) => {
  const robotsTxt = `User-agent: *
Allow: /
Allow: /facility/*
Allow: /facilities
Allow: /ai-matching
Allow: /call-consultation

Disallow: /admin
Disallow: /api/*
Disallow: /login

Sitemap: https://carejoa.kr/sitemap.xml

# 검색 엔진별 크롤링 속도 제한
Crawl-delay: 1
`
  
  c.header('Content-Type', 'text/plain')
  return c.text(robotsTxt)
})

// ========== Cloudflare Workers 설정 ==========

export default {
  fetch: app.fetch
  
  // 참고: Cloudflare Pages는 Cron Triggers를 지원하지 않습니다
  // 대표시설 자동 업데이트는 POST /api/admin/update-representative-facilities API를 통해 수동으로 트리거하거나
  // 외부 Cron 서비스(예: GitHub Actions, Uptime Robot 등)를 통해 주기적으로 호출할 수 있습니다
}


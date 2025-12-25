import { Hono } from 'hono'
import { renderer } from './renderer'
import { cors } from 'hono/cors'
import { serveStatic } from 'hono/cloudflare-workers'
import { getCookie, setCookie } from 'hono/cookie'

type Bindings = {
  ADMIN_PASSWORD: string
  DB: D1Database
}

const app = new Hono<{ Bindings: Bindings }>()

const ADMIN_CONFIG = { sessionKey: 'admin_session' }
const KAKAO_CONFIG = {
  restApiKey: '2610d68cb41f3ceba40f42f1f7fe5e91',
  redirectUri: 'https://3000-i9rvbxi0ydi8a2ltypzm7-cbeee0f9.sandbox.novita.ai/api/auth/kakao/callback'
}
const dataStore = { 
  partners: [] as any[], 
  familyCare: [] as any[],
  quoteRequests: [] as any[],
  facilities: [] as any[],  // 시설 데이터 캐시
  facilitiesLoaded: false,   // 로딩 여부 플래그
  users: [] as any[],        // 사용자 데이터
  userSessions: new Map<string, any>()  // 사용자 세션
}
const sessions = new Set<string>()

// 사용자 타입 정의
type UserType = 'customer' | 'facility'
type FacilityType = '요양병원' | '요양원' | '주야간보호' | '재가복지센터'

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
function getUser(c: any) {
  const sessionId = getCookie(c, 'user_session')
  if (!sessionId) return null
  return dataStore.userSessions.get(sessionId) || null
}

function requireAuth(userType?: UserType) {
  return async (c: any, next: any) => {
    const user = getUser(c)
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
      <script src="https://cdn.tailwindcss.com"></script>
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
              <label class="block text-sm font-medium text-gray-700 mb-3">로그인 유형</label>
              <div class="grid grid-cols-2 gap-3">
                <button type="button" id="btnCustomer" onclick="selectUserType('customer')"
                  class="px-4 py-3 border-2 border-teal-600 bg-teal-600 text-white rounded-lg hover:bg-teal-700 transition-colors font-medium">
                  <i class="fas fa-user mr-2"></i>고객
                </button>
                <button type="button" id="btnFacility" onclick="selectUserType('facility')"
                  class="px-4 py-3 border-2 border-gray-300 text-gray-700 rounded-lg hover:border-teal-600 hover:text-teal-600 transition-colors font-medium">
                  <i class="fas fa-building mr-2"></i>시설
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
          </div>
        </div>
      </div>

      <script>
        let selectedUserType = 'customer';

        function selectUserType(type) {
          selectedUserType = type;
          const btnCustomer = document.getElementById('btnCustomer');
          const btnFacility = document.getElementById('btnFacility');

          if (type === 'customer') {
            btnCustomer.className = 'px-4 py-3 border-2 border-teal-600 bg-teal-600 text-white rounded-lg hover:bg-teal-700 transition-colors font-medium';
            btnFacility.className = 'px-4 py-3 border-2 border-gray-300 text-gray-700 rounded-lg hover:border-teal-600 hover:text-teal-600 transition-colors font-medium';
          } else {
            btnFacility.className = 'px-4 py-3 border-2 border-teal-600 bg-teal-600 text-white rounded-lg hover:bg-teal-700 transition-colors font-medium';
            btnCustomer.className = 'px-4 py-3 border-2 border-gray-300 text-gray-700 rounded-lg hover:border-teal-600 hover:text-teal-600 transition-colors font-medium';
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
              } else {
                window.location.href = '/dashboard/facility';
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
    </body>
    </html>
  `)
})

// 로그인 API
app.post('/api/auth/login', async (c) => {
  const { email, password, type } = await c.req.json()
  
  const user = dataStore.users.find(u => 
    u.email === email && 
    u.password === password &&
    u.type === type
  )

  if (!user) {
    return c.json({ success: false, message: '이메일 또는 비밀번호가 올바르지 않습니다.' })
  }

  const sessionId = generateSessionId()
  dataStore.userSessions.set(sessionId, user)
  
  setCookie(c, 'user_session', sessionId, {
    httpOnly: true,
    secure: false,
    sameSite: 'Lax',
    maxAge: 60 * 60 * 24 * 7 // 7일
  })

  return c.json({ 
    success: true, 
    message: '로그인 성공',
    user: {
      id: user.id,
      email: user.email,
      name: user.name,
      type: user.type,
      facilityType: user.facilityType
    }
  })
})

// 로그아웃 API
app.post('/api/auth/logout', (c) => {
  const sessionId = getCookie(c, 'user_session')
  if (sessionId) {
    dataStore.userSessions.delete(sessionId)
  }
  
  setCookie(c, 'user_session', '', {
    httpOnly: true,
    maxAge: 0
  })

  return c.json({ success: true, message: '로그아웃되었습니다.' })
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
      <script src="https://cdn.tailwindcss.com"></script>
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
              <label class="block text-sm font-medium text-gray-700 mb-3">가입 유형</label>
              <div class="grid grid-cols-2 gap-3">
                <button type="button" id="btnCustomer" onclick="selectUserType('customer')"
                  class="px-4 py-3 border-2 border-teal-600 bg-teal-600 text-white rounded-lg hover:bg-teal-700 transition-colors font-medium">
                  <i class="fas fa-user mr-2"></i>고객
                </button>
                <button type="button" id="btnFacility" onclick="selectUserType('facility')"
                  class="px-4 py-3 border-2 border-gray-300 text-gray-700 rounded-lg hover:border-teal-600 hover:text-teal-600 transition-colors font-medium">
                  <i class="fas fa-building mr-2"></i>시설
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

                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">시설 유형 *</label>
                  <select id="facilityType"
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent">
                    <option value="">선택하세요</option>
                    <option value="요양병원">요양병원</option>
                    <option value="요양원">요양원</option>
                    <option value="주야간보호">주야간보호</option>
                    <option value="재가복지센터">재가복지센터</option>
                  </select>
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">시설 주소 *</label>
                  <input type="text" id="address" placeholder="서울특별시 강남구"
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent" />
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">사업자등록번호</label>
                  <input type="text" id="businessNumber" placeholder="123-45-67890"
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent" />
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
          const facilityFields = document.getElementById('facilityFields');

          if (type === 'customer') {
            btnCustomer.className = 'px-4 py-3 border-2 border-teal-600 bg-teal-600 text-white rounded-lg hover:bg-teal-700 transition-colors font-medium';
            btnFacility.className = 'px-4 py-3 border-2 border-gray-300 text-gray-700 rounded-lg hover:border-teal-600 hover:text-teal-600 transition-colors font-medium';
            facilityFields.style.display = 'none';
          } else {
            btnFacility.className = 'px-4 py-3 border-2 border-teal-600 bg-teal-600 text-white rounded-lg hover:bg-teal-700 transition-colors font-medium';
            btnCustomer.className = 'px-4 py-3 border-2 border-gray-300 text-gray-700 rounded-lg hover:border-teal-600 hover:text-teal-600 transition-colors font-medium';
            facilityFields.style.display = 'block';
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

          const data = {
            email,
            password,
            name,
            phone,
            type: selectedUserType
          };

          if (selectedUserType === 'facility') {
            const facilityType = document.getElementById('facilityType').value;
            const address = document.getElementById('address').value;
            const businessNumber = document.getElementById('businessNumber').value;

            if (!facilityType || !address) {
              alert('시설 유형과 주소를 입력해주세요.');
              return;
            }

            data.facilityType = facilityType;
            data.address = address;
            data.businessNumber = businessNumber;
          }

          try {
            const response = await fetch('/api/auth/register', {
              method: 'POST',
              headers: { 'Content-Type': 'application/json' },
              body: JSON.stringify(data)
            });

            const result = await response.json();

            if (result.success) {
              alert('회원가입이 완료되었습니다! 로그인해주세요.');
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
  
  // 이메일 중복 체크
  const existingUser = dataStore.users.find(u => u.email === data.email)
  if (existingUser) {
    return c.json({ success: false, message: '이미 사용 중인 이메일입니다.' })
  }

  // 새 사용자 생성
  const newUser = {
    id: `user_${Date.now()}_${Math.random().toString(36).substring(2)}`,
    email: data.email,
    password: data.password, // 실제로는 해시화 필요
    name: data.name,
    phone: data.phone,
    type: data.type,
    createdAt: new Date().toISOString()
  }

  // 시설인 경우 추가 정보
  if (data.type === 'facility') {
    newUser.facilityType = data.facilityType
    newUser.address = data.address
    newUser.businessNumber = data.businessNumber
  }

  dataStore.users.push(newUser)

  return c.json({ 
    success: true, 
    message: '회원가입이 완료되었습니다.',
    userId: newUser.id
  })
})

// ========== 카카오 로그인 ==========

// 카카오 로그인 시작
app.get('/api/auth/kakao/login', (c) => {
  const kakaoAuthUrl = `https://kauth.kakao.com/oauth/authorize?client_id=${KAKAO_CONFIG.restApiKey}&redirect_uri=${encodeURIComponent(KAKAO_CONFIG.redirectUri)}&response_type=code`
  return c.redirect(kakaoAuthUrl)
})

// 카카오 로그인 콜백
app.get('/api/auth/kakao/callback', async (c) => {
  const code = c.req.query('code')
  
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
        client_id: KAKAO_CONFIG.restApiKey,
        redirect_uri: KAKAO_CONFIG.redirectUri,
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
    
    // 3. 기존 사용자 확인
    const kakaoId = `kakao_${kakaoUser.id}`
    let user = dataStore.users.find(u => u.kakaoId === kakaoId)
    
    if (user) {
      // 기존 사용자 - 로그인 처리
      const sessionId = generateSessionId()
      dataStore.userSessions.set(sessionId, user)
      
      setCookie(c, 'user_session', sessionId, {
        httpOnly: true,
        secure: false,
        sameSite: 'Lax',
        maxAge: 60 * 60 * 24 * 7
      })

      // 대시보드로 리다이렉트
      if (user.type === 'customer') {
        return c.redirect('/dashboard/customer')
      } else {
        return c.redirect('/dashboard/facility')
      }
    } else {
      // 신규 사용자 - 회원 타입 선택 페이지로
      // 임시로 카카오 정보를 세션에 저장
      const tempSessionId = generateSessionId()
      dataStore.userSessions.set(tempSessionId, {
        kakaoId: kakaoId,
        email: kakaoUser.kakao_account?.email || '',
        name: kakaoUser.properties?.nickname || '카카오사용자',
        profileImage: kakaoUser.properties?.profile_image || ''
      })
      
      setCookie(c, 'kakao_temp_session', tempSessionId, {
        httpOnly: true,
        secure: false,
        sameSite: 'Lax',
        maxAge: 60 * 10 // 10분
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
      <script src="https://cdn.tailwindcss.com"></script>
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
  
  if (!tempSessionId) {
    return c.json({ success: false, message: '세션이 만료되었습니다.' })
  }

  const kakaoInfo = dataStore.userSessions.get(tempSessionId)
  
  if (!kakaoInfo) {
    return c.json({ success: false, message: '세션 정보를 찾을 수 없습니다.' })
  }

  const { type, facilityType } = await c.req.json()

  // 새 사용자 생성
  const newUser = {
    id: `user_${Date.now()}_${Math.random().toString(36).substring(2)}`,
    kakaoId: kakaoInfo.kakaoId,
    email: kakaoInfo.email,
    name: kakaoInfo.name,
    profileImage: kakaoInfo.profileImage,
    phone: '',
    type: type,
    createdAt: new Date().toISOString()
  }

  if (type === 'facility') {
    newUser.facilityType = facilityType
    newUser.address = ''
    newUser.businessNumber = ''
  }

  dataStore.users.push(newUser)

  // 임시 세션 삭제
  dataStore.userSessions.delete(tempSessionId)
  setCookie(c, 'kakao_temp_session', '', { maxAge: 0 })

  // 정식 로그인 세션 생성
  const sessionId = generateSessionId()
  dataStore.userSessions.set(sessionId, newUser)
  
  setCookie(c, 'user_session', sessionId, {
    httpOnly: true,
    secure: false,
    sameSite: 'Lax',
    maxAge: 60 * 60 * 24 * 7
  })

  return c.json({ 
    success: true, 
    message: '회원가입이 완료되었습니다.',
    userId: newUser.id
  })
})

// ========== 대시보드 라우트 ========== (대시보드는 다음에 구현)

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
              <a href="/login" class="bg-teal-600 text-white hover:bg-teal-700 px-3 py-2 rounded-lg">
                <i class="fas fa-sign-in-alt mr-1"></i>로그인
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
              </div>

              {/* 특허기반 실시간 요양견적 및 상담 플랫폼 안내 */}
              <div class="bg-gradient-to-r from-blue-50 to-teal-50 border-2 border-blue-200 rounded-2xl p-6 mb-6 shadow-lg">
                <div class="flex items-center justify-center text-center">
                  <div>
                    <div class="flex items-center justify-center mb-2">
                      <i class="fas fa-certificate text-blue-600 text-2xl mr-2"></i>
                      <span class="text-lg font-bold text-blue-800">특허기반 실시간 요양견적 및 상담 플랫폼</span>
                    </div>
                    <p class="text-sm text-gray-600">희망하는 지역의 모든 시설 정보를 실시간으로 받아볼 수 있어요</p>
                  </div>
                </div>
              </div>

              {/* 주요 액션 버튼 그리드 (2x2) */}
              <div class="grid grid-cols-2 gap-3 md:gap-4 mb-8">
                {/* 1. Android 앱 다운로드 */}
                <a href="https://play.google.com/store/apps/details?id=app.netlify.std_care_joa.twa" 
                   target="_blank" rel="noopener noreferrer"
                   class="flex flex-col items-center justify-center bg-gradient-to-br from-blue-500 to-blue-600 text-white py-6 px-4 rounded-2xl shadow-lg hover:from-blue-600 hover:to-blue-700 transition-all duration-300 transform hover:scale-105 min-h-[120px]">
                  <div class="bg-white bg-opacity-20 rounded-xl p-3 mb-3">
                    <i class="fas fa-mobile-alt text-3xl"></i>
                  </div>
                  <span class="font-bold text-center">Android<br/>앱 다운로드</span>
                </a>

                {/* 2. 실시간 견적 */}
                <a href="https://carejoa.com"
                   target="_blank"
                   rel="noopener noreferrer"
                   class="flex flex-col items-center justify-center bg-gradient-to-br from-amber-100 to-orange-100 text-gray-800 border-2 border-orange-200 py-6 px-4 rounded-2xl shadow-lg hover:from-amber-200 hover:to-orange-200 transition-all duration-300 transform hover:scale-105 min-h-[120px]">
                  <div class="bg-orange-200 rounded-xl p-3 mb-3">
                    <i class="fas fa-clipboard text-3xl text-orange-600"></i>
                  </div>
                  <span class="font-bold text-center">실시간 견적<br/>상담 신청</span>
                </a>

                {/* 3. 지역별 전화상담 */}
                <a href="/regional-consultation"
                   class="flex flex-col items-center justify-center bg-gradient-to-br from-green-500 to-emerald-600 text-white py-6 px-4 rounded-2xl shadow-lg hover:from-green-600 hover:to-emerald-700 transition-all duration-300 transform hover:scale-105 min-h-[120px]">
                  <div class="bg-white bg-opacity-20 rounded-xl p-3 mb-3">
                    <i class="fas fa-phone-alt text-3xl"></i>
                  </div>
                  <span class="font-bold text-center">지역별<br/>전화상담</span>
                </a>

                {/* 4. 전국 시설 찾기 */}
                <a href="/facilities"
                   class="flex flex-col items-center justify-center bg-gradient-to-br from-purple-500 to-pink-600 text-white py-6 px-4 rounded-2xl shadow-lg hover:from-purple-600 hover:to-pink-700 transition-all duration-300 transform hover:scale-105 min-h-[120px]">
                  <div class="bg-white bg-opacity-20 rounded-xl p-3 mb-3">
                    <i class="fas fa-search text-3xl"></i>
                  </div>
                  <span class="font-bold text-center">전국<br/>시설 찾기</span>
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
                <i class="fas fa-hospital text-2xl text-white"></i>
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

      {/* 견적 테스트 섹션 */}
      <section class="py-16 bg-gradient-to-br from-yellow-50 to-orange-50 border-t-4 border-yellow-400">
        <div class="max-w-7xl mx-auto px-4">
          <div class="text-center mb-8">
            <div class="inline-block bg-yellow-100 text-yellow-800 px-4 py-2 rounded-full text-sm font-semibold mb-4">
              <i class="fas fa-flask mr-2"></i>테스트 버전
            </div>
            <h3 class="text-3xl font-bold text-gray-900 mb-4">
              <i class="fas fa-vial text-yellow-600 mr-3"></i>견적 테스트
            </h3>
            <p class="text-lg text-gray-600">새로운 견적 시스템을 테스트해보세요 (개발 중)</p>
          </div>
          
          <div class="grid md:grid-cols-3 gap-6 max-w-5xl mx-auto">
            {/* 간편견적 테스트 */}
            <div class="bg-white rounded-2xl shadow-lg p-6 hover:shadow-xl transition-all duration-300 border-2 border-blue-200">
              <div class="text-center">
                <div class="w-16 h-16 bg-blue-100 rounded-full flex items-center justify-center mx-auto mb-4">
                  <i class="fas fa-bolt text-3xl text-blue-600"></i>
                </div>
                <h4 class="text-xl font-bold text-gray-900 mb-2">간편견적</h4>
                <p class="text-sm text-gray-600 mb-6">3단계 빠른 신청</p>
                <a href="/quote-request" 
                   class="block bg-blue-600 text-white py-3 px-6 rounded-lg font-semibold hover:bg-blue-700 transition-colors">
                  <i class="fas fa-arrow-right mr-2"></i>테스트 시작
                </a>
              </div>
            </div>

            {/* 상세견적 테스트 */}
            <div class="bg-white rounded-2xl shadow-lg p-6 hover:shadow-xl transition-all duration-300 border-2 border-green-200">
              <div class="text-center">
                <div class="w-16 h-16 bg-green-100 rounded-full flex items-center justify-center mx-auto mb-4">
                  <i class="fas fa-file-alt text-3xl text-green-600"></i>
                </div>
                <h4 class="text-xl font-bold text-gray-900 mb-2">상세견적</h4>
                <p class="text-sm text-gray-600 mb-6">맞춤형 상세 정보 입력</p>
                <a href="/quote-simple" 
                   class="block bg-green-600 text-white py-3 px-6 rounded-lg font-semibold hover:bg-green-700 transition-colors">
                  <i class="fas fa-arrow-right mr-2"></i>테스트 시작
                </a>
              </div>
            </div>

            {/* 관리자 테스트 */}
            <div class="bg-white rounded-2xl shadow-lg p-6 hover:shadow-xl transition-all duration-300 border-2 border-purple-200">
              <div class="text-center">
                <div class="w-16 h-16 bg-purple-100 rounded-full flex items-center justify-center mx-auto mb-4">
                  <i class="fas fa-shield-alt text-3xl text-purple-600"></i>
                </div>
                <h4 class="text-xl font-bold text-gray-900 mb-2">관리자</h4>
                <p class="text-sm text-gray-600 mb-6">승인/거부 시스템</p>
                <a href="/admin" 
                   class="block bg-purple-600 text-white py-3 px-6 rounded-lg font-semibold hover:bg-purple-700 transition-colors">
                  <i class="fas fa-arrow-right mr-2"></i>테스트 시작
                </a>
              </div>
            </div>
          </div>

          {/* 테스트 안내 */}
          <div class="mt-8 bg-yellow-100 border-l-4 border-yellow-500 p-4 rounded max-w-3xl mx-auto">
            <div class="flex">
              <div class="flex-shrink-0">
                <i class="fas fa-info-circle text-yellow-600 text-xl"></i>
              </div>
              <div class="ml-3">
                <p class="text-sm text-yellow-800">
                  <strong class="font-semibold">테스트 기능:</strong> 견적 신청, 파트너 승인/거부, 지역 필터링이 구현되었습니다.
                  테스트 완료 후 메인 버튼으로 교체 예정입니다.
                </p>
              </div>
            </div>
          </div>

          {/* 테스트 통계 (선택사항) */}
          <div class="mt-8 grid grid-cols-3 gap-4 max-w-2xl mx-auto">
            <div class="bg-white rounded-lg p-4 text-center shadow">
              <div class="text-2xl font-bold text-blue-600">NEW</div>
              <div class="text-xs text-gray-600 mt-1">간편견적</div>
            </div>
            <div class="bg-white rounded-lg p-4 text-center shadow">
              <div class="text-2xl font-bold text-green-600">NEW</div>
              <div class="text-xs text-gray-600 mt-1">승인시스템</div>
            </div>
            <div class="bg-white rounded-lg p-4 text-center shadow">
              <div class="text-2xl font-bold text-purple-600">NEW</div>
              <div class="text-xs text-gray-600 mt-1">지역필터</div>
            </div>
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
      </header>

      <section class="py-8 bg-gray-50 min-h-screen">
        <div class="max-w-7xl mx-auto px-4">
          {/* 페이지 헤더 */}
          <div class="mb-6">
            <h2 class="text-3xl font-bold text-gray-900 mb-2 flex items-center">
              <i class="fas fa-search text-purple-600 mr-3"></i>
              전국 시설 찾기
            </h2>
            <p class="text-gray-600">전국 요양시설을 검색하고 비교하세요</p>
          </div>

          {/* 검색 필터 */}
          <div class="bg-white rounded-xl shadow-lg p-6 mb-6">
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
          </div>

          {/* 시설 목록 */}
          <div id="facilitiesList" class="space-y-4">
            {/* 시설 카드들이 동적으로 삽입됩니다 */}
          </div>

          {/* 로딩 표시 */}
          <div id="loadingSpinner" class="text-center py-12">
            <i class="fas fa-spinner fa-spin text-4xl text-purple-600"></i>
            <p class="text-gray-600 mt-4">시설 데이터를 불러오는 중...</p>
          </div>

          {/* 결과 없음 메시지 */}
          <div id="noResults" class="hidden bg-white rounded-xl shadow-lg p-12 text-center">
            <i class="fas fa-search text-6xl text-gray-300 mb-4"></i>
            <h3 class="text-2xl font-bold text-gray-700 mb-2">검색 결과가 없습니다</h3>
            <p class="text-gray-500">다른 조건으로 검색해 주세요</p>
          </div>
        </div>
      </section>

      {/* JavaScript for Facilities Search */}
      <script dangerouslySetInnerHTML={{__html: `
        let allFacilities = [];
        let filteredFacilities = [];

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
            const response = await fetch('/static/facilities.json');
            allFacilities = await response.json();
            filteredFacilities = [...allFacilities];
            
            document.getElementById('loadingSpinner').style.display = 'none';
            displayFacilities();
          } catch (error) {
            console.error('시설 데이터 로딩 오류:', error);
            document.getElementById('loadingSpinner').innerHTML = \`
              <i class="fas fa-exclamation-circle text-4xl text-red-600"></i>
              <p class="text-gray-600 mt-4">데이터를 불러오는데 실패했습니다</p>
            \`;
          }
        }

        // 시설 목록 표시
        function displayFacilities() {
          const listEl = document.getElementById('facilitiesList');
          const noResultsEl = document.getElementById('noResults');
          
          if (filteredFacilities.length === 0) {
            listEl.style.display = 'none';
            noResultsEl.classList.remove('hidden');
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
                    <h3 class="text-xl font-bold text-gray-900">\${facility.name}</h3>
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
              
              <div class="mt-4 pt-4 border-t flex gap-2">
                <button 
                  onclick="showOnMap(\${facility.lat}, \${facility.lng}, '\${facility.name}')"
                  class="flex-1 bg-blue-500 text-white py-2 px-4 rounded-lg hover:bg-blue-600 transition-colors text-sm font-medium"
                >
                  <i class="fas fa-map-marked-alt mr-2"></i>지도에서 보기
                </button>
                <a 
                  href="tel:0507-1310-5873"
                  class="flex-1 bg-green-500 text-white py-2 px-4 rounded-lg hover:bg-green-600 transition-colors text-sm font-medium text-center"
                >
                  <i class="fas fa-phone mr-2"></i>상담하기
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
        }

        // 지도 표시 (간단한 알림으로 대체)
        function showOnMap(lat, lng, name) {
          alert(\`\${name}\\n위도: \${lat}\\n경도: \${lng}\\n\\n지도 기능은 곧 추가될 예정입니다.\`);
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
app.get('/regional-consultation', (c) => {
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
        <div class="max-w-6xl mx-auto px-4">
          {/* 페이지 헤더 */}
          <div class="text-center mb-12">
            <div class="inline-block bg-green-100 text-green-800 px-4 py-2 rounded-full text-sm font-semibold mb-4">
              <i class="fas fa-phone-alt mr-2"></i>전문 상담사 연결
            </div>
            <h2 class="text-4xl font-bold text-gray-900 mb-4">
              지역별 전화상담
            </h2>
            <p class="text-lg text-gray-600">희망하는 지역을 선택하시면 해당 지역 전문 상담사와 바로 연결됩니다</p>
          </div>

          {/* 지역 선택 폼 */}
          <div class="bg-white p-8 rounded-2xl shadow-lg mb-8">
            <div class="grid md:grid-cols-2 gap-6 mb-6">
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">
                  <i class="fas fa-map-marker-alt mr-1 text-red-500"></i>시/도 선택*
                </label>
                <select id="consultSido" required class="w-full p-4 border-2 border-gray-300 rounded-xl focus:border-green-500 focus:ring-2 focus:ring-green-200 transition-all">
                  <option value="">시/도를 선택하세요</option>
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
                  <i class="fas fa-map-pin mr-1 text-blue-500"></i>시/군/구 선택*
                </label>
                <select id="consultSigungu" required class="w-full p-4 border-2 border-gray-300 rounded-xl focus:border-green-500 focus:ring-2 focus:ring-green-200 transition-all">
                  <option value="">먼저 시/도를 선택하세요</option>
                </select>
              </div>
            </div>

            <div class="text-center">
              <button 
                id="searchConsultBtn"
                class="bg-gradient-to-r from-green-500 to-emerald-600 text-white px-12 py-4 rounded-xl hover:from-green-600 hover:to-emerald-700 transform hover:scale-105 font-bold text-lg shadow-lg transition-all duration-300"
              >
                <i class="fas fa-search mr-2"></i>상담센터 찾기
              </button>
            </div>
          </div>

          {/* 상담센터 결과 표시 영역 */}
          <div id="consultResults" class="hidden">
            <div class="bg-gradient-to-r from-blue-50 to-green-50 border-2 border-green-200 rounded-2xl p-6 mb-6">
              <div class="flex items-center justify-center text-center">
                <i class="fas fa-info-circle text-green-600 text-2xl mr-3"></i>
                <p class="text-gray-700">
                  선택하신 <strong id="selectedRegion" class="text-green-700"></strong> 지역의 상담센터를 안내해 드립니다
                </p>
              </div>
            </div>

            <div id="consultCentersList" class="grid md:grid-cols-2 gap-6">
              {/* 상담센터 카드들이 동적으로 삽입됩니다 */}
            </div>
          </div>

        </div>
      </section>

      {/* JavaScript for Regional Consultation */}
      <script dangerouslySetInnerHTML={{__html: `
        // 시도별 시군구 데이터 (동일한 데이터)
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
        document.getElementById('consultSido').addEventListener('change', function() {
          const sido = this.value;
          const sigunguSelect = document.getElementById('consultSigungu');
          
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

        // 상담센터 찾기 버튼 클릭
        document.getElementById('searchConsultBtn').addEventListener('click', async function() {
          const sido = document.getElementById('consultSido').value;
          const sigungu = document.getElementById('consultSigungu').value;
          
          if (!sido || !sigungu) {
            alert('시/도와 시/군/구를 모두 선택해주세요.');
            return;
          }

          try {
            const response = await axios.get('/api/regional-centers', {
              params: { sido, sigungu }
            });

            // 선택한 지역 표시
            document.getElementById('selectedRegion').textContent = sido + ' ' + sigungu;
            
            // 결과 영역 표시
            document.getElementById('consultResults').classList.remove('hidden');
            
            // 상담센터 목록 생성
            const centersList = document.getElementById('consultCentersList');
            
            if (response.data.centers && response.data.centers.length > 0) {
              centersList.innerHTML = response.data.centers.map(center => \`
                <div class="bg-white rounded-2xl shadow-lg p-6 border-2 border-green-200 hover:border-green-400 transition-all duration-300 transform hover:scale-105">
                  <div class="flex items-start justify-between mb-4">
                    <div>
                      <h4 class="text-xl font-bold text-gray-900 mb-2">\${center.facilityName}</h4>
                      <span class="inline-block bg-green-100 text-green-700 px-3 py-1 rounded-full text-sm font-semibold">
                        \${center.facilityType}
                      </span>
                    </div>
                    <i class="fas fa-hospital text-green-500 text-3xl"></i>
                  </div>
                  
                  <div class="space-y-3 mb-6">
                    <div class="flex items-center text-gray-600">
                      <i class="fas fa-map-marker-alt text-red-500 mr-2 w-5"></i>
                      <span class="text-sm">\${center.facilitySido} \${center.facilitySigungu}</span>
                    </div>
                    <div class="flex items-center text-gray-600">
                      <i class="fas fa-user text-blue-500 mr-2 w-5"></i>
                      <span class="text-sm">담당자: \${center.managerName}</span>
                    </div>
                    <div class="flex items-center text-gray-900 font-semibold">
                      <i class="fas fa-phone text-green-500 mr-2 w-5"></i>
                      <span>\${center.managerPhone}</span>
                    </div>
                  </div>
                  
                  <a href="tel:\${center.managerPhone}" 
                     class="block w-full bg-gradient-to-r from-green-500 to-emerald-600 text-white py-3 rounded-xl hover:from-green-600 hover:to-emerald-700 text-center font-bold transition-all duration-300">
                    <i class="fas fa-phone-alt mr-2"></i>전화 상담하기
                  </a>
                </div>
              \`).join('');
            } else {
              centersList.innerHTML = \`
                <div class="col-span-2 bg-yellow-50 border-2 border-yellow-300 rounded-2xl p-8 text-center">
                  <i class="fas fa-info-circle text-yellow-600 text-4xl mb-4"></i>
                  <h4 class="text-xl font-bold text-gray-800 mb-3">해당 지역 상담센터 준비 중</h4>
                  <p class="text-gray-600 mb-6">선택하신 지역의 전문 상담센터를 준비 중입니다.<br/>케어조아 대표 상담센터로 연결해 드리겠습니다.</p>
                  <a href="tel:0507-1310-5873" 
                     class="inline-flex items-center bg-gradient-to-r from-yellow-500 to-orange-500 text-white px-8 py-3 rounded-xl hover:from-yellow-600 hover:to-orange-600 font-bold transition-all duration-300">
                    <i class="fas fa-phone-alt mr-2"></i>0507-1310-5873
                  </a>
                </div>
              \`;
            }

            // 결과 영역으로 스크롤
            document.getElementById('consultResults').scrollIntoView({ behavior: 'smooth', block: 'start' });
          } catch (error) {
            console.error('상담센터 검색 오류:', error);
            alert('상담센터 정보를 불러오는데 실패했습니다. 대표번호(0507-1310-5873)로 연락해 주세요.');
          }
        });
      `}} />
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
              <button id="logoutBtn" class="bg-red-600 text-white px-4 py-2 rounded-lg hover:bg-red-700">
                <i class="fas fa-sign-out-alt mr-2"></i>로그아웃
              </button>
            </div>
          </div>
        </div>
      </header>

      <div class="max-w-7xl mx-auto px-4 py-8">
        {/* 검색 및 필터 */}
        <div class="bg-white rounded-xl shadow-lg p-6 mb-6">
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
        </div>

        {/* 시설 목록 */}
        <div class="bg-white rounded-xl shadow-lg">
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
      </div>

      {/* 시설 수정 모달 */}
      <div id="editModal" class="hidden fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
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
            const response = await fetch('/static/facilities.json');
            allFacilitiesData = await response.json();
            filteredFacilitiesData = [...allFacilitiesData];
            
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
                  onchange="toggleRepresentative('\${f.id}', this.checked)"
                  class="w-5 h-5 text-purple-600 border-gray-300 rounded focus:ring-purple-500 cursor-pointer"
                  title="지역별 전화상담에 노출"
                />
              </td>
              <td class="px-4 py-3">
                <div class="flex gap-2">
                  <button onclick="openEditModal('\${f.id}')" class="px-3 py-1 bg-blue-500 text-white text-xs rounded hover:bg-blue-600 transition-colors">
                    <i class="fas fa-edit"></i> 수정
                  </button>
                  <button onclick="deleteFacility('\${f.id}')" class="px-3 py-1 bg-red-500 text-white text-xs rounded hover:bg-red-600 transition-colors">
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
        function openEditModal(id) {
          const facility = allFacilitiesData.find(f => f.id === id);
          if (!facility) return;
          
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
          
          // 모달 표시
          document.getElementById('editModal').classList.remove('hidden');
        }
        
        // 모달 닫기
        function closeEditModal() {
          document.getElementById('editModal').classList.add('hidden');
          document.getElementById('editForm').reset();
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
        async function toggleRepresentative(id, isChecked) {
          const facility = allFacilitiesData.find(f => f.id === id);
          if (!facility) return;
          
          if (isChecked) {
            // 같은 지역의 다른 대표시설이 있는지 확인
            const existingRep = allFacilitiesData.find(f => 
              f.id !== id && 
              f.sido === facility.sido && 
              f.sigungu === facility.sigungu && 
              f.isRepresentative
            );
            
            if (existingRep) {
              if (!confirm(\`\${facility.sido} \${facility.sigungu} 지역에 이미 대표시설 "\${existingRep.name}"이(가) 지정되어 있습니다.\\n\\n기존 대표시설을 해제하고 "\${facility.name}"을(를) 새로운 대표시설로 지정하시겠습니까?\`)) {
                // 체크박스 원복
                event.target.checked = false;
                return;
              }
              // 기존 대표시설 해제
              existingRep.isRepresentative = false;
            }
          }
          
          try {
            await axios.post('/api/admin/facility/set-representative', {
              id: id,
              isRepresentative: isChecked
            });
            
            facility.isRepresentative = isChecked;
            alert(isChecked ? '대표시설로 지정되었습니다.' : '대표시설 지정이 해제되었습니다.');
            displayFacilities();
          } catch (error) {
            console.error('대표시설 설정 실패:', error);
            alert('대표시설 설정 중 오류가 발생했습니다.');
            // 체크박스 원복
            event.target.checked = !isChecked;
          }
        }
        
        // 시설 삭제
        async function deleteFacility(id) {
          const facility = allFacilitiesData.find(f => f.id === id);
          if (!facility) return;
          
          if (!confirm(\`"\${facility.name}" 시설을 삭제하시겠습니까?\\n\\n삭제된 데이터는 복구할 수 없습니다.\`)) {
            return;
          }
          
          try {
            await axios.post('/api/admin/facility/delete', { id: id });
            
            // 로컬 데이터에서 제거
            const index = allFacilitiesData.findIndex(f => f.id === id);
            if (index !== -1) {
              allFacilitiesData.splice(index, 1);
              filteredFacilitiesData = filteredFacilitiesData.filter(f => f.id !== id);
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
              
              alert('새로운 시설이 등록되었습니다.');
            } else {
              // 기존 시설 수정
              await axios.post('/api/admin/facility/update', updatedData);
              
              // 로컬 데이터 업데이트
              const facility = allFacilitiesData.find(f => f.id === id);
              if (facility) {
                Object.assign(facility, updatedData);
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
              <button id="logoutBtn" class="bg-red-600 text-white px-4 py-2 rounded-lg hover:bg-red-700">
                <i class="fas fa-sign-out-alt mr-2"></i>로그아웃
              </button>
            </div>
          </div>
        </div>
      </header>

      <div class="max-w-7xl mx-auto px-4 py-8">
        {/* 통계 카드 */}
        <div class="grid md:grid-cols-2 gap-6 mb-8">
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
        </div>

        {/* 테스트 계정 정보 */}
        <div class="bg-gradient-to-r from-purple-50 to-pink-50 rounded-xl shadow-lg p-6 mb-8 border-2 border-purple-200">
          <h3 class="text-xl font-bold text-purple-800 mb-4 flex items-center">
            <i class="fas fa-user-shield mr-2"></i>
            테스트 계정 정보
            <span class="ml-3 text-sm text-purple-600 font-normal">(개발/테스트 전용)</span>
          </h3>
          
          <div class="grid md:grid-cols-2 gap-6">
            {/* 고객 계정 */}
            <div class="bg-white rounded-lg p-4 border border-purple-200">
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
            </div>

            {/* 시설 계정들 */}
            <div class="bg-white rounded-lg p-4 border border-purple-200">
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
        </div>

        {/* 파트너 신청 목록 */}
        <div class="bg-white rounded-xl shadow-lg mb-6">
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
        </div>

        {/* 가족 간병 신청 목록 */}
        <div class="bg-white rounded-xl shadow-lg">
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

      <script dangerouslySetInnerHTML={{
        __html: `
        async function loadData() {
          try {
            const response = await axios.get('/api/admin/data');
            const { partners, familyCare, quoteRequests } = response.data;
            
            document.getElementById('partnerCount').textContent = partners.length;
            document.getElementById('familyCareCount').textContent = familyCare.length;
            document.getElementById('quoteRequestCount').textContent = quoteRequests ? quoteRequests.length : 0;
            
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

// 견적 요청 API (기존)
app.post('/api/quote-request', async (c) => {
  try {
    const db = c.env.DB
    const data = await c.req.json()
    
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

// 지역별 상담센터 조회 API
app.get('/api/regional-centers', async (c) => {
  const sido = c.req.query('sido')
  const sigungu = c.req.query('sigungu')
  
  if (!sido || !sigungu) {
    return c.json({ error: 'Missing parameters' }, 400)
  }
  
  try {
    // 시설 데이터 로드 (메모리 캐시 사용)
    await loadFacilities()
    
    // 해당 지역의 대표시설만 필터링
    const representativeFacilities = dataStore.facilities
      .filter(f => 
        f.isRepresentative === true &&
        f.sido === sido && 
        f.sigungu === sigungu &&
        f.phone && f.phone !== ''  // 전화번호가 있는 시설만
      )
      .slice(0, 4) // 최대 4개
    
    // 대표시설이 있으면 그것을 반환
    if (representativeFacilities.length > 0) {
      const centers = representativeFacilities.map(f => ({
        facilityName: f.name,
        facilityType: f.type,
        facilitySido: f.sido,
        facilitySigungu: f.sigungu,
        managerName: '상담 담당자',
        managerPhone: f.phone,
        isRepresentative: true
      }))
      
      return c.json({ 
        centers: centers,
        count: centers.length
      })
    }
    
    // 대표시설이 없으면 기존 로직 (partners에서 가져오기)
    const regionalCenters = dataStore.partners
      .filter(partner => 
        partner.approvalStatus === 'approved' && 
        partner.facilitySido === sido && 
        partner.facilitySigungu === sigungu
      )
      .slice(0, 4)
    
    return c.json({ 
      centers: regionalCenters,
      count: regionalCenters.length
    })
  } catch (error) {
    console.error('대표시설 조회 오류:', error)
    return c.json({ centers: [], count: 0 })
  }
})

app.get('/api/admin/data', (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  return c.json(dataStore)
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

// 시설 데이터 로드 함수
async function loadFacilities() {
  if (!dataStore.facilitiesLoaded) {
    try {
      const response = await fetch('https://3000-i9rvbxi0ydi8a2ltypzm7-cbeee0f9.sandbox.novita.ai/static/facilities.json')
      dataStore.facilities = await response.json()
      dataStore.facilitiesLoaded = true
      console.log(`Loaded ${dataStore.facilities.length} facilities`)
    } catch (error) {
      console.error('Failed to load facilities:', error)
    }
  }
}

// 시설 정보 업데이트 API
app.post('/api/admin/facility/update', async (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const data = await c.req.json()
    
    // 시설 데이터 로드
    await loadFacilities()
    
    // 시설 찾기
    const facility = dataStore.facilities.find((f: any) => f.id === data.id)
    if (!facility) {
      return c.json({ success: false, message: '시설을 찾을 수 없습니다.' }, 404)
    }
    
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
    return c.json({ success: false, message: '시설 정보 업데이트 실패' }, 500)
  }
})

// 시설 대표시설 지정 API
app.post('/api/admin/facility/set-representative', async (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const { id, isRepresentative } = await c.req.json()
    
    // 시설 데이터 로드
    await loadFacilities()
    
    // 대상 시설 찾기
    const targetFacility = dataStore.facilities.find((f: any) => f.id === id)
    if (!targetFacility) {
      return c.json({ success: false, message: '시설을 찾을 수 없습니다.' }, 404)
    }
    
    // 대표시설 지정 시, 같은 지역의 다른 대표시설 해제
    if (isRepresentative) {
      dataStore.facilities.forEach((f: any) => {
        if (f.id !== id && 
            f.sido === targetFacility.sido && 
            f.sigungu === targetFacility.sigungu && 
            f.isRepresentative) {
          f.isRepresentative = false
        }
      })
    }
    
    // 대상 시설의 대표시설 상태 변경
    targetFacility.isRepresentative = isRepresentative
    
    return c.json({ 
      success: true, 
      message: isRepresentative ? '대표시설로 지정되었습니다. (메모리 업데이트)' : '대표시설 지정이 해제되었습니다. (메모리 업데이트)',
      note: '서버 재시작 시 초기화됩니다.'
    })
  } catch (error) {
    console.error('대표시설 설정 오류:', error)
    return c.json({ success: false, message: '대표시설 설정 실패' }, 500)
  }
})

// 신규 시설 등록 API
app.post('/api/admin/facility/create', async (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const data = await c.req.json()
    
    // 시설 데이터 로드
    await loadFacilities()
    
    // 새로운 ID 생성
    const maxId = Math.max(...dataStore.facilities.map((f: any) => parseInt(f.id) || 0))
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
    dataStore.facilities.push(newFacility)
    
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
    
    // 시설 데이터 로드
    await loadFacilities()
    
    // 시설 찾기
    const index = dataStore.facilities.findIndex((f: any) => f.id === id)
    if (index === -1) {
      return c.json({ success: false, message: '시설을 찾을 수 없습니다.' }, 404)
    }
    
    // 시설 제거
    const deletedFacility = dataStore.facilities.splice(index, 1)[0]
    
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
app.get('/quote-request', (c) => {
  return c.render(
    <div class="min-h-screen bg-gradient-to-br from-teal-50 via-white to-blue-50">
      {/* 헤더 */}
      <header class="bg-white shadow-md border-b-2 border-teal-500">
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


      <div class="max-w-4xl mx-auto px-4 py-12">
        {/* 타이틀 */}
        <div class="text-center mb-12">
          <h2 class="text-5xl font-extrabold text-gray-900 mb-4">
            <i class="fas fa-bolt text-teal-600 mr-3"></i>
            간편 견적 신청
          </h2>
          <p class="text-xl text-gray-600">
            3단계만 입력하면 해당 지역 시설에 자동으로 견적 요청이 전송됩니다
          </p>
        </div>

        {/* 3단계 폼 */}
        <div class="bg-white rounded-2xl shadow-2xl overflow-hidden">
          <form id="simpleQuoteForm" class="p-8 space-y-8">
            
            {/* 1단계: 시설 선택 */}
            <div class="border-b-2 border-gray-200 pb-8">
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
              </div>
            </div>

            {/* 2단계: 지역 선택 */}
            <div class="border-b-2 border-gray-200 pb-8">
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
            </div>

            {/* 3단계: 현재 상태 입력 */}
            <div class="pb-4">
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
            </div>

            {/* 제출 버튼 */}
            <div class="flex justify-center pt-4">
              <button type="submit" 
                class="bg-gradient-to-r from-teal-500 to-teal-600 text-white px-16 py-5 rounded-2xl text-xl font-bold hover:from-teal-600 hover:to-teal-700 shadow-2xl transform hover:scale-105 transition-all duration-200">
                <i class="fas fa-paper-plane mr-3"></i>
                견적 신청하기
              </button>
            </div>
          </form>
        </div>

        {/* 안내 메시지 */}
        <div class="mt-8 bg-blue-50 border border-blue-200 rounded-xl p-6">
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
          const data = {
            type: 'simple',
            facility_type: formData.get('facility_type'),
            sido: formData.get('sido'),
            sigungu: formData.get('sigungu'),
            current_status: formData.get('current_status'),
            created_at: new Date().toISOString()
          };

          try {
            const response = await fetch('/api/quote-request', {
              method: 'POST',
              headers: { 'Content-Type': 'application/json' },
              body: JSON.stringify(data)
            });

            if (response.ok) {
              alert('✅ 견적 신청이 완료되었습니다!\\n\\n해당 지역의 시설에서 곧 연락을 드릴 예정입니다.');
              window.location.href = '/';
            } else {
              alert('❌ 견적 신청 중 오류가 발생했습니다. 다시 시도해주세요.');
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

      <div class="max-w-4xl mx-auto px-4 py-12">
        {/* 타이틀 */}
        <div class="text-center mb-12">
          <h2 class="text-5xl font-extrabold text-gray-900 mb-4">
            <i class="fas fa-file-invoice text-green-600 mr-3"></i>
            상세 견적 신청
          </h2>
          <p class="text-xl text-gray-600">
            정확한 맞춤 견적을 위해 상세 정보를 입력해주세요
          </p>
        </div>

        {/* 단계 표시 */}
        <div class="mb-8 flex justify-center items-center space-x-4">
          <div id="step-indicator-1" class="flex items-center">
            <div class="w-10 h-10 bg-green-600 text-white rounded-full flex items-center justify-center font-bold">1</div>
            <span class="ml-2 font-semibold text-green-600">시설정보</span>
          </div>
          <div class="w-16 h-1 bg-gray-300"></div>
          <div id="step-indicator-2" class="flex items-center opacity-50">
            <div class="w-10 h-10 bg-gray-300 text-white rounded-full flex items-center justify-center font-bold">2</div>
            <span class="ml-2 font-semibold text-gray-500">환자정보</span>
          </div>
        </div>
        
        {/* 2단계 폼 */}
        <div class="bg-white rounded-2xl shadow-2xl overflow-hidden">
        <form id="detailedQuoteForm" class="p-8 space-y-8">
          
          {/* 첫 번째 화면: 시설정보 */}
          <div id="page-1" class="space-y-8">
            
            {/* 1. 시설 유형 선택 */}
            <div class="border-b-2 border-gray-200 pb-8">
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
            </div>

            {/* 2. 지역 선택 */}
            <div class="border-b-2 border-gray-200 pb-8">
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
          </div>

            {/* 3. 보험 유형 및 등급 */}
            <div class="border-b-2 border-gray-200 pb-8">
              <h3 class="text-xl font-bold text-gray-900 mb-4">
                3. 보험 유형 및 등급을 선택해 주세요.
              </h3>
              
              {/* 요양병원 선택시 표시 */}
              <div id="insurance-hospital" class="hidden space-y-4">
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
              </div>
              
              {/* 그 외 시설 선택시 표시 */}
              <div id="insurance-other" class="hidden space-y-4">
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
            </div>
            
            {/* 4. 요양 시설 크기 */}
            <div class="border-b-2 border-gray-200 pb-8">
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
            </div>
            
            {/* 5. 요양 비용 */}
            <div class="border-b-2 border-gray-200 pb-8">
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
            </div>
            
            {/* 6. 요양 프로그램 (복수선택) */}
            <div class="border-b-2 border-gray-200 pb-8">
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
            </div>
            
            {/* 7. 종교 활동 지원 */}
            <div class="pb-8">
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
            </div>
            
            {/* 다음 버튼 */}
            <div class="flex justify-center pt-4">
              <button type="button" id="next-to-page2" 
                class="bg-gradient-to-r from-green-500 to-green-600 text-white px-16 py-5 rounded-2xl text-xl font-bold hover:from-green-600 hover:to-green-700 shadow-2xl transform hover:scale-105 transition-all duration-200">
                <span>다음</span>
                <i class="fas fa-arrow-right ml-3"></i>
              </button>
            </div>
          </div>

          {/* 두 번째 화면: 환자정보 */}
          <div id="page-2" class="hidden space-y-8">
            
            {/* 1. 주요 증상 */}
            <div class="border-b-2 border-gray-200 pb-8">
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
            </div>
            
            {/* 2. 연세 */}
            <div class="border-b-2 border-gray-200 pb-8">
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
            </div>
            
            {/* 3. 의사소통 */}
            <div class="border-b-2 border-gray-200 pb-8">
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
            </div>
            
            {/* 4. 식사 가능 여부 */}
            <div class="border-b-2 border-gray-200 pb-8">
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
            </div>
            
            {/* 5. 식사 종류 */}
            <div class="border-b-2 border-gray-200 pb-8">
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
            </div>
            
            {/* 6. 거동 여부 */}
            <div class="border-b-2 border-gray-200 pb-8">
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
            </div>
            
            {/* 7. 화장실 출입 */}
            <div class="border-b-2 border-gray-200 pb-8">
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
            </div>
            
            {/* 8. 추가사항 (복수선택) */}
            <div class="border-b-2 border-gray-200 pb-8">
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
            </div>
            
            {/* 9. 기타 증상 */}
            <div class="border-b-2 border-gray-200 pb-8">
              <h3 class="text-xl font-bold text-gray-900 mb-4">
                9. 기타 증상을 입력해 주세요.
              </h3>
              <textarea name="otherSymptoms" rows="4" placeholder="환자 상태 입력"
                class="w-full px-4 py-3 border-2 border-gray-300 rounded-xl focus:ring-2 focus:ring-green-500 focus:border-green-500 transition"></textarea>
            </div>
            
            {/* 10. 서류 첨부 */}
            <div class="pb-8">
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
            </div>
            
            {/* 버튼 영역 */}
            <div class="flex justify-between pt-4">
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
        </div>

        {/* 안내 메시지 */}
        <div class="mt-8 bg-green-50 border border-green-200 rounded-xl p-6">
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
    <div class="min-h-screen bg-gray-50">
      {/* 헤더 */}
      <header class="bg-white shadow-sm border-b">
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
      </header>

      {/* 프로그레스 바 */}
      <div class="bg-white border-b">
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
      </div>

      {/* 메인 컨텐츠 */}
      <div class="max-w-4xl mx-auto px-4 py-8">
        <div class="bg-white rounded-xl shadow-lg p-6 md:p-8">
          
          {/* Step 1: 견적서 전체 선택 */}
          <div id="step1" class="step-content">
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
          </div>

          {/* Step 2: 신청 정보 입력 */}
          <div id="step2" class="step-content hidden">
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
          </div>

          {/* Step 3: 지역 선택 */}
          <div id="step3" class="step-content hidden">
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
          </div>

          {/* Step 4: 환자 정보 상세 (요양병원) */}
          <div id="step4-hospital" class="step-content hidden">
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
          </div>

          {/* Step 4: 환자 정보 상세 (재가복지) */}
          <div id="step4-homecare" class="step-content hidden">
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
          </div>

          {/* Step 5: 본인/배우자 정보 */}
          <div id="step5" class="step-content hidden">
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
          </div>

          {/* Step 6: 질환/선호사항 */}
          <div id="step6" class="step-content hidden">
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
          </div>

          {/* Step 7: 최종 확인 */}
          <div id="step7" class="step-content hidden">
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
          </div>

          {/* 네비게이션 버튼 */}
          <div class="flex justify-between mt-8 pt-6 border-t">
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
      </div>

      {/* JavaScript */}
      <script src="https://cdn.jsdelivr.net/npm/axios@1.6.0/dist/axios.min.js"></script>
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
            alert('견적 신청 중 오류가 발생했습니다. 다시 시도해주세요.');
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

// 고객 대시보드 데이터 조회 API
app.get('/api/customer/dashboard', async (c) => {
  const user = getUser(c)
  
  if (!user || user.type !== 'customer') {
    return c.json({ success: false, message: '인증 필요' }, 401)
  }

  try {
    const db = c.env.DB
    
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
      quoteRequests.results.map(async (req: any) => {
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
          totalRequests: quoteRequests.results.length,
          totalResponses: allResponses?.count || 0,
          savedFacilities: 0,
          activeConsultations: 0
        }
      }
    })
  } catch (error) {
    console.error('고객 대시보드 데이터 조회 오류:', error)
    return c.json({ success: false, message: '데이터 조회 실패' }, 500)
  }
})

// 시설 대시보드 데이터 조회 API
app.get('/api/facility/dashboard', async (c) => {
  const user = getUser(c)
  
  if (!user || user.type !== 'facility') {
    return c.json({ success: false, message: '인증 필요' }, 401)
  }

  try {
    const db = c.env.DB
    
    // 시설이 속한 지역 파악
    const userSido = user.address ? user.address.split(' ')[0] : ''
    const userSigungu = user.address ? user.address.split(' ')[1] : ''
    
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
    `).bind(userSido, userSigungu, user.facilityType).all()
    
    // 이미 응답한 견적 요청 제외
    const requestsNotResponded = await Promise.all(
      quoteRequests.results.map(async (req: any) => {
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
        myResponses: myResponses.results,
        stats: {
          newRequests: filteredRequests.length,
          sentQuotes: sentQuotes?.count || 0,
          viewedQuotes: 0,
          activeConsultations: 0
        }
      }
    })
  } catch (error) {
    console.error('시설 대시보드 데이터 조회 오류:', error)
    return c.json({ success: false, message: '데이터 조회 실패' }, 500)
  }
})

// 견적서 작성 및 전송 API
app.post('/api/facility/send-quote', async (c) => {
  const user = getUser(c)
  
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

// 고객이 받은 견적서 상세 조회 API
app.get('/api/customer/quote-responses/:quoteId', async (c) => {
  const user = getUser(c)
  
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
  const user = getUser(c)
  
  if (!user || user.type !== 'customer') {
    return c.redirect('/login')
  }

  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>고객 대시보드 - 케어조아</title>
      <script src="https://cdn.tailwindcss.com"></script>
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
              <span class="text-gray-700">
                <i class="fas fa-user-circle text-teal-600 mr-2"></i>
                <strong>${user.name}</strong>님
              </span>
              <a href="/profile" class="bg-gray-600 text-white px-4 py-2 rounded-lg hover:bg-gray-700">
                <i class="fas fa-user-cog mr-1"></i>프로필
              </a>
              <button onclick="handleLogout()" class="bg-red-600 text-white px-4 py-2 rounded-lg hover:bg-red-700">
                <i class="fas fa-sign-out-alt mr-1"></i>로그아웃
              </button>
            </div>
          </div>
        </div>
      </header>

      <!-- 메인 컨텐츠 -->
      <div class="max-w-7xl mx-auto px-4 py-8">
        <div class="mb-8">
          <h2 class="text-3xl font-bold text-gray-800 mb-2">
            <i class="fas fa-tachometer-alt text-teal-600 mr-3"></i>
            고객 대시보드
          </h2>
          <p class="text-gray-600">안녕하세요, ${user.name}님! 요양시설 비교 및 견적 관리를 한눈에 확인하세요.</p>
        </div>

        <!-- 통계 카드 -->
        <div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-8">
          <div class="bg-white rounded-xl shadow-md p-6 border-l-4 border-blue-500">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-600 text-sm">견적 신청</p>
                <p id="totalRequests" class="text-3xl font-bold text-gray-800 mt-1">0</p>
              </div>
              <div class="bg-blue-100 p-4 rounded-full">
                <i class="fas fa-file-invoice text-blue-600 text-2xl"></i>
              </div>
            </div>
          </div>

          <div class="bg-white rounded-xl shadow-md p-6 border-l-4 border-green-500">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-600 text-sm">받은 견적서</p>
                <p id="totalResponses" class="text-3xl font-bold text-gray-800 mt-1">0</p>
              </div>
              <div class="bg-green-100 p-4 rounded-full">
                <i class="fas fa-envelope-open-text text-green-600 text-2xl"></i>
              </div>
            </div>
          </div>

          <div class="bg-white rounded-xl shadow-md p-6 border-l-4 border-purple-500">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-600 text-sm">찜한 시설</p>
                <p id="savedFacilities" class="text-3xl font-bold text-gray-800 mt-1">0</p>
              </div>
              <div class="bg-purple-100 p-4 rounded-full">
                <i class="fas fa-heart text-purple-600 text-2xl"></i>
              </div>
            </div>
          </div>

          <div class="bg-white rounded-xl shadow-md p-6 border-l-4 border-orange-500">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-600 text-sm">상담 진행</p>
                <p id="activeConsultations" class="text-3xl font-bold text-gray-800 mt-1">0</p>
              </div>
              <div class="bg-orange-100 p-4 rounded-full">
                <i class="fas fa-comments text-orange-600 text-2xl"></i>
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
            <a href="/regional-consultation" class="bg-green-600 text-white p-4 rounded-lg hover:bg-green-700 transition-colors text-center">
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
            const response = await fetch('/api/customer/dashboard');
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
            const response = await fetch('/api/auth/logout', { method: 'POST' });
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
  const user = getUser(c)
  
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
      <script src="https://cdn.tailwindcss.com"></script>
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
              <span class="text-gray-700">
                <i class="fas fa-building text-teal-600 mr-2"></i>
                <strong>${user.name}</strong>
                <span class="text-sm text-gray-500 ml-2">(${user.facilityType})</span>
              </span>
              <a href="/profile" class="bg-gray-600 text-white px-4 py-2 rounded-lg hover:bg-gray-700">
                <i class="fas fa-user-cog mr-1"></i>프로필
              </a>
              <button onclick="handleLogout()" class="bg-red-600 text-white px-4 py-2 rounded-lg hover:bg-red-700">
                <i class="fas fa-sign-out-alt mr-1"></i>로그아웃
              </button>
            </div>
          </div>
        </div>
      </header>

      <!-- 메인 컨텐츠 -->
      <div class="max-w-7xl mx-auto px-4 py-8">
        <div class="mb-8">
          <h2 class="text-3xl font-bold text-gray-800 mb-2">
            <i class="fas fa-hospital-alt text-teal-600 mr-3"></i>
            시설 대시보드
          </h2>
          <p class="text-gray-600">안녕하세요, ${user.name}님! 시설 운영 현황을 한눈에 확인하세요.</p>
        </div>

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
        <div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-8">
          <div class="bg-white rounded-xl shadow-md p-6 border-l-4 border-blue-500">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-600 text-sm">받은 견적요청</p>
                <p id="newRequests" class="text-3xl font-bold text-gray-800 mt-1">0</p>
              </div>
              <div class="bg-blue-100 p-4 rounded-full">
                <i class="fas fa-inbox text-blue-600 text-2xl"></i>
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
          <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
            <button class="bg-teal-600 text-white p-4 rounded-lg hover:bg-teal-700 transition-colors">
              <i class="fas fa-edit text-2xl mb-2"></i>
              <p class="font-semibold">시설 정보 수정</p>
            </button>
            <button class="bg-blue-600 text-white p-4 rounded-lg hover:bg-blue-700 transition-colors">
              <i class="fas fa-dollar-sign text-2xl mb-2"></i>
              <p class="font-semibold">요금표 관리</p>
            </button>
            <button class="bg-green-600 text-white p-4 rounded-lg hover:bg-green-700 transition-colors">
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

      <script>
        let dashboardData = null;
        let selectedRequest = null;

        // 대시보드 데이터 로드
        async function loadDashboardData() {
          try {
            const response = await fetch('/api/facility/dashboard');
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

              <hr class="my-4" />

              <form onsubmit="handleSubmitQuote(event)" class="space-y-4">
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">예상 월 비용 *</label>
                  <input type="number" id="estimatedPrice" required
                    placeholder="예: 2000000"
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500" />
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">서비스 상세</label>
                  <textarea id="serviceDetails" rows="3"
                    placeholder="제공되는 서비스를 상세히 설명해주세요."
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500"></textarea>
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">가용 병상/객실</label>
                  <input type="text" id="availableRooms"
                    placeholder="예: 1인실 2개, 2인실 1개"
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500" />
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">특별 서비스</label>
                  <input type="text" id="specialServices"
                    placeholder="예: 물리치료, 작업치료, 언어치료"
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500" />
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">추가 메시지</label>
                  <textarea id="responseMessage" rows="3"
                    placeholder="고객에게 전달할 메시지를 입력해주세요."
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500"></textarea>
                </div>

                <div class="flex space-x-3">
                  <button type="button" onclick="closeQuoteModal()"
                    class="flex-1 px-6 py-3 border border-gray-300 rounded-lg text-gray-700 hover:bg-gray-50 transition-colors">
                    취소
                  </button>
                  <button type="submit"
                    class="flex-1 px-6 py-3 bg-teal-600 text-white rounded-lg hover:bg-teal-700 transition-colors font-semibold">
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

        async function handleLogout() {
          try {
            const response = await fetch('/api/auth/logout', { method: 'POST' });
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

// ========== 견적서 상세 페이지 ==========

// 견적서 상세 페이지
app.get('/quote-details/:quoteId', async (c) => {
  const user = getUser(c)
  
  if (!user || user.type !== 'customer') {
    return c.redirect('/login')
  }

  const quoteId = c.req.param('quoteId')
  
  try {
    const db = c.env.DB
    
    // 견적 요청 정보 조회
    const quoteRequest = await db.prepare(`
      SELECT * FROM quote_requests WHERE quote_id = ?
    `).bind(quoteId).first()
    
    if (!quoteRequest) {
      return c.html(`
        <!DOCTYPE html>
        <html lang="ko">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>견적서를 찾을 수 없습니다 - 케어조아</title>
          <script src="https://cdn.tailwindcss.com"></script>
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
        <script src="https://cdn.tailwindcss.com"></script>
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
              <p class="text-sm text-gray-500 mb-2">추가 요청사항</p>
              <p class="text-gray-800">${quoteRequest.additional_notes}</p>
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
              const statusBadge = getStatusBadge(response.status)
              
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
                      <div class="flex space-x-2">
                        <a href="tel:${response.contact_phone}"
                          class="px-4 py-2 bg-green-600 text-white rounded-lg hover:bg-green-700 transition-colors text-sm font-semibold">
                          <i class="fas fa-phone mr-1"></i>전화 상담
                        </a>
                        <button onclick="openContactModal(${index})"
                          class="px-4 py-2 bg-teal-600 text-white rounded-lg hover:bg-teal-700 transition-colors text-sm font-semibold">
                          <i class="fas fa-envelope mr-1"></i>문의하기
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

          function openContactModal(index) {
            const quote = quotesData[index];
            const modal = document.getElementById('contactModal');
            const content = document.getElementById('contactModalContent');
            
            content.innerHTML = \`
              <form onsubmit="handleSendContact(event, \${index})" class="space-y-4">
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">문의 내용</label>
                  <textarea id="contactMessage" rows="5" required
                    placeholder="문의하실 내용을 입력해주세요."
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500"></textarea>
                </div>
                
                <div class="bg-blue-50 p-4 rounded-lg">
                  <p class="text-sm text-blue-800">
                    <i class="fas fa-info-circle mr-2"></i>
                    문의 내용은 시설 담당자에게 직접 전달되며, 담당자가 연락드릴 예정입니다.
                  </p>
                </div>

                <div class="flex space-x-3">
                  <button type="button" onclick="closeContactModal()"
                    class="flex-1 px-6 py-3 border border-gray-300 rounded-lg text-gray-700 hover:bg-gray-50 transition-colors">
                    취소
                  </button>
                  <button type="submit"
                    class="flex-1 px-6 py-3 bg-teal-600 text-white rounded-lg hover:bg-teal-700 transition-colors font-semibold">
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

          function handleSendContact(event, index) {
            event.preventDefault();
            const message = document.getElementById('contactMessage').value;
            
            // TODO: API로 문의 전송
            alert('문의가 전송되었습니다. 담당자가 곧 연락드릴 예정입니다.');
            closeContactModal();
          }
        </script>
      </body>
      </html>
    `)
  } catch (error) {
    console.error('견적서 조회 오류:', error)
    return c.html(`
      <!DOCTYPE html>
      <html lang="ko">
      <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>오류 발생 - 케어조아</title>
        <script src="https://cdn.tailwindcss.com"></script>
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
app.get('/profile', (c) => {
  const user = getUser(c)
  
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
      <script src="https://cdn.tailwindcss.com"></script>
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
      </script>
    </body>
    </html>
  `)
})

// 프로필 업데이트 API
app.post('/api/profile/update', async (c) => {
  const user = getUser(c)
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
  const user = getUser(c)
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

export default app

import { Hono } from 'hono'
import { getCookie, setCookie } from 'hono/cookie'

// 로그인 페이지 HTML
export function renderLoginPage() {
  return `
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
        <!-- 헤더 -->
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

        <!-- 로그인 카드 -->
        <div class="max-w-md mx-auto">
          <div class="bg-white rounded-2xl shadow-xl p-8">
            <h2 class="text-2xl font-bold text-gray-800 mb-6 text-center">
              <i class="fas fa-sign-in-alt text-teal-600 mr-2"></i>
              로그인
            </h2>

            <!-- 사용자 유형 선택 -->
            <div class="mb-6">
              <label class="block text-sm font-medium text-gray-700 mb-3">로그인 유형</label>
              <div class="grid grid-cols-2 gap-3">
                <button 
                  type="button"
                  id="btnCustomer"
                  onclick="selectUserType('customer')"
                  class="user-type-btn px-4 py-3 border-2 border-teal-600 bg-teal-600 text-white rounded-lg hover:bg-teal-700 transition-colors font-medium">
                  <i class="fas fa-user mr-2"></i>고객
                </button>
                <button 
                  type="button"
                  id="btnFacility"
                  onclick="selectUserType('facility')"
                  class="user-type-btn px-4 py-3 border-2 border-gray-300 text-gray-700 rounded-lg hover:border-teal-600 hover:text-teal-600 transition-colors font-medium">
                  <i class="fas fa-building mr-2"></i>시설
                </button>
              </div>
            </div>

            <!-- 로그인 폼 -->
            <form id="loginForm" onsubmit="handleLogin(event)">
              <div class="space-y-4">
                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-envelope text-gray-400 mr-1"></i>이메일
                  </label>
                  <input 
                    type="email" 
                    id="email"
                    required
                    placeholder="example@email.com"
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent"
                  />
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700 mb-2">
                    <i class="fas fa-lock text-gray-400 mr-1"></i>비밀번호
                  </label>
                  <input 
                    type="password" 
                    id="password"
                    required
                    placeholder="••••••••"
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-teal-500 focus:border-transparent"
                  />
                </div>

                <div class="flex items-center justify-between text-sm">
                  <label class="flex items-center">
                    <input type="checkbox" class="rounded border-gray-300 text-teal-600 focus:ring-teal-500 mr-2">
                    <span class="text-gray-600">로그인 상태 유지</span>
                  </label>
                  <a href="#" class="text-teal-600 hover:text-teal-700">비밀번호 찾기</a>
                </div>

                <button 
                  type="submit"
                  class="w-full bg-teal-600 text-white py-3 rounded-lg hover:bg-teal-700 transition-colors font-semibold text-lg">
                  <i class="fas fa-sign-in-alt mr-2"></i>로그인
                </button>
              </div>
            </form>

            <!-- 회원가입 링크 -->
            <div class="mt-6 text-center">
              <p class="text-gray-600">
                계정이 없으신가요? 
                <a href="/register" class="text-teal-600 hover:text-teal-700 font-medium ml-1">회원가입</a>
              </p>
            </div>

            <!-- 테스트 계정 안내 -->
            <div class="mt-6 p-4 bg-blue-50 border border-blue-200 rounded-lg">
              <p class="text-sm font-bold text-blue-800 mb-2">
                <i class="fas fa-info-circle mr-1"></i>테스트 계정
              </p>
              <div class="text-xs text-blue-700 space-y-1">
                <p><strong>고객:</strong> customer@test.com / 1234</p>
                <p><strong>요양병원:</strong> hospital@test.com / 1234</p>
                <p><strong>요양원:</strong> care@test.com / 1234</p>
                <p><strong>주야간보호:</strong> daycare@test.com / 1234</p>
                <p><strong>재가복지센터:</strong> homecare@test.com / 1234</p>
              </div>
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

          if (type === 'customer') {
            btnCustomer.className = 'user-type-btn px-4 py-3 border-2 border-teal-600 bg-teal-600 text-white rounded-lg hover:bg-teal-700 transition-colors font-medium';
            btnFacility.className = 'user-type-btn px-4 py-3 border-2 border-gray-300 text-gray-700 rounded-lg hover:border-teal-600 hover:text-teal-600 transition-colors font-medium';
          } else {
            btnFacility.className = 'user-type-btn px-4 py-3 border-2 border-teal-600 bg-teal-600 text-white rounded-lg hover:bg-teal-700 transition-colors font-medium';
            btnCustomer.className = 'user-type-btn px-4 py-3 border-2 border-gray-300 text-gray-700 rounded-lg hover:border-teal-600 hover:text-teal-600 transition-colors font-medium';
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
              body: JSON.stringify({ 
                email, 
                password, 
                type: selectedUserType 
              })
            });

            const data = await response.json();

            if (data.success) {
              alert('로그인 성공!');
              // 사용자 유형에 따라 대시보드로 리다이렉트
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
  `
}

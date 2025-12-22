// 카카오 로그인 인증 모듈
import { Hono } from 'hono'
import { setCookie, getCookie } from 'hono/cookie'

type Bindings = {
  DB: D1Database
  KAKAO_REST_API_KEY?: string
  KAKAO_REDIRECT_URI?: string
}

const auth = new Hono<{ Bindings: Bindings }>()

// 세션 헬퍼 함수
export function setUserSession(c: any, userId: number, userType: string) {
  setCookie(c, 'user_id', userId.toString(), {
    httpOnly: true,
    secure: true,
    sameSite: 'Lax',
    maxAge: 60 * 60 * 24 * 30 // 30일
  })
  setCookie(c, 'user_type', userType, {
    httpOnly: true,
    secure: true,
    sameSite: 'Lax',
    maxAge: 60 * 60 * 24 * 30
  })
}

export function getUserSession(c: any) {
  const userId = getCookie(c, 'user_id')
  const userType = getCookie(c, 'user_type')
  
  if (!userId || !userType) return null
  
  return {
    userId: parseInt(userId),
    userType
  }
}

export function clearUserSession(c: any) {
  setCookie(c, 'user_id', '', { maxAge: 0 })
  setCookie(c, 'user_type', '', { maxAge: 0 })
}

// 카카오 로그인 시작
auth.get('/login', (c) => {
  const KAKAO_REST_API_KEY = c.env.KAKAO_REST_API_KEY || 'YOUR_KAKAO_REST_API_KEY'
  const REDIRECT_URI = c.env.KAKAO_REDIRECT_URI || `${new URL(c.req.url).origin}/api/auth/kakao/callback`
  
  const kakaoAuthUrl = `https://kauth.kakao.com/oauth/authorize?client_id=${KAKAO_REST_API_KEY}&redirect_uri=${encodeURIComponent(REDIRECT_URI)}&response_type=code`
  
  return c.redirect(kakaoAuthUrl)
})

// 카카오 로그인 콜백
auth.get('/callback', async (c) => {
  const code = c.req.query('code')
  
  if (!code) {
    return c.html(`
      <script>
        alert('카카오 로그인에 실패했습니다.')
        window.location.href = '/'
      </script>
    `)
  }
  
  try {
    const KAKAO_REST_API_KEY = c.env.KAKAO_REST_API_KEY || 'YOUR_KAKAO_REST_API_KEY'
    const REDIRECT_URI = c.env.KAKAO_REDIRECT_URI || `${new URL(c.req.url).origin}/api/auth/kakao/callback`
    
    // 1. 액세스 토큰 받기
    const tokenResponse = await fetch('https://kauth.kakao.com/oauth/token', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded'
      },
      body: new URLSearchParams({
        grant_type: 'authorization_code',
        client_id: KAKAO_REST_API_KEY,
        redirect_uri: REDIRECT_URI,
        code: code
      })
    })
    
    const tokenData = await tokenResponse.json()
    const accessToken = tokenData.access_token
    
    if (!accessToken) {
      throw new Error('토큰 발급 실패')
    }
    
    // 2. 사용자 정보 가져오기
    const userResponse = await fetch('https://kapi.kakao.com/v2/user/me', {
      headers: {
        Authorization: `Bearer ${accessToken}`
      }
    })
    
    const kakaoUser = await userResponse.json()
    
    // 3. DB에서 사용자 찾기 또는 생성
    const { DB } = c.env
    const email = kakaoUser.kakao_account?.email || `kakao_${kakaoUser.id}@carejoa.kr`
    const name = kakaoUser.kakao_account?.profile?.nickname || '카카오 사용자'
    const phone = kakaoUser.kakao_account?.phone_number || ''
    
    // 기존 사용자 찾기
    const existingUser = await DB.prepare(
      'SELECT * FROM users WHERE email = ?'
    ).bind(email).first()
    
    let userId: number
    let isNewUser = false
    
    if (existingUser) {
      userId = existingUser.id as number
    } else {
      // 새 사용자 생성 (임시로 customer 타입, is_approved는 나중에 타입 선택 후 결정)
      const result = await DB.prepare(`
        INSERT INTO users (user_type, email, password_hash, name, phone, is_approved)
        VALUES (?, ?, ?, ?, ?, 1)
      `).bind('customer', email, 'kakao_oauth', name, phone).run()
      
      userId = result.meta.last_row_id as number
      isNewUser = true
    }
    
    // 세션 설정
    setUserSession(c, userId, existingUser?.user_type as string || 'customer')
    
    // 회원가입 타입 선택 페이지 또는 메인으로 리다이렉트
    if (isNewUser) {
      return c.redirect('/signup/select-type')
    } else {
      return c.redirect('/my-page')
    }
    
  } catch (error: any) {
    console.error('Kakao login error:', error)
    return c.html(`
      <script>
        alert('로그인 처리 중 오류가 발생했습니다: ${error.message}')
        window.location.href = '/'
      </script>
    `)
  }
})

// 로그아웃
auth.get('/logout', (c) => {
  clearUserSession(c)
  return c.redirect('/')
})

// 현재 사용자 정보
auth.get('/me', async (c) => {
  const session = getUserSession(c)
  
  if (!session) {
    return c.json({ error: 'Not logged in' }, 401)
  }
  
  try {
    const { DB } = c.env
    const user = await DB.prepare(
      'SELECT id, user_type, email, name, phone FROM users WHERE id = ?'
    ).bind(session.userId).first()
    
    if (!user) {
      clearUserSession(c)
      return c.json({ error: 'User not found' }, 404)
    }
    
    return c.json(user)
  } catch (error: any) {
    return c.json({ error: error.message }, 500)
  }
})

export default auth

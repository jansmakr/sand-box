// 디버깅용 환경 변수 확인 엔드포인트
import { Hono } from 'hono'

type Bindings = {
  KAKAO_REST_API_KEY?: string
  KAKAO_REDIRECT_URI?: string
  ADMIN_PASSWORD?: string
}

const debugApp = new Hono<{ Bindings: Bindings }>()

debugApp.get('/check-env', (c) => {
  const kakaoKey = c.env.KAKAO_REST_API_KEY || 'NOT_SET'
  const redirectUri = c.env.KAKAO_REDIRECT_URI || 'NOT_SET'
  const adminPassword = c.env.ADMIN_PASSWORD || 'NOT_SET'
  
  return c.json({
    KAKAO_REST_API_KEY: kakaoKey.substring(0, 10) + '...' + kakaoKey.substring(kakaoKey.length - 4),
    KAKAO_REDIRECT_URI: redirectUri,
    ADMIN_PASSWORD: adminPassword.substring(0, 2) + '**',
    timestamp: new Date().toISOString()
  })
})

export default debugApp

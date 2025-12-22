import { Hono } from 'hono'
import { renderer } from './renderer'
import { cors } from 'hono/cors'
import { serveStatic } from 'hono/cloudflare-workers'
import { getCookie, setCookie } from 'hono/cookie'

const app = new Hono()

// 관리자 설정
const ADMIN_CONFIG = {
  password: '5874',
  sessionKey: 'admin_session'
}

// 메모리 기반 데이터 저장소
const dataStore = {
  partners: [] as any[],
  familyCare: [] as any[]
}

// 메모리 기반 세션 저장소
const sessions = new Set<string>()

// 관리자 인증
function isAdmin(c: any) {
  const sessionId = getCookie(c, ADMIN_CONFIG.sessionKey)
  return sessionId && sessions.has(sessionId)
}

// 세션 ID 생성
function generateSessionId() {
  return 'session_' + Date.now() + '_' + Math.random().toString(36).substring(2)
}

// CORS 및 정적 파일
app.use('/api/*', cors())
app.use('/static/*', serveStatic({ root: './public' }))
app.use(renderer)


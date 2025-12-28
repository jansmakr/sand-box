# 시설정보 수정 500/401 인증 오류 해결 보고서

**날짜**: 2025-12-28  
**작성자**: Claude Code Agent  
**우선순위**: 🔴 긴급  
**상태**: ✅ 수정 완료 (배포 대기)

---

## 📋 문제 요약

### 증상
```
POST https://carejoa.kr/api/facility/update-info 500 (Internal Server Error)
POST https://carejoa.kr/api/facility/update-info 401 (Unauthorized)
```

- 시설 정보 수정 시 연속적으로 500 에러 발생
- 이후 401 Unauthorized 에러로 전환
- "인증 필요" 메시지 표시
- 로그인은 성공하지만 이후 요청에서 인증 실패

---

## 🔍 근본 원인 분석

### 1. **Cloudflare Workers의 Stateless 특성**

Cloudflare Workers는 **완전한 stateless 환경**입니다:
- 각 요청마다 **새로운 Worker 인스턴스**가 생성됨
- 메모리 기반 저장소(`dataStore`, `Map` 등)는 **요청 간 공유되지 않음**
- 글로벌 변수가 각 요청마다 초기화됨

### 2. **기존 세션 관리 방식의 문제**

```typescript
// ❌ 문제가 있는 코드
const dataStore = { 
  userSessions: new Map<string, any>()  // 메모리에만 저장
}

function getUser(c: any) {
  const sessionId = getCookie(c, 'user_session')
  return dataStore.userSessions.get(sessionId) || null  // 항상 null 반환!
}
```

**실행 흐름**:
1. **로그인 요청** → Worker 인스턴스 A 생성
   - `userSessions.set(sessionId, user)` → 메모리에 저장
   - 응답 후 인스턴스 A 종료
2. **시설정보 수정 요청** → Worker 인스턴스 B 생성 (새로운 인스턴스!)
   - `userSessions`는 비어있음 (인스턴스 A와 다른 메모리 공간)
   - `getUser()` → `null` 반환
   - `401 Unauthorized` 응답

### 3. **500 에러의 원인**

```typescript
// 7108번 줄: getUser()는 null 반환
const user = getUser(c)

if (!user || user.type !== 'facility') {
  return c.json({ success: false, message: '인증 필요' }, 401)
}

// 7139번 줄: user.id는 undefined → DB 쿼리 실패
await db.prepare(`...`).bind(..., user.id).run()  // 💥 500 에러!
```

---

## ✅ 해결 방법

### 1. **D1 기반 세션 관리로 마이그레이션**

**sessions 테이블 생성**:
```sql
CREATE TABLE IF NOT EXISTS sessions (
  session_id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL,
  expires_at TEXT NOT NULL,
  created_at TEXT DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_sessions_user_id ON sessions(user_id);
CREATE INDEX idx_sessions_expires_at ON sessions(expires_at);
```

### 2. **getUser() 함수 수정**

```typescript
// ✅ 수정된 코드
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
    
    return user
  } catch (error) {
    console.error('getUser 오류:', error)
    // D1 오류 시 메모리 폴백
    return dataStore.userSessions.get(sessionId) || null
  }
}
```

### 3. **로그인 API 수정**

```typescript
// ✅ D1에 세션 저장
app.post('/api/auth/login', async (c) => {
  // ... 사용자 인증 ...
  
  const sessionId = generateSessionId()
  const expiresAt = new Date(Date.now() + 7 * 24 * 60 * 60 * 1000).toISOString()
  
  // D1에 세션 저장
  if (db) {
    await db.prepare(`
      INSERT INTO sessions (session_id, user_id, expires_at)
      VALUES (?, ?, ?)
      ON CONFLICT(session_id) DO UPDATE SET
        user_id = excluded.user_id,
        expires_at = excluded.expires_at
    `).bind(sessionId, user.id, expiresAt).run()
  }
  
  // 메모리에도 세션 저장 (폴백용)
  dataStore.userSessions.set(sessionId, user)
  
  // ...
})
```

---

## 📦 변경 사항

### 파일 수정
1. **src/index.tsx**
   - `getUser()` 함수: D1 기반 세션 조회로 변경
   - `app.post('/api/auth/login')`: D1에 세션 저장 추가
   - `app.get('/api/auth/me')`: async 함수로 변경
   - 변경: +86줄, -9줄

2. **migrations/0010_create_sessions_table.sql** (신규 생성)
   - sessions 테이블 생성
   - 인덱스 생성

### Git 커밋
- **커밋 해시**: `6e87187`
- **메시지**: "Fix: D1 기반 세션 관리로 마이그레이션 (500/401 인증 오류 해결)"
- **GitHub**: https://github.com/jansmakr/sand-box

---

## 🚀 배포 절차

### 1. **jansmakr@gmail.com 계정 API 토큰 설정** ⚠️ 필수

현재 **procos@hanmail.net** 계정의 토큰이 설정되어 있어 배포 실패합니다.

**해결 방법**:
1. GenSpark **Deploy 탭** 접속
2. **jansmakr@gmail.com** 계정의 API 토큰 입력:
   ```
   kd6mgx3tFMCCDhd9wVReutb2SXCuFf_ChTsk4Agm
   ```
3. 저장

### 2. **프로덕션 D1 마이그레이션 적용**

```bash
# jansmakr 계정 토큰으로 마이그레이션 적용
cd /home/user/webapp
npx wrangler d1 migrations apply carejoa-production
```

### 3. **프로덕션 배포**

```bash
# 빌드 (이미 완료)
npm run build

# 배포
npx wrangler pages deploy dist --project-name carejoa-kr-auto
```

---

## ✅ 기대 효과

### Before (문제 상황)
```
1. 로그인 → Worker A: 세션을 메모리에 저장
2. 시설정보 수정 → Worker B: 세션 없음 (401)
3. 재시도 → Worker C: 세션 없음 (401)
```

### After (수정 후)
```
1. 로그인 → Worker A: 세션을 D1에 저장
2. 시설정보 수정 → Worker B: D1에서 세션 조회 성공 ✅
3. 정보 수정 완료 → 200 OK ✅
```

---

## 🔧 테스트 체크리스트

배포 후 다음 시나리오를 테스트해주세요:

### 1. 기본 흐름
- [ ] `/login` 접속
- [ ] 시설 계정으로 로그인
- [ ] 시설 대시보드 접속
- [ ] '시설 정보 수정' 클릭
- [ ] 정보 입력 후 저장
- [ ] ✅ "시설 정보가 성공적으로 수정되었습니다!" 메시지 확인

### 2. 세션 지속성
- [ ] 로그인 상태에서 페이지 새로고침
- [ ] ✅ 로그인 상태 유지 확인
- [ ] 여러 페이지 이동
- [ ] ✅ 모든 페이지에서 로그인 상태 유지

### 3. 세션 만료
- [ ] 로그인
- [ ] 7일 후 접속 (또는 D1에서 세션 삭제)
- [ ] ✅ 로그인 페이지로 리디렉션

---

## 📊 시스템 아키텍처

### 세션 관리 플로우

```
┌─────────────────────────────────────────────────────────────┐
│                    Cloudflare Edge Network                   │
├─────────────────────────────────────────────────────────────┤
│                                                               │
│  ┌──────────────┐      ┌──────────────┐      ┌──────────┐   │
│  │   Worker A   │      │   Worker B   │      │ Worker C │   │
│  │  (로그인)     │      │ (시설정보수정)│      │  (조회)  │   │
│  └──────┬───────┘      └──────┬───────┘      └────┬─────┘   │
│         │                     │                   │          │
│         └─────────────────────┼───────────────────┘          │
│                               │                              │
│                               ▼                              │
│                    ┌─────────────────────┐                   │
│                    │  D1 Database        │                   │
│                    │  ┌───────────────┐  │                   │
│                    │  │ sessions      │  │                   │
│                    │  │  - session_id │  │                   │
│                    │  │  - user_id    │  │                   │
│                    │  │  - expires_at │  │                   │
│                    │  └───────────────┘  │                   │
│                    │  ┌───────────────┐  │                   │
│                    │  │ users         │  │                   │
│                    │  │  - id         │  │                   │
│                    │  │  - email      │  │                   │
│                    │  │  - name       │  │                   │
│                    │  │  - type       │  │                   │
│                    │  └───────────────┘  │                   │
│                    └─────────────────────┘                   │
│                                                               │
└─────────────────────────────────────────────────────────────┘
```

---

## 🎯 결론

- **근본 원인**: Cloudflare Workers의 stateless 특성으로 메모리 기반 세션 저장소가 작동하지 않음
- **해결 방법**: D1 데이터베이스 기반 세션 관리로 마이그레이션
- **장점**:
  - ✅ 요청 간 세션 지속성 보장
  - ✅ 글로벌 엣지 네트워크 전체에서 세션 공유
  - ✅ 세션 만료 관리 자동화 (expires_at 컬럼)
  - ✅ 확장성 향상 (Worker 수에 관계없이 동작)

**다음 단계**: jansmakr 계정 API 토큰을 Deploy 탭에 입력 후 배포 진행해주세요!

---

**참고 문서**:
- [Cloudflare Workers Runtime](https://developers.cloudflare.com/workers/runtime-apis/)
- [D1 Database](https://developers.cloudflare.com/d1/)
- [Session Management Best Practices](https://developers.cloudflare.com/workers/runtime-apis/cookies/)

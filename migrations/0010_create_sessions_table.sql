-- 세션 테이블 생성
CREATE TABLE IF NOT EXISTS sessions (
  session_id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL,
  expires_at TEXT NOT NULL,
  created_at TEXT DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT DEFAULT CURRENT_TIMESTAMP
);

-- 인덱스 생성
CREATE INDEX IF NOT EXISTS idx_sessions_user_id ON sessions(user_id);
CREATE INDEX IF NOT EXISTS idx_sessions_expires_at ON sessions(expires_at);

-- 만료된 세션 자동 삭제를 위한 트리거 (선택 사항)
-- D1에서는 트리거가 제한적이므로, 주기적으로 삭제하는 것을 권장합니다
-- DELETE FROM sessions WHERE expires_at < datetime('now');

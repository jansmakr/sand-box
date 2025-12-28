-- 메시지 테이블에 파일 첨부 기능 추가
-- 생성일: 2025-12-29

-- 파일 첨부 컬럼 추가
ALTER TABLE messages ADD COLUMN attachment_url TEXT;
ALTER TABLE messages ADD COLUMN attachment_type TEXT CHECK(attachment_type IN ('image', 'document', 'video'));
ALTER TABLE messages ADD COLUMN attachment_name TEXT;

-- 메시지 인덱스 최적화
CREATE INDEX IF NOT EXISTS idx_messages_created_at ON messages(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_messages_is_read ON messages(is_read);

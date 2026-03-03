-- 시설 승인 시스템 추가
-- 승인 상태: approved(정상 - 기본값), rejected(거부 - 기능 정지)
-- 모든 신규 가입자는 즉시 사용 가능, 관리자가 문제 발견 시에만 거부
ALTER TABLE users ADD COLUMN approval_status TEXT DEFAULT 'approved';
ALTER TABLE users ADD COLUMN business_license_url TEXT;
ALTER TABLE users ADD COLUMN approval_note TEXT;
ALTER TABLE users ADD COLUMN rejected_at DATETIME;
ALTER TABLE users ADD COLUMN rejected_by INTEGER;

-- 인덱스 추가
CREATE INDEX IF NOT EXISTS idx_users_approval_status ON users(approval_status);

-- 기존 사용자는 모두 정상 상태로 설정
UPDATE users SET approval_status = 'approved' WHERE approval_status IS NULL;

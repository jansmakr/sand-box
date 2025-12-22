-- 회원 타입 업데이트 (스페셜 고객 추가)
-- 생성일: 2025-12-17

-- 기존 users 테이블 삭제하고 재생성 (개발 단계이므로)
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  
  -- 회원 타입: customer(일반고객), hospital_manager(병원담당자), welfare_manager(주민센터담당자), facility(시설)
  user_type TEXT NOT NULL CHECK(user_type IN ('customer', 'hospital_manager', 'welfare_manager', 'facility')),
  
  -- 공통 정보
  email TEXT UNIQUE NOT NULL,
  password_hash TEXT NOT NULL,
  name TEXT NOT NULL,
  phone TEXT NOT NULL,
  
  -- 고객/담당자 공통 필드
  address TEXT,
  
  -- 담당자 전용 필드 (병원담당자, 주민센터담당자)
  organization_name TEXT, -- 소속 기관명 (예: OO병원, OO주민센터)
  department TEXT, -- 부서
  position TEXT, -- 직책
  
  -- 시설 전용 필드
  facility_id INTEGER, -- facilities 테이블 참조
  business_number TEXT, -- 사업자 등록번호
  facility_type TEXT CHECK(facility_type IN ('주야간보호센터', '재가센터', '요양원', '실버타운', '요양병원')),
  region_sido TEXT,
  region_sigungu TEXT,
  facility_address TEXT, -- 시설 주소
  
  -- 승인 상태 (시설과 담당자는 관리자 승인 필요)
  is_approved BOOLEAN DEFAULT 0,
  approval_date DATETIME,
  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  
  FOREIGN KEY (facility_id) REFERENCES facilities(id)
);

-- 인덱스 재생성
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_users_user_type ON users(user_type);
CREATE INDEX idx_users_facility_type ON users(facility_type);
CREATE INDEX idx_users_region ON users(region_sido, region_sigungu);
CREATE INDEX idx_users_approved ON users(is_approved);

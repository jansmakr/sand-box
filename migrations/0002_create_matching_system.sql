-- 매칭 시스템 데이터베이스 스키마
-- 생성일: 2025-12-17

-- 1. 회원 테이블 (고객 + 시설)
CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_type TEXT NOT NULL CHECK(user_type IN ('customer', 'facility')), -- 고객 or 시설
  email TEXT UNIQUE NOT NULL,
  password_hash TEXT NOT NULL,
  name TEXT NOT NULL,
  phone TEXT NOT NULL,
  
  -- 고객 전용 필드
  address TEXT,
  
  -- 시설 전용 필드
  facility_id INTEGER, -- facilities 테이블 참조
  business_number TEXT, -- 사업자 등록번호
  facility_type TEXT CHECK(facility_type IN ('재가복지', '요양원', '주야간보호센터', '요양병원')),
  region_sido TEXT,
  region_sigungu TEXT,
  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  
  FOREIGN KEY (facility_id) REFERENCES facilities(id)
);

-- 2. 견적 요청 테이블
CREATE TABLE IF NOT EXISTS quotation_requests (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  customer_id INTEGER NOT NULL,
  
  -- 환자 정보
  patient_name TEXT NOT NULL,
  patient_age INTEGER NOT NULL,
  patient_gender TEXT CHECK(patient_gender IN ('남성', '여성')),
  
  -- 요청 정보
  facility_type TEXT NOT NULL CHECK(facility_type IN ('재가복지', '요양원', '주야간보호센터', '요양병원')),
  region_sido TEXT NOT NULL,
  region_sigungu TEXT NOT NULL,
  
  -- 상세 요구사항
  care_level TEXT, -- 요양등급
  special_needs TEXT, -- 특별 요구사항
  preferred_start_date DATE,
  
  -- 상태 관리
  status TEXT DEFAULT 'pending' CHECK(status IN ('pending', 'quoted', 'closed')),
  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  
  FOREIGN KEY (customer_id) REFERENCES users(id)
);

-- 3. 견적서 테이블
CREATE TABLE IF NOT EXISTS quotations (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  request_id INTEGER NOT NULL,
  facility_id INTEGER NOT NULL,
  
  -- 견적 내용
  monthly_cost INTEGER NOT NULL, -- 월 비용
  deposit INTEGER, -- 보증금
  included_services TEXT, -- 포함 서비스 (JSON 형태)
  additional_info TEXT, -- 추가 정보
  
  -- 시설 담당자
  contact_person TEXT,
  contact_phone TEXT,
  
  -- 상태
  status TEXT DEFAULT 'sent' CHECK(status IN ('sent', 'viewed', 'accepted', 'rejected')),
  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  
  FOREIGN KEY (request_id) REFERENCES quotation_requests(id),
  FOREIGN KEY (facility_id) REFERENCES users(id)
);

-- 4. 상담 메시지 테이블 (간단한 채팅)
CREATE TABLE IF NOT EXISTS messages (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  request_id INTEGER NOT NULL,
  sender_id INTEGER NOT NULL,
  sender_type TEXT NOT NULL CHECK(sender_type IN ('customer', 'facility')),
  
  message TEXT NOT NULL,
  is_read BOOLEAN DEFAULT 0,
  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  
  FOREIGN KEY (request_id) REFERENCES quotation_requests(id),
  FOREIGN KEY (sender_id) REFERENCES users(id)
);

-- 인덱스 생성 (성능 최적화)
CREATE INDEX IF NOT EXISTS idx_users_email ON users(email);
CREATE INDEX IF NOT EXISTS idx_users_user_type ON users(user_type);
CREATE INDEX IF NOT EXISTS idx_users_facility_type ON users(facility_type);
CREATE INDEX IF NOT EXISTS idx_users_region ON users(region_sido, region_sigungu);

CREATE INDEX IF NOT EXISTS idx_quotation_requests_customer ON quotation_requests(customer_id);
CREATE INDEX IF NOT EXISTS idx_quotation_requests_region ON quotation_requests(region_sido, region_sigungu);
CREATE INDEX IF NOT EXISTS idx_quotation_requests_status ON quotation_requests(status);

CREATE INDEX IF NOT EXISTS idx_quotations_request ON quotations(request_id);
CREATE INDEX IF NOT EXISTS idx_quotations_facility ON quotations(facility_id);

CREATE INDEX IF NOT EXISTS idx_messages_request ON messages(request_id);
CREATE INDEX IF NOT EXISTS idx_messages_sender ON messages(sender_id);

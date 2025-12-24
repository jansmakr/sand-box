-- 견적 요청 테이블
CREATE TABLE IF NOT EXISTS quote_requests (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  quote_id TEXT UNIQUE NOT NULL,
  quote_type TEXT NOT NULL, -- 'simple', 'urgent', 'calculate', 'ai_matching'
  
  -- 신청자 정보
  applicant_name TEXT NOT NULL,
  applicant_phone TEXT NOT NULL,
  applicant_email TEXT,
  
  -- 돌봄 대상자 정보
  patient_name TEXT,
  patient_age INTEGER,
  patient_gender TEXT,
  care_grade TEXT,
  patient_condition TEXT,
  
  -- 지역 정보
  sido TEXT NOT NULL,
  sigungu TEXT NOT NULL,
  
  -- 시설 정보
  facility_type TEXT NOT NULL,
  room_type TEXT,
  
  -- 예산 정보
  budget_min INTEGER,
  budget_max INTEGER,
  
  -- 추가 정보
  additional_notes TEXT,
  
  -- 상태 관리
  status TEXT DEFAULT 'pending', -- pending, received, completed, cancelled
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 견적 응답 테이블
CREATE TABLE IF NOT EXISTS quote_responses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  response_id TEXT UNIQUE NOT NULL,
  quote_id TEXT NOT NULL,
  partner_id INTEGER NOT NULL,
  
  -- 견적 내용
  estimated_price INTEGER NOT NULL,
  service_details TEXT,
  available_rooms TEXT,
  special_services TEXT,
  
  -- 응답 정보
  response_message TEXT,
  contact_person TEXT,
  contact_phone TEXT,
  
  -- 상태
  status TEXT DEFAULT 'sent', -- sent, viewed, accepted, rejected
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  
  FOREIGN KEY (quote_id) REFERENCES quote_requests(quote_id)
);

-- 파트너 승인 시스템 테이블
CREATE TABLE IF NOT EXISTS partners_approval (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  
  -- 시설 정보
  facility_name TEXT NOT NULL,
  facility_type TEXT NOT NULL,
  
  -- 주소 정보
  sido TEXT NOT NULL,
  sigungu TEXT NOT NULL,
  detail_address TEXT NOT NULL,
  
  -- 담당자 정보
  manager_name TEXT NOT NULL,
  manager_phone TEXT NOT NULL,
  manager_email TEXT,
  
  -- 추가 정보
  business_number TEXT,
  license_number TEXT,
  description TEXT,
  
  -- 승인 상태
  approval_status TEXT DEFAULT 'pending', -- pending, approved, rejected
  approval_date DATETIME,
  rejection_reason TEXT,
  
  -- 대표 상담센터 여부
  is_regional_center BOOLEAN DEFAULT 0,
  regional_center_sido TEXT,
  regional_center_sigungu TEXT,
  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 채팅 메시지 테이블
CREATE TABLE IF NOT EXISTS chat_messages (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  message_id TEXT UNIQUE NOT NULL,
  quote_id TEXT NOT NULL,
  
  -- 발신자 정보
  sender_type TEXT NOT NULL, -- 'customer', 'partner'
  sender_id TEXT NOT NULL,
  sender_name TEXT NOT NULL,
  
  -- 메시지 내용
  message TEXT NOT NULL,
  attachment_url TEXT,
  
  -- 상태
  is_read BOOLEAN DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  
  FOREIGN KEY (quote_id) REFERENCES quote_requests(quote_id)
);

-- 인덱스 생성
CREATE INDEX IF NOT EXISTS idx_quote_requests_status ON quote_requests(status);
CREATE INDEX IF NOT EXISTS idx_quote_requests_sido_sigungu ON quote_requests(sido, sigungu);
CREATE INDEX IF NOT EXISTS idx_quote_requests_created_at ON quote_requests(created_at);
CREATE INDEX IF NOT EXISTS idx_quote_responses_quote_id ON quote_responses(quote_id);
CREATE INDEX IF NOT EXISTS idx_partners_approval_status ON partners_approval(approval_status);
CREATE INDEX IF NOT EXISTS idx_partners_approval_sido_sigungu ON partners_approval(sido, sigungu);
CREATE INDEX IF NOT EXISTS idx_chat_messages_quote_id ON chat_messages(quote_id);

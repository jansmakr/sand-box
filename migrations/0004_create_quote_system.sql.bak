-- 견적 요청 테이블
CREATE TABLE IF NOT EXISTS quote_requests (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  request_type TEXT NOT NULL, -- 'urgent', 'self_calculate', 'ai_matching'
  
  -- 고객 정보
  customer_name TEXT NOT NULL,
  customer_phone TEXT NOT NULL,
  customer_email TEXT,
  
  -- 환자 정보
  patient_name TEXT NOT NULL,
  patient_age INTEGER NOT NULL,
  patient_gender TEXT, -- '남성', '여성'
  patient_condition TEXT, -- 환자 상태 설명
  
  -- 지역 정보
  sido TEXT NOT NULL,
  sigungu TEXT NOT NULL,
  
  -- 시설 요구사항
  facility_type TEXT NOT NULL, -- '요양병원', '요양원', '재가복지센터', '주야간보호'
  care_level TEXT, -- '1등급', '2등급', '3등급', '4등급', '5등급'
  room_type TEXT, -- '1인실', '2인실', '3인실', '4인실이상'
  budget_min INTEGER, -- 최소 예산
  budget_max INTEGER, -- 최대 예산
  
  -- 추가 요구사항
  special_requirements TEXT,
  preferred_services TEXT, -- JSON array: ['물리치료', '작업치료', '언어치료', ...]
  
  -- 자가 견적 계산 결과 (탭2)
  estimated_cost INTEGER,
  cost_breakdown TEXT, -- JSON object
  
  -- AI 매칭 결과 (탭3)
  matched_facilities TEXT, -- JSON array of facility IDs
  matching_score REAL,
  
  -- 상태 관리
  status TEXT DEFAULT 'pending', -- 'pending', 'quote_sent', 'in_progress', 'completed', 'cancelled'
  sent_to_facilities INTEGER DEFAULT 0, -- 전송된 시설 수
  received_quotes INTEGER DEFAULT 0, -- 받은 견적 수
  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 시설별 견적서 테이블
CREATE TABLE IF NOT EXISTS quote_responses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  quote_request_id INTEGER NOT NULL,
  facility_id INTEGER NOT NULL, -- facilities 테이블 참조 (또는 partners 테이블)
  
  -- 견적 정보
  monthly_cost INTEGER NOT NULL, -- 월 비용
  admission_fee INTEGER, -- 입소비
  deposit INTEGER, -- 보증금
  
  -- 상세 비용 내역
  cost_details TEXT, -- JSON object: {'기본료': 1000000, '식사비': 200000, ...}
  
  -- 시설 정보
  facility_name TEXT NOT NULL,
  facility_type TEXT NOT NULL,
  available_rooms INTEGER, -- 가용 병상
  room_type TEXT,
  
  -- 제공 서비스
  services_provided TEXT, -- JSON array
  facilities_amenities TEXT, -- JSON array: ['엘리베이터', '휠체어 램프', ...]
  
  -- 담당자 정보
  contact_name TEXT NOT NULL,
  contact_phone TEXT NOT NULL,
  contact_email TEXT,
  
  -- 추가 정보
  message TEXT, -- 시설 측 메시지
  brochure_url TEXT, -- 브로셔 PDF URL
  
  -- 상태
  status TEXT DEFAULT 'sent', -- 'sent', 'viewed', 'interested', 'rejected'
  viewed_at DATETIME,
  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  
  FOREIGN KEY (quote_request_id) REFERENCES quote_requests(id)
);

-- 채팅 메시지 테이블 (고객-시설 1:1)
CREATE TABLE IF NOT EXISTS chat_messages (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  quote_request_id INTEGER NOT NULL,
  facility_id INTEGER NOT NULL,
  
  sender_type TEXT NOT NULL, -- 'customer', 'facility'
  sender_name TEXT NOT NULL,
  message TEXT NOT NULL,
  
  is_read INTEGER DEFAULT 0,
  read_at DATETIME,
  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  
  FOREIGN KEY (quote_request_id) REFERENCES quote_requests(id)
);

-- 인덱스 생성
CREATE INDEX IF NOT EXISTS idx_quote_requests_status ON quote_requests(status);
CREATE INDEX IF NOT EXISTS idx_quote_requests_created ON quote_requests(created_at);
CREATE INDEX IF NOT EXISTS idx_quote_requests_location ON quote_requests(sido, sigungu);

CREATE INDEX IF NOT EXISTS idx_quote_responses_request ON quote_responses(quote_request_id);
CREATE INDEX IF NOT EXISTS idx_quote_responses_facility ON quote_responses(facility_id);
CREATE INDEX IF NOT EXISTS idx_quote_responses_status ON quote_responses(status);

CREATE INDEX IF NOT EXISTS idx_chat_messages_request ON chat_messages(quote_request_id);
CREATE INDEX IF NOT EXISTS idx_chat_messages_facility ON chat_messages(facility_id);
CREATE INDEX IF NOT EXISTS idx_chat_messages_unread ON chat_messages(is_read);

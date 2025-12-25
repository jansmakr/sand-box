-- 시설 견적서 템플릿 테이블
CREATE TABLE IF NOT EXISTS facility_templates (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  facility_id TEXT NOT NULL UNIQUE,
  
  -- 기본 정보
  facility_name TEXT,
  facility_description TEXT,
  
  -- 템플릿 내용
  default_service_details TEXT,
  default_special_services TEXT,
  default_message TEXT,
  
  -- 가격 정보
  price_range_min INTEGER,
  price_range_max INTEGER,
  
  -- 추가 정보
  available_room_types TEXT,
  
  -- 메타데이터
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 인덱스
CREATE INDEX IF NOT EXISTS idx_facility_templates_facility_id ON facility_templates(facility_id);

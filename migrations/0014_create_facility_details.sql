-- 시설 상세 정보 테이블 (서비스, 전문분야, 시설 등급)
CREATE TABLE IF NOT EXISTS facility_details (
  facility_id INTEGER PRIMARY KEY,
  services TEXT,  -- JSON array: ["물리치료", "작업치료", "언어치료", "치매전문", "중풍전문"]
  specialties TEXT,  -- JSON array: ["치매전문", "중풍전문", "암환자전문", "와상환자전문"]
  heating_grade TEXT DEFAULT 'average',  -- 'excellent', 'good', 'average'
  cooling_grade TEXT DEFAULT 'average',
  meal_quality TEXT DEFAULT 'average',
  room_types TEXT,  -- JSON array: ["1인실", "2인실", "다인실"]
  amenities TEXT,  -- JSON array: ["엘리베이터", "휠체어", "주차장", "정원"]
  medical_equipment TEXT,  -- JSON array: ["CT", "MRI", "X-Ray", "물리치료실"]
  staff_count INTEGER DEFAULT 0,
  doctor_count INTEGER DEFAULT 0,
  nurse_count INTEGER DEFAULT 0,
  care_worker_count INTEGER DEFAULT 0,
  average_cost_min INTEGER,  -- 최소 월 비용
  average_cost_max INTEGER,  -- 최대 월 비용
  description TEXT,  -- 시설 설명
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (facility_id) REFERENCES facilities(id)
);

-- 인덱스 생성
CREATE INDEX IF NOT EXISTS idx_facility_details_services ON facility_details(services);
CREATE INDEX IF NOT EXISTS idx_facility_details_cost ON facility_details(average_cost_min, average_cost_max);

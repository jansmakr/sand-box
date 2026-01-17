-- facility_details 테이블 재생성 (FOREIGN KEY 제약 없이)

-- 1. 기존 테이블 삭제
DROP TABLE IF EXISTS facility_details;

-- 2. FOREIGN KEY 없이 재생성
CREATE TABLE facility_details (
  facility_id INTEGER PRIMARY KEY,
  services TEXT,
  specialties TEXT,
  heating_grade TEXT DEFAULT 'average',
  cooling_grade TEXT DEFAULT 'average',
  meal_quality TEXT DEFAULT 'average',
  room_types TEXT,
  amenities TEXT,
  medical_equipment TEXT,
  staff_count INTEGER DEFAULT 0,
  doctor_count INTEGER DEFAULT 0,
  nurse_count INTEGER DEFAULT 0,
  care_worker_count INTEGER DEFAULT 0,
  average_cost_min INTEGER,
  average_cost_max INTEGER,
  description TEXT,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  -- 0017에서 추가된 컬럼들
  admission_types TEXT DEFAULT '[]',
  monthly_cost INTEGER,
  deposit INTEGER,
  notes TEXT,
  updated_by TEXT,
  short_term_available INTEGER DEFAULT 0,
  night_care_available INTEGER DEFAULT 0,
  weekend_care_available INTEGER DEFAULT 0,
  specialized_care TEXT,
  operating_hours TEXT,
  min_stay_period TEXT,
  daily_cost INTEGER,
  additional_costs TEXT,
  total_beds INTEGER,
  available_beds INTEGER
);

-- 3. 인덱스 재생성
CREATE INDEX IF NOT EXISTS idx_facility_details_services ON facility_details(services);
CREATE INDEX IF NOT EXISTS idx_facility_details_cost ON facility_details(average_cost_min, average_cost_max);

-- 완료
SELECT '✅ facility_details 테이블 재생성 완료 (FOREIGN KEY 제약 제거됨)' as message;

-- facility_details 테이블의 FOREIGN KEY 제약 제거
-- 기존 테이블 백업 후 재생성

-- 1. 기존 데이터 백업 (임시 테이블)
CREATE TABLE IF NOT EXISTS facility_details_backup AS 
SELECT * FROM facility_details;

-- 2. 기존 테이블 삭제
DROP TABLE IF EXISTS facility_details;

-- 3. FOREIGN KEY 없이 재생성
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
  weekend_care_available INTEGER DEFAULT 0
);

-- 4. 백업 데이터 복원 (있다면)
INSERT OR IGNORE INTO facility_details 
SELECT * FROM facility_details_backup;

-- 5. 백업 테이블 삭제
DROP TABLE IF EXISTS facility_details_backup;

-- 완료
SELECT '✅ facility_details 테이블 재생성 완료 (FOREIGN KEY 제약 제거)' as message;

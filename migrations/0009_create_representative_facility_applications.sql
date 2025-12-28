-- 0009_create_representative_facility_applications.sql
-- 지역별 대표시설 신청 테이블 생성

CREATE TABLE IF NOT EXISTS representative_facility_applications (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  facility_id INTEGER NOT NULL,
  facility_name TEXT NOT NULL,
  facility_type TEXT NOT NULL,
  region_sido TEXT NOT NULL,
  region_sigungu TEXT NOT NULL,
  manager_name TEXT,
  manager_phone TEXT,
  business_number TEXT,
  application_reason TEXT,
  status TEXT DEFAULT 'pending' CHECK(status IN ('pending', 'approved', 'rejected')),
  applied_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  reviewed_at DATETIME,
  reviewed_by TEXT,
  review_note TEXT,
  FOREIGN KEY (facility_id) REFERENCES facilities(id)
);

-- 인덱스 생성
CREATE INDEX IF NOT EXISTS idx_rep_facility_region ON representative_facility_applications(region_sido, region_sigungu);
CREATE INDEX IF NOT EXISTS idx_rep_facility_status ON representative_facility_applications(status);
CREATE INDEX IF NOT EXISTS idx_rep_facility_id ON representative_facility_applications(facility_id);

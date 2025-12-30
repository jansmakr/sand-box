-- 대표시설 파트너 테이블 (지역별 대표시설 관리)
CREATE TABLE IF NOT EXISTS partners (
  id TEXT PRIMARY KEY,
  facility_name TEXT NOT NULL,
  facility_type TEXT NOT NULL,
  facility_sido TEXT,
  facility_sigungu TEXT,
  facility_address TEXT,
  manager_name TEXT NOT NULL,
  manager_phone TEXT NOT NULL,
  region_key TEXT,
  is_regional_center INTEGER DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 인덱스 생성
CREATE INDEX IF NOT EXISTS idx_partners_regional_center ON partners(is_regional_center);
CREATE INDEX IF NOT EXISTS idx_partners_region ON partners(facility_sido, facility_sigungu, facility_type);
CREATE INDEX IF NOT EXISTS idx_partners_region_key ON partners(region_key);

-- Partners (요양시설 파트너) 테이블
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
  created_at TEXT NOT NULL,
  updated_at TEXT
);

-- Family Care (가족 간병) 테이블
CREATE TABLE IF NOT EXISTS family_care (
  id TEXT PRIMARY KEY,
  guardian_name TEXT NOT NULL,
  guardian_phone TEXT NOT NULL,
  patient_name TEXT NOT NULL,
  patient_age INTEGER NOT NULL,
  region TEXT NOT NULL,
  requirements TEXT,
  created_at TEXT NOT NULL
);

-- Regional Centers (지역별 대표 상담센터) 테이블
CREATE TABLE IF NOT EXISTS regional_centers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  region_key TEXT NOT NULL,
  partner_id TEXT NOT NULL,
  facility_name TEXT NOT NULL,
  facility_type TEXT NOT NULL,
  manager_name TEXT NOT NULL,
  manager_phone TEXT NOT NULL,
  created_at TEXT NOT NULL,
  FOREIGN KEY (partner_id) REFERENCES partners(id),
  UNIQUE(region_key, partner_id)
);

-- Admin Sessions (관리자 세션) 테이블
CREATE TABLE IF NOT EXISTS admin_sessions (
  session_id TEXT PRIMARY KEY,
  created_at TEXT NOT NULL,
  expires_at TEXT NOT NULL
);

-- 인덱스 생성
CREATE INDEX IF NOT EXISTS idx_partners_region_key ON partners(region_key);
CREATE INDEX IF NOT EXISTS idx_partners_is_regional_center ON partners(is_regional_center);
CREATE INDEX IF NOT EXISTS idx_regional_centers_region_key ON regional_centers(region_key);
CREATE INDEX IF NOT EXISTS idx_admin_sessions_expires_at ON admin_sessions(expires_at);

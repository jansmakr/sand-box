-- 시설 설정 테이블 생성 (대표시설 정보 등)
CREATE TABLE IF NOT EXISTS facility_settings (
  facility_id INTEGER PRIMARY KEY,
  is_representative INTEGER DEFAULT 0,
  sido TEXT,
  sigungu TEXT,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_by TEXT
);

-- 인덱스 생성 (지역별 대표시설 조회 최적화)
CREATE INDEX IF NOT EXISTS idx_facility_settings_representative 
  ON facility_settings(is_representative, sido, sigungu);

-- 지역별로 하나의 대표시설만 허용하는 트리거 (SQLite)
-- 주의: D1은 트리거를 지원하지 않으므로 애플리케이션 레벨에서 처리

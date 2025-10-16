-- 요양시설 정보 테이블 생성
CREATE TABLE IF NOT EXISTS facilities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  facility_type TEXT NOT NULL,           -- 시설구분 (요양병원, 요양원, 재가복지센터, 주야간보호)
  name TEXT NOT NULL,                    -- 시설명
  postal_code TEXT,                      -- 우편번호
  address TEXT NOT NULL,                 -- 주소
  phone TEXT,                            -- 전화번호 (새로 추가)
  latitude REAL NOT NULL,                -- 위도
  longitude REAL NOT NULL,               -- 경도
  sido TEXT NOT NULL,                    -- 시도
  sigungu TEXT NOT NULL,                 -- 시군구
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 검색 성능을 위한 인덱스 생성
CREATE INDEX IF NOT EXISTS idx_facilities_sido ON facilities(sido);
CREATE INDEX IF NOT EXISTS idx_facilities_sigungu ON facilities(sigungu);
CREATE INDEX IF NOT EXISTS idx_facilities_type ON facilities(facility_type);
CREATE INDEX IF NOT EXISTS idx_facilities_name ON facilities(name);

-- 관리자 계정 테이블
CREATE TABLE IF NOT EXISTS admin_users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password_hash TEXT NOT NULL,          -- bcrypt 해시
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 기본 관리자 계정 생성 (username: admin, password: admin123)
-- 실제 배포 시 반드시 비밀번호를 변경해야 합니다
INSERT INTO admin_users (username, password_hash) VALUES 
  ('admin', '$2a$10$rN7o8RlzSYJdLXLlDWRFqO7WjW7LYvKvGz7S9xQjf4yZTHW7xZqQO');

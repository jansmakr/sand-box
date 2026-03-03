-- 테스트 사용자 계정 생성
-- 생성일: 2025-01-26

-- 고객 테스트 계정
INSERT OR REPLACE INTO users (
  user_type, email, password_hash, name, phone, 
  created_at, updated_at
) 
SELECT 'customer', 'customer@test.com', '1234', '김철수', '01012345678',
  datetime('now'), datetime('now')
WHERE NOT EXISTS (SELECT 1 FROM users WHERE email = 'customer@test.com');

-- 시설 테스트 계정 1: 서울요양병원
INSERT OR REPLACE INTO users (
  user_type, email, password_hash, name, phone,
  business_number, facility_type, region_sido, region_sigungu, address,
  created_at, updated_at
) 
SELECT 'facility', 'hospital@test.com', '1234', '서울요양병원', '0212345678',
  '1234567890', '요양병원', '서울특별시', '강남구', '서울특별시 강남구 테헤란로 123',
  datetime('now'), datetime('now')
WHERE NOT EXISTS (SELECT 1 FROM users WHERE email = 'hospital@test.com');

-- 시설 테스트 계정 2: 행복요양원
INSERT OR REPLACE INTO users (
  user_type, email, password_hash, name, phone,
  business_number, facility_type, region_sido, region_sigungu, address,
  created_at, updated_at
) 
SELECT 'facility', 'care@test.com', '1234', '행복요양원', '0311234567',
  '2345678901', '요양원', '경기도', '성남시', '경기도 성남시 분당구 정자로 456',
  datetime('now'), datetime('now')
WHERE NOT EXISTS (SELECT 1 FROM users WHERE email = 'care@test.com');

-- 시설 테스트 계정 3: 사랑주야간보호센터
INSERT OR REPLACE INTO users (
  user_type, email, password_hash, name, phone,
  business_number, facility_type, region_sido, region_sigungu, address,
  created_at, updated_at
) 
SELECT 'facility', 'daycare@test.com', '1234', '사랑주야간보호센터', '0223456789',
  '3456789012', '주야간보호센터', '서울특별시', '송파구', '서울특별시 송파구 올림픽로 789',
  datetime('now'), datetime('now')
WHERE NOT EXISTS (SELECT 1 FROM users WHERE email = 'daycare@test.com');

-- 시설 테스트 계정 4: 편안한재가복지센터
INSERT OR REPLACE INTO users (
  user_type, email, password_hash, name, phone,
  business_number, facility_type, region_sido, region_sigungu, address,
  created_at, updated_at
) 
SELECT 'facility', 'homecare@test.com', '1234', '편안한재가복지센터', '0234567890',
  '4567890123', '재가복지센터', '인천광역시', '남동구', '인천광역시 남동구 인주대로 234',
  datetime('now'), datetime('now')
WHERE NOT EXISTS (SELECT 1 FROM users WHERE email = 'homecare@test.com');

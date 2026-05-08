-- ============================================
-- 하이브리드 요양비용 계산기 DB 스키마
-- ============================================

-- 1. 장기요양등급별 본인부담률 테이블
CREATE TABLE IF NOT EXISTS ltc_grade_rates (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  grade_level TEXT NOT NULL UNIQUE,  -- '1등급', '2등급', '3등급', '4등급', '5등급', '인지지원등급'
  grade_number INTEGER,               -- 1, 2, 3, 4, 5, 6 (인지지원=6)
  copayment_rate REAL NOT NULL,       -- 본인부담률 (예: 15.0 = 15%)
  description TEXT,                   -- 등급 설명
  max_monthly_limit INTEGER,          -- 월 한도액 (원)
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 2. 시설 유형별 기본 비용 테이블
CREATE TABLE IF NOT EXISTS facility_type_costs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  facility_type TEXT NOT NULL,        -- '요양병원', '요양원', '주야간보호', '재가복지센터'
  grade_level TEXT NOT NULL,          -- '1등급', '2등급', etc.
  base_monthly_cost INTEGER NOT NULL, -- 기본 월 비용 (원)
  meal_cost INTEGER DEFAULT 0,        -- 식사비 (원/월)
  management_cost INTEGER DEFAULT 0,  -- 관리비 (원/월)
  total_cost INTEGER NOT NULL,        -- 총 비용 (원/월)
  effective_date DATE,                -- 적용 시작일
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  UNIQUE(facility_type, grade_level)
);

-- 3. 통합돌봄 바우처 금액 테이블
CREATE TABLE IF NOT EXISTS voucher_amounts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  voucher_type TEXT NOT NULL,         -- '장기요양급여', '통합돌봄서비스', '가족요양비' etc.
  grade_level TEXT NOT NULL,          -- '1등급', '2등급', etc.
  monthly_amount INTEGER NOT NULL,    -- 월 지원금액 (원)
  description TEXT,                   -- 바우처 설명
  eligibility TEXT,                   -- 수급 자격 조건
  effective_date DATE,                -- 적용 시작일
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  UNIQUE(voucher_type, grade_level)
);

-- 4. 계산 히스토리 테이블 (사용자 계산 기록)
CREATE TABLE IF NOT EXISTS calculation_history (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT,                       -- 사용자 ID (선택사항)
  grade_level TEXT NOT NULL,          -- 입력한 등급
  facility_type TEXT NOT NULL,        -- 선택한 시설 유형
  base_cost INTEGER NOT NULL,         -- 기본 비용
  copayment_rate REAL NOT NULL,       -- 본인부담률
  copayment_amount INTEGER NOT NULL,  -- 본인부담금
  voucher_amount INTEGER DEFAULT 0,   -- 바우처 지원금
  final_cost INTEGER NOT NULL,        -- 최종 예상 비용
  additional_options TEXT,            -- 추가 옵션 (JSON)
  ip_address TEXT,                    -- 요청 IP
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 5. 추가 비용 항목 테이블 (선택적 비용)
CREATE TABLE IF NOT EXISTS additional_cost_items (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  item_name TEXT NOT NULL UNIQUE,     -- '간병비', '물리치료', '치매프로그램' etc.
  item_category TEXT,                 -- '의료서비스', '생활지원', '특별프로그램'
  monthly_cost INTEGER NOT NULL,      -- 월 비용 (원)
  description TEXT,
  is_active BOOLEAN DEFAULT 1,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- ============================================
-- 인덱스 생성
-- ============================================

CREATE INDEX IF NOT EXISTS idx_ltc_grade_number ON ltc_grade_rates(grade_number);
CREATE INDEX IF NOT EXISTS idx_facility_costs_type ON facility_type_costs(facility_type);
CREATE INDEX IF NOT EXISTS idx_voucher_grade ON voucher_amounts(grade_level);
CREATE INDEX IF NOT EXISTS idx_calc_history_date ON calculation_history(created_at);
CREATE INDEX IF NOT EXISTS idx_calc_history_grade ON calculation_history(grade_level);

-- ============================================
-- 초기 데이터 삽입 (2025년 기준)
-- ============================================

-- 장기요양등급별 본인부담률 (건강보험 기준)
INSERT OR IGNORE INTO ltc_grade_rates (grade_level, grade_number, copayment_rate, description, max_monthly_limit) VALUES
  ('1등급', 1, 15.0, '일상생활 전반에 타인의 도움이 필요한 상태', 1893100),
  ('2등급', 2, 15.0, '일상생활에 상당 부분 타인의 도움이 필요한 상태', 1679100),
  ('3등급', 3, 15.0, '일상생활에 부분적으로 타인의 도움이 필요한 상태', 1417800),
  ('4등급', 4, 15.0, '심신 기능 상태의 장애로 일상생활에 도움이 필요한 상태', 1306200),
  ('5등급', 5, 15.0, '치매환자로서 부분적 도움이 필요한 상태', 1020300),
  ('인지지원등급', 6, 15.0, '치매환자로서 인지기능 개선을 위한 지원이 필요한 상태', 573900);

-- 시설 유형별 기본 비용 (평균값, 2025년 기준)
-- 요양병원 (1~5등급)
INSERT OR IGNORE INTO facility_type_costs (facility_type, grade_level, base_monthly_cost, meal_cost, management_cost, total_cost, effective_date) VALUES
  ('요양병원', '1등급', 2500000, 300000, 100000, 2900000, '2025-01-01'),
  ('요양병원', '2등급', 2300000, 300000, 100000, 2700000, '2025-01-01'),
  ('요양병원', '3등급', 2100000, 300000, 100000, 2500000, '2025-01-01'),
  ('요양병원', '4등급', 1900000, 300000, 100000, 2300000, '2025-01-01'),
  ('요양병원', '5등급', 1700000, 300000, 100000, 2100000, '2025-01-01');

-- 요양원 (1~5등급)
INSERT OR IGNORE INTO facility_type_costs (facility_type, grade_level, base_monthly_cost, meal_cost, management_cost, total_cost, effective_date) VALUES
  ('요양원', '1등급', 1800000, 250000, 80000, 2130000, '2025-01-01'),
  ('요양원', '2등급', 1600000, 250000, 80000, 1930000, '2025-01-01'),
  ('요양원', '3등급', 1400000, 250000, 80000, 1730000, '2025-01-01'),
  ('요양원', '4등급', 1200000, 250000, 80000, 1530000, '2025-01-01'),
  ('요양원', '5등급', 1000000, 250000, 80000, 1330000, '2025-01-01');

-- 주야간보호 (1~5등급)
INSERT OR IGNORE INTO facility_type_costs (facility_type, grade_level, base_monthly_cost, meal_cost, management_cost, total_cost, effective_date) VALUES
  ('주야간보호', '1등급', 900000, 150000, 50000, 1100000, '2025-01-01'),
  ('주야간보호', '2등급', 800000, 150000, 50000, 1000000, '2025-01-01'),
  ('주야간보호', '3등급', 700000, 150000, 50000, 900000, '2025-01-01'),
  ('주야간보호', '4등급', 600000, 150000, 50000, 800000, '2025-01-01'),
  ('주야간보호', '5등급', 500000, 150000, 50000, 700000, '2025-01-01');

-- 재가복지센터 (1~5등급, 인지지원등급)
INSERT OR IGNORE INTO facility_type_costs (facility_type, grade_level, base_monthly_cost, meal_cost, management_cost, total_cost, effective_date) VALUES
  ('재가복지센터', '1등급', 1200000, 0, 50000, 1250000, '2025-01-01'),
  ('재가복지센터', '2등급', 1000000, 0, 50000, 1050000, '2025-01-01'),
  ('재가복지센터', '3등급', 850000, 0, 50000, 900000, '2025-01-01'),
  ('재가복지센터', '4등급', 700000, 0, 50000, 750000, '2025-01-01'),
  ('재가복지센터', '5등급', 550000, 0, 50000, 600000, '2025-01-01'),
  ('재가복지센터', '인지지원등급', 400000, 0, 50000, 450000, '2025-01-01');

-- 통합돌봄 바우처 금액 (2025년 기준)
INSERT OR IGNORE INTO voucher_amounts (voucher_type, grade_level, monthly_amount, description, eligibility, effective_date) VALUES
  ('장기요양급여', '1등급', 1893100, '월 한도액 내 급여 지원', '장기요양 1등급 인정자', '2025-01-01'),
  ('장기요양급여', '2등급', 1679100, '월 한도액 내 급여 지원', '장기요양 2등급 인정자', '2025-01-01'),
  ('장기요양급여', '3등급', 1417800, '월 한도액 내 급여 지원', '장기요양 3등급 인정자', '2025-01-01'),
  ('장기요양급여', '4등급', 1306200, '월 한도액 내 급여 지원', '장기요양 4등급 인정자', '2025-01-01'),
  ('장기요양급여', '5등급', 1020300, '월 한도액 내 급여 지원', '장기요양 5등급 인정자', '2025-01-01'),
  ('장기요양급여', '인지지원등급', 573900, '월 한도액 내 급여 지원', '인지지원등급 인정자', '2025-01-01');

-- 추가 비용 항목
INSERT OR IGNORE INTO additional_cost_items (item_name, item_category, monthly_cost, description) VALUES
  ('간병비', '의료서비스', 500000, '24시간 간병 서비스'),
  ('물리치료', '의료서비스', 200000, '주 3회 물리치료'),
  ('작업치료', '의료서비스', 150000, '주 2회 작업치료'),
  ('치매프로그램', '특별프로그램', 100000, '인지기능 개선 프로그램'),
  ('미용서비스', '생활지원', 50000, '월 1회 이미용 서비스'),
  ('세탁서비스', '생활지원', 80000, '개인 세탁 서비스');


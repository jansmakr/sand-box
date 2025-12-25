-- Phase 2A: 사회복지사 및 긴급 시스템 기본 기능
-- 기존 테이블 구조 유지하며 안전하게 확장

-- 1. 긴급 전원 요청 테이블 (간소화 버전)
CREATE TABLE IF NOT EXISTS emergency_transfers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  transfer_id TEXT UNIQUE NOT NULL,
  
  -- 긴급도 (3단계)
  urgency_level TEXT NOT NULL CHECK(urgency_level IN ('normal', 'urgent', 'critical')),
  -- normal: 일반 (1주일), urgent: 긴급 (24시간), critical: 극긴급 (6시간)
  
  -- 환자 기본 정보
  patient_name TEXT NOT NULL,
  patient_age INTEGER,
  patient_gender TEXT,
  
  -- 의료 정보 (간소화)
  diagnosis TEXT,                        -- 진단명만 (상세 병력 제외)
  care_level TEXT,                       -- 요양등급
  special_notes TEXT,                    -- 특이사항
  
  -- 입소 희망 정보
  desired_admission_date DATE,           -- 입소 희망일
  region_sido TEXT,                      -- 희망 지역 (시도)
  region_sigungu TEXT,                   -- 희망 지역 (시군구)
  facility_type TEXT,                    -- 시설 유형
  
  -- 요청자 정보
  requester_type TEXT NOT NULL,          -- hospital, social_worker, family
  requester_name TEXT NOT NULL,
  requester_phone TEXT NOT NULL,
  requester_email TEXT,
  hospital_name TEXT,                    -- 병원명 (해당시)
  department TEXT,                       -- 진료과 (해당시)
  
  -- 견적 요청 연결 (기존 시스템과 통합)
  quote_id TEXT,                         -- quote_requests 테이블 연결
  
  -- 상태 관리
  status TEXT DEFAULT 'pending',         -- pending, reviewing, matched, completed, cancelled
  matched_facility_id INTEGER,           -- 매칭된 시설 ID
  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 2. 사회복지사 정보 테이블
CREATE TABLE IF NOT EXISTS social_workers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  email TEXT UNIQUE NOT NULL,            -- 로그인 이메일
  password TEXT NOT NULL,                -- 비밀번호 (해시)
  name TEXT NOT NULL,                    -- 사회복지사 이름
  phone TEXT NOT NULL,                   -- 연락처
  
  -- 소속 정보
  hospital_name TEXT NOT NULL,           -- 소속 병원
  department TEXT,                       -- 부서
  license_number TEXT,                   -- 사회복지사 자격증 번호 (선택)
  
  -- 즐겨찾기 시설 (JSON 배열)
  favorite_facilities TEXT DEFAULT '[]', -- [1, 5, 10] 형태
  
  -- 통계
  total_transfers INTEGER DEFAULT 0,     -- 총 전원 건수
  
  -- 계정 상태
  status TEXT DEFAULT 'active',          -- active, inactive, pending
  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 3. users 테이블에 응급 관련 필드 추가 (시설 전용)
-- SQLite는 ALTER TABLE ADD COLUMN만 지원 (IF NOT EXISTS 미지원)
-- 이미 컬럼이 있으면 오류 발생하므로 주석 처리하고 코드에서 처리

-- 4. 시설 응급 정보 테이블 (별도 관리)
CREATE TABLE IF NOT EXISTS facility_emergency_info (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  facility_id INTEGER UNIQUE NOT NULL,   -- users 테이블의 시설 ID
  
  -- 응급 입소 정보
  emergency_admission INTEGER DEFAULT 0,        -- 응급 입소 가능 여부
  emergency_hotline TEXT,                       -- 응급 연락처
  night_weekend_available INTEGER DEFAULT 0,    -- 야간/주말 가능
  
  -- 병상 정보
  total_beds INTEGER DEFAULT 0,                 -- 총 병상 수
  available_beds INTEGER DEFAULT 0,             -- 가용 병상 수
  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  
  FOREIGN KEY (facility_id) REFERENCES users(id)
);

-- 인덱스 생성 (성능 최적화)
CREATE INDEX IF NOT EXISTS idx_emergency_transfers_urgency ON emergency_transfers(urgency_level);
CREATE INDEX IF NOT EXISTS idx_emergency_transfers_status ON emergency_transfers(status);
CREATE INDEX IF NOT EXISTS idx_emergency_transfers_quote_id ON emergency_transfers(quote_id);
CREATE INDEX IF NOT EXISTS idx_social_workers_email ON social_workers(email);
CREATE INDEX IF NOT EXISTS idx_social_workers_hospital ON social_workers(hospital_name);
CREATE INDEX IF NOT EXISTS idx_facility_emergency_info_facility ON facility_emergency_info(facility_id);


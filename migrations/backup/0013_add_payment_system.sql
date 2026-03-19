-- 구독(멤버십) 테이블
CREATE TABLE IF NOT EXISTS subscriptions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  plan_type TEXT NOT NULL DEFAULT 'basic', -- basic(990원), premium(4990원)
  status TEXT NOT NULL DEFAULT 'active', -- active, paused, cancelled, expired
  billing_key TEXT, -- 포트원 빌링키
  customer_uid TEXT UNIQUE, -- 포트원 고객 고유번호
  
  -- 결제 정보
  monthly_fee INTEGER NOT NULL DEFAULT 990,
  next_billing_date DATE,
  last_billing_date DATE,
  failed_count INTEGER DEFAULT 0,
  
  -- 할인 정보
  discount_rate INTEGER DEFAULT 30, -- 기본 30% 할인
  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  cancelled_at DATETIME,
  
  FOREIGN KEY (user_id) REFERENCES users(id)
);

-- 결제 내역 테이블
CREATE TABLE IF NOT EXISTS payments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  
  -- 포트원 정보
  imp_uid TEXT UNIQUE, -- 포트원 결제 고유번호
  merchant_uid TEXT UNIQUE NOT NULL, -- 가맹점 주문번호
  
  -- 결제 정보
  payment_type TEXT NOT NULL, -- subscription(구독), booking(예약결제)
  payment_method TEXT, -- card, trans, vbank, phone
  pg_provider TEXT DEFAULT 'kcp',
  
  amount INTEGER NOT NULL,
  paid_amount INTEGER,
  cancel_amount INTEGER DEFAULT 0,
  currency TEXT DEFAULT 'KRW',
  
  -- 상태
  status TEXT NOT NULL DEFAULT 'pending', -- pending, paid, failed, cancelled, partial_cancelled
  paid_at DATETIME,
  failed_at DATETIME,
  cancelled_at DATETIME,
  
  -- 실패 사유
  fail_reason TEXT,
  cancel_reason TEXT,
  
  -- 연관 정보
  subscription_id INTEGER, -- 구독 결제인 경우
  booking_id INTEGER, -- 예약 결제인 경우
  
  -- 영수증
  receipt_url TEXT,
  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (subscription_id) REFERENCES subscriptions(id),
  FOREIGN KEY (booking_id) REFERENCES bookings(id)
);

-- 예약 테이블
CREATE TABLE IF NOT EXISTS bookings (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  facility_id INTEGER,
  
  -- 환자 정보
  patient_name TEXT NOT NULL,
  patient_age INTEGER,
  patient_condition TEXT NOT NULL, -- walking(보행), wheelchair(휠체어), bedridden(와상)
  
  -- 예약 정보
  service_type TEXT NOT NULL, -- consultation(상담), companion(동행), both(상담+동행)
  service_date DATE NOT NULL,
  service_time TEXT,
  
  -- 위치 정보
  pickup_address TEXT, -- 픽업 주소
  pickup_detail TEXT, -- 상세 주소
  hospital_name TEXT, -- 병원명
  hospital_address TEXT, -- 병원 주소
  
  -- 가격 정보
  base_price INTEGER NOT NULL,
  member_discount INTEGER DEFAULT 0,
  final_price INTEGER NOT NULL,
  
  -- 상태
  status TEXT NOT NULL DEFAULT 'pending', -- pending, confirmed, assigned, completed, cancelled
  
  -- 파트너 배정
  partner_id INTEGER,
  assigned_at DATETIME,
  
  -- 완료 정보
  completed_at DATETIME,
  safety_report_url TEXT, -- 안심 리포트 이미지 URL
  safety_report_text TEXT, -- 안심 리포트 텍스트
  
  -- 메모
  special_request TEXT,
  admin_memo TEXT,
  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (facility_id) REFERENCES facilities(id),
  FOREIGN KEY (partner_id) REFERENCES users(id)
);

-- 파트너 프로필 테이블
CREATE TABLE IF NOT EXISTS partner_profiles (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL UNIQUE,
  
  -- 기본 정보
  real_name TEXT NOT NULL,
  phone TEXT NOT NULL,
  
  -- 자격 정보
  certification_type TEXT, -- nurse(간호사), caregiver(요양보호사), etc
  certification_number TEXT,
  certification_file_url TEXT,
  
  -- 활동 지역
  service_regions TEXT, -- JSON array: ["서울 강남구", "서울 서초구"]
  
  -- 통계
  total_bookings INTEGER DEFAULT 0,
  completed_bookings INTEGER DEFAULT 0,
  cancelled_bookings INTEGER DEFAULT 0,
  average_rating REAL DEFAULT 0,
  
  -- 정산 정보
  commission_rate INTEGER DEFAULT 60, -- 기본 60%
  total_earnings INTEGER DEFAULT 0,
  pending_amount INTEGER DEFAULT 0,
  withdrawn_amount INTEGER DEFAULT 0,
  
  -- 상태
  is_verified INTEGER DEFAULT 0, -- 관리자 승인 여부
  is_active INTEGER DEFAULT 1,
  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  
  FOREIGN KEY (user_id) REFERENCES users(id)
);

-- 파트너 정산 테이블
CREATE TABLE IF NOT EXISTS partner_settlements (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  partner_id INTEGER NOT NULL,
  booking_id INTEGER NOT NULL,
  
  -- 금액 정보
  booking_amount INTEGER NOT NULL, -- 예약 총액
  commission_rate INTEGER NOT NULL, -- 수수료율
  partner_amount INTEGER NOT NULL, -- 파트너 수령액
  platform_fee INTEGER NOT NULL, -- 플랫폼 수수료
  
  -- 상태
  status TEXT NOT NULL DEFAULT 'pending', -- pending, confirmed, paid
  confirmed_at DATETIME,
  paid_at DATETIME,
  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  
  FOREIGN KEY (partner_id) REFERENCES users(id),
  FOREIGN KEY (booking_id) REFERENCES bookings(id)
);

-- 출금 요청 테이블
CREATE TABLE IF NOT EXISTS withdrawal_requests (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  partner_id INTEGER NOT NULL,
  
  -- 금액
  requested_amount INTEGER NOT NULL,
  
  -- 계좌 정보
  bank_name TEXT NOT NULL,
  account_number TEXT NOT NULL,
  account_holder TEXT NOT NULL,
  
  -- 상태
  status TEXT NOT NULL DEFAULT 'pending', -- pending, approved, rejected, completed
  approved_at DATETIME,
  approved_by INTEGER, -- 관리자 user_id
  completed_at DATETIME,
  
  -- 메모
  reject_reason TEXT,
  admin_memo TEXT,
  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  
  FOREIGN KEY (partner_id) REFERENCES users(id),
  FOREIGN KEY (approved_by) REFERENCES users(id)
);

-- 인덱스 생성
CREATE INDEX IF NOT EXISTS idx_subscriptions_user_id ON subscriptions(user_id);
CREATE INDEX IF NOT EXISTS idx_subscriptions_status ON subscriptions(status);
CREATE INDEX IF NOT EXISTS idx_subscriptions_next_billing ON subscriptions(next_billing_date);

CREATE INDEX IF NOT EXISTS idx_payments_user_id ON payments(user_id);
CREATE INDEX IF NOT EXISTS idx_payments_status ON payments(status);
CREATE INDEX IF NOT EXISTS idx_payments_type ON payments(payment_type);
CREATE INDEX IF NOT EXISTS idx_payments_imp_uid ON payments(imp_uid);

CREATE INDEX IF NOT EXISTS idx_bookings_user_id ON bookings(user_id);
CREATE INDEX IF NOT EXISTS idx_bookings_partner_id ON bookings(partner_id);
CREATE INDEX IF NOT EXISTS idx_bookings_status ON bookings(status);
CREATE INDEX IF NOT EXISTS idx_bookings_service_date ON bookings(service_date);

CREATE INDEX IF NOT EXISTS idx_partner_profiles_user_id ON partner_profiles(user_id);
CREATE INDEX IF NOT EXISTS idx_partner_settlements_partner_id ON partner_settlements(partner_id);
CREATE INDEX IF NOT EXISTS idx_partner_settlements_status ON partner_settlements(status);

-- 구독 결제 시스템
-- 포트원(PortOne) + KCP 정기결제 지원

-- 구독 플랜 테이블
CREATE TABLE IF NOT EXISTS subscription_plans (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,                    -- 플랜명 (예: 베이직, 프리미엄)
  price INTEGER NOT NULL,                -- 월 가격 (990원)
  discount_rate INTEGER DEFAULT 0,       -- 서비스 할인율 (30-40%)
  description TEXT,                      -- 플랜 설명
  is_active BOOLEAN DEFAULT true,        -- 활성 상태
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 기본 플랜 데이터 삽입
INSERT INTO subscription_plans (name, price, discount_rate, description) VALUES
  ('베이직 멤버십', 990, 30, '월 990원으로 모든 서비스 30% 할인'),
  ('프리미엄 멤버십', 4990, 40, '월 4,990원으로 모든 서비스 40% 할인 + 우선 매칭');

-- 구독 정보 테이블
CREATE TABLE IF NOT EXISTS subscriptions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,              -- 사용자 ID
  plan_id INTEGER NOT NULL,              -- 구독 플랜 ID
  status TEXT DEFAULT 'active',          -- 구독 상태: active, paused, cancelled, expired
  billing_key TEXT,                      -- 포트원 빌링키 (정기결제용)
  customer_uid TEXT UNIQUE,              -- 포트원 고객 고유 ID
  next_billing_date DATE,                -- 다음 결제일
  started_at DATETIME DEFAULT CURRENT_TIMESTAMP,  -- 구독 시작일
  cancelled_at DATETIME,                 -- 구독 취소일
  expires_at DATETIME,                   -- 구독 만료일
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  FOREIGN KEY (plan_id) REFERENCES subscription_plans(id)
);

CREATE INDEX idx_subscriptions_user_id ON subscriptions(user_id);
CREATE INDEX idx_subscriptions_status ON subscriptions(status);
CREATE INDEX idx_subscriptions_next_billing_date ON subscriptions(next_billing_date);

-- 결제 내역 테이블
CREATE TABLE IF NOT EXISTS payments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,              -- 사용자 ID
  subscription_id INTEGER,               -- 구독 ID (정기결제인 경우)
  booking_id INTEGER,                    -- 예약 ID (단건 결제인 경우)
  imp_uid TEXT UNIQUE,                   -- 포트원 결제 고유 ID
  merchant_uid TEXT UNIQUE NOT NULL,     -- 가맹점 주문 ID
  payment_type TEXT NOT NULL,            -- 결제 타입: subscription, booking
  amount INTEGER NOT NULL,               -- 결제 금액
  status TEXT DEFAULT 'pending',         -- 결제 상태: pending, paid, failed, cancelled, refunded
  pg_provider TEXT DEFAULT 'kcp',        -- PG사: kcp, nice, toss 등
  payment_method TEXT,                   -- 결제 수단: card, trans, vbank 등
  card_name TEXT,                        -- 카드사명
  card_number TEXT,                      -- 카드번호 (마스킹)
  paid_at DATETIME,                      -- 결제 완료 시각
  failed_at DATETIME,                    -- 결제 실패 시각
  fail_reason TEXT,                      -- 실패 사유
  cancelled_at DATETIME,                 -- 결제 취소 시각
  refunded_at DATETIME,                  -- 환불 완료 시각
  refund_amount INTEGER,                 -- 환불 금액
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  FOREIGN KEY (subscription_id) REFERENCES subscriptions(id) ON DELETE SET NULL,
  FOREIGN KEY (booking_id) REFERENCES bookings(id) ON DELETE SET NULL
);

CREATE INDEX idx_payments_user_id ON payments(user_id);
CREATE INDEX idx_payments_subscription_id ON payments(subscription_id);
CREATE INDEX idx_payments_booking_id ON payments(booking_id);
CREATE INDEX idx_payments_status ON payments(status);
CREATE INDEX idx_payments_imp_uid ON payments(imp_uid);
CREATE INDEX idx_payments_merchant_uid ON payments(merchant_uid);

-- 예약 테이블 (간병 서비스 예약)
CREATE TABLE IF NOT EXISTS bookings (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,              -- 고객(보호자) ID
  partner_id INTEGER,                    -- 배정된 파트너 ID
  patient_condition TEXT NOT NULL,       -- 환자 상태: walking, wheelchair, bedridden
  hospital_name TEXT,                    -- 병원명
  hospital_address TEXT,                 -- 병원 주소
  pickup_location TEXT,                  -- 픽업 위치
  appointment_date DATE NOT NULL,        -- 예약 날짜
  appointment_time TEXT NOT NULL,        -- 예약 시간
  service_purpose TEXT,                  -- 진료 목적
  special_notes TEXT,                    -- 특이사항
  original_price INTEGER NOT NULL,       -- 원가
  discount_amount INTEGER DEFAULT 0,     -- 할인 금액
  final_price INTEGER NOT NULL,          -- 최종 결제 금액
  commission_rate INTEGER DEFAULT 60,    -- 파트너 수수료율 (60%)
  partner_fee INTEGER,                   -- 파트너 지급액
  status TEXT DEFAULT 'pending',         -- 예약 상태: pending, confirmed, completed, cancelled
  payment_status TEXT DEFAULT 'unpaid',  -- 결제 상태: unpaid, paid, refunded
  confirmed_at DATETIME,                 -- 확정 시각
  completed_at DATETIME,                 -- 완료 시각
  cancelled_at DATETIME,                 -- 취소 시각
  cancel_reason TEXT,                    -- 취소 사유
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  FOREIGN KEY (partner_id) REFERENCES users(id) ON DELETE SET NULL
);

CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_partner_id ON bookings(partner_id);
CREATE INDEX idx_bookings_status ON bookings(status);
CREATE INDEX idx_bookings_payment_status ON bookings(payment_status);
CREATE INDEX idx_bookings_appointment_date ON bookings(appointment_date);

-- 안심 리포트 테이블
CREATE TABLE IF NOT EXISTS safety_reports (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  booking_id INTEGER NOT NULL UNIQUE,    -- 예약 ID (1:1 관계)
  partner_id INTEGER NOT NULL,           -- 파트너 ID
  report_text TEXT NOT NULL,             -- 리포트 내용
  photo_urls TEXT,                       -- 사진 URL (JSON 배열 형태)
  submitted_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (booking_id) REFERENCES bookings(id) ON DELETE CASCADE,
  FOREIGN KEY (partner_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE INDEX idx_safety_reports_booking_id ON safety_reports(booking_id);
CREATE INDEX idx_safety_reports_partner_id ON safety_reports(partner_id);

-- 파트너 정산 테이블
CREATE TABLE IF NOT EXISTS partner_settlements (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  partner_id INTEGER NOT NULL,           -- 파트너 ID
  booking_id INTEGER NOT NULL,           -- 예약 ID
  amount INTEGER NOT NULL,               -- 정산 금액
  status TEXT DEFAULT 'pending',         -- 정산 상태: pending, completed
  settled_at DATETIME,                   -- 정산 완료 시각
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (partner_id) REFERENCES users(id) ON DELETE CASCADE,
  FOREIGN KEY (booking_id) REFERENCES bookings(id) ON DELETE CASCADE
);

CREATE INDEX idx_partner_settlements_partner_id ON partner_settlements(partner_id);
CREATE INDEX idx_partner_settlements_status ON partner_settlements(status);

-- 출금 요청 테이블
CREATE TABLE IF NOT EXISTS withdrawal_requests (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  partner_id INTEGER NOT NULL,           -- 파트너 ID
  amount INTEGER NOT NULL,               -- 출금 요청 금액
  bank_name TEXT NOT NULL,               -- 은행명
  account_number TEXT NOT NULL,          -- 계좌번호
  account_holder TEXT NOT NULL,          -- 예금주
  status TEXT DEFAULT 'pending',         -- 상태: pending, approved, rejected, completed
  approved_at DATETIME,                  -- 승인 시각
  approved_by INTEGER,                   -- 승인자 ID (관리자)
  rejected_at DATETIME,                  -- 거부 시각
  reject_reason TEXT,                    -- 거부 사유
  completed_at DATETIME,                 -- 완료 시각
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (partner_id) REFERENCES users(id) ON DELETE CASCADE,
  FOREIGN KEY (approved_by) REFERENCES users(id) ON DELETE SET NULL
);

CREATE INDEX idx_withdrawal_requests_partner_id ON withdrawal_requests(partner_id);
CREATE INDEX idx_withdrawal_requests_status ON withdrawal_requests(status);

-- 서비스 가격표 테이블
CREATE TABLE IF NOT EXISTS service_pricing (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  patient_condition TEXT NOT NULL UNIQUE, -- 환자 상태: walking, wheelchair, bedridden
  non_member_price INTEGER NOT NULL,      -- 비회원 가격
  member_price INTEGER NOT NULL,          -- 회원 가격
  description TEXT,                       -- 서비스 설명
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 기본 가격표 삽입
INSERT INTO service_pricing (patient_condition, non_member_price, member_price, description) VALUES
  ('walking', 90000, 59000, '보행 가능 환자 - 병원 동행 및 진료 보조'),
  ('wheelchair', 110000, 79000, '휠체어 필요 환자 - 휠체어 이동 지원 포함'),
  ('bedridden', 180000, 139000, '와상 환자 - 특수 차량 이송 및 전문 간병');

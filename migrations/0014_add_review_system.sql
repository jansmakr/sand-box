-- 사용후기 테이블
CREATE TABLE IF NOT EXISTS service_reviews (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT NOT NULL,
  booking_id INTEGER,
  service_type TEXT NOT NULL, -- 'facility', 'manager_consultation', 'hospital_companion' 등
  rating INTEGER NOT NULL CHECK(rating >= 1 AND rating <= 5),
  title TEXT NOT NULL,
  content TEXT NOT NULL,
  photos TEXT, -- JSON array of photo URLs
  status TEXT DEFAULT 'pending' CHECK(status IN ('pending', 'approved', 'rejected')),
  is_rewarded BOOLEAN DEFAULT 0, -- 990원 혜택 적용 여부
  reward_applied_at DATETIME,
  admin_reply TEXT,
  admin_reply_at DATETIME,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (booking_id) REFERENCES bookings(id)
);

CREATE INDEX idx_service_reviews_user_id ON service_reviews(user_id);
CREATE INDEX idx_service_reviews_booking_id ON service_reviews(booking_id);
CREATE INDEX idx_service_reviews_status ON service_reviews(status);
CREATE INDEX idx_service_reviews_created_at ON service_reviews(created_at);

-- 후기 이벤트 히스토리 테이블
CREATE TABLE IF NOT EXISTS review_event_history (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT NOT NULL,
  review_id INTEGER NOT NULL,
  subscription_id INTEGER,
  event_type TEXT DEFAULT 'review_discount' CHECK(event_type IN ('review_discount', 'launch_event')),
  discount_amount INTEGER NOT NULL, -- 할인 금액 (원)
  original_price INTEGER NOT NULL, -- 정상가 (원)
  final_price INTEGER NOT NULL, -- 최종 가격 (원)
  applied_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  valid_until DATETIME, -- 이벤트 유효기간
  FOREIGN KEY (review_id) REFERENCES service_reviews(id),
  FOREIGN KEY (subscription_id) REFERENCES subscriptions(id)
);

CREATE INDEX idx_review_event_history_user_id ON review_event_history(user_id);
CREATE INDEX idx_review_event_history_subscription_id ON review_event_history(subscription_id);

-- subscription_plans 테이블에 이벤트 가격 컬럼 추가
-- 이미 존재할 수 있으므로 ALTER TABLE IF NOT EXISTS는 SQLite에서 지원하지 않아 체크 후 추가
-- 기본 플랜 업데이트 (프리미엄만 이벤트 가격 적용)
UPDATE subscription_plans 
SET 
  name = '프리미엄 멤버십',
  description = '모든 서비스 40% 할인 + 우선 매칭\n💝 사용후기 작성 시 다음 달도 990원!',
  features = '{
    "discount": 40,
    "priority_matching": true,
    "manager": "24시간 전담 매니저",
    "cancellation_fee": "면제",
    "safety_report": "실시간",
    "review_event": true
  }'
WHERE name LIKE '%프리미엄%' OR price = 4990;

-- 이벤트 가격 정보를 별도 테이블로 관리
CREATE TABLE IF NOT EXISTS subscription_events (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  plan_id INTEGER NOT NULL,
  event_name TEXT NOT NULL,
  event_type TEXT NOT NULL CHECK(event_type IN ('launch_event', 'review_discount', 'seasonal')),
  original_price INTEGER NOT NULL,
  event_price INTEGER NOT NULL,
  discount_rate INTEGER, -- 할인율 (%)
  start_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  end_date DATETIME, -- NULL이면 무기한
  is_active BOOLEAN DEFAULT 1,
  conditions TEXT, -- JSON: 이벤트 조건 (예: 후기 작성 필수)
  description TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (plan_id) REFERENCES subscription_plans(id)
);

CREATE INDEX idx_subscription_events_plan_id ON subscription_events(plan_id);
CREATE INDEX idx_subscription_events_is_active ON subscription_events(is_active);

-- 런칭 이벤트 삽입 (프리미엄 멤버십: 4,990원 → 990원)
INSERT INTO subscription_events (plan_id, event_name, event_type, original_price, event_price, discount_rate, end_date, conditions, description)
SELECT 
  id,
  '런칭 특별 이벤트',
  'launch_event',
  4990,
  990,
  80,
  NULL, -- 무기한
  '{"auto_apply": true, "review_bonus": true}',
  '🎉 프리미엄 멤버십 런칭 기념 80% 할인! 사용후기 작성 시 다음 달도 990원 혜택 제공'
FROM subscription_plans
WHERE name LIKE '%프리미엄%' OR price = 4990
LIMIT 1;

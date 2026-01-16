-- 시설 평점 및 리뷰 테이블
CREATE TABLE IF NOT EXISTS facility_reviews (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  facility_id INTEGER NOT NULL,
  user_id TEXT,  -- 사용자 ID (익명 가능)
  rating INTEGER NOT NULL CHECK(rating >= 1 AND rating <= 5),  -- 1-5점
  
  -- 세부 평점
  rating_cleanliness INTEGER CHECK(rating_cleanliness >= 1 AND rating_cleanliness <= 5),  -- 청결도
  rating_staff INTEGER CHECK(rating_staff >= 1 AND rating_staff <= 5),  -- 직원 친절도
  rating_food INTEGER CHECK(rating_food >= 1 AND rating_food <= 5),  -- 식사 품질
  rating_facility INTEGER CHECK(rating_facility >= 1 AND rating_facility <= 5),  -- 시설 상태
  rating_care INTEGER CHECK(rating_care >= 1 AND rating_care <= 5),  -- 케어 품질
  rating_cost INTEGER CHECK(rating_cost >= 1 AND rating_cost <= 5),  -- 가성비
  
  review_title TEXT,
  review_text TEXT,
  pros TEXT,  -- 장점
  cons TEXT,  -- 단점
  
  stay_duration TEXT,  -- 입소 기간: "1개월 미만", "1-6개월", "6개월-1년", "1년 이상"
  patient_condition TEXT,  -- 환자 상태: "경증", "중증", "와상"
  
  is_verified BOOLEAN DEFAULT 0,  -- 실제 이용자 인증 여부
  helpful_count INTEGER DEFAULT 0,  -- 도움이 됨 카운트
  
  status TEXT DEFAULT 'pending',  -- 'pending', 'approved', 'rejected'
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  
  FOREIGN KEY (facility_id) REFERENCES facilities(id)
);

-- 시설별 평점 통계 테이블 (집계용)
CREATE TABLE IF NOT EXISTS facility_rating_stats (
  facility_id INTEGER PRIMARY KEY,
  total_reviews INTEGER DEFAULT 0,
  average_rating REAL DEFAULT 0.0,
  rating_distribution TEXT,  -- JSON: {"1": 0, "2": 1, "3": 5, "4": 10, "5": 20}
  
  avg_cleanliness REAL DEFAULT 0.0,
  avg_staff REAL DEFAULT 0.0,
  avg_food REAL DEFAULT 0.0,
  avg_facility REAL DEFAULT 0.0,
  avg_care REAL DEFAULT 0.0,
  avg_cost REAL DEFAULT 0.0,
  
  last_review_date DATETIME,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  
  FOREIGN KEY (facility_id) REFERENCES facilities(id)
);

-- 인덱스 생성
CREATE INDEX IF NOT EXISTS idx_facility_reviews_facility ON facility_reviews(facility_id);
CREATE INDEX IF NOT EXISTS idx_facility_reviews_rating ON facility_reviews(rating);
CREATE INDEX IF NOT EXISTS idx_facility_reviews_status ON facility_reviews(status);
CREATE INDEX IF NOT EXISTS idx_facility_reviews_created ON facility_reviews(created_at DESC);

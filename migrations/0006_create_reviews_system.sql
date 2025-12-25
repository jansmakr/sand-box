-- 리뷰 시스템 테이블 생성

-- 리뷰 테이블
CREATE TABLE IF NOT EXISTS reviews (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  review_id TEXT UNIQUE NOT NULL,
  response_id TEXT NOT NULL,          -- 견적서 응답 ID (quote_responses)
  customer_id INTEGER NOT NULL,        -- 고객 ID
  facility_id INTEGER NOT NULL,        -- 시설 ID (partners 테이블)
  
  -- 평점 (1-5)
  rating INTEGER NOT NULL CHECK(rating >= 1 AND rating <= 5),
  
  -- 리뷰 내용
  title TEXT,                          -- 리뷰 제목 (선택)
  content TEXT NOT NULL,               -- 리뷰 내용 (필수, 최소 10자)
  
  -- 상태 관리
  status TEXT DEFAULT 'pending',       -- pending, approved, rejected
  is_verified INTEGER DEFAULT 1,       -- 실제 이용자 인증 (견적 받은 고객)
  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 시설의 리뷰 답변 테이블
CREATE TABLE IF NOT EXISTS review_responses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  review_id TEXT NOT NULL,
  facility_id INTEGER NOT NULL,
  response_text TEXT NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (review_id) REFERENCES reviews(review_id)
);

-- 인덱스 생성
CREATE INDEX IF NOT EXISTS idx_reviews_response_id ON reviews(response_id);
CREATE INDEX IF NOT EXISTS idx_reviews_facility_id ON reviews(facility_id);
CREATE INDEX IF NOT EXISTS idx_reviews_customer_id ON reviews(customer_id);
CREATE INDEX IF NOT EXISTS idx_reviews_status ON reviews(status);
CREATE INDEX IF NOT EXISTS idx_review_responses_review_id ON review_responses(review_id);

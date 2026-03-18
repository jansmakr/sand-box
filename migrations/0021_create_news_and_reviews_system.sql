-- ============================================
-- 소식 및 후기 시스템 마이그레이션
-- 작성일: 2026-03-18
-- ============================================

-- ============================================
-- 1. 소식(News) 테이블
-- ============================================
CREATE TABLE IF NOT EXISTS news (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  
  -- 기본 정보
  title TEXT NOT NULL,
  content TEXT NOT NULL,
  preview TEXT, -- 미리보기 텍스트 (최대 200자)
  
  -- 카테고리 및 분류
  category TEXT DEFAULT 'notice', -- notice(공지), event(이벤트), facility(시설소식), policy(정책)
  
  -- 작성자 정보
  author_type TEXT NOT NULL, -- admin(관리자), facility(시설)
  author_id INTEGER, -- users 또는 facilities 테이블 ID
  facility_id INTEGER, -- 시설 소식인 경우 시설 ID
  
  -- 미디어
  image_url TEXT, -- 대표 이미지 URL
  thumbnail_url TEXT, -- 썸네일 URL
  
  -- 상태 관리
  status TEXT DEFAULT 'draft', -- draft(임시저장), pending(승인대기), published(게시), archived(보관)
  
  -- 조회 및 통계
  view_count INTEGER DEFAULT 0,
  like_count INTEGER DEFAULT 0,
  
  -- 게시 및 종료일
  published_at DATETIME,
  expires_at DATETIME, -- 이벤트 종료일 등
  
  -- 메타데이터
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 소식 인덱스
CREATE INDEX IF NOT EXISTS idx_news_status ON news(status);
CREATE INDEX IF NOT EXISTS idx_news_published_at ON news(published_at DESC);
CREATE INDEX IF NOT EXISTS idx_news_category ON news(category);
CREATE INDEX IF NOT EXISTS idx_news_author ON news(author_type, author_id);
CREATE INDEX IF NOT EXISTS idx_news_facility ON news(facility_id);
CREATE INDEX IF NOT EXISTS idx_news_view_count ON news(view_count DESC);

-- ============================================
-- 2. 후기(Reviews) 시스템 강화
-- ============================================
-- 기존 facility_reviews 테이블 컬럼 추가
-- (ALTER TABLE은 SQLite에서 제한적이므로 새 테이블 생성 후 마이그레이션)

CREATE TABLE IF NOT EXISTS user_reviews (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  
  -- 시설 정보
  facility_id INTEGER,
  facility_name TEXT NOT NULL, -- 시설명 직접 입력 가능
  
  -- 작성자 정보
  user_id INTEGER, -- 로그인 사용자 (선택)
  author_name TEXT DEFAULT '익명', -- 익명 작성 가능
  author_type TEXT DEFAULT 'family', -- family(가족), caregiver(간병인), staff(직원)
  
  -- 평가 정보
  rating INTEGER NOT NULL CHECK(rating >= 1 AND rating <= 5), -- 1-5점
  title TEXT,
  content TEXT NOT NULL,
  
  -- 세부 평가 (선택)
  rating_cleanliness INTEGER CHECK(rating_cleanliness >= 1 AND rating_cleanliness <= 5),
  rating_staff INTEGER CHECK(rating_staff >= 1 AND rating_staff <= 5),
  rating_food INTEGER CHECK(rating_food >= 1 AND rating_food <= 5),
  rating_facility INTEGER CHECK(rating_facility >= 1 AND rating_facility <= 5),
  rating_price INTEGER CHECK(rating_price >= 1 AND rating_price <= 5),
  
  -- 이용 정보
  usage_period TEXT, -- 이용 기간 (예: "2023-01 ~ 2024-12")
  relationship TEXT, -- 관계 (예: "딸", "아들", "배우자")
  
  -- 미디어
  images TEXT, -- JSON 배열 형태로 저장
  
  -- 상태 관리
  status TEXT DEFAULT 'pending', -- pending(승인대기), approved(승인), rejected(거부), reported(신고됨)
  is_verified BOOLEAN DEFAULT 0, -- 인증된 후기 여부
  
  -- 통계
  helpful_count INTEGER DEFAULT 0, -- 도움됨 수
  report_count INTEGER DEFAULT 0, -- 신고 수
  
  -- 메타데이터
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  approved_at DATETIME,
  
  FOREIGN KEY (facility_id) REFERENCES facilities(id) ON DELETE CASCADE,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL
);

-- 후기 인덱스
CREATE INDEX IF NOT EXISTS idx_user_reviews_facility ON user_reviews(facility_id);
CREATE INDEX IF NOT EXISTS idx_user_reviews_user ON user_reviews(user_id);
CREATE INDEX IF NOT EXISTS idx_user_reviews_status ON user_reviews(status);
CREATE INDEX IF NOT EXISTS idx_user_reviews_rating ON user_reviews(rating DESC);
CREATE INDEX IF NOT EXISTS idx_user_reviews_created ON user_reviews(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_user_reviews_helpful ON user_reviews(helpful_count DESC);

-- ============================================
-- 3. 후기 도움됨 테이블
-- ============================================
CREATE TABLE IF NOT EXISTS review_helpful (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  review_id INTEGER NOT NULL,
  user_id INTEGER,
  ip_address TEXT, -- 비로그인 사용자용
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  
  FOREIGN KEY (review_id) REFERENCES user_reviews(id) ON DELETE CASCADE,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  
  UNIQUE(review_id, user_id),
  UNIQUE(review_id, ip_address)
);

-- ============================================
-- 4. 소식 좋아요 테이블
-- ============================================
CREATE TABLE IF NOT EXISTS news_likes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  news_id INTEGER NOT NULL,
  user_id INTEGER,
  ip_address TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  
  FOREIGN KEY (news_id) REFERENCES news(id) ON DELETE CASCADE,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  
  UNIQUE(news_id, user_id),
  UNIQUE(news_id, ip_address)
);

-- ============================================
-- 5. 샘플 데이터 삽입 (관리자 소식)
-- ============================================
INSERT INTO news (title, content, preview, category, author_type, author_id, status, published_at, view_count)
VALUES 
  (
    '2024년 장기요양급여 지원금 확대',
    '보건복지부는 2024년부터 장기요양급여 지원금을 전년 대비 15% 확대한다고 발표했습니다. 이번 조치로 더 많은 어르신들이 양질의 요양 서비스를 받을 수 있을 것으로 기대됩니다.\n\n주요 내용:\n- 월 최대 지원금 150만원 → 172만원\n- 저소득층 본인부담금 50% → 30% 감면\n- 치매 전담형 시설 추가 지원\n\n자세한 내용은 보건복지부 홈페이지를 참고하세요.',
    '2024년부터 장기요양급여 지원금이 15% 확대됩니다. 월 최대 172만원까지 지원받을 수 있습니다.',
    'policy',
    'admin',
    1,
    'published',
    datetime('now', '-5 days'),
    1247
  ),
  (
    '강남구 신규 요양시설 개소 안내',
    '서울 강남구에 최신 시설을 갖춘 프리미엄 요양시설 "행복한 노후"가 3월 20일 개소합니다.\n\n시설 특징:\n- 1인실/2인실 전용 100개 객실\n- 실내 수영장 및 재활 치료실\n- 치매 전문 프로그램 운영\n- 24시간 간호사 상주\n\n오픈 기념 첫 3개월 입소료 20% 할인 이벤트를 진행합니다.',
    '강남구에 프리미엄 요양시설이 새로 문을 엽니다. 오픈 기념 20% 할인 이벤트 진행 중입니다.',
    'facility',
    'admin',
    1,
    'published',
    datetime('now', '-3 days'),
    892
  ),
  (
    '케어조아 이용 만족도 98% 달성',
    '케어조아를 통해 요양시설을 선택한 고객들의 만족도가 98%를 기록했습니다!\n\n고객님들의 주요 만족 요인:\n1. AI 맞춤 추천으로 우리 가족에게 딱 맞는 시설 발견\n2. 투명한 정보 제공으로 안심하고 선택\n3. 전문 상담사의 친절한 안내\n4. 빠르고 정확한 견적 비교\n\n앞으로도 최고의 서비스로 보답하겠습니다.',
    '케어조아 이용 고객 만족도 98% 달성! AI 맞춤 추천과 투명한 정보 제공이 높은 평가를 받았습니다.',
    'notice',
    'admin',
    1,
    'published',
    datetime('now', '-1 day'),
    2341
  );

-- ============================================
-- 6. 샘플 데이터 삽입 (후기)
-- ============================================
INSERT INTO user_reviews (
  facility_id, 
  facility_name, 
  author_name, 
  author_type,
  rating, 
  title,
  content, 
  rating_cleanliness,
  rating_staff,
  rating_food,
  rating_facility,
  rating_price,
  usage_period,
  relationship,
  status,
  is_verified,
  helpful_count,
  created_at,
  approved_at
)
VALUES 
  (
    NULL,
    '서울 행복 요양원',
    '김**',
    'family',
    5,
    '어머니가 정말 만족하시는 곳',
    '처음에는 걱정이 많았는데, 시설도 깨끗하고 직원분들이 정말 친절하십니다. 어머니께서 매일 전화하실 때마다 행복하다고 하셔서 안심이 됩니다. 특히 식사가 맛있다고 하시네요.',
    5,
    5,
    5,
    5,
    4,
    '2023-06 ~ 현재',
    '딸',
    'approved',
    1,
    23,
    datetime('now', '-10 days'),
    datetime('now', '-9 days')
  ),
  (
    NULL,
    '부산 사랑 요양센터',
    '이**',
    'family',
    4,
    '깔끔하고 좋아요',
    '시설은 정말 깨끗하고 좋습니다. 다만 가격이 조금 비싼 편이라 부담은 되네요. 그래도 아버지가 편안해하시니 만족합니다.',
    5,
    4,
    4,
    5,
    3,
    '2024-01 ~ 현재',
    '아들',
    'approved',
    1,
    15,
    datetime('now', '-7 days'),
    datetime('now', '-6 days')
  ),
  (
    NULL,
    '대구 평안 실버홈',
    '박**',
    'family',
    5,
    '케어조아 추천 받고 정말 잘 선택했어요',
    '케어조아에서 AI 추천 받아서 방문했는데 정말 만족스럽습니다. 우리 할머니 상태에 딱 맞는 프로그램들이 있어요. 치매 전문 프로그램도 운영하고 있고, 간호사 선생님들이 24시간 계셔서 안심입니다.',
    5,
    5,
    5,
    5,
    5,
    '2024-02 ~ 현재',
    '손녀',
    'approved',
    1,
    31,
    datetime('now', '-5 days'),
    datetime('now', '-4 days')
  );

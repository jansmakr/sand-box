-- AI 학습용 추가 테이블

-- 1. 사용자 세션 상세 추적
CREATE TABLE IF NOT EXISTS ai_user_sessions (
  session_id TEXT PRIMARY KEY,
  user_id TEXT,
  device_type TEXT,  -- 'mobile', 'desktop', 'tablet'
  browser TEXT,
  ip_country TEXT,
  ip_city TEXT,
  
  -- 검색 패턴
  search_sequence TEXT,  -- JSON: [{query, timestamp}, ...]
  page_views TEXT,  -- JSON: 방문한 페이지 순서
  time_on_site INTEGER,  -- 머문 시간 (초)
  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 2. A/B 테스트 결과
CREATE TABLE IF NOT EXISTS ab_test_results (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  test_name TEXT,  -- 'recommendation_v1_vs_v2'
  variant TEXT,  -- 'control', 'test_a', 'test_b'
  user_id TEXT,
  
  -- 결과 메트릭
  clicked BOOLEAN,
  converted BOOLEAN,  -- 견적 요청 여부
  satisfaction_score INTEGER,
  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 3. 모델 성능 추적
CREATE TABLE IF NOT EXISTS model_performance_logs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  model_name TEXT,  -- 'recommendation_v2', 'ctr_predictor'
  model_version TEXT,
  
  -- 성능 지표
  accuracy REAL,
  precision_score REAL,
  recall REAL,
  f1_score REAL,
  
  -- 데이터셋 정보
  training_data_size INTEGER,
  test_data_size INTEGER,
  
  deployed_at DATETIME,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 4. 시설 품질 점수 (AI 계산)
CREATE TABLE IF NOT EXISTS facility_ai_scores (
  facility_id INTEGER PRIMARY KEY,
  
  -- AI 계산 점수
  overall_quality_score REAL,  -- 0-100
  user_preference_score REAL,  -- 얼마나 많이 선택되는지
  review_sentiment_score REAL,  -- 리뷰 감정 점수
  conversion_probability REAL,  -- 견적 요청 확률
  
  -- 시설 강점/약점 (AI 분석)
  strengths TEXT,  -- JSON: ["위생", "서비스", "접근성"]
  weaknesses TEXT,  -- JSON: ["가격", "주차"]
  
  last_calculated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (facility_id) REFERENCES facilities(id)
);

-- 인덱스
CREATE INDEX IF NOT EXISTS idx_ai_sessions_user ON ai_user_sessions(user_id);
CREATE INDEX IF NOT EXISTS idx_ab_tests_variant ON ab_test_results(test_name, variant);
CREATE INDEX IF NOT EXISTS idx_model_perf_name ON model_performance_logs(model_name, model_version);
CREATE INDEX IF NOT EXISTS idx_facility_ai_quality ON facility_ai_scores(overall_quality_score DESC);

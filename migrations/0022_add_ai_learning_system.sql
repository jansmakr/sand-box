-- 0022_add_ai_learning_system.sql
-- AI 학습 및 분석을 위한 테이블 추가

-- 1. AI 사용자 세션 추적 테이블
CREATE TABLE IF NOT EXISTS ai_user_sessions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER,
  session_id TEXT NOT NULL,
  device_type TEXT, -- 'mobile', 'desktop', 'tablet'
  browser TEXT,
  os TEXT,
  search_sequence TEXT, -- JSON: 검색 순서
  page_views INTEGER DEFAULT 0,
  time_on_site INTEGER DEFAULT 0, -- 초 단위
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE INDEX IF NOT EXISTS idx_ai_user_sessions_user_id ON ai_user_sessions(user_id);
CREATE INDEX IF NOT EXISTS idx_ai_user_sessions_session_id ON ai_user_sessions(session_id);

-- 2. A/B 테스트 결과 테이블
CREATE TABLE IF NOT EXISTS ab_test_results (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  test_name TEXT NOT NULL, -- 'recommendation_algorithm_v2', 'ui_layout_test'
  variant TEXT NOT NULL, -- 'control', 'variant_a', 'variant_b'
  user_id INTEGER,
  session_id TEXT,
  clicked BOOLEAN DEFAULT 0,
  converted BOOLEAN DEFAULT 0, -- 견적 요청 여부
  satisfaction_score INTEGER, -- 1-5
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE INDEX IF NOT EXISTS idx_ab_test_results_test ON ab_test_results(test_name, variant);

-- 3. 모델 성능 로그 테이블
CREATE TABLE IF NOT EXISTS model_performance_logs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  model_name TEXT NOT NULL, -- 'recommendation_v1', 'ctr_prediction'
  model_version TEXT NOT NULL,
  accuracy REAL,
  precision_score REAL,
  recall_score REAL,
  f1_score REAL,
  training_data_size INTEGER,
  test_data_size INTEGER,
  training_time_seconds INTEGER,
  deployed_at DATETIME,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_model_performance_logs_model ON model_performance_logs(model_name, model_version);

-- 4. 시설별 AI 점수 테이블
CREATE TABLE IF NOT EXISTS facility_ai_scores (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  facility_id INTEGER NOT NULL,
  overall_quality_score REAL DEFAULT 0, -- 0-100
  user_preference_score REAL DEFAULT 0, -- 사용자 선호도 점수
  review_sentiment_score REAL DEFAULT 0, -- 리뷰 감성 점수
  conversion_probability REAL DEFAULT 0, -- 전환 확률
  predicted_ctr REAL DEFAULT 0, -- 예측 클릭률
  strengths TEXT, -- JSON: ['전문 치매 케어', '최신 시설']
  weaknesses TEXT, -- JSON: ['높은 가격', '외곽 위치']
  last_updated DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (facility_id) REFERENCES facilities(id),
  UNIQUE(facility_id)
);

CREATE INDEX IF NOT EXISTS idx_facility_ai_scores_quality ON facility_ai_scores(overall_quality_score DESC);
CREATE INDEX IF NOT EXISTS idx_facility_ai_scores_conversion ON facility_ai_scores(conversion_probability DESC);

-- 5. 공실/병상 실시간 데이터 테이블 (기존 facility_availability 보완)
-- 기존 테이블이 있으면 스킵, 없으면 생성
CREATE TABLE IF NOT EXISTS facility_realtime_capacity (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  facility_id INTEGER NOT NULL,
  total_beds INTEGER DEFAULT 0, -- 총 정원
  occupied_beds INTEGER DEFAULT 0, -- 현원
  available_beds INTEGER DEFAULT 0, -- 공실 = 정원 - 현원
  waiting_list_count INTEGER DEFAULT 0, -- 대기자 수
  room_types TEXT, -- JSON: [{"type": "1인실", "total": 10, "available": 2}]
  data_source TEXT DEFAULT 'public_api', -- 'public_api', 'manual', 'facility_input'
  last_synced_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (facility_id) REFERENCES facilities(id),
  UNIQUE(facility_id)
);

CREATE INDEX IF NOT EXISTS idx_facility_realtime_capacity_available ON facility_realtime_capacity(available_beds DESC);

-- 6. 데이터 수집 로그 테이블 (API 호출 추적)
CREATE TABLE IF NOT EXISTS data_collection_logs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  source TEXT NOT NULL, -- 'public_data_portal', 'longtermcare_api'
  action TEXT NOT NULL, -- 'fetch_capacity', 'sync_facilities'
  status TEXT NOT NULL, -- 'success', 'failed'
  records_processed INTEGER DEFAULT 0,
  error_message TEXT,
  execution_time_ms INTEGER,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_data_collection_logs_source ON data_collection_logs(source, created_at DESC);

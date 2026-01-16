-- 사용자 피드백 및 매칭 이력 테이블
CREATE TABLE IF NOT EXISTS user_matching_feedback (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT,  -- 사용자 ID (세션 ID 또는 익명)
  matching_session_id TEXT,  -- 매칭 세션 ID (UUID)
  
  -- 검색 조건
  search_criteria TEXT,  -- JSON: 검색 조건 전체
  sido TEXT,
  sigungu TEXT,
  facility_type TEXT,
  care_grade TEXT,
  budget_min INTEGER,
  budget_max INTEGER,
  patient_age INTEGER,
  patient_condition TEXT,
  
  -- 추천 결과
  recommended_facilities TEXT,  -- JSON array: 추천된 시설 ID 목록
  algorithm_version TEXT DEFAULT 'v1',
  
  -- 사용자 행동
  facilities_viewed TEXT,  -- JSON array: 사용자가 클릭/조회한 시설 ID
  facilities_compared TEXT,  -- JSON array: 비교한 시설 ID
  quote_requested_facility_id INTEGER,  -- 견적 요청한 시설 ID
  final_selected_facility_id INTEGER,  -- 최종 선택한 시설 ID
  
  -- 만족도 피드백
  satisfaction_score INTEGER CHECK(satisfaction_score >= 1 AND satisfaction_score <= 5),
  matching_accuracy_score INTEGER CHECK(matching_accuracy_score >= 1 AND matching_accuracy_score <= 5),
  feedback_text TEXT,
  
  -- 시간 정보
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  last_activity_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 시설 클릭률 통계 테이블
CREATE TABLE IF NOT EXISTS facility_click_stats (
  facility_id INTEGER PRIMARY KEY,
  shown_count INTEGER DEFAULT 0,  -- 추천 목록에 표시된 횟수
  clicked_count INTEGER DEFAULT 0,  -- 클릭된 횟수
  quote_request_count INTEGER DEFAULT 0,  -- 견적 요청 횟수
  final_selection_count INTEGER DEFAULT 0,  -- 최종 선택 횟수
  
  click_through_rate REAL DEFAULT 0.0,  -- CTR = clicked / shown
  conversion_rate REAL DEFAULT 0.0,  -- CVR = quote_request / clicked
  
  last_shown_at DATETIME,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  
  FOREIGN KEY (facility_id) REFERENCES facilities(id)
);

-- 시설 입소 가능 여부 및 대기 정보
CREATE TABLE IF NOT EXISTS facility_availability (
  facility_id INTEGER PRIMARY KEY,
  total_beds INTEGER DEFAULT 0,
  occupied_beds INTEGER DEFAULT 0,
  available_beds INTEGER DEFAULT 0,
  waiting_list_count INTEGER DEFAULT 0,
  estimated_wait_days INTEGER DEFAULT 0,
  
  room_availability TEXT,  -- JSON: {"1인실": 0, "2인실": 2, "다인실": 5}
  
  accepts_new_patients BOOLEAN DEFAULT 1,
  urgency_level TEXT DEFAULT 'normal',  -- 'urgent', 'normal', 'low'
  
  last_updated DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_by TEXT,  -- 업데이트한 관리자 ID
  
  FOREIGN KEY (facility_id) REFERENCES facilities(id)
);

-- 인덱스 생성
CREATE INDEX IF NOT EXISTS idx_matching_feedback_user ON user_matching_feedback(user_id);
CREATE INDEX IF NOT EXISTS idx_matching_feedback_session ON user_matching_feedback(matching_session_id);
CREATE INDEX IF NOT EXISTS idx_matching_feedback_final_selection ON user_matching_feedback(final_selected_facility_id);
CREATE INDEX IF NOT EXISTS idx_click_stats_ctr ON facility_click_stats(click_through_rate DESC);
CREATE INDEX IF NOT EXISTS idx_availability_accepts ON facility_availability(accepts_new_patients);

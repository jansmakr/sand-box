-- 케어조아 매니저 상담 신청 테이블
CREATE TABLE IF NOT EXISTS manager_consultations (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  
  -- 신청자 정보
  name TEXT NOT NULL,
  phone TEXT NOT NULL,
  email TEXT,
  
  -- 상담 정보
  service_category TEXT NOT NULL, -- consultation(상담서비스), facility_tour(시설 라운딩), hospital_companion(병원 동행), other(기타)
  preferred_date TEXT, -- 희망 상담일
  preferred_time TEXT, -- 희망 시간대 (morning/afternoon/evening)
  
  -- 상세 내용
  patient_age INTEGER,
  patient_condition TEXT, -- 환자 상태
  region TEXT, -- 지역
  message TEXT, -- 상담 내용
  
  -- 상태
  status TEXT NOT NULL DEFAULT 'pending', -- pending(대기중), assigned(배정완료), completed(완료), cancelled(취소)
  assigned_manager TEXT, -- 배정된 매니저
  
  -- 메모
  admin_memo TEXT,
  completed_at DATETIME,
  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_manager_consultations_status ON manager_consultations(status);
CREATE INDEX IF NOT EXISTS idx_manager_consultations_phone ON manager_consultations(phone);
CREATE INDEX IF NOT EXISTS idx_manager_consultations_date ON manager_consultations(created_at);

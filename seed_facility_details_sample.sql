-- 샘플 데이터 입력: 대표 시설 5개
-- 목적: 시스템 테스트 및 데이터 구조 검증

-- 1. 청담힐요양병원 (ID: 1082)
INSERT INTO facility_details (
  facility_id,
  specialties,
  specialized_care,
  admission_types,
  monthly_cost,
  deposit,
  notes,
  updated_by
) VALUES (
  1082,
  '["재활","중풍"]',
  '["물리치료","작업치료"]',
  '["정규입소","단기입소"]',
  3000000,
  1000000,
  '강남구 위치, 재활 전문 시설',
  'system'
) ON CONFLICT(facility_id) DO UPDATE SET
  specialties = excluded.specialties,
  specialized_care = excluded.specialized_care,
  admission_types = excluded.admission_types,
  monthly_cost = excluded.monthly_cost,
  deposit = excluded.deposit,
  notes = excluded.notes,
  updated_by = excluded.updated_by,
  updated_at = datetime('now');

-- 2. 노블케어요양병원 (ID: 1015)
INSERT INTO facility_details (
  facility_id,
  specialties,
  specialized_care,
  admission_types,
  monthly_cost,
  deposit,
  notes,
  updated_by
) VALUES (
  1015,
  '["치매","재활"]',
  '["인지재활","물리치료"]',
  '["정규입소","야간입소"]',
  2800000,
  1000000,
  '치매 전문 케어, 야간입소 가능',
  'system'
) ON CONFLICT(facility_id) DO UPDATE SET
  specialties = excluded.specialties,
  specialized_care = excluded.specialized_care,
  admission_types = excluded.admission_types,
  monthly_cost = excluded.monthly_cost,
  deposit = excluded.deposit,
  notes = excluded.notes,
  updated_by = excluded.updated_by,
  updated_at = datetime('now');

-- 3. 포레스트요양병원 (ID: 49)
INSERT INTO facility_details (
  facility_id,
  specialties,
  specialized_care,
  admission_types,
  monthly_cost,
  deposit,
  notes,
  updated_by
) VALUES (
  49,
  '["재활","중풍","당뇨"]',
  '["물리치료","작업치료","언어치료"]',
  '["정규입소","단기입소","응급입소"]',
  2600000,
  800000,
  '종합 재활 프로그램 운영',
  'system'
) ON CONFLICT(facility_id) DO UPDATE SET
  specialties = excluded.specialties,
  specialized_care = excluded.specialized_care,
  admission_types = excluded.admission_types,
  monthly_cost = excluded.monthly_cost,
  deposit = excluded.deposit,
  notes = excluded.notes,
  updated_by = excluded.updated_by,
  updated_at = datetime('now');

-- 4. 메디움강남요양병원 (ID: 50)
INSERT INTO facility_details (
  facility_id,
  specialties,
  specialized_care,
  admission_types,
  monthly_cost,
  deposit,
  notes,
  updated_by
) VALUES (
  50,
  '["암","호스피스"]',
  '["통증관리","심리상담"]',
  '["정규입소","단기입소"]',
  3200000,
  1500000,
  '암 환자 전문 케어, 호스피스 프로그램',
  'system'
) ON CONFLICT(facility_id) DO UPDATE SET
  specialties = excluded.specialties,
  specialized_care = excluded.specialized_care,
  admission_types = excluded.admission_types,
  monthly_cost = excluded.monthly_cost,
  deposit = excluded.deposit,
  notes = excluded.notes,
  updated_by = excluded.updated_by,
  updated_at = datetime('now');

-- 5. 네이처요양병원 (ID: 52)
INSERT INTO facility_details (
  facility_id,
  specialties,
  specialized_care,
  admission_types,
  monthly_cost,
  deposit,
  notes,
  updated_by
) VALUES (
  52,
  '["치매","감염관리"]',
  '["인지재활","격리병실"]',
  '["정규입소","주말입소"]',
  2400000,
  800000,
  '치매 전문, 감염 관리 시스템 완비',
  'system'
) ON CONFLICT(facility_id) DO UPDATE SET
  specialties = excluded.specialties,
  specialized_care = excluded.specialized_care,
  admission_types = excluded.admission_types,
  monthly_cost = excluded.monthly_cost,
  deposit = excluded.deposit,
  notes = excluded.notes,
  updated_by = excluded.updated_by,
  updated_at = datetime('now');

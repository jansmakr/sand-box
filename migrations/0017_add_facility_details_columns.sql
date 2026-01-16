-- Migration: 시설 상세 정보 컬럼 추가 (누락된 컬럼만)
-- 날짜: 2026-01-16
-- 목적: 입소 유형, 비용 정보, 운영 정보 추가

-- 이미 존재하는 컬럼: facility_id, services, specialties, heating_grade, 
-- cooling_grade, meal_quality, room_types, amenities, medical_equipment,
-- staff_count, doctor_count, nurse_count, care_worker_count,
-- average_cost_min, average_cost_max, description, updated_at

-- 특화 서비스 (specialties와 별도로 더 세부적인 서비스)
ALTER TABLE facility_details ADD COLUMN specialized_care TEXT DEFAULT '[]';

-- 입소 유형 (복수 선택 가능)
ALTER TABLE facility_details ADD COLUMN admission_types TEXT DEFAULT '[]';

-- 운영 시간 정보
ALTER TABLE facility_details ADD COLUMN operating_hours TEXT DEFAULT '{}';

-- 최소 입소 기간
ALTER TABLE facility_details ADD COLUMN min_stay_period TEXT DEFAULT '';

-- 단기 입소 가능 여부
ALTER TABLE facility_details ADD COLUMN short_term_available INTEGER DEFAULT 0;

-- 월 평균 비용 (average_cost_min/max는 이미 있음, 중간값 용도)
ALTER TABLE facility_details ADD COLUMN monthly_cost INTEGER DEFAULT 0;

-- 입소비/보증금
ALTER TABLE facility_details ADD COLUMN deposit INTEGER DEFAULT 0;

-- 일일 비용 (단기입소용)
ALTER TABLE facility_details ADD COLUMN daily_cost INTEGER DEFAULT 0;

-- 추가 비용 정보
ALTER TABLE facility_details ADD COLUMN additional_costs TEXT DEFAULT '{}';

-- 입소 정원 정보
ALTER TABLE facility_details ADD COLUMN total_beds INTEGER DEFAULT 0;

-- 현재 입소 가능 병상 수
ALTER TABLE facility_details ADD COLUMN available_beds INTEGER DEFAULT 0;

-- 특이사항/메모
ALTER TABLE facility_details ADD COLUMN notes TEXT DEFAULT '';

-- 마지막 수정자
ALTER TABLE facility_details ADD COLUMN updated_by TEXT DEFAULT '';

-- 기존 잘못된 평가등급 데이터 삭제
-- (점수가 grade_value에 들어간 데이터 정리)
DELETE FROM facility_public_data;

-- 삭제 확인
SELECT COUNT(*) as remaining_rows FROM facility_public_data;

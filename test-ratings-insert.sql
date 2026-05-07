-- 테스트용 평가등급 데이터 삽입 (10개 샘플)
-- 프로덕션 DB에 소량 데이터를 삽입하여 기능 테스트

-- 1. 시설 ID 1-10에 대한 테스트 데이터
INSERT OR REPLACE INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value, last_updated)
VALUES 
  (1, 'TEST-00001', '2024', 'A', datetime('now')),
  (2, 'TEST-00002', '2024', 'B', datetime('now')),
  (3, 'TEST-00003', '2024', 'A', datetime('now')),
  (4, 'TEST-00004', '2024', 'C', datetime('now')),
  (5, 'TEST-00005', '2024', 'B', datetime('now')),
  (6, 'TEST-00006', '2024', 'A', datetime('now')),
  (7, 'TEST-00007', '2024', 'D', datetime('now')),
  (8, 'TEST-00008', '2024', 'C', datetime('now')),
  (9, 'TEST-00009', '2024', 'B', datetime('now')),
  (10, 'TEST-00010', '2024', 'A', datetime('now'));

-- 2. 결과 확인 쿼리
SELECT COUNT(*) as total_records FROM facility_public_data;
SELECT grade_value, COUNT(*) as count FROM facility_public_data GROUP BY grade_value ORDER BY grade_value;

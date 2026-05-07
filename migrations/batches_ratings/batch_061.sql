-- Batch 61 of 226
-- Processing 100 facilities

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43150-00077' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00077', 2024, '75.35'
FROM facilities WHERE admin_sym = '3-43150-00077'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43150-00077', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43150-00077');

-- Update existing: Ãµï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43150-00113' WHERE name LIKE '%Ãµï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00113', 2024, '63.55'
FROM facilities WHERE admin_sym = '3-43150-00113'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ãµï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43150-00113', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43150-00113');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43150-00039' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43150-00039', 2024, '87.35'
FROM facilities WHERE admin_sym = '2-43150-00039'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43150-00039', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43150-00039');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43150-00083' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00083', 2024, '95.6'
FROM facilities WHERE admin_sym = '3-43150-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43150-00083', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43150-00083');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43150-00209' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43150-00209', 2024, '81.02'
FROM facilities WHERE admin_sym = '2-43150-00209'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.02',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43150-00209', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43150-00209');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43150-00121' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00121', 2024, '70.35'
FROM facilities WHERE admin_sym = '3-43150-00121'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43150-00121', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43150-00121');

-- Update existing: ï¿½Ù¿Â³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43150-00131' WHERE name LIKE '%ï¿½Ù¿Â³ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00131', 2024, '93.6'
FROM facilities WHERE admin_sym = '3-43150-00131'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ù¿Â³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43150-00131', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43150-00131');

-- Update existing: ï¿½È½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43150-00187' WHERE name LIKE '%ï¿½È½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43150-00187', 2024, '64.42'
FROM facilities WHERE admin_sym = '2-43150-00187'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.42',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½È½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43150-00187', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43150-00187');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43150-00205' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43150-00205', 2024, '70.66'
FROM facilities WHERE admin_sym = '2-43150-00205'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.66',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43150-00205', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43150-00205');

-- Update existing: ï¿½Ñ¸ï¿½ï¿½ï¿½ ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43150-00167' WHERE name LIKE '%ï¿½Ñ¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43150-00167', 2024, '81.05'
FROM facilities WHERE admin_sym = '2-43150-00167'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ¸ï¿½ï¿½ï¿½ ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43150-00167', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43150-00167');

-- Update existing: ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½æ¹®ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43150-00179' WHERE name LIKE '%ï¿½Îºï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43150-00179', 2024, '77.85'
FROM facilities WHERE admin_sym = '2-43150-00179'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½æ¹®ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43150-00179', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43150-00179');

-- Update existing: ï¿½ï¿½Ãµï¿½È½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43150-00203' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43150-00203', 2024, '70.8'
FROM facilities WHERE admin_sym = '2-43150-00203'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½È½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43150-00203', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43150-00203');

-- Update existing: ï¿½ï¿½Å¿ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43150-00117' WHERE name LIKE '%ï¿½ï¿½Å¿ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00117', 2024, '73.85'
FROM facilities WHERE admin_sym = '3-43150-00117'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Å¿ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43150-00117', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43150-00117');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43150-00125' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00125', 2024, '88.6'
FROM facilities WHERE admin_sym = '3-43150-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43150-00125', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43150-00125');

-- Update existing: ï¿½ï¿½ï¿½Ï³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43150-00133' WHERE name LIKE '%ï¿½ï¿½ï¿½Ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00133', 2024, '85.55'
FROM facilities WHERE admin_sym = '3-43150-00133'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ï³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43150-00133', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43150-00133');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43150-00115' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00115', 2024, '74.6'
FROM facilities WHERE admin_sym = '3-43150-00115'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43150-00115', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43150-00115');

-- Update existing: ï¿½ï¿½Ãµï¿½Ñ¹ï¿½ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43150-00155' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00155', 2024, '81.35'
FROM facilities WHERE admin_sym = '3-43150-00155'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½Ñ¹ï¿½ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43150-00155', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43150-00155');

-- Update existing: ï¿½ï¿½Ãµ È¿ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43150-00119' WHERE name LIKE '%ï¿½ï¿½Ãµ È%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00119', 2024, '91.85'
FROM facilities WHERE admin_sym = '3-43150-00119'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµ È¿ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43150-00119', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43150-00119');

-- Update existing: ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½É¾î¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43150-00149' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00149', 2024, '93.85'
FROM facilities WHERE admin_sym = '3-43150-00149'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½É¾î¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43150-00149', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43150-00149');

-- Update existing: VIPï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43150-00207' WHERE name LIKE '%VIPï¿½Ö°ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43150-00207', 2024, '53'
FROM facilities WHERE admin_sym = '2-43150-00207'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'VIPï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43150-00207', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43150-00207');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43150-00039' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43150-00039', 2024, '93.85'
FROM facilities WHERE admin_sym = '2-43150-00039'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43150-00039', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43150-00039');

-- Update existing: ï¿½ï¿½ï¿½×¸ï¿½ï¿½ï¿½ ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43150-00183' WHERE name LIKE '%ï¿½ï¿½ï¿½×%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43150-00183', 2024, '78.1'
FROM facilities WHERE admin_sym = '2-43150-00183'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½×¸ï¿½ï¿½ï¿½ ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43150-00183', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43150-00183');

-- Update existing: ï¿½ï¿½Ãµï¿½ï¿½ï¿½Î¹æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43150-00011' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00011', 2024, '54.5'
FROM facilities WHERE admin_sym = '3-43150-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½Î¹æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43150-00011', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43150-00011');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ç·ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43150-00127' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00127', 2024, '77.38'
FROM facilities WHERE admin_sym = '3-43150-00127'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.38',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ç·ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43150-00127', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43150-00127');

-- Update existing: ï¿½Ü¾ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43800-00043' WHERE name LIKE '%ï¿½Ü¾ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43800-00043', 2024, '83.1'
FROM facilities WHERE admin_sym = '2-43800-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ü¾ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43800-00043', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43800-00043');

-- Update existing: ï¿½Ü¾ç³ªï¿½ï¿½ï¿½Ì¹æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43800-00029' WHERE name LIKE '%ï¿½Ü¾ç³ªï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43800-00029', 2024, '88.1'
FROM facilities WHERE admin_sym = '3-43800-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ü¾ç³ªï¿½ï¿½ï¿½Ì¹æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43800-00029', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43800-00029');

-- Update existing: ï¿½Ñ°ï¿½ï¿½ï¿½ ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43800-00045' WHERE name LIKE '%ï¿½Ñ°ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43800-00045', 2024, '73.04'
FROM facilities WHERE admin_sym = '2-43800-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.04',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ°ï¿½ï¿½ï¿½ ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43800-00045', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43800-00045');

-- Update existing: ï¿½Ü°ï¿½ï¿½ï¿½ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43800-00017' WHERE name LIKE '%ï¿½Ü°ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43800-00017', 2024, '66'
FROM facilities WHERE admin_sym = '3-43800-00017'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ü°ï¿½ï¿½ï¿½ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43800-00017', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43800-00017');

-- Update existing: ï¿½Ü¾ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43800-00043' WHERE name LIKE '%ï¿½Ü¾ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43800-00043', 2024, '78.1'
FROM facilities WHERE admin_sym = '2-43800-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ü¾ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43800-00043', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43800-00043');

-- Update existing: ï¿½Ü¾ç³ªï¿½ï¿½ï¿½Ì¹æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43800-00029' WHERE name LIKE '%ï¿½Ü¾ç³ªï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43800-00029', 2024, '91.35'
FROM facilities WHERE admin_sym = '3-43800-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ü¾ç³ªï¿½ï¿½ï¿½Ì¹æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43800-00029', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43800-00029');

-- Update existing: ï¿½Ü¾ï¿½ï¿½Ç·ï¿½âº¹ï¿½ï¿½ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43800-00035' WHERE name LIKE '%ï¿½Ü¾ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43800-00035', 2024, '89.83'
FROM facilities WHERE admin_sym = '3-43800-00035'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.83',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ü¾ï¿½ï¿½Ç·ï¿½âº¹ï¿½ï¿½ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43800-00035', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43800-00035');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ú¸ï¿½ ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43720-00009' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43720-00009', 2024, '97.8'
FROM facilities WHERE admin_sym = '3-43720-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ú¸ï¿½ ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43720-00009', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43720-00009');

-- Update existing: È¿ï¿½å¸²ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43720-00055' WHERE name LIKE '%È¿ï¿½å¸²ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43720-00055', 2024, '74.6'
FROM facilities WHERE admin_sym = '2-43720-00055'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½å¸²ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43720-00055', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43720-00055');

-- Update existing: (A)ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43720-00029' WHERE name LIKE '%(A)ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43720-00029', 2024, '92.8'
FROM facilities WHERE admin_sym = '3-43720-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', '(A)ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43720-00029', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43720-00029');

-- Update existing: ï¿½å¸²ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43720-00039' WHERE name LIKE '%ï¿½å¸²ï¿½ç%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43720-00039', 2024, '88.35'
FROM facilities WHERE admin_sym = '3-43720-00039'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½å¸²ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43720-00039', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43720-00039');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43720-00037' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43720-00037', 2024, '94.6'
FROM facilities WHERE admin_sym = '3-43720-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43720-00037', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43720-00037');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ã·ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43720-00031' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43720-00031', 2024, '87.29'
FROM facilities WHERE admin_sym = '3-43720-00031'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.29',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ã·ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43720-00031', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43720-00031');

-- Update existing: (A)ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43720-00029' WHERE name LIKE '%(A)ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43720-00029', 2024, '94.1'
FROM facilities WHERE admin_sym = '3-43720-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', '(A)ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43720-00029', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43720-00029');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43720-00045' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43720-00045', 2024, '77.49'
FROM facilities WHERE admin_sym = '2-43720-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.49',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43720-00045', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43720-00045');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43720-00033' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43720-00033', 2024, '80.1'
FROM facilities WHERE admin_sym = '2-43720-00033'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43720-00033', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43720-00033');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43720-00053' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43720-00053', 2024, '82.75'
FROM facilities WHERE admin_sym = '2-43720-00053'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.75',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43720-00053', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43720-00053');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ç·ï¿½ï¿½(ï¿½Â¾ï¿½ï¿½)
UPDATE facilities SET admin_sym = '3-43720-00041' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43720-00041', 2024, '90'
FROM facilities WHERE admin_sym = '3-43720-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ç·ï¿½ï¿½(ï¿½Â¾ï¿½ï¿½)', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43720-00041', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43720-00041');

-- Update existing: È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43730-00075' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43730-00075', 2024, '77.32'
FROM facilities WHERE admin_sym = '3-43730-00075'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.32',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43730-00075', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43730-00075');

-- Update existing: ï¿½Â¸ï¿½×¹æ¹®ï¿½ï¿½ç¼¾Å¸
UPDATE facilities SET admin_sym = '3-43730-00085' WHERE name LIKE '%ï¿½Â¸ï¿½×¹%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43730-00085', 2024, '89.85'
FROM facilities WHERE admin_sym = '3-43730-00085'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Â¸ï¿½×¹æ¹®ï¿½ï¿½ç¼¾Å¸', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43730-00085', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43730-00085');

-- Update existing: Ãµï¿½çº¹ï¿½ï¿½ï¿½ï¿½Å¸
UPDATE facilities SET admin_sym = '3-43730-00083' WHERE name LIKE '%Ãµï¿½çº¹ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43730-00083', 2024, '91.05'
FROM facilities WHERE admin_sym = '3-43730-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ãµï¿½çº¹ï¿½ï¿½ï¿½ï¿½Å¸', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43730-00083', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43730-00083');

-- Update existing: ï¿½Î¸ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾Å¸
UPDATE facilities SET admin_sym = '3-43730-00029' WHERE name LIKE '%ï¿½Î¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43730-00029', 2024, '97.05'
FROM facilities WHERE admin_sym = '3-43730-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Î¸ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾Å¸', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43730-00029', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43730-00029');

-- Update existing: ï¿½Ý°ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43730-00111' WHERE name LIKE '%ï¿½Ý°ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43730-00111', 2024, '62.81'
FROM facilities WHERE admin_sym = '2-43730-00111'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.81',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ý°ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43730-00111', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43730-00111');

-- Update existing: ï¿½Þ»ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43730-00117' WHERE name LIKE '%ï¿½Þ»ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43730-00117', 2024, '74.07'
FROM facilities WHERE admin_sym = '2-43730-00117'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.07',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Þ»ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43730-00117', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43730-00117');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½É¾ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43730-00089' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43730-00089', 2024, '56.52'
FROM facilities WHERE admin_sym = '3-43730-00089'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.52',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½É¾ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43730-00089', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43730-00089');

-- Update existing: Ã­ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43730-00081' WHERE name LIKE '%Ã­ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43730-00081', 2024, '93.85'
FROM facilities WHERE admin_sym = '3-43730-00081'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ã­ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43730-00081', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43730-00081');

-- Update existing: Ã»ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43730-00063' WHERE name LIKE '%Ã»ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43730-00063', 2024, '86.29'
FROM facilities WHERE admin_sym = '3-43730-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.29',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ã»ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43730-00063', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43730-00063');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43730-00105' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43730-00105', 2024, '84.8'
FROM facilities WHERE admin_sym = '2-43730-00105'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43730-00105', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43730-00105');

-- Update existing: ï¿½ß¼ï¿½ï¿½ï¿½ï¿½ç¼¾Å¸
UPDATE facilities SET admin_sym = '3-43730-00091' WHERE name LIKE '%ï¿½ß¼ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43730-00091', 2024, '67.6'
FROM facilities WHERE admin_sym = '3-43730-00091'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ß¼ï¿½ï¿½ï¿½ï¿½ç¼¾Å¸', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43730-00091', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43730-00091');

-- Update existing: Ã»ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43730-00063' WHERE name LIKE '%Ã»ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43730-00063', 2024, '83.49'
FROM facilities WHERE admin_sym = '3-43730-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.49',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ã»ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43730-00063', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43730-00063');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43730-00105' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43730-00105', 2024, '85.35'
FROM facilities WHERE admin_sym = '2-43730-00105'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43730-00105', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43730-00105');

-- Update existing: ï¿½ß¼ï¿½ï¿½ï¿½ï¿½ç¼¾Å¸
UPDATE facilities SET admin_sym = '3-43730-00091' WHERE name LIKE '%ï¿½ß¼ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43730-00091', 2024, '61.6'
FROM facilities WHERE admin_sym = '3-43730-00091'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ß¼ï¿½ï¿½ï¿½ï¿½ç¼¾Å¸', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43730-00091', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43730-00091');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43730-00095' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43730-00095', 2024, '71.8'
FROM facilities WHERE admin_sym = '2-43730-00095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43730-00095', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43730-00095');

-- Update existing: ï¿½Ñ±ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43730-00119' WHERE name LIKE '%ï¿½Ñ±ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43730-00119', 2024, '77.18'
FROM facilities WHERE admin_sym = '2-43730-00119'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.18',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ±ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43730-00119', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43730-00119');

-- Update existing: ï¿½Ç·Î¾ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43730-00079' WHERE name LIKE '%ï¿½Ç·Î¾ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43730-00079', 2024, '70.85'
FROM facilities WHERE admin_sym = '2-43730-00079'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ç·Î¾ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43730-00079', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43730-00079');

-- Update existing: ï¿½Ì¼ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43740-00125' WHERE name LIKE '%ï¿½Ì¼ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43740-00125', 2024, '77.93'
FROM facilities WHERE admin_sym = '2-43740-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.93',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ì¼ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43740-00125', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43740-00125');

-- Update existing: ï¿½ï¿½ï¿½ï¿½JPCï¿½ç°¡ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43740-00113' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00113', 2024, '71.85'
FROM facilities WHERE admin_sym = '3-43740-00113'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½JPCï¿½ç°¡ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43740-00113', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43740-00113');

-- Update existing: ï¿½ï¿½ï¿½Î»ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43740-00129' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43740-00129', 2024, '61.08'
FROM facilities WHERE admin_sym = '2-43740-00129'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.08',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î»ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43740-00129', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43740-00129');

-- Update existing: ï¿½Úºï¿½ï¿½Ãµï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43740-00073' WHERE name LIKE '%ï¿½Úºï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00073', 2024, '90.13'
FROM facilities WHERE admin_sym = '3-43740-00073'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.13',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Úºï¿½ï¿½Ãµï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43740-00073', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43740-00073');

-- Update existing: ï¿½ì¸®ï¿½Ï³ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43740-00057' WHERE name LIKE '%ï¿½ì¸®ï¿½Ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00057', 2024, '92.85'
FROM facilities WHERE admin_sym = '3-43740-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ì¸®ï¿½Ï³ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43740-00057', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43740-00057');

-- Update existing: ï¿½Ï´Ãºï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43740-00095' WHERE name LIKE '%ï¿½Ï´Ãºï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00095', 2024, '90.85'
FROM facilities WHERE admin_sym = '3-43740-00095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ï´Ãºï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43740-00095', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43740-00095');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43740-00123' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43740-00123', 2024, '76.35'
FROM facilities WHERE admin_sym = '2-43740-00123'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43740-00123', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43740-00123');

-- Update existing: 9988ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43740-00121' WHERE name LIKE '%9988ï¿½ç°¡%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43740-00121', 2024, '88.55'
FROM facilities WHERE admin_sym = '2-43740-00121'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', '9988ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43740-00121', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43740-00121');

-- Update existing: ï¿½àº¹ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43740-00077' WHERE name LIKE '%ï¿½àº¹ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00077', 2024, '78.85'
FROM facilities WHERE admin_sym = '3-43740-00077'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43740-00077', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43740-00077');

-- Update existing: ï¿½ï¿½ï¿½Îºï¿½ï¿½ì¿µï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43740-00107' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00107', 2024, '84.85'
FROM facilities WHERE admin_sym = '3-43740-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Îºï¿½ï¿½ì¿µï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43740-00107', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43740-00107');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43740-00009' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00009', 2024, '64.1'
FROM facilities WHERE admin_sym = '3-43740-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43740-00009', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43740-00009');

-- Update existing: ï¿½Úºï¿½ï¿½Ãµï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43740-00073' WHERE name LIKE '%ï¿½Úºï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00073', 2024, '90.6'
FROM facilities WHERE admin_sym = '3-43740-00073'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Úºï¿½ï¿½Ãµï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43740-00073', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43740-00073');

-- Update existing: ï¿½ì¸®ï¿½Ï³ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43740-00057' WHERE name LIKE '%ï¿½ì¸®ï¿½Ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00057', 2024, '87.16'
FROM facilities WHERE admin_sym = '3-43740-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.16',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ì¸®ï¿½Ï³ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43740-00057', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43740-00057');

-- Update existing: ï¿½Ï´Ãºï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43740-00095' WHERE name LIKE '%ï¿½Ï´Ãºï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00095', 2024, '92.35'
FROM facilities WHERE admin_sym = '3-43740-00095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ï´Ãºï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43740-00095', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43740-00095');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43740-00123' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43740-00123', 2024, '77.1'
FROM facilities WHERE admin_sym = '2-43740-00123'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43740-00123', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43740-00123');

-- Update existing: 9988ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43740-00121' WHERE name LIKE '%9988ï¿½ç°¡%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43740-00121', 2024, '91.49'
FROM facilities WHERE admin_sym = '2-43740-00121'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.49',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', '9988ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43740-00121', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43740-00121');

-- Update existing: ï¿½ï¿½ï¿½Îºï¿½ï¿½ì¿µï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43740-00107' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00107', 2024, '89.35'
FROM facilities WHERE admin_sym = '3-43740-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Îºï¿½ï¿½ì¿µï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43740-00107', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43740-00107');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43740-00009' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00009', 2024, '75.6'
FROM facilities WHERE admin_sym = '3-43740-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43740-00009', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43740-00009');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43740-00061' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43740-00061', 2024, '92.85'
FROM facilities WHERE admin_sym = '2-43740-00061'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43740-00061', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43740-00061');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43740-00133' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43740-00133', 2024, '77.32'
FROM facilities WHERE admin_sym = '2-43740-00133'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.32',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43740-00133', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43740-00133');

-- Update existing: ï¿½ì¸®ï¿½Ï³ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43740-00057' WHERE name LIKE '%ï¿½ì¸®ï¿½Ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00057', 2024, '89.3'
FROM facilities WHERE admin_sym = '3-43740-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ì¸®ï¿½Ï³ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43740-00057', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43740-00057');

-- Update existing: ï¿½ï¿½Ï»ï¿½È¸ï¿½ï¿½ï¿½ñ½º°ï¿½ï¿½ß¿ï¿½
UPDATE facilities SET admin_sym = '3-43750-00071' WHERE name LIKE '%ï¿½ï¿½Ï»ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43750-00071', 2024, '90.85'
FROM facilities WHERE admin_sym = '3-43750-00071'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ï»ï¿½È¸ï¿½ï¿½ï¿½ñ½º°ï¿½ï¿½ß¿ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43750-00071', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43750-00071');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43750-00041' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43750-00041', 2024, '88.35'
FROM facilities WHERE admin_sym = '3-43750-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43750-00041', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43750-00041');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43750-00041' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43750-00041', 2024, '90.35'
FROM facilities WHERE admin_sym = '3-43750-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43750-00041', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43750-00041');

-- Update existing: ï¿½ï¿½ÃµÈ«ï¿½ï¿½ ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43750-00095' WHERE name LIKE '%ï¿½ï¿½ÃµÈ«%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43750-00095', 2024, '85.85'
FROM facilities WHERE admin_sym = '2-43750-00095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ÃµÈ«ï¿½ï¿½ ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43750-00095', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43750-00095');

-- Update existing: ï¿½Î¼Õ³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43750-00073' WHERE name LIKE '%ï¿½Î¼Õ³ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43750-00073', 2024, '87.35'
FROM facilities WHERE admin_sym = '3-43750-00073'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Î¼Õ³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43750-00073', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43750-00073');

-- Update existing: ï¿½Ç¹ï¿½ï¿½Ð´ï¿½ ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43750-00069' WHERE name LIKE '%ï¿½Ç¹ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43750-00069', 2024, '68.05'
FROM facilities WHERE admin_sym = '3-43750-00069'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ç¹ï¿½ï¿½Ð´ï¿½ ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43750-00069', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43750-00069');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ãµï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43750-00003' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43750-00003', 2024, '94.6'
FROM facilities WHERE admin_sym = '2-43750-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ãµï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43750-00003', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43750-00003');

-- Update existing: ï¿½Å¸ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43750-00083' WHERE name LIKE '%ï¿½Å¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43750-00083', 2024, '86.55'
FROM facilities WHERE admin_sym = '2-43750-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Å¸ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43750-00083', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43750-00083');

-- Update existing: ï¿½ï¿½ï¿½È¶ï¿½ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43750-00075' WHERE name LIKE '%ï¿½ï¿½ï¿½È%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43750-00075', 2024, '82.6'
FROM facilities WHERE admin_sym = '3-43750-00075'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½È¶ï¿½ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43750-00075', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43750-00075');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43750-00087' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43750-00087', 2024, '49.35'
FROM facilities WHERE admin_sym = '2-43750-00087'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43750-00087', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43750-00087');

-- Update existing: ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½Ç·ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43750-00061' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43750-00061', 2024, '58.5'
FROM facilities WHERE admin_sym = '3-43750-00061'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½Ç·ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43750-00061', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43750-00061');

-- Update existing: Ã»ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43745-00037' WHERE name LIKE '%Ã»ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43745-00037', 2024, '78.05'
FROM facilities WHERE admin_sym = '3-43745-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ã»ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43745-00037', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43745-00037');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43745-00049' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43745-00049', 2024, '64.3'
FROM facilities WHERE admin_sym = '3-43745-00049'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43745-00049', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43745-00049');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43745-00063' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43745-00063', 2024, '80.85'
FROM facilities WHERE admin_sym = '2-43745-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43745-00063', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43745-00063');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43745-00051' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43745-00051', 2024, '68.35'
FROM facilities WHERE admin_sym = '3-43745-00051'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43745-00051', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43745-00051');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43745-00053' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43745-00053', 2024, '59.85'
FROM facilities WHERE admin_sym = '3-43745-00053'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43745-00053', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43745-00053');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43745-00049' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43745-00049', 2024, '68.55'
FROM facilities WHERE admin_sym = '3-43745-00049'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43745-00049', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43745-00049');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43745-00053' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43745-00053', 2024, '60.85'
FROM facilities WHERE admin_sym = '3-43745-00053'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43745-00053', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43745-00053');

-- Update existing: 9988ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-43745-00065' WHERE name LIKE '%9988ï¿½ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43745-00065', 2024, '87.1'
FROM facilities WHERE admin_sym = '2-43745-00065'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', '9988ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '2-43745-00065', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-43745-00065');

-- Update existing: ï¿½Ñµï¿½ï¿½Ç·ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-43745-00047' WHERE name LIKE '%ï¿½Ñµï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43745-00047', 2024, '63.5'
FROM facilities WHERE admin_sym = '3-43745-00047'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñµï¿½ï¿½Ç·ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã»ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ã»ï¿½Ïµï¿½', '3-43745-00047', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-43745-00047');

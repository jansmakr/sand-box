-- Batch 69 of 226
-- Processing 100 facilities

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ö¹æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00319' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00319', 2024, '57.77'
FROM facilities WHERE admin_sym = '3-28170-00319'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.77',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ö¹æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00319', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00319');

-- Update existing: ï¿½Ì¼ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00383' WHERE name LIKE '%ï¿½Ì¼ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00383', 2024, '72.6'
FROM facilities WHERE admin_sym = '3-28170-00383'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ì¼ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00383', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00383');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00101' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00101', 2024, '91.6'
FROM facilities WHERE admin_sym = '3-28170-00101'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00101', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00101');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28177-00547' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28177-00547', 2024, '61.38'
FROM facilities WHERE admin_sym = '2-28177-00547'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.38',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28177-00547', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28177-00547');

-- Update existing: ï¿½ï¿½ï¿½Î³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00285' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00285', 2024, '81.35'
FROM facilities WHERE admin_sym = '3-28170-00285'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00285', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00285');

-- Update existing: ï¿½ï¿½ï¸²ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28177-00403' WHERE name LIKE '%ï¿½ï¿½ï¸²ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28177-00403', 2024, '84.35'
FROM facilities WHERE admin_sym = '3-28177-00403'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¸²ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28177-00403', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28177-00403');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28177-00575' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28177-00575', 2024, '63.57'
FROM facilities WHERE admin_sym = '2-28177-00575'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.57',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28177-00575', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28177-00575');

-- Update existing: ï¿½ï¿½Ãµï¿½ï¿½ï¿½Õºï¿½ï¿½ï¿½ ï¿½ï¿½È¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28177-00493' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28177-00493', 2024, '69.85'
FROM facilities WHERE admin_sym = '2-28177-00493'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½Õºï¿½ï¿½ï¿½ ï¿½ï¿½È¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28177-00493', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28177-00493');

-- Update existing: ''(A)ï¿½ï¿½ï¿½ï¿½ï¿½Ã¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½È¦ï¿½æ¹®ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28177-00447' WHERE name LIKE '%''(A)ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28177-00447', 2024, '84.6'
FROM facilities WHERE admin_sym = '3-28177-00447'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', '''(A)ï¿½ï¿½ï¿½ï¿½ï¿½Ã¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½È¦ï¿½æ¹®ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28177-00447', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28177-00447');

-- Update existing: ï¿½ì¸®ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28177-00417' WHERE name LIKE '%ï¿½ì¸®ï¿½ç%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28177-00417', 2024, '75.1'
FROM facilities WHERE admin_sym = '3-28177-00417'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ì¸®ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28177-00417', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28177-00417');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28177-00489' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28177-00489', 2024, '64.6'
FROM facilities WHERE admin_sym = '2-28177-00489'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28177-00489', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28177-00489');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28177-00501' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28177-00501', 2024, '60.85'
FROM facilities WHERE admin_sym = '2-28177-00501'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28177-00501', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28177-00501');

-- Update existing: ï¿½Ñ¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28177-00553' WHERE name LIKE '%ï¿½Ñ¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28177-00553', 2024, '80.68'
FROM facilities WHERE admin_sym = '2-28177-00553'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.68',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28177-00553', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28177-00553');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28177-00563' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28177-00563', 2024, '92.54'
FROM facilities WHERE admin_sym = '2-28177-00563'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.54',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28177-00563', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28177-00563');

-- Update existing: ï¿½Ö¾ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28177-00549' WHERE name LIKE '%ï¿½Ö¾ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28177-00549', 2024, '82.68'
FROM facilities WHERE admin_sym = '2-28177-00549'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.68',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ö¾ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28177-00549', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28177-00549');

-- Update existing: È¿ï¿½ï¿½ï¿½î¸£ï¿½ï¿½ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00385' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00385', 2024, '81.55'
FROM facilities WHERE admin_sym = '3-28170-00385'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½î¸£ï¿½ï¿½ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00385', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00385');

-- Update existing: ï¿½Î¸ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28177-00499' WHERE name LIKE '%ï¿½Î¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28177-00499', 2024, '79.6'
FROM facilities WHERE admin_sym = '2-28177-00499'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Î¸ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28177-00499', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28177-00499');

-- Update existing: ï¿½ï¿½Ã»ï¿½Ì³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28177-00411' WHERE name LIKE '%ï¿½ï¿½Ã»ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28177-00411', 2024, '93.32'
FROM facilities WHERE admin_sym = '3-28177-00411'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.32',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ã»ï¿½Ì³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28177-00411', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28177-00411');

-- Update existing: ï¿½Ãºï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00379' WHERE name LIKE '%ï¿½Ãºï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00379', 2024, '80.35'
FROM facilities WHERE admin_sym = '3-28170-00379'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ãºï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00379', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00379');

-- Update existing: ï¿½ï¿½ï¸²ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28177-00401' WHERE name LIKE '%ï¿½ï¿½ï¸²ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28177-00401', 2024, '77.6'
FROM facilities WHERE admin_sym = '3-28177-00401'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¸²ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28177-00401', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28177-00401');

-- Update existing: È¿ï¿½å¸²ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00059' WHERE name LIKE '%È¿ï¿½å¸²ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00059', 2024, '48.35'
FROM facilities WHERE admin_sym = '3-28170-00059'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '48.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½å¸²ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00059', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00059');

-- Update existing: ï¿½Î¼Õ³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00351' WHERE name LIKE '%ï¿½Î¼Õ³ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00351', 2024, '91.1'
FROM facilities WHERE admin_sym = '3-28170-00351'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Î¼Õ³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00351', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00351');

-- Update existing: ï¿½ï¿½ï¿½Ù¿ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00349' WHERE name LIKE '%ï¿½ï¿½ï¿½Ù%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00349', 2024, '69.85'
FROM facilities WHERE admin_sym = '3-28170-00349'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ù¿ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00349', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00349');

-- Update existing: ï¿½àº¹ï¿½å¸²ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00339' WHERE name LIKE '%ï¿½àº¹ï¿½å%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00339', 2024, '73.04'
FROM facilities WHERE admin_sym = '3-28170-00339'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.04',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½å¸²ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00339', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00339');

-- Update existing: ï¿½Ò¸ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00389' WHERE name LIKE '%ï¿½Ò¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00389', 2024, '92.35'
FROM facilities WHERE admin_sym = '3-28170-00389'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ò¸ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00389', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00389');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00149' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00149', 2024, '89.6'
FROM facilities WHERE admin_sym = '3-28170-00149'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00149', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00149');

-- Update existing: ï¿½Ñºï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28177-00497' WHERE name LIKE '%ï¿½Ñºï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28177-00497', 2024, '61.85'
FROM facilities WHERE admin_sym = '2-28177-00497'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñºï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28177-00497', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28177-00497');

-- Update existing: ï¿½àº¹ï¿½ï¿½ï¿½ï¿½ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00205' WHERE name LIKE '%ï¿½àº¹ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00205', 2024, '85.85'
FROM facilities WHERE admin_sym = '3-28170-00205'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½ï¿½ï¿½ï¿½ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00205', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00205');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00177' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00177', 2024, '91.6'
FROM facilities WHERE admin_sym = '3-28170-00177'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00177', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00177');

-- Update existing: Ãµï¿½ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00163' WHERE name LIKE '%Ãµï¿½ï¿½æ¹%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00163', 2024, '67.1'
FROM facilities WHERE admin_sym = '3-28170-00163'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ãµï¿½ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00163', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00163');

-- Update existing: (A+)ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28177-00397' WHERE name LIKE '%(A+)ï¿½ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28177-00397', 2024, '78.85'
FROM facilities WHERE admin_sym = '3-28177-00397'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', '(A+)ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28177-00397', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28177-00397');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½È³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00277' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00277', 2024, '96.1'
FROM facilities WHERE admin_sym = '3-28170-00277'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½È³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00277', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00277');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28177-00457' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28177-00457', 2024, '76.57'
FROM facilities WHERE admin_sym = '3-28177-00457'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.57',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28177-00457', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28177-00457');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28177-00551' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28177-00551', 2024, '55.85'
FROM facilities WHERE admin_sym = '2-28177-00551'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28177-00551', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28177-00551');

-- Update existing: ï¿½ï¿½Ì³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00203' WHERE name LIKE '%ï¿½ï¿½Ì³ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00203', 2024, '56.85'
FROM facilities WHERE admin_sym = '3-28170-00203'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ì³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00203', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00203');

-- Update existing: ï¿½ï¿½ï¿½ï¿½È¦ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28177-00441' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28177-00441', 2024, '70.85'
FROM facilities WHERE admin_sym = '3-28177-00441'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½È¦ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28177-00441', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28177-00441');

-- Update existing: ï¿½Î¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00343' WHERE name LIKE '%ï¿½Î¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00343', 2024, '79.1'
FROM facilities WHERE admin_sym = '3-28170-00343'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Î¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00343', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00343');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00101' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00101', 2024, '95.27'
FROM facilities WHERE admin_sym = '3-28170-00101'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.27',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00101', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00101');

-- Update existing: ï¿½ï¿½Ãµï¿½ï¿½ï¿½Õºï¿½ï¿½ï¿½ ï¿½ï¿½È¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28177-00493' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28177-00493', 2024, '81.1'
FROM facilities WHERE admin_sym = '2-28177-00493'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½Õºï¿½ï¿½ï¿½ ï¿½ï¿½È¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28177-00493', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28177-00493');

-- Update existing: ï¿½Ñ¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28177-00553' WHERE name LIKE '%ï¿½Ñ¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28177-00553', 2024, '75.57'
FROM facilities WHERE admin_sym = '2-28177-00553'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.57',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28177-00553', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28177-00553');

-- Update existing: ï¿½ï¿½ï¿½Ù¿ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00349' WHERE name LIKE '%ï¿½ï¿½ï¿½Ù%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00349', 2024, '77.1'
FROM facilities WHERE admin_sym = '3-28170-00349'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ù¿ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00349', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00349');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28177-00505' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28177-00505', 2024, '90.35'
FROM facilities WHERE admin_sym = '2-28177-00505'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28177-00505', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28177-00505');

-- Update existing: ï¿½àº¹ï¿½ï¿½ï¿½ï¿½ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00205' WHERE name LIKE '%ï¿½àº¹ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00205', 2024, '82.35'
FROM facilities WHERE admin_sym = '3-28170-00205'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½ï¿½ï¿½ï¿½ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00205', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00205');

-- Update existing: (A+)ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28177-00397' WHERE name LIKE '%(A+)ï¿½ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28177-00397', 2024, '84.35'
FROM facilities WHERE admin_sym = '3-28177-00397'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', '(A+)ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28177-00397', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28177-00397');

-- Update existing: ï¿½ï¿½Ãµï¿½ï¿½ï¿½Õºï¿½ï¿½ï¿½ ï¿½ï¿½È¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28177-00493' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28177-00493', 2024, '83.85'
FROM facilities WHERE admin_sym = '2-28177-00493'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½Õºï¿½ï¿½ï¿½ ï¿½ï¿½È¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28177-00493', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28177-00493');

-- Update existing: ï¿½ï¿½ï¿½Úµï¿½ï¿½ï¿½ï¿½É¾î¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28177-00469' WHERE name LIKE '%ï¿½ï¿½ï¿½Ú%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28177-00469', 2024, '90.35'
FROM facilities WHERE admin_sym = '3-28177-00469'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Úµï¿½ï¿½ï¿½ï¿½É¾î¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28177-00469', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28177-00469');

-- Update existing: ï¿½ï¿½ï¿½È³ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28177-00541' WHERE name LIKE '%ï¿½ï¿½ï¿½È%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28177-00541', 2024, '85.6'
FROM facilities WHERE admin_sym = '2-28177-00541'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½È³ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28177-00541', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28177-00541');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28177-00457' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28177-00457', 2024, '64.85'
FROM facilities WHERE admin_sym = '3-28177-00457'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28177-00457', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28177-00457');

-- Update existing: ï¿½ï¿½ï¿½ï¿½È¦ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28177-00473' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28177-00473', 2024, '67.1'
FROM facilities WHERE admin_sym = '3-28177-00473'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½È¦ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28177-00473', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28177-00473');

-- Update existing: È¿ï¿½ï¿½Ã¤ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28177-00449' WHERE name LIKE '%È¿ï¿½ï¿½Ã¤%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28177-00449', 2024, '84.6'
FROM facilities WHERE admin_sym = '2-28177-00449'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½Ã¤ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28177-00449', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28177-00449');

-- Update existing: (ï¿½ï¿½)ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28177-00451' WHERE name LIKE '%(ï¿½ï¿½)ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28177-00451', 2024, '86.35'
FROM facilities WHERE admin_sym = '3-28177-00451'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', '(ï¿½ï¿½)ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28177-00451', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28177-00451');

-- Update existing: ï¿½ï¿½ï¿½ï¿½È¦ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28177-00441' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28177-00441', 2024, '57.35'
FROM facilities WHERE admin_sym = '3-28177-00441'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½È¦ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28177-00441', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28177-00441');

-- Update existing: (ï¿½ï¿½È°)ï¿½ï¿½ï¿½ï¿½ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28177-00567' WHERE name LIKE '%(ï¿½ï¿½È°)%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28177-00567', 2024, '78.93'
FROM facilities WHERE admin_sym = '2-28177-00567'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.93',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', '(ï¿½ï¿½È°)ï¿½ï¿½ï¿½ï¿½ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28177-00567', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28177-00567');

-- Update existing: ï¿½ï¿½ï¿½ï¿½È¦ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ Ä¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½È¦ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28177-00573' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28177-00573', 2024, '81.85'
FROM facilities WHERE admin_sym = '2-28177-00573'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½È¦ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ Ä¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½È¦ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28177-00573', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28177-00573');

-- Update existing: È¿ï¿½ï¿½ï¿½î¸£ï¿½ï¿½ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00385' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00385', 2024, '92.55'
FROM facilities WHERE admin_sym = '3-28170-00385'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½î¸£ï¿½ï¿½ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00385', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00385');

-- Update existing: ï¿½ï¿½ï¿½Ù¿ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00349' WHERE name LIKE '%ï¿½ï¿½ï¿½Ù%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00349', 2024, '93.05'
FROM facilities WHERE admin_sym = '3-28170-00349'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ù¿ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00349', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00349');

-- Update existing: ï¿½ï¿½ï¿½å¸²ï¿½Ç·ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00249' WHERE name LIKE '%ï¿½ï¿½ï¿½å%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00249', 2024, '90.01'
FROM facilities WHERE admin_sym = '3-28170-00249'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.01',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½å¸²ï¿½Ç·ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00249', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00249');

-- Update existing: ï¿½Ù¼Ø¸Þµï¿½Ä®
UPDATE facilities SET admin_sym = '3-28170-00237' WHERE name LIKE '%ï¿½Ù¼Ø¸Þµï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00237', 2024, '84.13'
FROM facilities WHERE admin_sym = '3-28170-00237'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.13',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ù¼Ø¸Þµï¿½Ä®', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00237', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00237');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ú¸ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00045' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00045', 2024, '83.6'
FROM facilities WHERE admin_sym = '3-28170-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ú¸ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00045', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00045');

-- Update existing: ï¿½Å±ï¿½ï¿½Ç·ï¿½ï¿½(ï¿½ï¿½Ãµï¿½ï¿½)
UPDATE facilities SET admin_sym = '2-28177-00561' WHERE name LIKE '%ï¿½Å±ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28177-00561', 2024, '88.88'
FROM facilities WHERE admin_sym = '2-28177-00561'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.88',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Å±ï¿½ï¿½Ç·ï¿½ï¿½(ï¿½ï¿½Ãµï¿½ï¿½)', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28177-00561', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28177-00561');

-- Update existing: ï¿½Ö½ï¿½È¸ï¿½ï¿½ ï¿½ï¿½ï¿½É¾ï¿½
UPDATE facilities SET admin_sym = '3-28170-00345' WHERE name LIKE '%ï¿½Ö½ï¿½È¸%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00345', 2024, '77.1'
FROM facilities WHERE admin_sym = '3-28170-00345'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ö½ï¿½È¸ï¿½ï¿½ ï¿½ï¿½ï¿½É¾ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00345', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00345');

-- Update existing: ï¿½Î¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28170-00343' WHERE name LIKE '%ï¿½Î¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28170-00343', 2024, '67.97'
FROM facilities WHERE admin_sym = '3-28170-00343'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.97',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Î¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28170-00343', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28170-00343');

-- Update existing: ï¿½Ç°ï¿½ï¿½ï¿½ ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28185-00279' WHERE name LIKE '%ï¿½Ç°ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28185-00279', 2024, '79.38'
FROM facilities WHERE admin_sym = '2-28185-00279'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.38',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ç°ï¿½ï¿½ï¿½ ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28185-00279', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28185-00279');

-- Update existing: ï¿½Ûµï¿½ï¿½Ï¸ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00041' WHERE name LIKE '%ï¿½Ûµï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00041', 2024, '75.6'
FROM facilities WHERE admin_sym = '3-28185-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ûµï¿½ï¿½Ï¸ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00041', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00041');

-- Update existing: ï¿½ï¿½ï¿½Î»ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00215' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00215', 2024, '71.35'
FROM facilities WHERE admin_sym = '3-28185-00215'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î»ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00215', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00215');

-- Update existing: È¿ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00187' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00187', 2024, '75.6'
FROM facilities WHERE admin_sym = '3-28185-00187'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00187', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00187');

-- Update existing: ï¿½ï¿½Ãµï¿½ß¾ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00091' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00091', 2024, '86.3'
FROM facilities WHERE admin_sym = '3-28185-00091'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½ß¾ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00091', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00091');

-- Update existing: È¨ï¿½É¾ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00225' WHERE name LIKE '%È¨ï¿½É¾ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00225', 2024, '83.6'
FROM facilities WHERE admin_sym = '3-28185-00225'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¨ï¿½É¾ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00225', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00225');

-- Update existing: ï¿½ï¿½ÝµÎ¹ï¿½ ï¿½Ñ¸ï¿½ï¿½ï¿½ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00163' WHERE name LIKE '%ï¿½ï¿½ÝµÎ¹%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00163', 2024, '74.1'
FROM facilities WHERE admin_sym = '3-28185-00163'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ÝµÎ¹ï¿½ ï¿½Ñ¸ï¿½ï¿½ï¿½ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00163', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00163');

-- Update existing: ''(A)ï¿½ï¿½ï¿½ï¿½ï¿½Ã¿ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00135' WHERE name LIKE '%''(A)ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00135', 2024, '78.6'
FROM facilities WHERE admin_sym = '3-28185-00135'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', '''(A)ï¿½ï¿½ï¿½ï¿½ï¿½Ã¿ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00135', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00135');

-- Update existing: A+ï¿½Ñ¼Ö³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00211' WHERE name LIKE '%A+ï¿½Ñ¼Ö³ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00211', 2024, '80.6'
FROM facilities WHERE admin_sym = '3-28185-00211'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'A+ï¿½Ñ¼Ö³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00211', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00211');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00075' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00075', 2024, '51.6'
FROM facilities WHERE admin_sym = '3-28185-00075'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '51.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00075', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00075');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28185-00251' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28185-00251', 2024, '57.35'
FROM facilities WHERE admin_sym = '2-28185-00251'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28185-00251', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28185-00251');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00147' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00147', 2024, '74.85'
FROM facilities WHERE admin_sym = '3-28185-00147'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00147', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00147');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28185-00263' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28185-00263', 2024, '76.35'
FROM facilities WHERE admin_sym = '2-28185-00263'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28185-00263', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28185-00263');

-- Update existing: ï¿½ï¿½îº¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00159' WHERE name LIKE '%ï¿½ï¿½îº¹ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00159', 2024, '70.35'
FROM facilities WHERE admin_sym = '3-28185-00159'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½îº¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00159', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00159');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28185-00293' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28185-00293', 2024, '44.16'
FROM facilities WHERE admin_sym = '2-28185-00293'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '44.16',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28185-00293', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28185-00293');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00191' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00191', 2024, '83.6'
FROM facilities WHERE admin_sym = '3-28185-00191'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00191', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00191');

-- Update existing: ï¿½Ö°ï¿½1ï¿½ï¿½ ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00137' WHERE name LIKE '%ï¿½Ö°ï¿½1ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00137', 2024, '71.35'
FROM facilities WHERE admin_sym = '3-28185-00137'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ö°ï¿½1ï¿½ï¿½ ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00137', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00137');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00099' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00099', 2024, '90.6'
FROM facilities WHERE admin_sym = '3-28185-00099'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00099', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00099');

-- Update existing: ï¿½Ã¸ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00089' WHERE name LIKE '%ï¿½Ã¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00089', 2024, '62.85'
FROM facilities WHERE admin_sym = '3-28185-00089'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ã¸ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00089', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00089');

-- Update existing: (+A)ï¿½Ûµï¿½È¿ï¿½å¸²ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28185-00265' WHERE name LIKE '%(+A)ï¿½Ûµï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28185-00265', 2024, '81.79'
FROM facilities WHERE admin_sym = '2-28185-00265'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.79',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', '(+A)ï¿½Ûµï¿½È¿ï¿½å¸²ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28185-00265', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28185-00265');

-- Update existing: ï¿½Ì¼ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28185-00271' WHERE name LIKE '%ï¿½Ì¼ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28185-00271', 2024, '74.21'
FROM facilities WHERE admin_sym = '2-28185-00271'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.21',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ì¼ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28185-00271', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28185-00271');

-- Update existing: ï¿½Ûµï¿½ï¿½ï¿½Æ®ï¿½ï¿½ ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28185-00243' WHERE name LIKE '%ï¿½Ûµï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28185-00243', 2024, '77.1'
FROM facilities WHERE admin_sym = '2-28185-00243'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ûµï¿½ï¿½ï¿½Æ®ï¿½ï¿½ ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28185-00243', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28185-00243');

-- Update existing: ï¿½Ã»ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00229' WHERE name LIKE '%ï¿½Ã»ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00229', 2024, '81.6'
FROM facilities WHERE admin_sym = '3-28185-00229'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ã»ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00229', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00229');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00095' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00095', 2024, '79.35'
FROM facilities WHERE admin_sym = '3-28185-00095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00095', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00095');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ù¿ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00019' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00019', 2024, '80.05'
FROM facilities WHERE admin_sym = '3-28185-00019'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ù¿ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00019', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00019');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00209' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00209', 2024, '83.85'
FROM facilities WHERE admin_sym = '3-28185-00209'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00209', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00209');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00133' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00133', 2024, '76.1'
FROM facilities WHERE admin_sym = '3-28185-00133'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00133', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00133');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00101' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00101', 2024, '72.85'
FROM facilities WHERE admin_sym = '3-28185-00101'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00101', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00101');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28185-00241' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28185-00241', 2024, '84.6'
FROM facilities WHERE admin_sym = '2-28185-00241'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28185-00241', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28185-00241');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00189' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00189', 2024, '75.91'
FROM facilities WHERE admin_sym = '3-28185-00189'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.91',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00189', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00189');

-- Update existing: È¿ï¿½ï¿½ï¿½î¸£ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00139' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00139', 2024, '79.85'
FROM facilities WHERE admin_sym = '3-28185-00139'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½î¸£ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00139', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00139');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28185-00287' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28185-00287', 2024, '92.04'
FROM facilities WHERE admin_sym = '2-28185-00287'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.04',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28185-00287', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28185-00287');

-- Update existing: ï¿½ï¿½Ãµï¿½ß¾ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00091' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00091', 2024, '87.6'
FROM facilities WHERE admin_sym = '3-28185-00091'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½ß¾ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00091', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00091');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00191' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00191', 2024, '72.35'
FROM facilities WHERE admin_sym = '3-28185-00191'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00191', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00191');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00099' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00099', 2024, '88.1'
FROM facilities WHERE admin_sym = '3-28185-00099'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00099', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00099');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28185-00291' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28185-00291', 2024, '84.35'
FROM facilities WHERE admin_sym = '2-28185-00291'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28185-00291', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28185-00291');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-28185-00195' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28185-00195', 2024, '81.85'
FROM facilities WHERE admin_sym = '2-28185-00195'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-28185-00195', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-28185-00195');

-- Update existing: ï¿½ï¿½ÝµÎ¹ï¿½ ï¿½Ñ¸ï¿½ï¿½ï¿½ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-28185-00163' WHERE name LIKE '%ï¿½ï¿½ÝµÎ¹%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00163', 2024, '72.85'
FROM facilities WHERE admin_sym = '3-28185-00163'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ÝµÎ¹ï¿½ ï¿½Ñ¸ï¿½ï¿½ï¿½ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-28185-00163', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-28185-00163');

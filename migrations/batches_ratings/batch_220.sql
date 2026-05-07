-- Batch 220 of 226
-- Processing 100 facilities

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-46820-00062' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00062', 2024, '84.78'
FROM facilities WHERE admin_sym = '1-46820-00062'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.78',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '1-46820-00062', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-46820-00062');

-- Update existing: ï¿½Û¾Ï¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-46820-00029' WHERE name LIKE '%ï¿½Û¾Ï¼ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00029', 2024, '78.52'
FROM facilities WHERE admin_sym = '1-46820-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.52',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Û¾Ï¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '1-46820-00029', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-46820-00029');

-- Update existing: È¿ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-46820-00127' WHERE name LIKE '%È¿ ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00127', 2024, '82.26'
FROM facilities WHERE admin_sym = '1-46820-00127'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.26',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '1-46820-00127', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-46820-00127');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö´Â»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-46820-00064' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00064', 2024, '90.4'
FROM facilities WHERE admin_sym = '1-46820-00064'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.4',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö´Â»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '1-46820-00064', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-46820-00064');

-- Update existing: ï¿½Ø³ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-46820-00100' WHERE name LIKE '%ï¿½Ø³ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00100', 2024, '72.04'
FROM facilities WHERE admin_sym = '1-46820-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.04',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ø³ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '1-46820-00100', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-46820-00100');

-- Update existing: ï¿½ì½½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-46820-00104' WHERE name LIKE '%ï¿½ì½½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00104', 2024, '55.49'
FROM facilities WHERE admin_sym = '1-46820-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.49',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ì½½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '1-46820-00104', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-46820-00104');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-46820-00036' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00036', 2024, '77.28'
FROM facilities WHERE admin_sym = '1-46820-00036'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.28',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '1-46820-00036', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-46820-00036');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ò¸ï¿½ï¿½ï¿½ ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-46820-00047' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00047', 2024, '74.55'
FROM facilities WHERE admin_sym = '1-46820-00047'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ò¸ï¿½ï¿½ï¿½ ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '1-46820-00047', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-46820-00047');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-46820-00113' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00113', 2024, '49.45'
FROM facilities WHERE admin_sym = '1-46820-00113'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.45',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '1-46820-00113', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-46820-00113');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-46820-00049' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00049', 2024, '92.13'
FROM facilities WHERE admin_sym = '1-46820-00049'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.13',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '1-46820-00049', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-46820-00049');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-46790-00010' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00010', 2024, '65.26'
FROM facilities WHERE admin_sym = '1-46790-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.26',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '1-46790-00010', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-46790-00010');

-- Update existing: ï¿½ï¼ºï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-46790-00178' WHERE name LIKE '%ï¿½ï¼ºï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00178', 2024, '80.46'
FROM facilities WHERE admin_sym = '1-46790-00178'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.46',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¼ºï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '1-46790-00178', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-46790-00178');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-46790-00117' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00117', 2024, '80.1'
FROM facilities WHERE admin_sym = '1-46790-00117'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '1-46790-00117', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-46790-00117');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-46790-00161' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00161', 2024, '85.85'
FROM facilities WHERE admin_sym = '1-46790-00161'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '1-46790-00161', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-46790-00161');

-- Update existing: È­ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-46790-00092' WHERE name LIKE '%È­ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00092', 2024, '89.58'
FROM facilities WHERE admin_sym = '1-46790-00092'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.58',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È­ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '1-46790-00092', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-46790-00092');

-- Update existing: È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½
UPDATE facilities SET admin_sym = '1-46790-00148' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00148', 2024, '75.15'
FROM facilities WHERE admin_sym = '1-46790-00148'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.15',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '1-46790-00148', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-46790-00148');

-- Update existing: È­ï¿½ï¿½ï¿½Þ»ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-46790-00163' WHERE name LIKE '%È­ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00163', 2024, '85.93'
FROM facilities WHERE admin_sym = '1-46790-00163'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.93',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È­ï¿½ï¿½ï¿½Þ»ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '1-46790-00163', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-46790-00163');

-- Update existing: ï¿½ï¿½ï¿½Ò¾ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-46790-00181' WHERE name LIKE '%ï¿½ï¿½ï¿½Ò%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00181', 2024, '69.3'
FROM facilities WHERE admin_sym = '1-46790-00181'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ò¾ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '1-46790-00181', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-46790-00181');

-- Update existing: ï¿½Ò¸ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-46790-00100' WHERE name LIKE '%ï¿½Ò¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00100', 2024, '85.84'
FROM facilities WHERE admin_sym = '1-46790-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.84',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ò¸ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '1-46790-00100', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-46790-00100');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ò¸ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-46790-00183' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00183', 2024, '76.72'
FROM facilities WHERE admin_sym = '1-46790-00183'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.72',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ò¸ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '1-46790-00183', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-46790-00183');

-- Update existing: ï¿½ï¿½ï¿½ò¿¹¶ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-46790-00058' WHERE name LIKE '%ï¿½ï¿½ï¿½ò%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00058', 2024, '80.9'
FROM facilities WHERE admin_sym = '1-46790-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.9',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ò¿¹¶ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '1-46790-00058', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-46790-00058');

-- Update existing: ï¿½Æ¸ï¿½ï¿½Ù¿ï¿½Ç¹ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-46790-00140' WHERE name LIKE '%ï¿½Æ¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00140', 2024, '80.54'
FROM facilities WHERE admin_sym = '1-46790-00140'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.54',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Æ¸ï¿½ï¿½Ù¿ï¿½Ç¹ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '1-46790-00140', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-46790-00140');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28843' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28843', 2024, '71.53'
FROM facilities WHERE admin_sym = '1-47290-28843'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.53',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28843', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28843');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28642' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28642', 2024, '91.1'
FROM facilities WHERE admin_sym = '1-47290-28642'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28642', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28642');

-- Update existing: ï¿½×¸ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28785' WHERE name LIKE '%ï¿½×¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28785', 2024, '65.85'
FROM facilities WHERE admin_sym = '1-47290-28785'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½×¸ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28785', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28785');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28784' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28784', 2024, '58.98'
FROM facilities WHERE admin_sym = '1-47290-28784'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.98',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28784', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28784');

-- Update existing: ï¿½ï¿½ï¿½Ú¿ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28906' WHERE name LIKE '%ï¿½ï¿½ï¿½Ú%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28906', 2024, '76.28'
FROM facilities WHERE admin_sym = '1-47290-28906'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.28',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ú¿ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28906', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28906');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-00008' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-00008', 2024, '85.6'
FROM facilities WHERE admin_sym = '1-47290-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-00008', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-00008');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½È¨
UPDATE facilities SET admin_sym = '1-47290-28954' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28954', 2024, '89.43'
FROM facilities WHERE admin_sym = '1-47290-28954'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.43',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28954', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28954');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28662' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28662', 2024, '83.85'
FROM facilities WHERE admin_sym = '1-47290-28662'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28662', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28662');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½î¸£ï¿½Å¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28810' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28810', 2024, '88.8'
FROM facilities WHERE admin_sym = '1-47290-28810'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½î¸£ï¿½Å¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28810', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28810');

-- Update existing: È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28725' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28725', 2024, '88.1'
FROM facilities WHERE admin_sym = '1-47290-28725'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28725', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28725');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ï´Ã¼ï¿½ ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28870' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28870', 2024, '80.85'
FROM facilities WHERE admin_sym = '1-47290-28870'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ï´Ã¼ï¿½ ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28870', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28870');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-00004' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-00004', 2024, '96.1'
FROM facilities WHERE admin_sym = '1-47290-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-00004', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-00004');

-- Update existing: ï¿½Ù»ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28684' WHERE name LIKE '%ï¿½Ù»ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28684', 2024, '96.08'
FROM facilities WHERE admin_sym = '1-47290-28684'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.08',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ù»ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28684', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28684');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28866' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28866', 2024, '97.6'
FROM facilities WHERE admin_sym = '1-47290-28866'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28866', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28866');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ì¿ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28940' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28940', 2024, '72.54'
FROM facilities WHERE admin_sym = '1-47290-28940'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.54',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ì¿ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28940', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28940');

-- Update existing: ï¿½ï¿½ï¿½Î¿ï¿½ï¿½Ã¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ï½Ç¹ï¿½Å¸ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28838' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28838', 2024, '68.16'
FROM facilities WHERE admin_sym = '1-47290-28838'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.16',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î¿ï¿½ï¿½Ã¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ï½Ç¹ï¿½Å¸ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28838', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28838');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28885' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28885', 2024, '61.36'
FROM facilities WHERE admin_sym = '1-47290-28885'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.36',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28885', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28885');

-- Update existing: ï¿½ï¿½ ï¿½àº¹ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28812' WHERE name LIKE '%ï¿½ï¿½ ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28812', 2024, '44.88'
FROM facilities WHERE admin_sym = '1-47290-28812'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '44.88',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ ï¿½àº¹ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28812', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28812');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28850' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28850', 2024, '86.35'
FROM facilities WHERE admin_sym = '1-47290-28850'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28850', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28850');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28792' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28792', 2024, '78.63'
FROM facilities WHERE admin_sym = '1-47290-28792'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.63',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28792', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28792');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28897' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28897', 2024, '54.04'
FROM facilities WHERE admin_sym = '1-47290-28897'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.04',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28897', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28897');

-- Update existing: ï¿½àº¹ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28856' WHERE name LIKE '%ï¿½àº¹ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28856', 2024, '66.13'
FROM facilities WHERE admin_sym = '1-47290-28856'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.13',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28856', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28856');

-- Update existing: ï¿½Æ°ï¿½ï¿½Ù¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28746' WHERE name LIKE '%ï¿½Æ°ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28746', 2024, '82.48'
FROM facilities WHERE admin_sym = '1-47290-28746'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.48',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Æ°ï¿½ï¿½Ù¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28746', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28746');

-- Update existing: ï¿½Îµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28842' WHERE name LIKE '%ï¿½Îµï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28842', 2024, '76.83'
FROM facilities WHERE admin_sym = '1-47290-28842'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.83',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Îµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28842', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28842');

-- Update existing: ï¿½ï¿½Ï¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28744' WHERE name LIKE '%ï¿½ï¿½Ï¿ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28744', 2024, '90.1'
FROM facilities WHERE admin_sym = '1-47290-28744'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ï¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28744', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28744');

-- Update existing: ï¿½ï¿½ï¿½È¿ï¿½Ú¼Õ¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28835' WHERE name LIKE '%ï¿½ï¿½ï¿½È%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28835', 2024, '98.31'
FROM facilities WHERE admin_sym = '1-47290-28835'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.31',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½È¿ï¿½Ú¼Õ¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28835', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28835');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28938' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28938', 2024, '93.81'
FROM facilities WHERE admin_sym = '1-47290-28938'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.81',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28938', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28938');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ú¸ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28859' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28859', 2024, '91.94'
FROM facilities WHERE admin_sym = '1-47290-28859'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.94',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ú¸ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28859', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28859');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28846' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28846', 2024, '83.06'
FROM facilities WHERE admin_sym = '1-47290-28846'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.06',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28846', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28846');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½2 ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28849' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28849', 2024, '82.85'
FROM facilities WHERE admin_sym = '1-47290-28849'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½2 ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28849', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28849');

-- Update existing: ï¿½ï¼ºï¿½î¸£ï¿½Å¿ï¿½ç¼¾ï¿½Í³ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28877' WHERE name LIKE '%ï¿½ï¼ºï¿½î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28877', 2024, '88.45'
FROM facilities WHERE admin_sym = '1-47290-28877'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.45',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¼ºï¿½î¸£ï¿½Å¿ï¿½ç¼¾ï¿½Í³ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28877', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28877');

-- Update existing: ï¿½Ï´Ã¼Õ³ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28756' WHERE name LIKE '%ï¿½Ï´Ã¼Õ³ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28756', 2024, '74.55'
FROM facilities WHERE admin_sym = '1-47290-28756'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ï´Ã¼Õ³ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28756', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28756');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28703' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28703', 2024, '41.31'
FROM facilities WHERE admin_sym = '1-47290-28703'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '41.31',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28703', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28703');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28816' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28816', 2024, '82.2'
FROM facilities WHERE admin_sym = '1-47290-28816'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.2',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28816', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28816');

-- Update existing: ï¿½ï¿½ï¿½Ã¤ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28881' WHERE name LIKE '%ï¿½ï¿½ï¿½Ã%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28881', 2024, '69.85'
FROM facilities WHERE admin_sym = '1-47290-28881'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ã¤ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28881', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28881');

-- Update existing: ï¿½ï¿½Ãµï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28745' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28745', 2024, '67.55'
FROM facilities WHERE admin_sym = '1-47290-28745'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28745', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28745');

-- Update existing: ï¿½ï¿½Ãµï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½2
UPDATE facilities SET admin_sym = '1-47290-28808' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28808', 2024, '58.02'
FROM facilities WHERE admin_sym = '1-47290-28808'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.02',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½2', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28808', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28808');

-- Update existing: ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28825' WHERE name LIKE '%ï¿½ï¿½ï¿½Ç%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28825', 2024, '81.28'
FROM facilities WHERE admin_sym = '1-47290-28825'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.28',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28825', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28825');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28818' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28818', 2024, '64.36'
FROM facilities WHERE admin_sym = '1-47290-28818'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.36',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28818', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28818');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28828' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28828', 2024, '68.48'
FROM facilities WHERE admin_sym = '1-47290-28828'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.48',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28828', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28828');

-- Update existing: ï¿½ï¼ºï¿½ï¿½ç¼¾ï¿½Í³ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28811' WHERE name LIKE '%ï¿½ï¼ºï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28811', 2024, '70.06'
FROM facilities WHERE admin_sym = '1-47290-28811'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.06',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¼ºï¿½ï¿½ç¼¾ï¿½Í³ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28811', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28811');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28788' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28788', 2024, '76.52'
FROM facilities WHERE admin_sym = '1-47290-28788'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.52',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28788', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28788');

-- Update existing: ï¿½ì¸®ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28765' WHERE name LIKE '%ï¿½ì¸®ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28765', 2024, '74.9'
FROM facilities WHERE admin_sym = '1-47290-28765'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.9',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ì¸®ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28765', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28765');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ù³ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28757' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28757', 2024, '74.72'
FROM facilities WHERE admin_sym = '1-47290-28757'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.72',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ù³ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28757', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28757');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47290-28742' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28742', 2024, '60.96'
FROM facilities WHERE admin_sym = '1-47290-28742'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.96',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47290-28742', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47290-28742');

-- Update existing: ï¿½ï¿½È­ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47130-00011' WHERE name LIKE '%ï¿½ï¿½È­ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00011', 2024, '90.08'
FROM facilities WHERE admin_sym = '1-47130-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.08',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½È­ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47130-00011', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47130-00011');

-- Update existing: ï¿½ï¿½Çªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47130-00215' WHERE name LIKE '%ï¿½ï¿½Çªï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00215', 2024, '81.07'
FROM facilities WHERE admin_sym = '1-47130-00215'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.07',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Çªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47130-00215', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47130-00215');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ã¼ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47130-00104' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00104', 2024, '88.6'
FROM facilities WHERE admin_sym = '1-47130-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ã¼ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47130-00104', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47130-00104');

-- Update existing: ï¿½Ò±ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47130-00214' WHERE name LIKE '%ï¿½Ò±ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00214', 2024, '69.21'
FROM facilities WHERE admin_sym = '1-47130-00214'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.21',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ò±ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47130-00214', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47130-00214');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47130-00012' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00012', 2024, '90.3'
FROM facilities WHERE admin_sym = '1-47130-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47130-00012', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47130-00012');

-- Update existing: ï¿½Â¸ï¿½×¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47130-00168' WHERE name LIKE '%ï¿½Â¸ï¿½×¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00168', 2024, '85.75'
FROM facilities WHERE admin_sym = '1-47130-00168'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.75',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Â¸ï¿½×¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47130-00168', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47130-00168');

-- Update existing: ï¿½ï¿½È­ï¿½ï¿½ ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47130-00004' WHERE name LIKE '%ï¿½ï¿½È­ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00004', 2024, '94.75'
FROM facilities WHERE admin_sym = '1-47130-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.75',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½È­ï¿½ï¿½ ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47130-00004', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47130-00004');

-- Update existing: Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47130-00003' WHERE name LIKE '%Ãµï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00003', 2024, '97.35'
FROM facilities WHERE admin_sym = '1-47130-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47130-00003', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47130-00003');

-- Update existing: Ãµï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47130-00005' WHERE name LIKE '%Ãµï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00005', 2024, '95.41'
FROM facilities WHERE admin_sym = '1-47130-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.41',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ãµï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47130-00005', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47130-00005');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47130-00101' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00101', 2024, '69.09'
FROM facilities WHERE admin_sym = '1-47130-00101'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.09',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47130-00101', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47130-00101');

-- Update existing: ï¿½ï¿½ï¿½×¸ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47130-00261' WHERE name LIKE '%ï¿½ï¿½ï¿½×%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00261', 2024, '68.18'
FROM facilities WHERE admin_sym = '1-47130-00261'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.18',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½×¸ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47130-00261', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47130-00261');

-- Update existing: ï¿½ï¿½ï¿½ï¿½È²ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47130-00164' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00164', 2024, '65.39'
FROM facilities WHERE admin_sym = '1-47130-00164'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.39',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½È²ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47130-00164', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47130-00164');

-- Update existing: ï¿½ï¿½ï¿½Î¿ï¿½ï¿½Ã¼ï¿½ ï¿½Ï³ï¿½
UPDATE facilities SET admin_sym = '1-47130-00123' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00123', 2024, '89.64'
FROM facilities WHERE admin_sym = '1-47130-00123'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.64',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î¿ï¿½ï¿½Ã¼ï¿½ ï¿½Ï³ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47130-00123', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47130-00123');

-- Update existing: ï¿½ï¿½ï¿½Öµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47130-00134' WHERE name LIKE '%ï¿½ï¿½ï¿½Ö%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00134', 2024, '70.64'
FROM facilities WHERE admin_sym = '1-47130-00134'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.64',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Öµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47130-00134', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47130-00134');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ã¼
UPDATE facilities SET admin_sym = '1-47130-00102' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00102', 2024, '63.85'
FROM facilities WHERE admin_sym = '1-47130-00102'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ã¼', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47130-00102', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47130-00102');

-- Update existing: ï¿½È°ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47130-00107' WHERE name LIKE '%ï¿½È°ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00107', 2024, '74.62'
FROM facilities WHERE admin_sym = '1-47130-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.62',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½È°ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47130-00107', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47130-00107');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Çºï¿½ï¿½ï¿½ï¿½Ú¸ï¿½
UPDATE facilities SET admin_sym = '1-47130-00016' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00016', 2024, '83.12'
FROM facilities WHERE admin_sym = '1-47130-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.12',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Çºï¿½ï¿½ï¿½ï¿½Ú¸ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47130-00016', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47130-00016');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47130-00145' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00145', 2024, '78.79'
FROM facilities WHERE admin_sym = '1-47130-00145'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.79',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47130-00145', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47130-00145');

-- Update existing: ï¿½ï¿½ï¿½Ù´Ï³ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47130-00023' WHERE name LIKE '%ï¿½ï¿½ï¿½Ù%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00023', 2024, '73.98'
FROM facilities WHERE admin_sym = '1-47130-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.98',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ù´Ï³ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47130-00023', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47130-00023');

-- Update existing: ï¿½ë°¡ï¿½ß¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47830-00031' WHERE name LIKE '%ï¿½ë°¡ï¿½ß%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47830-00031', 2024, '86.51'
FROM facilities WHERE admin_sym = '1-47830-00031'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.51',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ë°¡ï¿½ß¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47830-00031', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47830-00031');

-- Update existing: ï¿½ï¿½ï¿½É¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47830-00023' WHERE name LIKE '%ï¿½ï¿½ï¿½É%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47830-00023', 2024, '93.1'
FROM facilities WHERE admin_sym = '1-47830-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½É¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47830-00023', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47830-00023');

-- Update existing: ï¿½ï¿½Ã¢ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47830-00021' WHERE name LIKE '%ï¿½ï¿½Ã¢ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47830-00021', 2024, '96.35'
FROM facilities WHERE admin_sym = '1-47830-00021'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ã¢ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47830-00021', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47830-00021');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47830-00043' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47830-00043', 2024, '88.55'
FROM facilities WHERE admin_sym = '1-47830-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47830-00043', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47830-00043');

-- Update existing: ï¿½ï¿½ï¿½É¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47830-00052' WHERE name LIKE '%ï¿½ï¿½ï¿½É%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47830-00052', 2024, '79.55'
FROM facilities WHERE admin_sym = '1-47830-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½É¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47830-00052', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47830-00052');

-- Update existing: ï¿½Ùºï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47830-00035' WHERE name LIKE '%ï¿½Ùºï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47830-00035', 2024, '91.72'
FROM facilities WHERE admin_sym = '1-47830-00035'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.72',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ùºï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47830-00035', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47830-00035');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47190-00369' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47190-00369', 2024, '79.54'
FROM facilities WHERE admin_sym = '1-47190-00369'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.54',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47190-00369', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47190-00369');

-- Update existing: ï¿½ï¿½ï¿½Î¿ï¿½ï¿½Ã¼ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47190-00297' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47190-00297', 2024, '83.3'
FROM facilities WHERE admin_sym = '1-47190-00297'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î¿ï¿½ï¿½Ã¼ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47190-00297', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47190-00297');

-- Update existing: ï¿½ï¿½ï¿½Î¿ï¿½ï¿½Ã¼ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47190-00339' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47190-00339', 2024, '78.89'
FROM facilities WHERE admin_sym = '1-47190-00339'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.89',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î¿ï¿½ï¿½Ã¼ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47190-00339', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47190-00339');

-- Update existing: ï¿½Æ¼ï¿½ï¿½Ý¿ï¿½ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47190-00036' WHERE name LIKE '%ï¿½Æ¼ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47190-00036', 2024, '85.71'
FROM facilities WHERE admin_sym = '1-47190-00036'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.71',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Æ¼ï¿½ï¿½Ý¿ï¿½ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47190-00036', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47190-00036');

-- Update existing: ï¿½ï¿½ï¿½Ì½Ç¹ï¿½ï¿½Ï¿ì½º
UPDATE facilities SET admin_sym = '1-47190-00157' WHERE name LIKE '%ï¿½ï¿½ï¿½Ì%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47190-00157', 2024, '90.8'
FROM facilities WHERE admin_sym = '1-47190-00157'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ì½Ç¹ï¿½ï¿½Ï¿ì½º', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47190-00157', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47190-00157');

-- Update existing: È¿ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½Å¸ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47190-00067' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47190-00067', 2024, '78.55'
FROM facilities WHERE admin_sym = '1-47190-00067'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½Å¸ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47190-00067', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47190-00067');

-- Update existing: ï¿½ï¿½ï¿½Î¿ï¿½ï¿½Ã¼ï¿½ ï¿½àº¹ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47190-00214' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47190-00214', 2024, '85.8'
FROM facilities WHERE admin_sym = '1-47190-00214'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î¿ï¿½ï¿½Ã¼ï¿½ ï¿½àº¹ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47190-00214', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47190-00214');

-- Update existing: Ã»ï¿½ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47190-00224' WHERE name LIKE '%Ã»ï¿½ï¿½Ç¹%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47190-00224', 2024, '80.35'
FROM facilities WHERE admin_sym = '1-47190-00224'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ã»ï¿½ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ïµï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½Ïµï¿½', '1-47190-00224', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47190-00224');

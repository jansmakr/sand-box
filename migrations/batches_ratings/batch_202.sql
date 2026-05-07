-- Batch 202 of 226
-- Processing 100 facilities

-- Update existing: ï¿½Ñ»ï¿½ï¿½ï¿½Ê½ï¿½È¨
UPDATE facilities SET admin_sym = '1-41550-00114' WHERE name LIKE '%ï¿½Ñ»ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00114', 2024, '85.34'
FROM facilities WHERE admin_sym = '1-41550-00114'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.34',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ»ï¿½ï¿½ï¿½Ê½ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41550-00114', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41550-00114');

-- Update existing: ï¿½È¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41550-00110' WHERE name LIKE '%ï¿½È¼ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00110', 2024, '75.17'
FROM facilities WHERE admin_sym = '1-41550-00110'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.17',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½È¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41550-00110', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41550-00110');

-- Update existing: ï¿½Ò¸ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41550-00004' WHERE name LIKE '%ï¿½Ò¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00004', 2024, '88.19'
FROM facilities WHERE admin_sym = '1-41550-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.19',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ò¸ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41550-00004', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41550-00004');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41550-00175' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00175', 2024, '71.01'
FROM facilities WHERE admin_sym = '1-41550-00175'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.01',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41550-00175', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41550-00175');

-- Update existing: ï¿½ï¿½ï¿½Ù´Ïºï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41550-00115' WHERE name LIKE '%ï¿½ï¿½ï¿½Ù%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00115', 2024, '72.93'
FROM facilities WHERE admin_sym = '1-41550-00115'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.93',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ù´Ïºï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41550-00115', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41550-00115');

-- Update existing: ï¿½ï¿½ï¿½ð¼º½É¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41550-00078' WHERE name LIKE '%ï¿½ï¿½ï¿½ð%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00078', 2024, '67.75'
FROM facilities WHERE admin_sym = '1-41550-00078'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.75',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ð¼º½É¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41550-00078', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41550-00078');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41550-00102' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00102', 2024, '57.68'
FROM facilities WHERE admin_sym = '1-41550-00102'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.68',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41550-00102', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41550-00102');

-- Update existing: ï¿½È¼ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41550-00166' WHERE name LIKE '%ï¿½È¼ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00166', 2024, '76.41'
FROM facilities WHERE admin_sym = '1-41550-00166'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.41',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½È¼ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41550-00166', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41550-00166');

-- Update existing: ï¿½Ã´Ï¾î½º ï¿½Ê½ï¿½È¨
UPDATE facilities SET admin_sym = '1-41550-00122' WHERE name LIKE '%ï¿½Ã´Ï¾î½º%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00122', 2024, '85.18'
FROM facilities WHERE admin_sym = '1-41550-00122'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.18',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ã´Ï¾î½º ï¿½Ê½ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41550-00122', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41550-00122');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41550-00123' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00123', 2024, '83.11'
FROM facilities WHERE admin_sym = '1-41550-00123'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.11',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41550-00123', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41550-00123');

-- Update existing: ï¿½Ï´ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41550-00117' WHERE name LIKE '%ï¿½Ï´ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00117', 2024, '92.34'
FROM facilities WHERE admin_sym = '1-41550-00117'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.34',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ï´ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41550-00117', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41550-00117');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ñ³ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41550-00121' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00121', 2024, '66.01'
FROM facilities WHERE admin_sym = '1-41550-00121'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.01',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ñ³ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41550-00121', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41550-00121');

-- Update existing: ï¿½Æ¸ï¿½ï¿½Ù¿ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41550-00133' WHERE name LIKE '%ï¿½Æ¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00133', 2024, '53.36'
FROM facilities WHERE admin_sym = '1-41550-00133'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.36',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Æ¸ï¿½ï¿½Ù¿ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41550-00133', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41550-00133');

-- Update existing: ï¿½ï¿½ï¿½å¸²ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41550-00124' WHERE name LIKE '%ï¿½ï¿½ï¿½å%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00124', 2024, '85.33'
FROM facilities WHERE admin_sym = '1-41550-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.33',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½å¸²ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41550-00124', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41550-00124');

-- Update existing: ï¿½Â¾ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41550-00195' WHERE name LIKE '%ï¿½Â¾ï¿½ï¿%' AND sido = 'ï¿½ï¿½Å¸';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00195', 2024, '77.02'
FROM facilities WHERE admin_sym = '1-41550-00195'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.02',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Â¾ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Å¸ ï¿½ï¿½âµµ', 'ï¿½ï¿½Å¸', 'ï¿½ï¿½âµµ', '1-41550-00195', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41550-00195');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41550-00178' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00178', 2024, '86.49'
FROM facilities WHERE admin_sym = '1-41550-00178'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.49',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41550-00178', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41550-00178');

-- Update existing: ï¿½È¾ï¿½Çªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00182' WHERE name LIKE '%ï¿½È¾ï¿½Çª%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00182', 2024, '64.6'
FROM facilities WHERE admin_sym = '1-41170-00182'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½È¾ï¿½Çªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00182', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00182');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Æ®ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00194' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00194', 2024, '76.76'
FROM facilities WHERE admin_sym = '1-41170-00194'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.76',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Æ®ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00194', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00194');

-- Update existing: È£ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00363' WHERE name LIKE '%È£ï¿½ï¿½Ç¹%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00363', 2024, '88.6'
FROM facilities WHERE admin_sym = '1-41170-00363'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È£ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00363', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00363');

-- Update existing: ï¿½È¾ï¿½Ç¹ï¿½ï¿½É¾ï¿½È£ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00293' WHERE name LIKE '%ï¿½È¾ï¿½Ç¹%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00293', 2024, '89.1'
FROM facilities WHERE admin_sym = '1-41170-00293'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½È¾ï¿½Ç¹ï¿½ï¿½É¾ï¿½È£ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00293', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00293');

-- Update existing: ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00349' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00349', 2024, '84.99'
FROM facilities WHERE admin_sym = '1-41170-00349'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.99',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00349', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00349');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½É¾ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00398' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00398', 2024, '98.55'
FROM facilities WHERE admin_sym = '1-41170-00398'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½É¾ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00398', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00398');

-- Update existing: È¿ï¿½É¿ï¿½ï¿½ï¿½1È£ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00249' WHERE name LIKE '%È¿ï¿½É¿ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00249', 2024, '60.09'
FROM facilities WHERE admin_sym = '1-41170-00249'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.09',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½É¿ï¿½ï¿½ï¿½1È£ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00249', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00249');

-- Update existing: È¿ï¿½É¿ï¿½ï¿½ï¿½2È£ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00258' WHERE name LIKE '%È¿ï¿½É¿ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00258', 2024, '70.73'
FROM facilities WHERE admin_sym = '1-41170-00258'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.73',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½É¿ï¿½ï¿½ï¿½2È£ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00258', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00258');

-- Update existing: ï¿½ß¾Ó¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00056' WHERE name LIKE '%ï¿½ß¾Ó¿ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00056', 2024, '71.8'
FROM facilities WHERE admin_sym = '1-41170-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ß¾Ó¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00056', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00056');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00146' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00146', 2024, '86.55'
FROM facilities WHERE admin_sym = '1-41170-00146'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00146', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00146');

-- Update existing: ï¿½ï¿½ï¿½Ç³ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00159' WHERE name LIKE '%ï¿½ï¿½ï¿½Ç%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00159', 2024, '90.8'
FROM facilities WHERE admin_sym = '1-41170-00159'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ç³ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00159', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00159');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ê¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00326' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00326', 2024, '82.35'
FROM facilities WHERE admin_sym = '1-41170-00326'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ê¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00326', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00326');

-- Update existing: ï¿½È¾ï¿½ï¿½ï¿½Í¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00275' WHERE name LIKE '%ï¿½È¾ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00275', 2024, '81.6'
FROM facilities WHERE admin_sym = '1-41170-00275'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½È¾ï¿½ï¿½ï¿½Í¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00275', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00275');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00340' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00340', 2024, '65.93'
FROM facilities WHERE admin_sym = '1-41170-00340'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.93',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00340', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00340');

-- Update existing: ï¿½ï¿½Æ¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00367' WHERE name LIKE '%ï¿½ï¿½Æ¼ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00367', 2024, '81.54'
FROM facilities WHERE admin_sym = '1-41170-00367'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.54',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Æ¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00367', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00367');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00195' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00195', 2024, '67.8'
FROM facilities WHERE admin_sym = '1-41170-00195'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00195', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00195');

-- Update existing: ï¿½È¾ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00003' WHERE name LIKE '%ï¿½È¾ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00003', 2024, '97.6'
FROM facilities WHERE admin_sym = '1-41170-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½È¾ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00003', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00003');

-- Update existing: ï¿½È¾ç¿¤ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00347' WHERE name LIKE '%ï¿½È¾ç¿¤ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00347', 2024, '87.6'
FROM facilities WHERE admin_sym = '1-41170-00347'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½È¾ç¿¤ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00347', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00347');

-- Update existing: ï¿½Ñ¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00211' WHERE name LIKE '%ï¿½Ñ¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00211', 2024, '81.25'
FROM facilities WHERE admin_sym = '1-41170-00211'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.25',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00211', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00211');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00370' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00370', 2024, '78.22'
FROM facilities WHERE admin_sym = '1-41170-00370'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.22',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00370', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00370');

-- Update existing: ï¿½ß¾ï¿½È¿ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00209' WHERE name LIKE '%ï¿½ß¾ï¿½È¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00209', 2024, '85.88'
FROM facilities WHERE admin_sym = '1-41170-00209'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.88',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ß¾ï¿½È¿ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00209', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00209');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00248' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00248', 2024, '80.52'
FROM facilities WHERE admin_sym = '1-41170-00248'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.52',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00248', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00248');

-- Update existing: ï¿½Ñ°ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00005' WHERE name LIKE '%ï¿½Ñ°ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00005', 2024, '70.01'
FROM facilities WHERE admin_sym = '1-41170-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.01',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ°ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00005', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00005');

-- Update existing: ï¿½ï¿½È£ï¿½Ú»ï¿½×¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00341' WHERE name LIKE '%ï¿½ï¿½È£ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00341', 2024, '85.33'
FROM facilities WHERE admin_sym = '1-41170-00341'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.33',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½È£ï¿½Ú»ï¿½×¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00341', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00341');

-- Update existing: ï¿½È¾ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00374' WHERE name LIKE '%ï¿½È¾ç°¡ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00374', 2024, '92.67'
FROM facilities WHERE admin_sym = '1-41170-00374'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.67',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½È¾ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00374', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00374');

-- Update existing: ï¿½ï¿½ï¿½È´Þºï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00425' WHERE name LIKE '%ï¿½ï¿½ï¿½È%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00425', 2024, '81.98'
FROM facilities WHERE admin_sym = '1-41170-00425'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.98',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½È´Þºï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00425', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00425');

-- Update existing: ï¿½ï¿½ï¿½Èºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00426' WHERE name LIKE '%ï¿½ï¿½ï¿½È%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00426', 2024, '71.92'
FROM facilities WHERE admin_sym = '1-41170-00426'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.92',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Èºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00426', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00426');

-- Update existing: Å«ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00271' WHERE name LIKE '%Å«ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00271', 2024, '66.12'
FROM facilities WHERE admin_sym = '1-41170-00271'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.12',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Å«ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00271', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00271');

-- Update existing: È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00272' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00272', 2024, '90.49'
FROM facilities WHERE admin_sym = '1-41170-00272'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.49',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00272', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00272');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00273' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00273', 2024, '57.82'
FROM facilities WHERE admin_sym = '1-41170-00273'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.82',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00273', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00273');

-- Update existing: ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00372' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00372', 2024, '76.51'
FROM facilities WHERE admin_sym = '1-41170-00372'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.51',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00372', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00372');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41170-00180' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00180', 2024, '74.09'
FROM facilities WHERE admin_sym = '1-41170-00180'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.09',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41170-00180', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41170-00180');

-- Update existing: ï¿½Ø´ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00365' WHERE name LIKE '%ï¿½Ø´ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00365', 2024, '82.2'
FROM facilities WHERE admin_sym = '1-41630-00365'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.2',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ø´ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00365', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00365');

-- Update existing: ï¿½Â´ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00297' WHERE name LIKE '%ï¿½Â´ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00297', 2024, '65.55'
FROM facilities WHERE admin_sym = '1-41630-00297'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Â´ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00297', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00297');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½É¾ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00278' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00278', 2024, '82.8'
FROM facilities WHERE admin_sym = '1-41630-00278'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½É¾ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00278', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00278');

-- Update existing: ï¿½Ì·ï¿½ï¿½Ç¹ï¿½ï¿½É¾ï¿½
UPDATE facilities SET admin_sym = '1-41630-00352' WHERE name LIKE '%ï¿½Ì·ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00352', 2024, '67.33'
FROM facilities WHERE admin_sym = '1-41630-00352'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.33',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ì·ï¿½ï¿½Ç¹ï¿½ï¿½É¾ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00352', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00352');

-- Update existing: ï¿½Ç¹ï¿½Æ®ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00329' WHERE name LIKE '%ï¿½Ç¹ï¿½Æ®%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00329', 2024, '82.08'
FROM facilities WHERE admin_sym = '1-41630-00329'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.08',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ç¹ï¿½Æ®ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00329', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00329');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00174' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00174', 2024, '63'
FROM facilities WHERE admin_sym = '1-41630-00174'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00174', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00174');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00081' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00081', 2024, '78.1'
FROM facilities WHERE admin_sym = '1-41630-00081'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00081', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00081');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00324' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00324', 2024, '71.85'
FROM facilities WHERE admin_sym = '1-41630-00324'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00324', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00324');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00194' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00194', 2024, '86.85'
FROM facilities WHERE admin_sym = '1-41630-00194'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00194', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00194');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ï¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00301' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00301', 2024, '72.28'
FROM facilities WHERE admin_sym = '1-41630-00301'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.28',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ï¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00301', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00301');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00321' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00321', 2024, '74.5'
FROM facilities WHERE admin_sym = '1-41630-00321'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00321', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00321');

-- Update existing: È¿ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00300' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00300', 2024, '66.01'
FROM facilities WHERE admin_sym = '1-41630-00300'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.01',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00300', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00300');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00131' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00131', 2024, '91.6'
FROM facilities WHERE admin_sym = '1-41630-00131'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00131', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00131');

-- Update existing: ï¿½ï¿½ï¿½Ö³ï¿½ï¿½ï¿½É¾ï¿½
UPDATE facilities SET admin_sym = '1-41630-00015' WHERE name LIKE '%ï¿½ï¿½ï¿½Ö%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00015', 2024, '79.75'
FROM facilities WHERE admin_sym = '1-41630-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.75',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ö³ï¿½ï¿½ï¿½É¾ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00015', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00015');

-- Update existing: ï¿½ï¿½ï¿½ï½ºï¿½ï¿½Æ®È¿ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00371' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00371', 2024, '75.85'
FROM facilities WHERE admin_sym = '1-41630-00371'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï½ºï¿½ï¿½Æ®È¿ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00371', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00371');

-- Update existing: ï¿½ï¿½ ï¿½ï¿½Ã¾ï¿½Ã¿ï¿½ï¿½ï¿½ ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00011' WHERE name LIKE '%ï¿½ï¿½ ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00011', 2024, '79.85'
FROM facilities WHERE admin_sym = '1-41630-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ ï¿½ï¿½Ã¾ï¿½Ã¿ï¿½ï¿½ï¿½ ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00011', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00011');

-- Update existing: ï¿½ï¿½ï¿½Ö´ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00010' WHERE name LIKE '%ï¿½ï¿½ï¿½Ö%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00010', 2024, '90.3'
FROM facilities WHERE admin_sym = '1-41630-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ö´ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00010', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00010');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00331' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00331', 2024, '74.76'
FROM facilities WHERE admin_sym = '1-41630-00331'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.76',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00331', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00331');

-- Update existing: ï¿½ï¿½ï¿½Ö½Ç¹ï¿½ï¿½É¾î¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00187' WHERE name LIKE '%ï¿½ï¿½ï¿½Ö%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00187', 2024, '73.05'
FROM facilities WHERE admin_sym = '1-41630-00187'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ö½Ç¹ï¿½ï¿½É¾î¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00187', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00187');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½É¾î½º
UPDATE facilities SET admin_sym = '1-41630-00172' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00172', 2024, '73.1'
FROM facilities WHERE admin_sym = '1-41630-00172'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½É¾î½º', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00172', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00172');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00341' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00341', 2024, '74.59'
FROM facilities WHERE admin_sym = '1-41630-00341'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.59',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00341', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00341');

-- Update existing: ï¿½Îµï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00091' WHERE name LIKE '%ï¿½Îµï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00091', 2024, '79.06'
FROM facilities WHERE admin_sym = '1-41630-00091'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.06',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Îµï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00091', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00091');

-- Update existing: ï¿½Ø¿Í´Þ¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00168' WHERE name LIKE '%ï¿½Ø¿Í´Þ¿ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00168', 2024, '77.6'
FROM facilities WHERE admin_sym = '1-41630-00168'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ø¿Í´Þ¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00168', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00168');

-- Update existing: ï¿½ï¿½ï¿½Æ½ï¿½ï¿½ï¿½ ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00260' WHERE name LIKE '%ï¿½ï¿½ï¿½Æ%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00260', 2024, '69.55'
FROM facilities WHERE admin_sym = '1-41630-00260'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Æ½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00260', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00260');

-- Update existing: ï¿½Ú½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00237' WHERE name LIKE '%ï¿½Ú½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00237', 2024, '77.35'
FROM facilities WHERE admin_sym = '1-41630-00237'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ú½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00237', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00237');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ó¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00354' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00354', 2024, '83.1'
FROM facilities WHERE admin_sym = '1-41630-00354'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ó¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00354', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00354');

-- Update existing: ï¿½ï¼ºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00155' WHERE name LIKE '%ï¿½ï¼ºï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00155', 2024, '76.35'
FROM facilities WHERE admin_sym = '1-41630-00155'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¼ºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00155', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00155');

-- Update existing: ï¿½ï¿½È­ï¿½Ç¹ï¿½ï¿½É¾ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00310' WHERE name LIKE '%ï¿½ï¿½È­ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00310', 2024, '82.08'
FROM facilities WHERE admin_sym = '1-41630-00310'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.08',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½È­ï¿½Ç¹ï¿½ï¿½É¾ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00310', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00310');

-- Update existing: ï¿½É¶ï¿½ï¿½ï¿½ï¿½Ç½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00291' WHERE name LIKE '%ï¿½É¶ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00291', 2024, '67.46'
FROM facilities WHERE admin_sym = '1-41630-00291'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.46',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½É¶ï¿½ï¿½ï¿½ï¿½Ç½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00291', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00291');

-- Update existing: ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00347' WHERE name LIKE '%ï¿½Ç¹ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00347', 2024, '69.43'
FROM facilities WHERE admin_sym = '1-41630-00347'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.43',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00347', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00347');

-- Update existing: ï¿½Ã»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00328' WHERE name LIKE '%ï¿½Ã»ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00328', 2024, '81.38'
FROM facilities WHERE admin_sym = '1-41630-00328'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.38',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ã»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00328', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00328');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½àº¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00191' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00191', 2024, '86.22'
FROM facilities WHERE admin_sym = '1-41630-00191'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.22',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½àº¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00191', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00191');

-- Update existing: ï¿½ï¿½ï¿½Ö³Ê¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00372' WHERE name LIKE '%ï¿½ï¿½ï¿½Ö%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00372', 2024, '74.9'
FROM facilities WHERE admin_sym = '1-41630-00372'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.9',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ö³Ê¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00372', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00372');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½É¾ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00177' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00177', 2024, '79.63'
FROM facilities WHERE admin_sym = '1-41630-00177'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.63',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½É¾ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00177', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00177');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½È¨
UPDATE facilities SET admin_sym = '1-41630-00021' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00021', 2024, '69.88'
FROM facilities WHERE admin_sym = '1-41630-00021'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.88',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00021', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00021');

-- Update existing: ï¿½Ï¿ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00019' WHERE name LIKE '%ï¿½Ï¿ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00019', 2024, '79.39'
FROM facilities WHERE admin_sym = '1-41630-00019'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.39',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ï¿ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00019', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00019');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½×¸ï¿½ ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00016' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00016', 2024, '76.24'
FROM facilities WHERE admin_sym = '1-41630-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.24',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½×¸ï¿½ ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00016', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00016');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00368' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00368', 2024, '79.46'
FROM facilities WHERE admin_sym = '1-41630-00368'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.46',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00368', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00368');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ï¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00283' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00283', 2024, '63.89'
FROM facilities WHERE admin_sym = '1-41630-00283'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.89',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ï¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00283', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00283');

-- Update existing: Å«ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00358' WHERE name LIKE '%Å«ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00358', 2024, '76.16'
FROM facilities WHERE admin_sym = '1-41630-00358'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.16',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Å«ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00358', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00358');

-- Update existing: ï¿½ì¸®ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00084' WHERE name LIKE '%ï¿½ì¸®ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00084', 2024, '58.02'
FROM facilities WHERE admin_sym = '1-41630-00084'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.02',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ì¸®ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00084', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00084');

-- Update existing: ï¿½àº¹ï¿½Ñ³ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00181' WHERE name LIKE '%ï¿½àº¹ï¿½Ñ%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00181', 2024, '87.2'
FROM facilities WHERE admin_sym = '1-41630-00181'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.2',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½Ñ³ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00181', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00181');

-- Update existing: È¿ï¿½Ñ¸ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00254' WHERE name LIKE '%È¿ï¿½Ñ¸ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00254', 2024, '81.59'
FROM facilities WHERE admin_sym = '1-41630-00254'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.59',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½Ñ¸ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00254', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00254');

-- Update existing: È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00294' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00294', 2024, '64.55'
FROM facilities WHERE admin_sym = '1-41630-00294'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00294', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00294');

-- Update existing: ï¿½Ö¿ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00199' WHERE name LIKE '%ï¿½Ö¿ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00199', 2024, '59.02'
FROM facilities WHERE admin_sym = '1-41630-00199'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.02',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ö¿ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00199', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00199');

-- Update existing: Ãµï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00149' WHERE name LIKE '%Ãµï¿½ï¿½È¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00149', 2024, '70.42'
FROM facilities WHERE admin_sym = '1-41630-00149'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.42',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ãµï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00149', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00149');

-- Update existing: ï¿½ï¿½ï¿½Ä½Ç¹ï¿½È¨ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00052' WHERE name LIKE '%ï¿½ï¿½ï¿½Ä%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00052', 2024, '71.91'
FROM facilities WHERE admin_sym = '1-41630-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.91',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ä½Ç¹ï¿½È¨ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00052', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00052');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00327' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00327', 2024, '86.05'
FROM facilities WHERE admin_sym = '1-41630-00327'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00327', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00327');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ ï¿½ï¿½ï¿½Ö¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00137' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00137', 2024, '82.3'
FROM facilities WHERE admin_sym = '1-41630-00137'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ ï¿½ï¿½ï¿½Ö¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00137', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00137');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00338' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00338', 2024, '65.31'
FROM facilities WHERE admin_sym = '1-41630-00338'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.31',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00338', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00338');

-- Update existing: VIPï¿½ï¿½ï¿½Ö¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00313' WHERE name LIKE '%VIPï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00313', 2024, '64.59'
FROM facilities WHERE admin_sym = '1-41630-00313'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.59',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'VIPï¿½ï¿½ï¿½Ö¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00313', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00313');

-- Update existing: ï¿½×·ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41630-00251' WHERE name LIKE '%ï¿½×·ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00251', 2024, '88.34'
FROM facilities WHERE admin_sym = '1-41630-00251'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.34',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½×·ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41630-00251', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41630-00251');

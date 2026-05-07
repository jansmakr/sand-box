-- Batch 199 of 226
-- Processing 100 facilities

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00971' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00971', 2024, '87.82'
FROM facilities WHERE admin_sym = '1-41190-00971'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.82',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00971', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00971');

-- Update existing: ï¿½ï¿½Ãµï¿½ï¿½ï¿½Î½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00237' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00237', 2024, '58.41'
FROM facilities WHERE admin_sym = '1-41190-00237'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.41',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½Î½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00237', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00237');

-- Update existing: ï¿½ï¿½ï¿½È½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00831' WHERE name LIKE '%ï¿½ï¿½ï¿½È%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00831', 2024, '77.02'
FROM facilities WHERE admin_sym = '1-41190-00831'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.02',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½È½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00831', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00831');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00567' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00567', 2024, '74.66'
FROM facilities WHERE admin_sym = '1-41190-00567'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.66',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00567', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00567');

-- Update existing: ï¿½Ê½ï¿½È¨ï¿½ï¿½ï¿½Í¶ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00437' WHERE name LIKE '%ï¿½Ê½ï¿½È¨%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00437', 2024, '87.4'
FROM facilities WHERE admin_sym = '1-41190-00437'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.4',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ê½ï¿½È¨ï¿½ï¿½ï¿½Í¶ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00437', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00437');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00670' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00670', 2024, '83.52'
FROM facilities WHERE admin_sym = '1-41190-00670'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.52',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00670', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00670');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½3È£
UPDATE facilities SET admin_sym = '1-41190-00718' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00718', 2024, '65.76'
FROM facilities WHERE admin_sym = '1-41190-00718'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.76',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½3È£', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00718', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00718');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00786' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00786', 2024, '89.08'
FROM facilities WHERE admin_sym = '1-41190-00786'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.08',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00786', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00786');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00823' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00823', 2024, '62.68'
FROM facilities WHERE admin_sym = '1-41190-00823'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.68',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00823', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00823');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ö¿ï¿½ï¿½ï¿½ 2È£ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00922' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00922', 2024, '66.13'
FROM facilities WHERE admin_sym = '1-41190-00922'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.13',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ö¿ï¿½ï¿½ï¿½ 2È£ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00922', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00922');

-- Update existing: ï¿½Ãºï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-01043' WHERE name LIKE '%ï¿½Ãºï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-01043', 2024, '84.58'
FROM facilities WHERE admin_sym = '1-41190-01043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.58',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ãºï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-01043', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-01043');

-- Update existing: ï¿½Øµå¸²ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00875' WHERE name LIKE '%ï¿½Øµå¸²ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00875', 2024, '87.98'
FROM facilities WHERE admin_sym = '1-41190-00875'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.98',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Øµå¸²ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00875', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00875');

-- Update existing: ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00629' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00629', 2024, '61.67'
FROM facilities WHERE admin_sym = '1-41190-00629'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.67',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00629', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00629');

-- Update existing: Ä«ï¿½ï¿½ï¿½Ì¼Ç¿ï¿½ï¿½ï¿½ ï¿½ßµï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00633' WHERE name LIKE '%Ä«ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00633', 2024, '69.38'
FROM facilities WHERE admin_sym = '1-41190-00633'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.38',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ä«ï¿½ï¿½ï¿½Ì¼Ç¿ï¿½ï¿½ï¿½ ï¿½ßµï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00633', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00633');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00920' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00920', 2024, '81.5'
FROM facilities WHERE admin_sym = '1-41190-00920'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00920', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00920');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-01046' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-01046', 2024, '83.62'
FROM facilities WHERE admin_sym = '1-41190-01046'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.62',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-01046', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-01046');

-- Update existing: È¿Ã¤ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00900' WHERE name LIKE '%È¿Ã¤ï¿½ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00900', 2024, '93.1'
FROM facilities WHERE admin_sym = '1-41190-00900'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿Ã¤ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00900', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00900');

-- Update existing: ï¿½ï¿½ï¿½Ì·ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½(1È£)
UPDATE facilities SET admin_sym = '1-41190-00963' WHERE name LIKE '%ï¿½ï¿½ï¿½Ì%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00963', 2024, '73.27'
FROM facilities WHERE admin_sym = '1-41190-00963'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.27',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ì·ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½(1È£)', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00963', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00963');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00936' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00936', 2024, '72.84'
FROM facilities WHERE admin_sym = '1-41190-00936'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.84',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00936', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00936');

-- Update existing: ï¿½ï¿½ï¿½Ã¤ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00780' WHERE name LIKE '%ï¿½ï¿½ï¿½Ã%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00780', 2024, '78.99'
FROM facilities WHERE admin_sym = '1-41190-00780'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.99',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ã¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00780', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00780');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00783' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00783', 2024, '76.69'
FROM facilities WHERE admin_sym = '1-41190-00783'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.69',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00783', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00783');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-01076' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-01076', 2024, '85.6'
FROM facilities WHERE admin_sym = '1-41190-01076'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-01076', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-01076');

-- Update existing: ï¿½Ï´Ãºï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00627' WHERE name LIKE '%ï¿½Ï´Ãºï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00627', 2024, '68.36'
FROM facilities WHERE admin_sym = '1-41190-00627'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.36',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ï´Ãºï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00627', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00627');

-- Update existing: ï¿½ï¼ºï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00547' WHERE name LIKE '%ï¿½ï¼ºï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00547', 2024, '81.39'
FROM facilities WHERE admin_sym = '1-41190-00547'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.39',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¼ºï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00547', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00547');

-- Update existing: ï¿½ï¼ºï¿½ï¿½ï¿½ï¿½2È£ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00641' WHERE name LIKE '%ï¿½ï¼ºï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00641', 2024, '84.13'
FROM facilities WHERE admin_sym = '1-41190-00641'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.13',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¼ºï¿½ï¿½ï¿½ï¿½2È£ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00641', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00641');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ö¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00921' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00921', 2024, '73.76'
FROM facilities WHERE admin_sym = '1-41190-00921'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.76',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ö¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00921', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00921');

-- Update existing: ï¿½ì¸®ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00743' WHERE name LIKE '%ï¿½ì¸®ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00743', 2024, '88.27'
FROM facilities WHERE admin_sym = '1-41190-00743'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.27',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ì¸®ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00743', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00743');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00824' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00824', 2024, '71.97'
FROM facilities WHERE admin_sym = '1-41190-00824'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.97',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00824', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00824');

-- Update existing: ï¿½ï¿½ï¿½É»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00844' WHERE name LIKE '%ï¿½ï¿½ï¿½É%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00844', 2024, '64.14'
FROM facilities WHERE admin_sym = '1-41190-00844'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.14',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½É»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00844', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00844');

-- Update existing: ï¿½ï¿½Ãµï¿½ï¿½ï¿½Ï¿ï¿½ï¿½ï¿½4È£
UPDATE facilities SET admin_sym = '1-41190-00555' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00555', 2024, '81.87'
FROM facilities WHERE admin_sym = '1-41190-00555'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.87',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½Ï¿ï¿½ï¿½ï¿½4È£', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00555', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00555');

-- Update existing: ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00326' WHERE name LIKE '%ï¿½ï¿½Î¿ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00326', 2024, '70.14'
FROM facilities WHERE admin_sym = '1-41190-00326'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.14',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00326', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00326');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00253' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00253', 2024, '76.43'
FROM facilities WHERE admin_sym = '1-41190-00253'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.43',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00253', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00253');

-- Update existing: Ä«ï¿½ï¿½ï¿½Ì¼Ç¿ï¿½ï¿½ï¿½(ï¿½ï¿½Ãµï¿½ï¿½)
UPDATE facilities SET admin_sym = '1-41190-00810' WHERE name LIKE '%Ä«ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00810', 2024, '82.55'
FROM facilities WHERE admin_sym = '1-41190-00810'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ä«ï¿½ï¿½ï¿½Ì¼Ç¿ï¿½ï¿½ï¿½(ï¿½ï¿½Ãµï¿½ï¿½)', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00810', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00810');

-- Update existing: ï¿½Ý¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-01065' WHERE name LIKE '%ï¿½Ý¼ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-01065', 2024, '84.02'
FROM facilities WHERE admin_sym = '1-41190-01065'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.02',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ý¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-01065', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-01065');

-- Update existing: ï¿½Ò»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00663' WHERE name LIKE '%ï¿½Ò»ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00663', 2024, '75.18'
FROM facilities WHERE admin_sym = '1-41190-00663'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.18',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ò»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00663', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00663');

-- Update existing: È¿ï¿½å¸²ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-01017' WHERE name LIKE '%È¿ï¿½å¸²ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-01017', 2024, '90.7'
FROM facilities WHERE admin_sym = '1-41190-01017'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.7',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½å¸²ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-01017', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-01017');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00636' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00636', 2024, '91.4'
FROM facilities WHERE admin_sym = '1-41190-00636'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.4',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00636', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00636');

-- Update existing: È¿ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00537' WHERE name LIKE '%È¿ï¿½Î¿ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00537', 2024, '77.63'
FROM facilities WHERE admin_sym = '1-41190-00537'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.63',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00537', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00537');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00359' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00359', 2024, '90.51'
FROM facilities WHERE admin_sym = '1-41190-00359'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.51',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00359', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00359');

-- Update existing: ï¿½ï¿½ï¿½È³ï¿½ï¿½Î¿ï¿½ï¿½ï¿½2È£
UPDATE facilities SET admin_sym = '1-41190-00797' WHERE name LIKE '%ï¿½ï¿½ï¿½È%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00797', 2024, '65.86'
FROM facilities WHERE admin_sym = '1-41190-00797'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.86',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½È³ï¿½ï¿½Î¿ï¿½ï¿½ï¿½2È£', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00797', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00797');

-- Update existing: È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½2È£ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-01024' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-01024', 2024, '72.25'
FROM facilities WHERE admin_sym = '1-41190-01024'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.25',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½2È£ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-01024', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-01024');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00891' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00891', 2024, '82.53'
FROM facilities WHERE admin_sym = '1-41190-00891'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.53',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00891', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00891');

-- Update existing: ï¿½Ò»ï¿½ï¿½Ñ¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½2È£
UPDATE facilities SET admin_sym = '1-41190-00739' WHERE name LIKE '%ï¿½Ò»ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00739', 2024, '75.6'
FROM facilities WHERE admin_sym = '1-41190-00739'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ò»ï¿½ï¿½Ñ¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½2È£', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00739', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00739');

-- Update existing: ï¿½óµ¿¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-01086' WHERE name LIKE '%ï¿½óµ¿¿ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-01086', 2024, '61.53'
FROM facilities WHERE admin_sym = '1-41190-01086'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.53',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½óµ¿¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-01086', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-01086');

-- Update existing: ï¿½ï¿½ï¿½Ù¿ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-01087' WHERE name LIKE '%ï¿½ï¿½ï¿½Ù%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-01087', 2024, '66.01'
FROM facilities WHERE admin_sym = '1-41190-01087'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.01',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ù¿ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-01087', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-01087');

-- Update existing: ï¿½ï¿½Ã´Â»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-01033' WHERE name LIKE '%ï¿½ï¿½Ã´Â»%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-01033', 2024, '76.66'
FROM facilities WHERE admin_sym = '1-41190-01033'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.66',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ã´Â»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-01033', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-01033');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00767' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00767', 2024, '82.22'
FROM facilities WHERE admin_sym = '1-41190-00767'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.22',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00767', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00767');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½2È£
UPDATE facilities SET admin_sym = '1-41190-00998' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00998', 2024, '82.28'
FROM facilities WHERE admin_sym = '1-41190-00998'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.28',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½2È£', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00998', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00998');

-- Update existing: ï¿½ï¿½ï¿½Ö¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00795' WHERE name LIKE '%ï¿½ï¿½ï¿½Ö%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00795', 2024, '82.41'
FROM facilities WHERE admin_sym = '1-41190-00795'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.41',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ö¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00795', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00795');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-01019' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-01019', 2024, '70.21'
FROM facilities WHERE admin_sym = '1-41190-01019'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.21',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-01019', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-01019');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½È¨ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00669' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00669', 2024, '75.37'
FROM facilities WHERE admin_sym = '1-41190-00669'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.37',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½È¨ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00669', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00669');

-- Update existing: ï¿½Ï¸ï¿½Ï¿ï¿½ï¿½ï¿½1È£
UPDATE facilities SET admin_sym = '1-41190-00593' WHERE name LIKE '%ï¿½Ï¸ï¿½Ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00593', 2024, '69.67'
FROM facilities WHERE admin_sym = '1-41190-00593'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.67',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ï¸ï¿½Ï¿ï¿½ï¿½ï¿½1È£', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00593', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00593');

-- Update existing: ï¿½Ï¸ï¿½Ï¿ï¿½ï¿½ï¿½2È£
UPDATE facilities SET admin_sym = '1-41190-00594' WHERE name LIKE '%ï¿½Ï¸ï¿½Ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00594', 2024, '71.4'
FROM facilities WHERE admin_sym = '1-41190-00594'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.4',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ï¸ï¿½Ï¿ï¿½ï¿½ï¿½2È£', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00594', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00594');

-- Update existing: ï¿½àº¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00707' WHERE name LIKE '%ï¿½àº¹ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00707', 2024, '71.58'
FROM facilities WHERE admin_sym = '1-41190-00707'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.58',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00707', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00707');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½ 2È£
UPDATE facilities SET admin_sym = '1-41190-00229' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00229', 2024, '65.87'
FROM facilities WHERE admin_sym = '1-41190-00229'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.87',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½ 2È£', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00229', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00229');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½ 3È£
UPDATE facilities SET admin_sym = '1-41190-00230' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00230', 2024, '63.41'
FROM facilities WHERE admin_sym = '1-41190-00230'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.41',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½ 3È£', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00230', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00230');

-- Update existing: ï¿½Ì·ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00654' WHERE name LIKE '%ï¿½Ì·ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00654', 2024, '59.52'
FROM facilities WHERE admin_sym = '1-41190-00654'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.52',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ì·ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00654', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00654');

-- Update existing: ï¿½Ñ»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-01001' WHERE name LIKE '%ï¿½Ñ»ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-01001', 2024, '41.05'
FROM facilities WHERE admin_sym = '1-41190-01001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '41.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-01001', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-01001');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00954' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00954', 2024, '82.06'
FROM facilities WHERE admin_sym = '1-41190-00954'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.06',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00954', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00954');

-- Update existing: ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½1È£
UPDATE facilities SET admin_sym = '1-41190-01093' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-01093', 2024, '62.03'
FROM facilities WHERE admin_sym = '1-41190-01093'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.03',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½1È£', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-01093', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-01093');

-- Update existing: ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½2È£
UPDATE facilities SET admin_sym = '1-41190-01094' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-01094', 2024, '59.61'
FROM facilities WHERE admin_sym = '1-41190-01094'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.61',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½2È£', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-01094', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-01094');

-- Update existing: ï¿½Ñ·Î½ï¿½ 1È£ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00123' WHERE name LIKE '%ï¿½Ñ·Î½ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00123', 2024, '74.57'
FROM facilities WHERE admin_sym = '1-41190-00123'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.57',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ·Î½ï¿½ 1È£ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00123', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00123');

-- Update existing: ï¿½Ñ·Î½ï¿½ 2È£ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41190-00124' WHERE name LIKE '%ï¿½Ñ·Î½ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00124', 2024, '69.14'
FROM facilities WHERE admin_sym = '1-41190-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.14',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ·Î½ï¿½ 2È£ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00124', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00124');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½1È£
UPDATE facilities SET admin_sym = '1-41190-00997' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41190-00997', 2024, '91.45'
FROM facilities WHERE admin_sym = '1-41190-00997'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.45',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½1È£', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41190-00997', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41190-00997');

-- Update existing: ï¿½Þµï¿½ï¿½É¾ï¿½
UPDATE facilities SET admin_sym = '1-41130-00345' WHERE name LIKE '%ï¿½Þµï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00345', 2024, '77.51'
FROM facilities WHERE admin_sym = '1-41130-00345'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.51',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Þµï¿½ï¿½É¾ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00345', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00345');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00512' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00512', 2024, '85.35'
FROM facilities WHERE admin_sym = '1-41130-00512'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00512', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00512');

-- Update existing: ï¿½Ð´ï¿½Þµï¿½ï¿½É¾ï¿½
UPDATE facilities SET admin_sym = '1-41130-00374' WHERE name LIKE '%ï¿½Ð´ï¿½Þµ%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00374', 2024, '78.1'
FROM facilities WHERE admin_sym = '1-41130-00374'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ð´ï¿½Þµï¿½ï¿½É¾ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00374', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00374');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00049' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00049', 2024, '89.68'
FROM facilities WHERE admin_sym = '1-41130-00049'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.68',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00049', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00049');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00329' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00329', 2024, '68.6'
FROM facilities WHERE admin_sym = '1-41130-00329'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00329', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00329');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00293' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00293', 2024, '97.05'
FROM facilities WHERE admin_sym = '1-41130-00293'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00293', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00293');

-- Update existing: ï¿½ï¿½ï¿½Ú¸Þµï¿½ï¿½É¾ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00493' WHERE name LIKE '%ï¿½ï¿½ï¿½Ú%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00493', 2024, '88.63'
FROM facilities WHERE admin_sym = '1-41130-00493'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.63',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ú¸Þµï¿½ï¿½É¾ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00493', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00493');

-- Update existing: YWCA ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00231' WHERE name LIKE '%YWCA ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00231', 2024, '85.85'
FROM facilities WHERE admin_sym = '1-41130-00231'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'YWCA ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00231', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00231');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Õ¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00523' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00523', 2024, '59.14'
FROM facilities WHERE admin_sym = '1-41130-00523'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.14',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Õ¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00523', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00523');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ 2ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00485' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00485', 2024, '81.79'
FROM facilities WHERE admin_sym = '1-41130-00485'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.79',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ 2ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00485', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00485');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ 1ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00484' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00484', 2024, '91.53'
FROM facilities WHERE admin_sym = '1-41130-00484'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.53',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ 1ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00484', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00484');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ 2È£ (ï¿½Ð´ï¿½ï¿½ï¿½)
UPDATE facilities SET admin_sym = '1-41130-00213' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00213', 2024, '73.29'
FROM facilities WHERE admin_sym = '1-41130-00213'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.29',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ 2È£ (ï¿½Ð´ï¿½ï¿½ï¿½)', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00213', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00213');

-- Update existing: ï¿½Ð´ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ç¹ï¿½È¨(1È£ï¿½ï¿½)
UPDATE facilities SET admin_sym = '1-41130-00138' WHERE name LIKE '%ï¿½Ð´ï¿½ ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00138', 2024, '77.57'
FROM facilities WHERE admin_sym = '1-41130-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.57',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ð´ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ç¹ï¿½È¨(1È£ï¿½ï¿½)', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00138', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00138');

-- Update existing: ï¿½Ð´ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ç¹ï¿½È¨(2È£ï¿½ï¿½)
UPDATE facilities SET admin_sym = '1-41130-00139' WHERE name LIKE '%ï¿½Ð´ï¿½ ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00139', 2024, '79.74'
FROM facilities WHERE admin_sym = '1-41130-00139'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.74',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ð´ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ç¹ï¿½È¨(2È£ï¿½ï¿½)', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00139', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00139');

-- Update existing: ï¿½Ð´ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ç¹ï¿½È¨(3È£ï¿½ï¿½)
UPDATE facilities SET admin_sym = '1-41130-00141' WHERE name LIKE '%ï¿½Ð´ï¿½ ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00141', 2024, '67.55'
FROM facilities WHERE admin_sym = '1-41130-00141'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ð´ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ç¹ï¿½È¨(3È£ï¿½ï¿½)', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00141', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00141');

-- Update existing: ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç±ï¿½
UPDATE facilities SET admin_sym = '1-41130-00007' WHERE name LIKE '%ï¿½Ç¹ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00007', 2024, '92.35'
FROM facilities WHERE admin_sym = '1-41130-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç±ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00007', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00007');

-- Update existing: ï¿½Îµï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00458' WHERE name LIKE '%ï¿½Îµï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00458', 2024, '73.35'
FROM facilities WHERE admin_sym = '1-41130-00458'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Îµï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00458', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00458');

-- Update existing: ï¿½ï¿½Ä«ï¿½Ìºï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00500' WHERE name LIKE '%ï¿½ï¿½Ä«ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00500', 2024, '81.85'
FROM facilities WHERE admin_sym = '1-41130-00500'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ä«ï¿½Ìºï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00500', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00500');

-- Update existing: ï¿½Ú±ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00024' WHERE name LIKE '%ï¿½Ú±ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00024', 2024, '77.8'
FROM facilities WHERE admin_sym = '1-41130-00024'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ú±ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00024', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00024');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00284' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00284', 2024, '94.85'
FROM facilities WHERE admin_sym = '1-41130-00284'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00284', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00284');

-- Update existing: ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ò±Ô¸ï¿½ï¿½ï¿½Ã¼ï¿½
UPDATE facilities SET admin_sym = '1-41130-00009' WHERE name LIKE '%ï¿½Îºï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00009', 2024, '70.08'
FROM facilities WHERE admin_sym = '1-41130-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.08',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ò±Ô¸ï¿½ï¿½ï¿½Ã¼ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00009', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00009');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½î¸£ï¿½Å¿ï¿½ç¼¾ï¿½ï¿½1È£ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00381' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00381', 2024, '81.01'
FROM facilities WHERE admin_sym = '1-41130-00381'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.01',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½î¸£ï¿½Å¿ï¿½ç¼¾ï¿½ï¿½1È£ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00381', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00381');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½î¸£ï¿½Å¿ï¿½ç¼¾ï¿½ï¿½2È£ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00382' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00382', 2024, '79.05'
FROM facilities WHERE admin_sym = '1-41130-00382'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½î¸£ï¿½Å¿ï¿½ç¼¾ï¿½ï¿½2È£ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00382', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00382');

-- Update existing: ï¿½ï¿½Çªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00300' WHERE name LIKE '%ï¿½ï¿½Çªï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00300', 2024, '87.1'
FROM facilities WHERE admin_sym = '1-41130-00300'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Çªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00300', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00300');

-- Update existing: È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00585' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00585', 2024, '76.35'
FROM facilities WHERE admin_sym = '1-41130-00585'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00585', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00585');

-- Update existing: ï¿½ï¿½È¿ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00123' WHERE name LIKE '%ï¿½ï¿½È¿ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00123', 2024, '72.6'
FROM facilities WHERE admin_sym = '1-41130-00123'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½È¿ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00123', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00123');

-- Update existing: ï¿½Äµå¸¶ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00633' WHERE name LIKE '%ï¿½Äµå¸¶ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00633', 2024, '79.28'
FROM facilities WHERE admin_sym = '1-41130-00633'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.28',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Äµå¸¶ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00633', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00633');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Æ®ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00481' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00481', 2024, '85.85'
FROM facilities WHERE admin_sym = '1-41130-00481'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Æ®ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00481', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00481');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ã³ï¿½ï¿½Îºï¿½ï¿½Ç¼ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00234' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00234', 2024, '97.55'
FROM facilities WHERE admin_sym = '1-41130-00234'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ã³ï¿½ï¿½Îºï¿½ï¿½Ç¼ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼', 'ï¿½ï¿½âµµ', '1-41130-00234', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00234');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00492' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00492', 2024, '85.42'
FROM facilities WHERE admin_sym = '1-41130-00492'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.42',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00492', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00492');

-- Update existing: ï¿½Ã¿ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00051' WHERE name LIKE '%ï¿½Ã¿ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00051', 2024, '86.23'
FROM facilities WHERE admin_sym = '1-41130-00051'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.23',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ã¿ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00051', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00051');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41130-00272' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00272', 2024, '84.53'
FROM facilities WHERE admin_sym = '1-41130-00272'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.53',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00272', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00272');

-- Update existing: ï¿½Ñ¸ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½ï¿½ 2È£
UPDATE facilities SET admin_sym = '1-41130-00312' WHERE name LIKE '%ï¿½Ñ¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41130-00312', 2024, '69.58'
FROM facilities WHERE admin_sym = '1-41130-00312'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.58',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ¸ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½ï¿½ 2È£', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41130-00312', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41130-00312');

-- Update existing: ï¿½Ãºï¿½ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41110-00253' WHERE name LIKE '%ï¿½Ãºï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00253', 2024, '93.6'
FROM facilities WHERE admin_sym = '1-41110-00253'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ãºï¿½ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41110-00253', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41110-00253');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ß¾ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41110-00128' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00128', 2024, '67.1'
FROM facilities WHERE admin_sym = '1-41110-00128'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ß¾ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41110-00128', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41110-00128');

-- Update existing: ï¿½Ù»ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41110-00244' WHERE name LIKE '%ï¿½Ù»ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00244', 2024, '77.3'
FROM facilities WHERE admin_sym = '1-41110-00244'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ù»ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41110-00244', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41110-00244');

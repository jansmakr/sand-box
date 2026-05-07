-- Batch 194 of 226
-- Processing 100 facilities

-- Update existing: ï¿½ï¿½ï¿½Â»ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30170-00291' WHERE name LIKE '%ï¿½ï¿½ï¿½Â%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00291', 2024, '66.83'
FROM facilities WHERE admin_sym = '1-30170-00291'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.83',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Â»ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30170-00291', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30170-00291');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½Å¼ï¿½Å¸
UPDATE facilities SET admin_sym = '1-30200-00014' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00014', 2024, '87.6'
FROM facilities WHERE admin_sym = '1-30200-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½Å¼ï¿½Å¸', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30200-00014', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30200-00014');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Æ¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30200-00124' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00124', 2024, '96.35'
FROM facilities WHERE admin_sym = '1-30200-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Æ¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30200-00124', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30200-00124');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ã°ï¿½ï¿½ï¿½ ï¿½Ç¹ï¿½È¨ 1È£ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30200-00078' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00078', 2024, '79.8'
FROM facilities WHERE admin_sym = '1-30200-00078'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ã°ï¿½ï¿½ï¿½ ï¿½Ç¹ï¿½È¨ 1È£ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30200-00078', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30200-00078');

-- Update existing: ï¿½Ñ¼Ö¿ï¿½ï¿½Ú·ï¿½ï¿½ï¿½(ï¿½ï¿½) ï¿½Û¸ï¿½ï¿½Ç¹ï¿½ï¿½É¾î¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30200-00327' WHERE name LIKE '%ï¿½Ñ¼Ö¿ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00327', 2024, '72.85'
FROM facilities WHERE admin_sym = '1-30200-00327'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ¼Ö¿ï¿½ï¿½Ú·ï¿½ï¿½ï¿½(ï¿½ï¿½) ï¿½Û¸ï¿½ï¿½Ç¹ï¿½ï¿½É¾î¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30200-00327', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30200-00327');

-- Update existing: ï¿½ç³ªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30200-00369' WHERE name LIKE '%ï¿½ç³ªï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00369', 2024, '70.99'
FROM facilities WHERE admin_sym = '1-30200-00369'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.99',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ç³ªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30200-00369', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30200-00369');

-- Update existing: ï¿½ï¿½ï¿½î¸¶ï¿½ï¿½ï¿½Ý¼ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30200-00344' WHERE name LIKE '%ï¿½ï¿½ï¿½î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00344', 2024, '85.8'
FROM facilities WHERE admin_sym = '1-30200-00344'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½î¸¶ï¿½ï¿½ï¿½Ý¼ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30200-00344', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30200-00344');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30200-00090' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00090', 2024, '88.09'
FROM facilities WHERE admin_sym = '1-30200-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.09',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30200-00090', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30200-00090');

-- Update existing: ï¿½Ã·ï¿½Æ¼ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30200-00145' WHERE name LIKE '%ï¿½Ã·ï¿½Æ¼%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00145', 2024, '85.01'
FROM facilities WHERE admin_sym = '1-30200-00145'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.01',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ã·ï¿½Æ¼ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30200-00145', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30200-00145');

-- Update existing: ï¿½Ñ¿ï¿½Å¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30200-00115' WHERE name LIKE '%ï¿½Ñ¿ï¿½Å¸%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00115', 2024, '95.13'
FROM facilities WHERE admin_sym = '1-30200-00115'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.13',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ¿ï¿½Å¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30200-00115', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30200-00115');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30200-00088' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00088', 2024, '93.44'
FROM facilities WHERE admin_sym = '1-30200-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.44',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30200-00088', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30200-00088');

-- Update existing: (ï¿½ï¿½ï¿½ï¿½)ï¿½Ã·ï¿½Æ¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30200-00322' WHERE name LIKE '%(ï¿½ï¿½ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00322', 2024, '97.35'
FROM facilities WHERE admin_sym = '1-30200-00322'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', '(ï¿½ï¿½ï¿½ï¿½)ï¿½Ã·ï¿½Æ¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30200-00322', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30200-00322');

-- Update existing: ï¿½Ï´Ãºï¿½ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30200-00362' WHERE name LIKE '%ï¿½Ï´Ãºï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00362', 2024, '79.5'
FROM facilities WHERE admin_sym = '1-30200-00362'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ï´Ãºï¿½ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30200-00362', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30200-00362');

-- Update existing: ï¿½Ï´Ã»ï¿½ï¿½2 ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30200-00350' WHERE name LIKE '%ï¿½Ï´Ã»ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00350', 2024, '38.29'
FROM facilities WHERE admin_sym = '1-30200-00350'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '38.29',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ï´Ã»ï¿½ï¿½2 ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30200-00350', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30200-00350');

-- Update existing: ï¿½Ï´Ã»ï¿½ï¿½ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30200-00349' WHERE name LIKE '%ï¿½Ï´Ã»ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00349', 2024, '57.77'
FROM facilities WHERE admin_sym = '1-30200-00349'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.77',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ï´Ã»ï¿½ï¿½ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30200-00349', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30200-00349');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30140-00190' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00190', 2024, '83.56'
FROM facilities WHERE admin_sym = '1-30140-00190'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.56',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30140-00190', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30140-00190');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ì¿ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30140-00207' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00207', 2024, '67.85'
FROM facilities WHERE admin_sym = '1-30140-00207'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ì¿ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30140-00207', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30140-00207');

-- Update existing: ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30140-00003' WHERE name LIKE '%ï¿½Ç¹ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00003', 2024, '98.5'
FROM facilities WHERE admin_sym = '1-30140-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30140-00003', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30140-00003');

-- Update existing: ï¿½Ñ»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30140-00006' WHERE name LIKE '%ï¿½Ñ»ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00006', 2024, '80.56'
FROM facilities WHERE admin_sym = '1-30140-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.56',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30140-00006', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30140-00006');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½É¾î¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30140-00224' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00224', 2024, '89.3'
FROM facilities WHERE admin_sym = '1-30140-00224'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½É¾î¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30140-00224', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30140-00224');

-- Update existing: ï¿½Ã»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30140-00246' WHERE name LIKE '%ï¿½Ã»ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00246', 2024, '86.6'
FROM facilities WHERE admin_sym = '1-30140-00246'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ã»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30140-00246', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30140-00246');

-- Update existing: ï¿½ï¿½ï¿½Ï¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30140-00414' WHERE name LIKE '%ï¿½ï¿½ï¿½Ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00414', 2024, '83.35'
FROM facilities WHERE admin_sym = '1-30140-00414'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ï¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30140-00414', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30140-00414');

-- Update existing: ï¿½ï¿½È­ï¿½ï¿½ï¿½ï¿½ï¿½Ô¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30140-00294' WHERE name LIKE '%ï¿½ï¿½È­ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00294', 2024, '89.85'
FROM facilities WHERE admin_sym = '1-30140-00294'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½È­ï¿½ï¿½ï¿½ï¿½ï¿½Ô¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30140-00294', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30140-00294');

-- Update existing: Çªï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30140-00052' WHERE name LIKE '%Çªï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00052', 2024, '95.35'
FROM facilities WHERE admin_sym = '1-30140-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Çªï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30140-00052', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30140-00052');

-- Update existing: ï¿½àº¹ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30140-00241' WHERE name LIKE '%ï¿½àº¹ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00241', 2024, '76.35'
FROM facilities WHERE admin_sym = '1-30140-00241'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30140-00241', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30140-00241');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç´ï¿½ï¿½Ð±ï¿½ï¿½Ì¾È¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30140-00107' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00107', 2024, '83.1'
FROM facilities WHERE admin_sym = '1-30140-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç´ï¿½ï¿½Ð±ï¿½ï¿½Ì¾È¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30140-00107', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30140-00107');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30140-00236' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00236', 2024, '56.8'
FROM facilities WHERE admin_sym = '1-30140-00236'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30140-00236', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30140-00236');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ï¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30140-00274' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00274', 2024, '77.04'
FROM facilities WHERE admin_sym = '1-30140-00274'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.04',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ï¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30140-00274', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30140-00274');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½È¨
UPDATE facilities SET admin_sym = '1-30140-00116' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00116', 2024, '64.97'
FROM facilities WHERE admin_sym = '1-30140-00116'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.97',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30140-00116', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30140-00116');

-- Update existing: ï¿½àº¹ï¿½Ñ¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30140-00445' WHERE name LIKE '%ï¿½àº¹ï¿½Ñ%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00445', 2024, '91.61'
FROM facilities WHERE admin_sym = '1-30140-00445'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.61',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½Ñ¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30140-00445', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30140-00445');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30140-00450' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00450', 2024, '50.02'
FROM facilities WHERE admin_sym = '1-30140-00450'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.02',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30140-00450', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30140-00450');

-- Update existing: ï¿½Ã±ï¿½Ý°ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30140-00394' WHERE name LIKE '%ï¿½Ã±ï¿½Ý°%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00394', 2024, '71.55'
FROM facilities WHERE admin_sym = '1-30140-00394'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ã±ï¿½Ý°ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30140-00394', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30140-00394');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-30140-00292' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00292', 2024, '75.52'
FROM facilities WHERE admin_sym = '1-30140-00292'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.52',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-30140-00292', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-30140-00292');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31140-00177' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31140-00177', 2024, '72.04'
FROM facilities WHERE admin_sym = '1-31140-00177'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.04',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31140-00177', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31140-00177');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31140-00147' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31140-00147', 2024, '96.85'
FROM facilities WHERE admin_sym = '1-31140-00147'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31140-00147', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31140-00147');

-- Update existing: ï¿½ï¿½ï¿½Â³ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31140-00063' WHERE name LIKE '%ï¿½ï¿½ï¿½Â%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31140-00063', 2024, '81.6'
FROM facilities WHERE admin_sym = '1-31140-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Â³ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31140-00063', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31140-00063');

-- Update existing: ï¿½ï¿½Æ¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31140-00155' WHERE name LIKE '%ï¿½ï¿½Æ¼ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31140-00155', 2024, '84.39'
FROM facilities WHERE admin_sym = '1-31140-00155'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.39',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Æ¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31140-00155', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31140-00155');

-- Update existing: ï¿½ï¿½ï¿½Ä³ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31140-00102' WHERE name LIKE '%ï¿½ï¿½ï¿½Ä%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31140-00102', 2024, '80.99'
FROM facilities WHERE admin_sym = '1-31140-00102'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.99',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ä³ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31140-00102', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31140-00102');

-- Update existing: ï¿½Ù¿ï¿½ ï¿½Ç¹ï¿½È¨
UPDATE facilities SET admin_sym = '1-31140-00135' WHERE name LIKE '%ï¿½Ù¿ï¿½ ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31140-00135', 2024, '81.65'
FROM facilities WHERE admin_sym = '1-31140-00135'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.65',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ù¿ï¿½ ï¿½Ç¹ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31140-00135', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31140-00135');

-- Update existing: ï¿½ï¿½êµ¿ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31170-00038' WHERE name LIKE '%ï¿½ï¿½êµ¿ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31170-00038', 2024, '85.1'
FROM facilities WHERE admin_sym = '1-31170-00038'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½êµ¿ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31170-00038', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31170-00038');

-- Update existing: ï¿½Ùºï¿½Ù³ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31170-00004' WHERE name LIKE '%ï¿½Ùºï¿½Ù³%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31170-00004', 2024, '94.35'
FROM facilities WHERE admin_sym = '1-31170-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ùºï¿½Ù³ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31170-00004', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31170-00004');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½È¨
UPDATE facilities SET admin_sym = '1-31170-00032' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31170-00032', 2024, '76.81'
FROM facilities WHERE admin_sym = '1-31170-00032'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.81',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31170-00032', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31170-00032');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31200-00001' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31200-00001', 2024, '91.55'
FROM facilities WHERE admin_sym = '1-31200-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31200-00001', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31200-00001');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Õºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31200-00014' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31200-00014', 2024, '93.8'
FROM facilities WHERE admin_sym = '1-31200-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Õºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31200-00014', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31200-00014');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31200-00077' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31200-00077', 2024, '94.6'
FROM facilities WHERE admin_sym = '1-31200-00077'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31200-00077', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31200-00077');

-- Update existing: ï¿½ï¿½È­ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31200-00045' WHERE name LIKE '%ï¿½ï¿½È­ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31200-00045', 2024, '69.13'
FROM facilities WHERE admin_sym = '1-31200-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.13',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½È­ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31200-00045', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31200-00045');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31710-00012' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00012', 2024, '81.55'
FROM facilities WHERE admin_sym = '1-31710-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31710-00012', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31710-00012');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31710-00015' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00015', 2024, '73.27'
FROM facilities WHERE admin_sym = '1-31710-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.27',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31710-00015', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31710-00015');

-- Update existing: Ã´ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31710-00172' WHERE name LIKE '%Ã´ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00172', 2024, '69.02'
FROM facilities WHERE admin_sym = '1-31710-00172'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.02',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ã´ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31710-00172', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31710-00172');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31710-00013' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00013', 2024, '81.05'
FROM facilities WHERE admin_sym = '1-31710-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31710-00013', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31710-00013');

-- Update existing: Ãµï¿½ï¿½Ò¸ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31710-00167' WHERE name LIKE '%Ãµï¿½ï¿½Ò¸%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00167', 2024, '76.21'
FROM facilities WHERE admin_sym = '1-31710-00167'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.21',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ãµï¿½ï¿½Ò¸ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31710-00167', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31710-00167');

-- Update existing: ï¿½àº¹ï¿½Ñ½Ç¹ï¿½È¨
UPDATE facilities SET admin_sym = '1-31710-00095' WHERE name LIKE '%ï¿½àº¹ï¿½Ñ%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00095', 2024, '88.6'
FROM facilities WHERE admin_sym = '1-31710-00095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½Ñ½Ç¹ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31710-00095', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31710-00095');

-- Update existing: ï¿½Å±ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31710-00011' WHERE name LIKE '%ï¿½Å±ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00011', 2024, '76.23'
FROM facilities WHERE admin_sym = '1-31710-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.23',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Å±ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31710-00011', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31710-00011');

-- Update existing: È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31710-00010' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00010', 2024, '70.45'
FROM facilities WHERE admin_sym = '1-31710-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.45',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31710-00010', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31710-00010');

-- Update existing: ï¿½ï¿½È­ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31710-00008' WHERE name LIKE '%ï¿½ï¿½È­ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00008', 2024, '82.76'
FROM facilities WHERE admin_sym = '1-31710-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.76',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½È­ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31710-00008', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31710-00008');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ç³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31710-00175' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00175', 2024, '90.3'
FROM facilities WHERE admin_sym = '1-31710-00175'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ç³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31710-00175', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31710-00175');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ãµï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31710-00014' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00014', 2024, '81.48'
FROM facilities WHERE admin_sym = '1-31710-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.48',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ãµï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31710-00014', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31710-00014');

-- Update existing: ï¿½ï¿½ï¿½Íµï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31710-00018' WHERE name LIKE '%ï¿½ï¿½ï¿½Í%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00018', 2024, '90.85'
FROM facilities WHERE admin_sym = '1-31710-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Íµï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31710-00018', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31710-00018');

-- Update existing: ï¿½Ì¼Ò½Ç¹ï¿½È¨
UPDATE facilities SET admin_sym = '1-31710-00090' WHERE name LIKE '%ï¿½Ì¼Ò½Ç¹ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00090', 2024, '72.47'
FROM facilities WHERE admin_sym = '1-31710-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.47',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ì¼Ò½Ç¹ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31710-00090', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31710-00090');

-- Update existing: ï¿½ï¿½ï¿½Ç¹ï¿½È¨ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½î¸£ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31710-00176' WHERE name LIKE '%ï¿½ï¿½ï¿½Ç%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00176', 2024, '71.89'
FROM facilities WHERE admin_sym = '1-31710-00176'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.89',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ç¹ï¿½È¨ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½î¸£ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31710-00176', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31710-00176');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½È¨
UPDATE facilities SET admin_sym = '1-31710-00134' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00134', 2024, '85.4'
FROM facilities WHERE admin_sym = '1-31710-00134'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.4',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31710-00134', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31710-00134');

-- Update existing: ï¿½ï¿½ï¿½ç¸¶ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31710-00127' WHERE name LIKE '%ï¿½ï¿½ï¿½ç%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00127', 2024, '69.08'
FROM facilities WHERE admin_sym = '1-31710-00127'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.08',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ç¸¶ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31710-00127', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31710-00127');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31710-00103' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00103', 2024, '90.68'
FROM facilities WHERE admin_sym = '1-31710-00103'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.68',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31710-00103', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31710-00103');

-- Update existing: ï¿½ï¿½ï¿½Î½Ç¹ï¿½È¨
UPDATE facilities SET admin_sym = '1-31710-00128' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00128', 2024, '73.68'
FROM facilities WHERE admin_sym = '1-31710-00128'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.68',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î½Ç¹ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31710-00128', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31710-00128');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31710-00019' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00019', 2024, '87.57'
FROM facilities WHERE admin_sym = '1-31710-00019'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.57',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31710-00019', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31710-00019');

-- Update existing: È¿ï¿½ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31710-00142' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00142', 2024, '37.38'
FROM facilities WHERE admin_sym = '1-31710-00142'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '37.38',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31710-00142', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31710-00142');

-- Update existing: ï¿½Â¾ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31710-00106' WHERE name LIKE '%ï¿½Â¾ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00106', 2024, '59.2'
FROM facilities WHERE admin_sym = '1-31710-00106'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.2',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Â¾ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31710-00106', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31710-00106');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ñ½Ç¹ï¿½È¨
UPDATE facilities SET admin_sym = '1-31710-00125' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00125', 2024, '93.04'
FROM facilities WHERE admin_sym = '1-31710-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.04',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ñ½Ç¹ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31710-00125', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31710-00125');

-- Update existing: È¿ï¿½Ú½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31110-00143' WHERE name LIKE '%È¿ï¿½Ú½Ç¹ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31110-00143', 2024, '89.6'
FROM facilities WHERE admin_sym = '1-31110-00143'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½Ú½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31110-00143', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31110-00143');

-- Update existing: ï¿½ï¿½Çªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31110-00007' WHERE name LIKE '%ï¿½ï¿½Çªï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31110-00007', 2024, '90.35'
FROM facilities WHERE admin_sym = '1-31110-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Çªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31110-00007', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31110-00007');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ç°ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31110-00082' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31110-00082', 2024, '95.8'
FROM facilities WHERE admin_sym = '1-31110-00082'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ç°ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31110-00082', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31110-00082');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ò±Ô¸ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31110-00009' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31110-00009', 2024, '82.55'
FROM facilities WHERE admin_sym = '1-31110-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ò±Ô¸ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31110-00009', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31110-00009');

-- Update existing: ï¿½ï¿½Çªï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31110-00008' WHERE name LIKE '%ï¿½ï¿½Çªï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31110-00008', 2024, '88.8'
FROM facilities WHERE admin_sym = '1-31110-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Çªï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31110-00008', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31110-00008');

-- Update existing: ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-31110-00005' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31110-00005', 2024, '96.35'
FROM facilities WHERE admin_sym = '1-31110-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ê±¤ï¿½ï¿½ï¿½ï¿½', '1-31110-00005', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-31110-00005');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-36110-00087' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-36110-00087', 2024, '80.1'
FROM facilities WHERE admin_sym = '1-36110-00087'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½Æ¯ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½Æ¯ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½', '1-36110-00087', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-36110-00087');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-44730-00004' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44730-00004', 2024, '87.3'
FROM facilities WHERE admin_sym = '1-44730-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½Æ¯ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½Æ¯ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½', '1-44730-00004', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-44730-00004');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ç¸ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-44730-00006' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44730-00006', 2024, '80.35'
FROM facilities WHERE admin_sym = '1-44730-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ç¸ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½Æ¯ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½Æ¯ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½', '1-44730-00006', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-44730-00006');

-- Update existing: ï¿½ï¿½ï¿½Ç¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-44730-00005' WHERE name LIKE '%ï¿½ï¿½ï¿½Ç%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44730-00005', 2024, '89.6'
FROM facilities WHERE admin_sym = '1-44730-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ç¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½Æ¯ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½Æ¯ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½', '1-44730-00005', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-44730-00005');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ãµï¿½Ö¾È¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-36110-00090' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-36110-00090', 2024, '35.67'
FROM facilities WHERE admin_sym = '1-36110-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '35.67',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ãµï¿½Ö¾È¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½Æ¯ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½Æ¯ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½', '1-36110-00090', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-36110-00090');

-- Update existing: ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-36110-00099' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-36110-00099', 2024, '50.06'
FROM facilities WHERE admin_sym = '1-36110-00099'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.06',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½Æ¯ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½Æ¯ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½', '1-36110-00099', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-36110-00099');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½àº¹ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-36110-00067' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-36110-00067', 2024, '85.83'
FROM facilities WHERE admin_sym = '1-36110-00067'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.83',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½àº¹ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½Æ¯ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½Æ¯ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½', '1-36110-00067', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-36110-00067');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½ ï¿½ò°­¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-36110-00113' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-36110-00113', 2024, '63.38'
FROM facilities WHERE admin_sym = '1-36110-00113'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.38',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½ ï¿½ò°­¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½Æ¯ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½Æ¯ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½', '1-36110-00113', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-36110-00113');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ì¸®ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-36110-00061' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-36110-00061', 2024, '97.8'
FROM facilities WHERE admin_sym = '1-36110-00061'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ì¸®ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½Æ¯ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½Æ¯ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½', '1-36110-00061', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-36110-00061');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ç¸ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-44730-00023' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44730-00023', 2024, '89.66'
FROM facilities WHERE admin_sym = '1-44730-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.66',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ç¸ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½Æ¯ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½Æ¯ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½', '1-44730-00023', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-44730-00023');

-- Update existing: ï¿½Ñ¼Ö³Ê½ï¿½È¨Ã»ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41820-00018' WHERE name LIKE '%ï¿½Ñ¼Ö³Ê½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41820-00018', 2024, '84.85'
FROM facilities WHERE admin_sym = '1-41820-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ¼Ö³Ê½ï¿½È¨Ã»ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41820-00018', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41820-00018');

-- Update existing: ï¿½ï¿½Ð¸ï¿½ï¿½ï¿½Å³ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41820-00010' WHERE name LIKE '%ï¿½ï¿½Ð¸ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41820-00010', 2024, '73.85'
FROM facilities WHERE admin_sym = '1-41820-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ð¸ï¿½ï¿½ï¿½Å³ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41820-00010', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41820-00010');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41820-00011' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41820-00011', 2024, '61.8'
FROM facilities WHERE admin_sym = '1-41820-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41820-00011', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41820-00011');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Éµï¿½ï¿½×³ï¿½ï¿½Î¿ï¿½ï¿½Ã¼ï¿½(ï¿½ï¿½È­ï¿½ï¿½ï¿½ï¿½)
UPDATE facilities SET admin_sym = '1-41820-00012' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41820-00012', 2024, '91.68'
FROM facilities WHERE admin_sym = '1-41820-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.68',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Éµï¿½ï¿½×³ï¿½ï¿½Î¿ï¿½ï¿½Ã¼ï¿½(ï¿½ï¿½È­ï¿½ï¿½ï¿½ï¿½)', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41820-00012', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41820-00012');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Å¸ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41820-00006' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41820-00006', 2024, '84.93'
FROM facilities WHERE admin_sym = '1-41820-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.93',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Å¸ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41820-00006', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41820-00006');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41820-00014' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41820-00014', 2024, '66.4'
FROM facilities WHERE admin_sym = '1-41820-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.4',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41820-00014', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41820-00014');

-- Update existing: ï¿½ï¿½ï¿½Ç¾ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41820-00099' WHERE name LIKE '%ï¿½ï¿½ï¿½Ç%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41820-00099', 2024, '62.27'
FROM facilities WHERE admin_sym = '1-41820-00099'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.27',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ç¾ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41820-00099', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41820-00099');

-- Update existing: ï¿½Ì·ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41820-00046' WHERE name LIKE '%ï¿½Ì·ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41820-00046', 2024, '68.35'
FROM facilities WHERE admin_sym = '1-41820-00046'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ì·ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41820-00046', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41820-00046');

-- Update existing: ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Çºï¿½
UPDATE facilities SET admin_sym = '1-41820-00062' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41820-00062', 2024, '91.02'
FROM facilities WHERE admin_sym = '1-41820-00062'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.02',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Çºï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41820-00062', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41820-00062');

-- Update existing: ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41820-00100' WHERE name LIKE '%ï¿½ï¿½ï¿½È%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41820-00100', 2024, '68.28'
FROM facilities WHERE admin_sym = '1-41820-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.28',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41820-00100', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41820-00100');

-- Update existing: ï¿½ï¿½ï¿½Ï¼ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41280-01095' WHERE name LIKE '%ï¿½ï¿½ï¿½Ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41280-01095', 2024, '77.8'
FROM facilities WHERE admin_sym = '1-41280-01095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ï¼ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41280-01095', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41280-01095');

-- Update existing: ï¿½Ì¼ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41280-00969' WHERE name LIKE '%ï¿½Ì¼ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41280-00969', 2024, '82.85'
FROM facilities WHERE admin_sym = '1-41280-00969'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ì¼ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41280-00969', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41280-00969');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41280-01144' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41280-01144', 2024, '74.1'
FROM facilities WHERE admin_sym = '1-41280-01144'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41280-01144', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41280-01144');

-- Update existing: (ï¿½ï¿½ï¿½ï¿½)ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41280-00585' WHERE name LIKE '%(ï¿½ï¿½ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41280-00585', 2024, '73.85'
FROM facilities WHERE admin_sym = '1-41280-00585'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', '(ï¿½ï¿½ï¿½ï¿½)ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41280-00585', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41280-00585');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41280-01194' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41280-01194', 2024, '75.85'
FROM facilities WHERE admin_sym = '1-41280-01194'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41280-01194', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41280-01194');

-- Update existing: ï¿½Ï»ï¿½ ï¿½Â´ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41280-00298' WHERE name LIKE '%ï¿½Ï»ï¿½ ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41280-00298', 2024, '72.5'
FROM facilities WHERE admin_sym = '1-41280-00298'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ï»ï¿½ ï¿½Â´ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41280-00298', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41280-00298');

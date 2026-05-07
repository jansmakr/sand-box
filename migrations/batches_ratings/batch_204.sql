-- Batch 204 of 226
-- Processing 100 facilities

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00578' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00578', 2024, '93.93'
FROM facilities WHERE admin_sym = '1-41460-00578'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.93',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00578', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00578');

-- Update existing: (ï¿½ï¿½)ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00333' WHERE name LIKE '%(ï¿½ï¿½)ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00333', 2024, '97.1'
FROM facilities WHERE admin_sym = '1-41460-00333'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', '(ï¿½ï¿½)ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00333', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00333');

-- Update existing: ï¿½ì¸®ï¿½î¸£ï¿½Å¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00359' WHERE name LIKE '%ï¿½ì¸®ï¿½î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00359', 2024, '67.86'
FROM facilities WHERE admin_sym = '1-41460-00359'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.86',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ì¸®ï¿½î¸£ï¿½Å¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00359', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00359');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç¿ï¿½ï¿½ï¿½1È£
UPDATE facilities SET admin_sym = '1-41460-00635' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00635', 2024, '61.09'
FROM facilities WHERE admin_sym = '1-41460-00635'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.09',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç¿ï¿½ï¿½ï¿½1È£', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00635', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00635');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç¿ï¿½ï¿½ï¿½2È£
UPDATE facilities SET admin_sym = '1-41460-00636' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00636', 2024, '61.78'
FROM facilities WHERE admin_sym = '1-41460-00636'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.78',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç¿ï¿½ï¿½ï¿½2È£', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00636', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00636');

-- Update existing: ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½(ï¿½ï¿½ï¿½)
UPDATE facilities SET admin_sym = '1-41460-00274' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00274', 2024, '71.28'
FROM facilities WHERE admin_sym = '1-41460-00274'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.28',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½(ï¿½ï¿½ï¿½)', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00274', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00274');

-- Update existing: ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½(È­ï¿½ï¿½)
UPDATE facilities SET admin_sym = '1-41460-00297' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00297', 2024, '81.84'
FROM facilities WHERE admin_sym = '1-41460-00297'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.84',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½(È­ï¿½ï¿½)', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00297', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00297');

-- Update existing: ï¿½ï¿½ï¿½Î°ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00498' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00498', 2024, '78.27'
FROM facilities WHERE admin_sym = '1-41460-00498'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.27',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î°ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00498', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00498');

-- Update existing: ï¿½î¸£ï¿½Å¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00362' WHERE name LIKE '%ï¿½î¸£ï¿½Å%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00362', 2024, '85.3'
FROM facilities WHERE admin_sym = '1-41460-00362'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½î¸£ï¿½Å¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00362', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00362');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00562' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00562', 2024, '81.35'
FROM facilities WHERE admin_sym = '1-41460-00562'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00562', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00562');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00502' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00502', 2024, '92.6'
FROM facilities WHERE admin_sym = '1-41460-00502'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00502', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00502');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00396' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00396', 2024, '83.85'
FROM facilities WHERE admin_sym = '1-41460-00396'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00396', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00396');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ ï¿½Ç¹ï¿½ï¿½É¾î½º
UPDATE facilities SET admin_sym = '1-41460-00019' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00019', 2024, '91.85'
FROM facilities WHERE admin_sym = '1-41460-00019'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Ç¹ï¿½ï¿½É¾î½º', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00019', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00019');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½(ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½)
UPDATE facilities SET admin_sym = '1-41460-00018' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00018', 2024, '78.6'
FROM facilities WHERE admin_sym = '1-41460-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½(ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½)', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00018', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00018');

-- Update existing: ï¿½àº¹ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00256' WHERE name LIKE '%ï¿½àº¹ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00256', 2024, '76.42'
FROM facilities WHERE admin_sym = '1-41460-00256'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.42',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00256', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00256');

-- Update existing: ï¿½Æ¸ï¿½ï¿½Ù¿ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00794' WHERE name LIKE '%ï¿½Æ¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00794', 2024, '81.42'
FROM facilities WHERE admin_sym = '1-41460-00794'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.42',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Æ¸ï¿½ï¿½Ù¿ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00794', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00794');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½àº¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00784' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00784', 2024, '63.83'
FROM facilities WHERE admin_sym = '1-41460-00784'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.83',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½àº¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00784', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00784');

-- Update existing: ï¿½ï¿½È­ï¿½ï¿½ï¿½Î°ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00377' WHERE name LIKE '%ï¿½ï¿½È­ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00377', 2024, '84.91'
FROM facilities WHERE admin_sym = '1-41460-00377'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.91',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½È­ï¿½ï¿½ï¿½Î°ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00377', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00377');

-- Update existing: ï¿½Ê½ï¿½È¨ ï¿½Ñ¼ï¿½
UPDATE facilities SET admin_sym = '1-41460-00310' WHERE name LIKE '%ï¿½Ê½ï¿½È¨%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00310', 2024, '77.37'
FROM facilities WHERE admin_sym = '1-41460-00310'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.37',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ê½ï¿½È¨ ï¿½Ñ¼ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00310', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00310');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00683' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00683', 2024, '72.35'
FROM facilities WHERE admin_sym = '1-41460-00683'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00683', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00683');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00734' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00734', 2024, '79.19'
FROM facilities WHERE admin_sym = '1-41460-00734'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.19',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00734', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00734');

-- Update existing: ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00782' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00782', 2024, '59.31'
FROM facilities WHERE admin_sym = '1-41460-00782'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.31',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00782', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00782');

-- Update existing: ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½2
UPDATE facilities SET admin_sym = '1-41460-00783' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00783', 2024, '61.19'
FROM facilities WHERE admin_sym = '1-41460-00783'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.19',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½2', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00783', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00783');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½(ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½)2ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00735' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00735', 2024, '79.64'
FROM facilities WHERE admin_sym = '1-41460-00735'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.64',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½(ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½)2ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00735', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00735');

-- Update existing: ï¿½ï¿½ï¿½ï¿½î¸£ï¿½Å¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00719' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00719', 2024, '74.79'
FROM facilities WHERE admin_sym = '1-41460-00719'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.79',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½î¸£ï¿½Å¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00719', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00719');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00699' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00699', 2024, '69.82'
FROM facilities WHERE admin_sym = '1-41460-00699'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.82',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00699', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00699');

-- Update existing: ï¿½Ç·Î¾Ï¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00452' WHERE name LIKE '%ï¿½Ç·Î¾Ï¿ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00452', 2024, '60.79'
FROM facilities WHERE admin_sym = '1-41460-00452'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.79',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ç·Î¾Ï¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00452', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00452');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½(ï¿½ï¿½ï¿½ï¿½)
UPDATE facilities SET admin_sym = '1-41460-00370' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00370', 2024, '56.72'
FROM facilities WHERE admin_sym = '1-41460-00370'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.72',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½(ï¿½ï¿½ï¿½ï¿½)', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00370', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00370');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½(ï¿½Ò¸ï¿½)
UPDATE facilities SET admin_sym = '1-41460-00376' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00376', 2024, '62.01'
FROM facilities WHERE admin_sym = '1-41460-00376'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.01',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½(ï¿½Ò¸ï¿½)', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00376', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00376');

-- Update existing: ï¿½ï¿½ï¿½ï¿½È¿ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00599' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00599', 2024, '78.62'
FROM facilities WHERE admin_sym = '1-41460-00599'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.62',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½È¿ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00599', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00599');

-- Update existing: ï¿½ï¿½ï¿½Ñ°ï¿½È£ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ñ°ï¿½È£ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00022' WHERE name LIKE '%ï¿½ï¿½ï¿½Ñ%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00022', 2024, '82.1'
FROM facilities WHERE admin_sym = '1-41460-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ñ°ï¿½È£ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ñ°ï¿½È£ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00022', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00022');

-- Update existing: ï¿½Ï³ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00567' WHERE name LIKE '%ï¿½Ï³ï¿½ï¿%' AND sido = 'ï¿½ï¿½Å¸';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00567', 2024, '75.6'
FROM facilities WHERE admin_sym = '1-41460-00567'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ï³ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Å¸ ï¿½ï¿½âµµ', 'ï¿½ï¿½Å¸', 'ï¿½ï¿½âµµ', '1-41460-00567', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00567');

-- Update existing: ï¿½ï¿½ï¿½Îºï¿½ï¿½Ã´Ï¾î½º(ï¿½ï¿½)
UPDATE facilities SET admin_sym = '1-41460-00013' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00013', 2024, '84.1'
FROM facilities WHERE admin_sym = '1-41460-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Îºï¿½ï¿½Ã´Ï¾î½º(ï¿½ï¿½)', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00013', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00013');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00733' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00733', 2024, '96.1'
FROM facilities WHERE admin_sym = '1-41460-00733'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00733', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00733');

-- Update existing: ï¿½ï¿½Å¿ï¿½ì¸®ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00354' WHERE name LIKE '%ï¿½ï¿½Å¿ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00354', 2024, '90.85'
FROM facilities WHERE admin_sym = '1-41460-00354'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Å¿ï¿½ì¸®ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00354', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00354');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ï¿ì½º ï¿½Ç¹ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00722' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00722', 2024, '91.85'
FROM facilities WHERE admin_sym = '1-41460-00722'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ï¿ì½º ï¿½Ç¹ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00722', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00722');

-- Update existing: ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00040' WHERE name LIKE '%ï¿½Îºï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00040', 2024, '80.1'
FROM facilities WHERE admin_sym = '1-41460-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00040', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00040');

-- Update existing: ï¿½àº¹ï¿½ï¿½ ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00041' WHERE name LIKE '%ï¿½àº¹ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00041', 2024, '91.1'
FROM facilities WHERE admin_sym = '1-41460-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½ï¿½ ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00041', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00041');

-- Update existing: ï¿½Æ¸ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00647' WHERE name LIKE '%ï¿½Æ¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00647', 2024, '67.85'
FROM facilities WHERE admin_sym = '1-41460-00647'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Æ¸ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00647', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00647');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Õ¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00765' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00765', 2024, '79.9'
FROM facilities WHERE admin_sym = '1-41460-00765'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.9',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Õ¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00765', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00765');

-- Update existing: ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00116' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00116', 2024, '90.35'
FROM facilities WHERE admin_sym = '1-41460-00116'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00116', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00116');

-- Update existing: ï¿½ï¿½ï¿½Î³ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00261' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00261', 2024, '97.6'
FROM facilities WHERE admin_sym = '1-41460-00261'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î³ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00261', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00261');

-- Update existing: ï¿½Â´ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00005' WHERE name LIKE '%ï¿½Â´ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00005', 2024, '95.6'
FROM facilities WHERE admin_sym = '1-41460-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Â´ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00005', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00005');

-- Update existing: ï¿½ï¿½ï¿½Ï³Ê½ï¿½È¨
UPDATE facilities SET admin_sym = '1-41460-00023' WHERE name LIKE '%ï¿½ï¿½ï¿½Ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00023', 2024, '99.75'
FROM facilities WHERE admin_sym = '1-41460-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '99.75',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ï³Ê½ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00023', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00023');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00239' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00239', 2024, '73.85'
FROM facilities WHERE admin_sym = '1-41460-00239'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00239', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00239');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Õ±ï¿½ï¿½ï¿½ï¿½Ã¼ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00047' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00047', 2024, '64.55'
FROM facilities WHERE admin_sym = '1-41460-00047'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Õ±ï¿½ï¿½ï¿½ï¿½Ã¼ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00047', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00047');

-- Update existing: ï¿½ï¿½ï¿½Î»ï¼ºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00604' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00604', 2024, '69.9'
FROM facilities WHERE admin_sym = '1-41460-00604'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.9',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î»ï¼ºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00604', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00604');

-- Update existing: ï¿½Æ¸ï¿½ï¿½Çºï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00260' WHERE name LIKE '%ï¿½Æ¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00260', 2024, '60.24'
FROM facilities WHERE admin_sym = '1-41460-00260'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.24',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Æ¸ï¿½ï¿½Çºï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00260', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00260');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Æ®ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00753' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00753', 2024, '61.63'
FROM facilities WHERE admin_sym = '1-41460-00753'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.63',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Æ®ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00753', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00753');

-- Update existing: ï¿½ï¿½ï¿½Î³ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00006' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00006', 2024, '92.1'
FROM facilities WHERE admin_sym = '1-41460-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î³ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00006', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00006');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00665' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00665', 2024, '92.48'
FROM facilities WHERE admin_sym = '1-41460-00665'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.48',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00665', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00665');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00456' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00456', 2024, '54.81'
FROM facilities WHERE admin_sym = '1-41460-00456'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.81',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00456', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00456');

-- Update existing: ï¿½Îµï¿½ï¿½ï¿½ ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00125' WHERE name LIKE '%ï¿½Îµï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00125', 2024, '92.1'
FROM facilities WHERE admin_sym = '1-41460-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Îµï¿½ï¿½ï¿½ ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00125', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00125');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00740' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00740', 2024, '67.27'
FROM facilities WHERE admin_sym = '1-41460-00740'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.27',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00740', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00740');

-- Update existing: È¿ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00320' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00320', 2024, '53.56'
FROM facilities WHERE admin_sym = '1-41460-00320'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.56',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00320', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00320');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ø¹Ù¶ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41460-00348' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00348', 2024, '76.43'
FROM facilities WHERE admin_sym = '1-41460-00348'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.43',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ø¹Ù¶ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41460-00348', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41460-00348');

-- Update existing: ï¿½Þ¿ï¿½ï¿½×¸ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41430-00082' WHERE name LIKE '%ï¿½Þ¿ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41430-00082', 2024, '89.6'
FROM facilities WHERE admin_sym = '1-41430-00082'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Þ¿ï¿½ï¿½×¸ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41430-00082', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41430-00082');

-- Update existing: ï¿½ï¿½Çªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41430-00044' WHERE name LIKE '%ï¿½ï¿½Çªï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41430-00044', 2024, '77.6'
FROM facilities WHERE admin_sym = '1-41430-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Çªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41430-00044', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41430-00044');

-- Update existing: ï¿½Ç°ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ç¿Õ½Ã¸ï¿½ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41430-00055' WHERE name LIKE '%ï¿½Ç°ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41430-00055', 2024, '96.3'
FROM facilities WHERE admin_sym = '1-41430-00055'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ç°ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ç¿Õ½Ã¸ï¿½ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼', 'ï¿½ï¿½âµµ', '1-41430-00055', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41430-00055');

-- Update existing: Æ¼.ï¿½ï¿½ï¿½ï¿½Ä¡.ï¿½ï¿½ Ã»ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41430-00012' WHERE name LIKE '%Æ¼.ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41430-00012', 2024, '87.93'
FROM facilities WHERE admin_sym = '1-41430-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.93',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Æ¼.ï¿½ï¿½ï¿½ï¿½Ä¡.ï¿½ï¿½ Ã»ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41430-00012', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41430-00012');

-- Update existing: ï¿½ï¿½ï¿½Õ¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41430-00089' WHERE name LIKE '%ï¿½ï¿½ï¿½Õ%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41430-00089', 2024, '72.89'
FROM facilities WHERE admin_sym = '1-41430-00089'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.89',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Õ¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41430-00089', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41430-00089');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41430-00109' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41430-00109', 2024, '63.6'
FROM facilities WHERE admin_sym = '1-41430-00109'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41430-00109', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41430-00109');

-- Update existing: Ã»ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41430-00057' WHERE name LIKE '%Ã»ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41430-00057', 2024, '89.48'
FROM facilities WHERE admin_sym = '1-41430-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.48',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ã»ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41430-00057', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41430-00057');

-- Update existing: ï¿½ï¿½ï¿½Ñ¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41430-00085' WHERE name LIKE '%ï¿½ï¿½ï¿½Ñ%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41430-00085', 2024, '71.39'
FROM facilities WHERE admin_sym = '1-41430-00085'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.39',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ñ¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41430-00085', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41430-00085');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Î°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41430-00086' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41430-00086', 2024, '84.78'
FROM facilities WHERE admin_sym = '1-41430-00086'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.78',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Î°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41430-00086', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41430-00086');

-- Update existing: ï¿½ï¿½ï¿½Ï½Ç¹ï¿½Å¸ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41430-00096' WHERE name LIKE '%ï¿½ï¿½ï¿½Ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41430-00096', 2024, '74.56'
FROM facilities WHERE admin_sym = '1-41430-00096'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.56',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ï½Ç¹ï¿½Å¸ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41430-00096', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41430-00096');

-- Update existing: ï¿½ï¿½ï¿½É¿ï¿½çº¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00356' WHERE name LIKE '%ï¿½ï¿½ï¿½É%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00356', 2024, '82.6'
FROM facilities WHERE admin_sym = '1-41150-00356'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½É¿ï¿½çº¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00356', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00356');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Î³ï¿½ï¿½Î¼ï¿½ï¿½ï¿½ ï¿½Ç¹ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00495' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00495', 2024, '77.34'
FROM facilities WHERE admin_sym = '1-41150-00495'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.34',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Î³ï¿½ï¿½Î¼ï¿½ï¿½ï¿½ ï¿½Ç¹ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00495', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00495');

-- Update existing: ï¿½Þ»ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00630' WHERE name LIKE '%ï¿½Þ»ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00630', 2024, '83.35'
FROM facilities WHERE admin_sym = '1-41150-00630'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Þ»ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00630', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00630');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00572' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00572', 2024, '70.85'
FROM facilities WHERE admin_sym = '1-41150-00572'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00572', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00572');

-- Update existing: Çªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00328' WHERE name LIKE '%Çªï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00328', 2024, '59.61'
FROM facilities WHERE admin_sym = '1-41150-00328'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.61',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Çªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00328', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00328');

-- Update existing: 21ï¿½ï¿½ï¿½ï¿½ï¿½çº¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00436' WHERE name LIKE '%21ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00436', 2024, '85.8'
FROM facilities WHERE admin_sym = '1-41150-00436'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', '21ï¿½ï¿½ï¿½ï¿½ï¿½çº¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00436', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00436');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00604' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00604', 2024, '79.55'
FROM facilities WHERE admin_sym = '1-41150-00604'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00604', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00604');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00324' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00324', 2024, '83.8'
FROM facilities WHERE admin_sym = '1-41150-00324'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00324', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00324');

-- Update existing: ï¿½ï¿½Çªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00676' WHERE name LIKE '%ï¿½ï¿½Çªï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00676', 2024, '76.85'
FROM facilities WHERE admin_sym = '1-41150-00676'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Çªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00676', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00676');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00284' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00284', 2024, '85.75'
FROM facilities WHERE admin_sym = '1-41150-00284'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.75',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00284', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00284');

-- Update existing: ï¿½ï¿½Ç°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00539' WHERE name LIKE '%ï¿½ï¿½Ç°ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00539', 2024, '83.5'
FROM facilities WHERE admin_sym = '1-41150-00539'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ç°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00539', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00539');

-- Update existing: Æ°Æ°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00648' WHERE name LIKE '%Æ°Æ°ï¿½ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00648', 2024, '88.1'
FROM facilities WHERE admin_sym = '1-41150-00648'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Æ°Æ°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00648', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00648');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½àº¹ï¿½Ñ¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00405' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00405', 2024, '72.35'
FROM facilities WHERE admin_sym = '1-41150-00405'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½àº¹ï¿½Ñ¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00405', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00405');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00638' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00638', 2024, '81.35'
FROM facilities WHERE admin_sym = '1-41150-00638'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00638', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00638');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ç»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00013' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00013', 2024, '84.35'
FROM facilities WHERE admin_sym = '1-41150-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ç»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00013', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00013');

-- Update existing: ï¿½ï¿½Ã¾ï¿½ ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00343' WHERE name LIKE '%ï¿½ï¿½Ã¾ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00343', 2024, '88.55'
FROM facilities WHERE admin_sym = '1-41150-00343'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ã¾ï¿½ ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00343', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00343');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00641' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00641', 2024, '75.5'
FROM facilities WHERE admin_sym = '1-41150-00641'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00641', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00641');

-- Update existing: VIPï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00577' WHERE name LIKE '%VIPï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00577', 2024, '80.85'
FROM facilities WHERE admin_sym = '1-41150-00577'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'VIPï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00577', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00577');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00723' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00723', 2024, '90.1'
FROM facilities WHERE admin_sym = '1-41150-00723'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00723', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00723');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Î¼Ò¸ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00289' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00289', 2024, '69.6'
FROM facilities WHERE admin_sym = '1-41150-00289'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Î¼Ò¸ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00289', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00289');

-- Update existing: ï¿½ï¿½ï¿½Ê½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00708' WHERE name LIKE '%ï¿½ï¿½ï¿½Ê%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00708', 2024, '61.4'
FROM facilities WHERE admin_sym = '1-41150-00708'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.4',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ê½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00708', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00708');

-- Update existing: ï¿½àº¹ï¿½ï¿½ ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00322' WHERE name LIKE '%ï¿½àº¹ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00322', 2024, '86.35'
FROM facilities WHERE admin_sym = '1-41150-00322'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½ï¿½ ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00322', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00322');

-- Update existing: ï¿½ï¿½ï¿½ß¸ï¿½ ï¿½Ç¹ï¿½ï¿½É¾ï¿½ ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00700' WHERE name LIKE '%ï¿½ï¿½ï¿½ß%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00700', 2024, '65.1'
FROM facilities WHERE admin_sym = '1-41150-00700'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ß¸ï¿½ ï¿½Ç¹ï¿½ï¿½É¾ï¿½ ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00700', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00700');

-- Update existing: ï¿½Ý¿ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00592' WHERE name LIKE '%ï¿½Ý¿ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00592', 2024, '72.6'
FROM facilities WHERE admin_sym = '1-41150-00592'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ý¿ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00592', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00592');

-- Update existing: ï¿½àº¹ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00664' WHERE name LIKE '%ï¿½àº¹ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00664', 2024, '75.25'
FROM facilities WHERE admin_sym = '1-41150-00664'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.25',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00664', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00664');

-- Update existing: ï¿½ï¿½ï¿½Ó´ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00609' WHERE name LIKE '%ï¿½ï¿½ï¿½Ó%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00609', 2024, '65.39'
FROM facilities WHERE admin_sym = '1-41150-00609'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.39',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ó´ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00609', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00609');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00749' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00749', 2024, '80.94'
FROM facilities WHERE admin_sym = '1-41150-00749'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.94',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00749', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00749');

-- Update existing: ï¿½Ý¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00372' WHERE name LIKE '%ï¿½Ý¿ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00372', 2024, '73.3'
FROM facilities WHERE admin_sym = '1-41150-00372'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ý¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00372', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00372');

-- Update existing: ï¿½ì¸®ï¿½ï¿½ ï¿½Ç¹ï¿½ ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00690' WHERE name LIKE '%ï¿½ì¸®ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00690', 2024, '60.99'
FROM facilities WHERE admin_sym = '1-41150-00690'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.99',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ì¸®ï¿½ï¿½ ï¿½Ç¹ï¿½ ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00690', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00690');

-- Update existing: ï¿½ì¸®ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½(ï¿½ï¿½ï¿½)
UPDATE facilities SET admin_sym = '1-41150-00323' WHERE name LIKE '%ï¿½ì¸®ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00323', 2024, '96.75'
FROM facilities WHERE admin_sym = '1-41150-00323'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.75',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ì¸®ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½(ï¿½ï¿½ï¿½)', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00323', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00323');

-- Update existing: ï¿½Þ¸ï¿½ï¿½ï¿½ ï¿½Ã´Ï¾ï¿½Å¸ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00422' WHERE name LIKE '%ï¿½Þ¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00422', 2024, '93.6'
FROM facilities WHERE admin_sym = '1-41150-00422'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Þ¸ï¿½ï¿½ï¿½ ï¿½Ã´Ï¾ï¿½Å¸ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00422', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00422');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00514' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00514', 2024, '92.8'
FROM facilities WHERE admin_sym = '1-41150-00514'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00514', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00514');

-- Update existing: ï¿½ï¿½Ã»ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ 2
UPDATE facilities SET admin_sym = '1-41150-00694' WHERE name LIKE '%ï¿½ï¿½Ã»ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00694', 2024, '71.34'
FROM facilities WHERE admin_sym = '1-41150-00694'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.34',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ã»ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ 2', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00694', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00694');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ï¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-41150-00589' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41150-00589', 2024, '69.17'
FROM facilities WHERE admin_sym = '1-41150-00589'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.17',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ï¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½âµµ', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½âµµ', '1-41150-00589', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-41150-00589');

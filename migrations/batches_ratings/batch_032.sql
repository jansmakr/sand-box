-- Batch 32 of 226
-- Processing 100 facilities

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00079' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00079', 2024, '79.16'
FROM facilities WHERE admin_sym = '3-27140-00079'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.16',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00079', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00079');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00541' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00541', 2024, '90.11'
FROM facilities WHERE admin_sym = '3-27140-00541'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.11',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00541', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00541');

-- Update existing: È¿ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00515' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00515', 2024, '53.8'
FROM facilities WHERE admin_sym = '3-27140-00515'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00515', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00515');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00591' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00591', 2024, '82.35'
FROM facilities WHERE admin_sym = '3-27140-00591'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00591', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00591');

-- Update existing: ï¿½ï¿½ï¿½Î»ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00473' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00473', 2024, '94.55'
FROM facilities WHERE admin_sym = '3-27140-00473'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î»ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00473', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00473');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00525' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00525', 2024, '92.05'
FROM facilities WHERE admin_sym = '3-27140-00525'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00525', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00525');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00503' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00503', 2024, '85.8'
FROM facilities WHERE admin_sym = '3-27140-00503'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00503', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00503');

-- Update existing: ï¿½Å¾ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00077' WHERE name LIKE '%ï¿½Å¾ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00077', 2024, '78.75'
FROM facilities WHERE admin_sym = '3-27140-00077'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.75',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Å¾ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00077', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00077');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00353' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00353', 2024, '91.11'
FROM facilities WHERE admin_sym = '3-27140-00353'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.11',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00353', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00353');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00537' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00537', 2024, '87.8'
FROM facilities WHERE admin_sym = '3-27140-00537'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00537', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00537');

-- Update existing: ï¿½àº¹ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00459' WHERE name LIKE '%ï¿½àº¹ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00459', 2024, '89.55'
FROM facilities WHERE admin_sym = '3-27140-00459'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00459', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00459');

-- Update existing: ï¿½ï¿½Çªï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00483' WHERE name LIKE '%ï¿½ï¿½Çªï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00483', 2024, '80.6'
FROM facilities WHERE admin_sym = '3-27140-00483'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Çªï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00483', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00483');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00523' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00523', 2024, '65.3'
FROM facilities WHERE admin_sym = '3-27140-00523'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00523', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00523');

-- Update existing: ï¿½ï¿½Æ¼ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00145' WHERE name LIKE '%ï¿½ï¿½Æ¼ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00145', 2024, '88.85'
FROM facilities WHERE admin_sym = '3-27140-00145'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Æ¼ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00145', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00145');

-- Update existing: ï¿½Ñºï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00497' WHERE name LIKE '%ï¿½Ñºï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00497', 2024, '91.5'
FROM facilities WHERE admin_sym = '3-27140-00497'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñºï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00497', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00497');

-- Update existing: ï¿½Ø¾È³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00547' WHERE name LIKE '%ï¿½Ø¾È³ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00547', 2024, '92.1'
FROM facilities WHERE admin_sym = '3-27140-00547'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ø¾È³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00547', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00547');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Õ¹æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00273' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00273', 2024, '85.94'
FROM facilities WHERE admin_sym = '3-27140-00273'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.94',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Õ¹æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00273', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00273');

-- Update existing: ï¿½ï¿½ï¿½Ù¿ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00311' WHERE name LIKE '%ï¿½ï¿½ï¿½Ù%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00311', 2024, '69.05'
FROM facilities WHERE admin_sym = '3-27140-00311'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ù¿ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00311', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00311');

-- Update existing: ï¿½ï¿½ï¿½Ý³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00451' WHERE name LIKE '%ï¿½ï¿½ï¿½Ý%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00451', 2024, '94.8'
FROM facilities WHERE admin_sym = '3-27140-00451'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ý³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00451', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00451');

-- Update existing: ï¿½ë±¸ï¿½ï¿½È°ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00561' WHERE name LIKE '%ï¿½ë±¸ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00561', 2024, '90.3'
FROM facilities WHERE admin_sym = '3-27140-00561'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ë±¸ï¿½ï¿½È°ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00561', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00561');

-- Update existing: 100ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00447' WHERE name LIKE '%100ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00447', 2024, '83.8'
FROM facilities WHERE admin_sym = '3-27140-00447'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', '100ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00447', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00447');

-- Update existing: ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-27140-00005' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27140-00005', 2024, '84.1'
FROM facilities WHERE admin_sym = '2-27140-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-27140-00005', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-27140-00005');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00407' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00407', 2024, '84.05'
FROM facilities WHERE admin_sym = '3-27140-00407'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00407', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00407');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00355' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00355', 2024, '76.1'
FROM facilities WHERE admin_sym = '3-27140-00355'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00355', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00355');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-27140-00367' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27140-00367', 2024, '98.35'
FROM facilities WHERE admin_sym = '2-27140-00367'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-27140-00367', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-27140-00367');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00511' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00511', 2024, '81.8'
FROM facilities WHERE admin_sym = '3-27140-00511'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00511', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00511');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00361' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00361', 2024, '90.55'
FROM facilities WHERE admin_sym = '3-27140-00361'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00361', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00361');

-- Update existing: È¿ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00531' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00531', 2024, '89.8'
FROM facilities WHERE admin_sym = '3-27140-00531'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00531', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00531');

-- Update existing: ï¿½ï¿½ï¿½Ï½Ç¹ï¿½ï¿½É¾ï¿½
UPDATE facilities SET admin_sym = '3-27140-00263' WHERE name LIKE '%ï¿½ï¿½ï¿½Ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00263', 2024, '84.58'
FROM facilities WHERE admin_sym = '3-27140-00263'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.58',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ï½Ç¹ï¿½ï¿½É¾ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00263', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00263');

-- Update existing: È¿ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00441' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00441', 2024, '92.6'
FROM facilities WHERE admin_sym = '3-27140-00441'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00441', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00441');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-27140-00609' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27140-00609', 2024, '84.74'
FROM facilities WHERE admin_sym = '2-27140-00609'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.74',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-27140-00609', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-27140-00609');

-- Update existing: ï¿½È½É½Ç¹ï¿½ï¿½É¾ï¿½
UPDATE facilities SET admin_sym = '3-27140-00573' WHERE name LIKE '%ï¿½È½É½Ç¹ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00573', 2024, '83.85'
FROM facilities WHERE admin_sym = '3-27140-00573'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½È½É½Ç¹ï¿½ï¿½É¾ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00573', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00573');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00577' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00577', 2024, '92.5'
FROM facilities WHERE admin_sym = '3-27140-00577'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00577', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00577');

-- Update existing: ï¿½Ù»ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00509' WHERE name LIKE '%ï¿½Ù»ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00509', 2024, '95.35'
FROM facilities WHERE admin_sym = '3-27140-00509'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ù»ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00509', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00509');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00321' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00321', 2024, '83.25'
FROM facilities WHERE admin_sym = '3-27140-00321'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.25',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00321', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00321');

-- Update existing: ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00545' WHERE name LIKE '%ï¿½Ç¹ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00545', 2024, '81.11'
FROM facilities WHERE admin_sym = '3-27140-00545'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.11',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00545', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00545');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00563' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00563', 2024, '80.3'
FROM facilities WHERE admin_sym = '3-27140-00563'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00563', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00563');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00569' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00569', 2024, '78.5'
FROM facilities WHERE admin_sym = '3-27140-00569'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00569', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00569');

-- Update existing: È¿ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00211' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00211', 2024, '83.75'
FROM facilities WHERE admin_sym = '3-27140-00211'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.75',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00211', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00211');

-- Update existing: ï¿½ï¿½ï¿½Ù¿ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00319' WHERE name LIKE '%ï¿½ï¿½ï¿½Ù%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00319', 2024, '68.31'
FROM facilities WHERE admin_sym = '3-27140-00319'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.31',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ù¿ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00319', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00319');

-- Update existing: ï¿½ï¿½È­ï¿½ï¿½çº¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00507' WHERE name LIKE '%ï¿½ï¿½È­ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00507', 2024, '82.8'
FROM facilities WHERE admin_sym = '3-27140-00507'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½È­ï¿½ï¿½çº¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00507', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00507');

-- Update existing: È¿ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00395' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00395', 2024, '81.55'
FROM facilities WHERE admin_sym = '3-27140-00395'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00395', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00395');

-- Update existing: ï¿½ï¿½ï¿½Î³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00309' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00309', 2024, '44.28'
FROM facilities WHERE admin_sym = '3-27140-00309'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '44.28',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00309', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00309');

-- Update existing: ï¿½Ø¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00193' WHERE name LIKE '%ï¿½Ø¿ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00193', 2024, '49.28'
FROM facilities WHERE admin_sym = '3-27140-00193'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.28',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ø¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00193', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00193');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ë¹æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00549' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00549', 2024, '72.8'
FROM facilities WHERE admin_sym = '3-27140-00549'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ë¹æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00549', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00549');

-- Update existing: (ï¿½ï¿½)È¿ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-27140-00581' WHERE name LIKE '%(ï¿½ï¿½)È¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27140-00581', 2024, '75.55'
FROM facilities WHERE admin_sym = '2-27140-00581'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', '(ï¿½ï¿½)È¿ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-27140-00581', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-27140-00581');

-- Update existing: ï¿½È°ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-27140-00595' WHERE name LIKE '%ï¿½È°ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27140-00595', 2024, '79.05'
FROM facilities WHERE admin_sym = '2-27140-00595'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½È°ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-27140-00595', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-27140-00595');

-- Update existing: ï¿½Ñ»ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00383' WHERE name LIKE '%ï¿½Ñ»ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00383', 2024, '96.85'
FROM facilities WHERE admin_sym = '3-27140-00383'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ»ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00383', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00383');

-- Update existing: ï¿½ï¿½Æ¼ï¿½ï¿½ï¿½ï¿½È°ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00379' WHERE name LIKE '%ï¿½ï¿½Æ¼ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00379', 2024, '93.3'
FROM facilities WHERE admin_sym = '3-27140-00379'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Æ¼ï¿½ï¿½ï¿½ï¿½È°ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00379', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00379');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00543' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00543', 2024, '60.8'
FROM facilities WHERE admin_sym = '3-27140-00543'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00543', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00543');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00157' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00157', 2024, '92.35'
FROM facilities WHERE admin_sym = '3-27140-00157'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00157', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00157');

-- Update existing: ï¿½Ì½Ã¾Æ½Ç¹ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00557' WHERE name LIKE '%ï¿½Ì½Ã¾Æ½Ç%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00557', 2024, '91.05'
FROM facilities WHERE admin_sym = '3-27140-00557'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ì½Ã¾Æ½Ç¹ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00557', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00557');

-- Update existing: ï¿½ï¿½ï¿½Ý³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00451' WHERE name LIKE '%ï¿½ï¿½ï¿½Ý%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00451', 2024, '96.1'
FROM facilities WHERE admin_sym = '3-27140-00451'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ý³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00451', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00451');

-- Update existing: ï¿½ë±¸ï¿½ï¿½È°ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00561' WHERE name LIKE '%ï¿½ë±¸ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00561', 2024, '82.8'
FROM facilities WHERE admin_sym = '3-27140-00561'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ë±¸ï¿½ï¿½È°ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00561', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00561');

-- Update existing: Ã»ï¿½Æ¶ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00527' WHERE name LIKE '%Ã»ï¿½Æ¶ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00527', 2024, '92.3'
FROM facilities WHERE admin_sym = '3-27140-00527'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ã»ï¿½Æ¶ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00527', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00527');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ù¿ï¿½
UPDATE facilities SET admin_sym = '2-27140-00351' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27140-00351', 2024, '94.85'
FROM facilities WHERE admin_sym = '2-27140-00351'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ù¿ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-27140-00351', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-27140-00351');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-27140-00615' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27140-00615', 2024, '89.36'
FROM facilities WHERE admin_sym = '2-27140-00615'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.36',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-27140-00615', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-27140-00615');

-- Update existing: ï¿½×¸ï¿½ï¿½Ç¹ï¿½ï¿½É¾ï¿½ ï¿½Ö°ï¿½ï¿½ï¿½È£
UPDATE facilities SET admin_sym = '3-27140-00477' WHERE name LIKE '%ï¿½×¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00477', 2024, '94.35'
FROM facilities WHERE admin_sym = '3-27140-00477'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½×¸ï¿½ï¿½Ç¹ï¿½ï¿½É¾ï¿½ ï¿½Ö°ï¿½ï¿½ï¿½È£', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00477', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00477');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00337' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00337', 2024, '79.5'
FROM facilities WHERE admin_sym = '3-27140-00337'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00337', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00337');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-27140-00367' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27140-00367', 2024, '91.85'
FROM facilities WHERE admin_sym = '2-27140-00367'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-27140-00367', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-27140-00367');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00361' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00361', 2024, '92.85'
FROM facilities WHERE admin_sym = '3-27140-00361'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00361', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00361');

-- Update existing: È¿ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00531' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00531', 2024, '73.8'
FROM facilities WHERE admin_sym = '3-27140-00531'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00531', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00531');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00463' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00463', 2024, '81.85'
FROM facilities WHERE admin_sym = '3-27140-00463'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00463', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00463');

-- Update existing: ï¿½ï¿½ï¿½Ì¿ï¿½çº¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00479' WHERE name LIKE '%ï¿½ï¿½ï¿½Ì%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00479', 2024, '92.55'
FROM facilities WHERE admin_sym = '3-27140-00479'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ì¿ï¿½çº¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00479', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00479');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00535' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00535', 2024, '88.85'
FROM facilities WHERE admin_sym = '3-27140-00535'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00535', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00535');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00569' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00569', 2024, '87.8'
FROM facilities WHERE admin_sym = '3-27140-00569'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00569', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00569');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-27140-00601' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27140-00601', 2024, '76.3'
FROM facilities WHERE admin_sym = '2-27140-00601'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-27140-00601', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-27140-00601');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ö°ï¿½ï¿½ï¿½È£
UPDATE facilities SET admin_sym = '3-27140-00313' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00313', 2024, '76.85'
FROM facilities WHERE admin_sym = '3-27140-00313'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ö°ï¿½ï¿½ï¿½È£', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00313', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00313');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½(ï¿½ï¿½)ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00471' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00471', 2024, '80.5'
FROM facilities WHERE admin_sym = '3-27140-00471'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½(ï¿½ï¿½)ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00471', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00471');

-- Update existing: ï¿½ï¿½Æ¼ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00145' WHERE name LIKE '%ï¿½ï¿½Æ¼ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00145', 2024, '86.3'
FROM facilities WHERE admin_sym = '3-27140-00145'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Æ¼ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00145', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00145');

-- Update existing: ï¿½ï¿½Æ¼ï¿½ï¿½ï¿½Ç·ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00047' WHERE name LIKE '%ï¿½ï¿½Æ¼ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00047', 2024, '97'
FROM facilities WHERE admin_sym = '3-27140-00047'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Æ¼ï¿½ï¿½ï¿½Ç·ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00047', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00047');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00577' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00577', 2024, '80.5'
FROM facilities WHERE admin_sym = '3-27140-00577'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00577', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00577');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ïºï¿½ï¿½ï¿½ï¿½ë±¸
UPDATE facilities SET admin_sym = '3-27140-00335' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00335', 2024, '89.6'
FROM facilities WHERE admin_sym = '3-27140-00335'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ïºï¿½ï¿½ï¿½ï¿½ë±¸', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00335', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00335');

-- Update existing: ï¿½ï¿½ï¿½ï¿½(CL)ï¿½Þµï¿½Ä®
UPDATE facilities SET admin_sym = '3-27140-00493' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00493', 2024, '70.5'
FROM facilities WHERE admin_sym = '3-27140-00493'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½(CL)ï¿½Þµï¿½Ä®', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00493', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00493');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ë¹æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27140-00549' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00549', 2024, '75.5'
FROM facilities WHERE admin_sym = '3-27140-00549'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ë¹æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27140-00549', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27140-00549');

-- Update existing: (the)ï¿½ï¿½ï¿½å¸²ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27710-00147' WHERE name LIKE '%(the)ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27710-00147', 2024, '89.85'
FROM facilities WHERE admin_sym = '3-27710-00147'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', '(the)ï¿½ï¿½ï¿½å¸²ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27710-00147', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27710-00147');

-- Update existing: ï¿½é¼¼È¿ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27710-00185' WHERE name LIKE '%ï¿½é¼¼È¿ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27710-00185', 2024, '94.85'
FROM facilities WHERE admin_sym = '3-27710-00185'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½é¼¼È¿ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27710-00185', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27710-00185');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ï½Ã´Ï¾ï¿½ ï¿½Ù¿ï¿½ ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27710-00161' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27710-00161', 2024, '89.35'
FROM facilities WHERE admin_sym = '3-27710-00161'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ï½Ã´Ï¾ï¿½ ï¿½Ù¿ï¿½ ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27710-00161', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27710-00161');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27710-00063' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27710-00063', 2024, '47.38'
FROM facilities WHERE admin_sym = '3-27710-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '47.38',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27710-00063', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27710-00063');

-- Update existing: ï¿½Ç°ï¿½ï¿½àº¹ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-27710-00241' WHERE name LIKE '%ï¿½Ç°ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27710-00241', 2024, '77.02'
FROM facilities WHERE admin_sym = '2-27710-00241'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.02',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ç°ï¿½ï¿½àº¹ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-27710-00241', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-27710-00241');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27710-00191' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27710-00191', 2024, '85.32'
FROM facilities WHERE admin_sym = '3-27710-00191'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.32',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27710-00191', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27710-00191');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ì¿ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-27710-00227' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27710-00227', 2024, '85.74'
FROM facilities WHERE admin_sym = '2-27710-00227'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.74',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ì¿ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-27710-00227', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-27710-00227');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-27710-00219' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27710-00219', 2024, '74.05'
FROM facilities WHERE admin_sym = '2-27710-00219'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-27710-00219', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-27710-00219');

-- Update existing: ï¿½Þ¼ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-27710-00211' WHERE name LIKE '%ï¿½Þ¼ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27710-00211', 2024, '53'
FROM facilities WHERE admin_sym = '2-27710-00211'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Þ¼ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-27710-00211', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-27710-00211');

-- Update existing: ï¿½Ò¸ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27710-00183' WHERE name LIKE '%ï¿½Ò¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27710-00183', 2024, '82.8'
FROM facilities WHERE admin_sym = '3-27710-00183'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ò¸ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27710-00183', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27710-00183');

-- Update existing: Ç°ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-27710-00233' WHERE name LIKE '%Ç°ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27710-00233', 2024, '95.47'
FROM facilities WHERE admin_sym = '2-27710-00233'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.47',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ç°ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-27710-00233', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-27710-00233');

-- Update existing: ï¿½ï¿½Â¹æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-27710-00247' WHERE name LIKE '%ï¿½ï¿½Â¹æ¹%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27710-00247', 2024, '82.38'
FROM facilities WHERE admin_sym = '2-27710-00247'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.38',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Â¹æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-27710-00247', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-27710-00247');

-- Update existing: ï¿½Þ¼ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27710-00123' WHERE name LIKE '%ï¿½Þ¼ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27710-00123', 2024, '97.6'
FROM facilities WHERE admin_sym = '3-27710-00123'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Þ¼ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27710-00123', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27710-00123');

-- Update existing: ï¿½ï¿½ï¿½Õ³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27710-00163' WHERE name LIKE '%ï¿½ï¿½ï¿½Õ%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27710-00163', 2024, '95.8'
FROM facilities WHERE admin_sym = '3-27710-00163'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Õ³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27710-00163', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27710-00163');

-- Update existing: ï¿½Ì´ï¿½ï¿½ï¿½ ï¿½ï¿½È° ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½ ï¿½Þ¼ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-27710-00243' WHERE name LIKE '%ï¿½Ì´ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27710-00243', 2024, '79.05'
FROM facilities WHERE admin_sym = '2-27710-00243'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ì´ï¿½ï¿½ï¿½ ï¿½ï¿½È° ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½ ï¿½Þ¼ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-27710-00243', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-27710-00243');

-- Update existing: ï¿½ï¿½Çªï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27710-00069' WHERE name LIKE '%ï¿½ï¿½Çªï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27710-00069', 2024, '88.55'
FROM facilities WHERE admin_sym = '3-27710-00069'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Çªï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27710-00069', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27710-00069');

-- Update existing: ï¿½àº¹ï¿½Ñ³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27710-00197' WHERE name LIKE '%ï¿½àº¹ï¿½Ñ%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27710-00197', 2024, '83.35'
FROM facilities WHERE admin_sym = '3-27710-00197'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½Ñ³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27710-00197', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27710-00197');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27710-00191' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27710-00191', 2024, '93.85'
FROM facilities WHERE admin_sym = '3-27710-00191'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27710-00191', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27710-00191');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ì¿ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-27710-00227' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27710-00227', 2024, '86.55'
FROM facilities WHERE admin_sym = '2-27710-00227'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ì¿ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-27710-00227', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-27710-00227');

-- Update existing: ï¿½Ñ¸ï¿½ï¿½ï¿½ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-27710-00169' WHERE name LIKE '%ï¿½Ñ¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27710-00169', 2024, '86.35'
FROM facilities WHERE admin_sym = '2-27710-00169'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ¸ï¿½ï¿½ï¿½ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-27710-00169', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-27710-00169');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ È¿ ï¿½ï¿½È° ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-27710-00245' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27710-00245', 2024, '58.3'
FROM facilities WHERE admin_sym = '2-27710-00245'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ È¿ ï¿½ï¿½È° ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-27710-00245', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-27710-00245');

-- Update existing: ï¿½Ì¼ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27710-00181' WHERE name LIKE '%ï¿½Ì¼ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27710-00181', 2024, '79.8'
FROM facilities WHERE admin_sym = '3-27710-00181'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ì¼ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27710-00181', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27710-00181');

-- Update existing: ï¿½Ù»ï¿½È¿ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27710-00131' WHERE name LIKE '%ï¿½Ù»ï¿½È¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27710-00131', 2024, '81.3'
FROM facilities WHERE admin_sym = '3-27710-00131'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ù»ï¿½È¿ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27710-00131', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27710-00131');

-- Update existing: ï¿½ï¿½ï¿½Ñ³ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-27710-00157' WHERE name LIKE '%ï¿½ï¿½ï¿½Ñ%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27710-00157', 2024, '89.6'
FROM facilities WHERE admin_sym = '3-27710-00157'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ñ³ï¿½ï¿½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '3-27710-00157', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-27710-00157');

-- Update existing: ï¿½Ù½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-27710-00239' WHERE name LIKE '%ï¿½Ù½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27710-00239', 2024, '88.5'
FROM facilities WHERE admin_sym = '2-27710-00239'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ù½ï¿½ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '2-27710-00239', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-27710-00239');

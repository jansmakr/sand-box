-- Batch 187 of 226
-- Processing 100 facilities

-- Update existing: ï¿½ï¿½ï¿½Î»ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26530-00087' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26530-00087', 2024, '66.6'
FROM facilities WHERE admin_sym = '1-26530-00087'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î»ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26530-00087', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26530-00087');

-- Update existing: ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Î°Ç°ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26530-00078' WHERE name LIKE '%ï¿½Î»ê±¤ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26530-00078', 2024, '86.6'
FROM facilities WHERE admin_sym = '1-26530-00078'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Î°Ç°ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26530-00078', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26530-00078');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26530-00051' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26530-00051', 2024, '84.6'
FROM facilities WHERE admin_sym = '1-26530-00051'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26530-00051', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26530-00051');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½àº¹ï¿½Ñ¸ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26530-00056' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26530-00056', 2024, '79.85'
FROM facilities WHERE admin_sym = '1-26530-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½àº¹ï¿½Ñ¸ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26530-00056', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26530-00056');

-- Update existing: ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26530-00003' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26530-00003', 2024, '91.2'
FROM facilities WHERE admin_sym = '1-26530-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.2',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26530-00003', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26530-00003');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½È¨
UPDATE facilities SET admin_sym = '1-26530-00043' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26530-00043', 2024, '79.24'
FROM facilities WHERE admin_sym = '1-26530-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.24',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26530-00043', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26530-00043');

-- Update existing: ï¿½ï¿½ï¿½Î¿ï¿½ï¿½Ã¼ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26530-00088' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26530-00088', 2024, '61.09'
FROM facilities WHERE admin_sym = '1-26530-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.09',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î¿ï¿½ï¿½Ã¼ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26530-00088', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26530-00088');

-- Update existing: ï¿½ï¿½ï¿½Çºï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26380-00010' WHERE name LIKE '%ï¿½ï¿½ï¿½Ç%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26380-00010', 2024, '88.1'
FROM facilities WHERE admin_sym = '1-26380-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Çºï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26380-00010', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26380-00010');

-- Update existing: ï¿½ï¿½È­ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26380-00008' WHERE name LIKE '%ï¿½ï¿½È­ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26380-00008', 2024, '93.6'
FROM facilities WHERE admin_sym = '1-26380-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½È­ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26380-00008', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26380-00008');

-- Update existing: ï¿½Ñ¿ì¸®ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26380-00191' WHERE name LIKE '%ï¿½Ñ¿ì¸®ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26380-00191', 2024, '87.12'
FROM facilities WHERE admin_sym = '1-26380-00191'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.12',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ¿ì¸®ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26380-00191', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26380-00191');

-- Update existing: ï¿½ï¿½Çªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26380-00086' WHERE name LIKE '%ï¿½ï¿½Çªï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26380-00086', 2024, '64.28'
FROM facilities WHERE admin_sym = '1-26380-00086'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.28',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Çªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26380-00086', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26380-00086');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26380-00230' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26380-00230', 2024, '57.93'
FROM facilities WHERE admin_sym = '1-26380-00230'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.93',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26380-00230', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26380-00230');

-- Update existing: ï¿½ï¿½Ã¢ï¿½Ç¹ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26380-00011' WHERE name LIKE '%ï¿½ï¿½Ã¢ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26380-00011', 2024, '93.1'
FROM facilities WHERE admin_sym = '1-26380-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ã¢ï¿½Ç¹ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26380-00011', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26380-00011');

-- Update existing: È¯ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26380-00118' WHERE name LIKE '%È¯ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26380-00118', 2024, '94.1'
FROM facilities WHERE admin_sym = '1-26380-00118'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¯ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26380-00118', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26380-00118');

-- Update existing: ï¿½È½É³ï¿½ï¿½Î°Ç°ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26380-00107' WHERE name LIKE '%ï¿½È½É³ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26380-00107', 2024, '75.97'
FROM facilities WHERE admin_sym = '1-26380-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.97',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½È½É³ï¿½ï¿½Î°Ç°ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26380-00107', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26380-00107');

-- Update existing: ï¿½Æµï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26380-00116' WHERE name LIKE '%ï¿½Æµï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26380-00116', 2024, '81.48'
FROM facilities WHERE admin_sym = '1-26380-00116'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.48',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Æµï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26380-00116', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26380-00116');

-- Update existing: ï¿½ï¿½Ã¢ï¿½ï¿½ï¿½ï¿½ï¿½×¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26140-00051' WHERE name LIKE '%ï¿½ï¿½Ã¢ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26140-00051', 2024, '69.9'
FROM facilities WHERE admin_sym = '1-26140-00051'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.9',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ã¢ï¿½ï¿½ï¿½ï¿½ï¿½×¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26140-00051', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26140-00051');

-- Update existing: ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26140-00053' WHERE name LIKE '%ï¿½Ç¹ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26140-00053', 2024, '90.6'
FROM facilities WHERE admin_sym = '1-26140-00053'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26140-00053', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26140-00053');

-- Update existing: ï¿½Ûµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26140-00068' WHERE name LIKE '%ï¿½Ûµï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26140-00068', 2024, '82.89'
FROM facilities WHERE admin_sym = '1-26140-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.89',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ûµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26140-00068', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26140-00068');

-- Update existing: ï¿½È³ï¿½ï¿½ï¿½ï¿½Î°Ç°ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26140-00008' WHERE name LIKE '%ï¿½È³ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26140-00008', 2024, '87.85'
FROM facilities WHERE admin_sym = '1-26140-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½È³ï¿½ï¿½ï¿½ï¿½Î°Ç°ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26140-00008', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26140-00008');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26500-00005' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26500-00005', 2024, '80.85'
FROM facilities WHERE admin_sym = '1-26500-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26500-00005', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26500-00005');

-- Update existing: ï¿½òµ¹¿ï¿½ç¼¾ï¿½ï¿½(ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½)
UPDATE facilities SET admin_sym = '1-26500-00013' WHERE name LIKE '%ï¿½òµ¹¿ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26500-00013', 2024, '93.32'
FROM facilities WHERE admin_sym = '1-26500-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.32',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½òµ¹¿ï¿½ç¼¾ï¿½ï¿½(ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½)', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26500-00013', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26500-00013');

-- Update existing: ï¿½ï¿½ï¿½Ðµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26500-00004' WHERE name LIKE '%ï¿½ï¿½ï¿½Ð%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26500-00004', 2024, '95.35'
FROM facilities WHERE admin_sym = '1-26500-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ðµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26500-00004', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26500-00004');

-- Update existing: ï¿½ï¿½ï¿½Ö³Ê½ï¿½È¨
UPDATE facilities SET admin_sym = '1-26500-00014' WHERE name LIKE '%ï¿½ï¿½ï¿½Ö%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26500-00014', 2024, '51.59'
FROM facilities WHERE admin_sym = '1-26500-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '51.59',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ö³Ê½ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26500-00014', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26500-00014');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26500-00010' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26500-00010', 2024, '70.92'
FROM facilities WHERE admin_sym = '1-26500-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.92',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26500-00010', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26500-00010');

-- Update existing: È£ï¿½ï¿½ï¿½ï¿½Î°Ç°ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26470-00001' WHERE name LIKE '%È£ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26470-00001', 2024, '88.55'
FROM facilities WHERE admin_sym = '1-26470-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È£ï¿½ï¿½ï¿½ï¿½Î°Ç°ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26470-00001', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26470-00001');

-- Update existing: Å«ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26470-00148' WHERE name LIKE '%Å«ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26470-00148', 2024, '77.68'
FROM facilities WHERE admin_sym = '1-26470-00148'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.68',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Å«ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26470-00148', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26470-00148');

-- Update existing: ï¿½ï¿½È­ï¿½ï¿½ ï¿½Ò±Ô¸ï¿½ï¿½ï¿½Ã¼ï¿½(ï¿½ï¿½ï¿½ï¿½)
UPDATE facilities SET admin_sym = '1-26470-00020' WHERE name LIKE '%ï¿½ï¿½È­ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26470-00020', 2024, '91.98'
FROM facilities WHERE admin_sym = '1-26470-00020'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.98',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½È­ï¿½ï¿½ ï¿½Ò±Ô¸ï¿½ï¿½ï¿½Ã¼ï¿½(ï¿½ï¿½ï¿½ï¿½)', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26470-00020', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26470-00020');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ô¹Ú²É³ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26470-00046' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26470-00046', 2024, '57.65'
FROM facilities WHERE admin_sym = '1-26470-00046'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.65',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ô¹Ú²É³ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26470-00046', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26470-00046');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ý³ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26470-00047' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26470-00047', 2024, '59.19'
FROM facilities WHERE admin_sym = '1-26470-00047'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.19',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ý³ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26470-00047', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26470-00047');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ì·ç³ªï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26470-00048' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26470-00048', 2024, '64.94'
FROM facilities WHERE admin_sym = '1-26470-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.94',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ì·ç³ªï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26470-00048', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26470-00048');

-- Update existing: ï¿½Ä¶ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î°Ç°ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26200-00004' WHERE name LIKE '%ï¿½Ä¶ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26200-00004', 2024, '91.6'
FROM facilities WHERE admin_sym = '1-26200-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ä¶ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î°Ç°ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26200-00004', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26200-00004');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26200-00120' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26200-00120', 2024, '67.18'
FROM facilities WHERE admin_sym = '1-26200-00120'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.18',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26200-00120', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26200-00120');

-- Update existing: ï¿½Û»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26110-00054' WHERE name LIKE '%ï¿½Û»ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26110-00054', 2024, '68.95'
FROM facilities WHERE admin_sym = '1-26110-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.95',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Û»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26110-00054', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26110-00054');

-- Update existing: ï¿½Ø¿ï¿½ï¿½Ç¹ï¿½È¨
UPDATE facilities SET admin_sym = '1-26350-00150' WHERE name LIKE '%ï¿½Ø¿ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26350-00150', 2024, '88.1'
FROM facilities WHERE admin_sym = '1-26350-00150'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ø¿ï¿½ï¿½Ç¹ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26350-00150', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26350-00150');

-- Update existing: ï¿½È½É³ï¿½ï¿½Î¿ï¿½ï¿½Ã¼ï¿½
UPDATE facilities SET admin_sym = '1-26350-00023' WHERE name LIKE '%ï¿½È½É³ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26350-00023', 2024, '82.35'
FROM facilities WHERE admin_sym = '1-26350-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½È½É³ï¿½ï¿½Î¿ï¿½ï¿½Ã¼ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26350-00023', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26350-00023');

-- Update existing: ï¿½ï¿½ï¿½Î½Ç¹ï¿½È¨
UPDATE facilities SET admin_sym = '1-26350-00064' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26350-00064', 2024, '72.85'
FROM facilities WHERE admin_sym = '1-26350-00064'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î½Ç¹ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26350-00064', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26350-00064');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½î¸£ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26350-00136' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26350-00136', 2024, '87.6'
FROM facilities WHERE admin_sym = '1-26350-00136'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½î¸£ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26350-00136', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26350-00136');

-- Update existing: ï¿½ï¿½È­ï¿½Ò±Ô¸ï¿½ï¿½ï¿½Ã¼ï¿½
UPDATE facilities SET admin_sym = '1-26350-00008' WHERE name LIKE '%ï¿½ï¿½È­ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26350-00008', 2024, '77.59'
FROM facilities WHERE admin_sym = '1-26350-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.59',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½È­ï¿½Ò±Ô¸ï¿½ï¿½ï¿½Ã¼ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26350-00008', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26350-00008');

-- Update existing: ï¿½ï¿½È­ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26350-00006' WHERE name LIKE '%ï¿½ï¿½È­ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26350-00006', 2024, '90.84'
FROM facilities WHERE admin_sym = '1-26350-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.84',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½È­ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26350-00006', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26350-00006');

-- Update existing: ï¿½ï¿½ï¿½Ù¿ï¿½ ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26350-00240' WHERE name LIKE '%ï¿½ï¿½ï¿½Ù%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26350-00240', 2024, '33.16'
FROM facilities WHERE admin_sym = '1-26350-00240'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '33.16',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ù¿ï¿½ ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26350-00240', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26350-00240');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26350-00235' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26350-00235', 2024, '45.64'
FROM facilities WHERE admin_sym = '1-26350-00235'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '45.64',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26350-00235', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26350-00235');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-26350-00221' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26350-00221', 2024, '29.16'
FROM facilities WHERE admin_sym = '1-26350-00221'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '29.16',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½Î»ê±¤ï¿½ï¿½ï¿½ï¿½', '1-26350-00221', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-26350-00221');

-- Update existing: SMSï¿½×¸ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47720-00013' WHERE name LIKE '%SMSï¿½×¸ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47720-00013', 2024, '91.35'
FROM facilities WHERE admin_sym = '1-47720-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'SMSï¿½×¸ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-47720-00013', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47720-00013');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ñ¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47720-00029' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47720-00029', 2024, '90.5'
FROM facilities WHERE admin_sym = '1-47720-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ñ¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-47720-00029', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47720-00029');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-47720-00041' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47720-00041', 2024, '58.17'
FROM facilities WHERE admin_sym = '1-47720-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.17',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-47720-00041', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-47720-00041');

-- Update existing: ï¿½Þ¸ï¿½ï¿½ï¿½ï¿½Î·ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27200-00081' WHERE name LIKE '%ï¿½Þ¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00081', 2024, '92.35'
FROM facilities WHERE admin_sym = '1-27200-00081'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Þ¸ï¿½ï¿½ï¿½ï¿½Î·ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27200-00081', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27200-00081');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27200-00207' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00207', 2024, '83.51'
FROM facilities WHERE admin_sym = '1-27200-00207'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.51',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27200-00207', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27200-00207');

-- Update existing: ï¿½Õ»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27200-00088' WHERE name LIKE '%ï¿½Õ»ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00088', 2024, '92.3'
FROM facilities WHERE admin_sym = '1-27200-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Õ»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27200-00088', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27200-00088');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27200-00011' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00011', 2024, '88.6'
FROM facilities WHERE admin_sym = '1-27200-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27200-00011', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27200-00011');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27200-00004' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00004', 2024, '96.1'
FROM facilities WHERE admin_sym = '1-27200-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27200-00004', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27200-00004');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27200-00052' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00052', 2024, '46.7'
FROM facilities WHERE admin_sym = '1-27200-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '46.7',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27200-00052', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27200-00052');

-- Update existing: ï¿½Â´ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Å¸ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27200-00090' WHERE name LIKE '%ï¿½Â´ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00090', 2024, '86.78'
FROM facilities WHERE admin_sym = '1-27200-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.78',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Â´ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Å¸ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27200-00090', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27200-00090');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27200-00175' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00175', 2024, '88.66'
FROM facilities WHERE admin_sym = '1-27200-00175'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.66',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27200-00175', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27200-00175');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ È¿ ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27200-00099' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00099', 2024, '83.38'
FROM facilities WHERE admin_sym = '1-27200-00099'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.38',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ È¿ ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27200-00099', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27200-00099');

-- Update existing: ï¿½ï¿½È°ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27200-00125' WHERE name LIKE '%ï¿½ï¿½È°ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00125', 2024, '70.08'
FROM facilities WHERE admin_sym = '1-27200-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.08',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½È°ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27200-00125', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27200-00125');

-- Update existing: ï¿½ï¿½ï¿½ç¸¯ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27200-00160' WHERE name LIKE '%ï¿½ï¿½ï¿½ç%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00160', 2024, '96.1'
FROM facilities WHERE admin_sym = '1-27200-00160'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ç¸¯ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27200-00160', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27200-00160');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½È¨
UPDATE facilities SET admin_sym = '1-27200-00100' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00100', 2024, '93.44'
FROM facilities WHERE admin_sym = '1-27200-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.44',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27200-00100', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27200-00100');

-- Update existing: È¿ï¿½ï¿½ï¿½Ô¿ï¿½ï¿½ï¿½2
UPDATE facilities SET admin_sym = '1-27200-00174' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00174', 2024, '78.64'
FROM facilities WHERE admin_sym = '1-27200-00174'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.64',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½Ô¿ï¿½ï¿½ï¿½2', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27200-00174', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27200-00174');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½É¾ï¿½ï¿½çº¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27200-00194' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00194', 2024, '82.94'
FROM facilities WHERE admin_sym = '1-27200-00194'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.94',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½É¾ï¿½ï¿½çº¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27200-00194', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27200-00194');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Õ³ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27200-00106' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00106', 2024, '89.08'
FROM facilities WHERE admin_sym = '1-27200-00106'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.08',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Õ³ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27200-00106', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27200-00106');

-- Update existing: ï¿½Ö´ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27200-00199' WHERE name LIKE '%ï¿½Ö´ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00199', 2024, '74.03'
FROM facilities WHERE admin_sym = '1-27200-00199'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.03',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ö´ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27200-00199', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27200-00199');

-- Update existing: È¿ï¿½ï¿½ï¿½Ô¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27200-00155' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00155', 2024, '87.2'
FROM facilities WHERE admin_sym = '1-27200-00155'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.2',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½Ô¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27200-00155', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27200-00155');

-- Update existing: ï¿½î¸®ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27200-00191' WHERE name LIKE '%ï¿½î¸®ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00191', 2024, '84.1'
FROM facilities WHERE admin_sym = '1-27200-00191'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½î¸®ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27200-00191', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27200-00191');

-- Update existing: ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27200-00142' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00142', 2024, '47.82'
FROM facilities WHERE admin_sym = '1-27200-00142'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '47.82',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27200-00142', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27200-00142');

-- Update existing: ï¿½ï¿½ï¿½ë±¸1ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27200-00135' WHERE name LIKE '%ï¿½ï¿½ï¿½ë%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00135', 2024, '72.66'
FROM facilities WHERE admin_sym = '1-27200-00135'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.66',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ë±¸1ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27200-00135', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27200-00135');

-- Update existing: ï¿½ï¿½ï¿½ë±¸3ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27200-00137' WHERE name LIKE '%ï¿½ï¿½ï¿½ë%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00137', 2024, '73.55'
FROM facilities WHERE admin_sym = '1-27200-00137'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ë±¸3ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27200-00137', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27200-00137');

-- Update existing: ï¿½ï¿½ï¿½ë±¸4ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27200-00138' WHERE name LIKE '%ï¿½ï¿½ï¿½ë%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00138', 2024, '75.9'
FROM facilities WHERE admin_sym = '1-27200-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.9',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ë±¸4ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27200-00138', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27200-00138');

-- Update existing: ï¿½àº¹ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27290-00496' WHERE name LIKE '%ï¿½àº¹ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00496', 2024, '55.21'
FROM facilities WHERE admin_sym = '1-27290-00496'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.21',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00496', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00496');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27290-00180' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00180', 2024, '87.35'
FROM facilities WHERE admin_sym = '1-27290-00180'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00180', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00180');

-- Update existing: ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½2
UPDATE facilities SET admin_sym = '1-27290-00355' WHERE name LIKE '%ï¿½ï¿½ï¿½Ç%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00355', 2024, '90.1'
FROM facilities WHERE admin_sym = '1-27290-00355'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½2', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00355', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00355');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27290-00452' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00452', 2024, '84.85'
FROM facilities WHERE admin_sym = '1-27290-00452'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00452', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00452');

-- Update existing: ï¿½ï¿½Ï½Ç¹ï¿½Å¸ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27290-00212' WHERE name LIKE '%ï¿½ï¿½Ï½Ç¹%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00212', 2024, '91.55'
FROM facilities WHERE admin_sym = '1-27290-00212'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ï½Ç¹ï¿½Å¸ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00212', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00212');

-- Update existing: ï¿½ï¿½Ï¼ï¿½ ï¿½Ç¹ï¿½Å¸ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27290-00252' WHERE name LIKE '%ï¿½ï¿½Ï¼ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00252', 2024, '94.1'
FROM facilities WHERE admin_sym = '1-27290-00252'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ï¼ï¿½ ï¿½Ç¹ï¿½Å¸ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00252', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00252');

-- Update existing: ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27290-00024' WHERE name LIKE '%ï¿½ë±¸ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00024', 2024, '98.55'
FROM facilities WHERE admin_sym = '1-27290-00024'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00024', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00024');

-- Update existing: ï¿½Ã¿Â¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27290-00040' WHERE name LIKE '%ï¿½Ã¿Â¿ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00040', 2024, '93.6'
FROM facilities WHERE admin_sym = '1-27290-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ã¿Â¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00040', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00040');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27290-00428' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00428', 2024, '94.1'
FROM facilities WHERE admin_sym = '1-27290-00428'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00428', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00428');

-- Update existing: ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27290-00261' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00261', 2024, '92.52'
FROM facilities WHERE admin_sym = '1-27290-00261'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.52',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00261', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00261');

-- Update existing: ï¿½Â½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27290-00096' WHERE name LIKE '%ï¿½Â½Ç¹ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00096', 2024, '89.49'
FROM facilities WHERE admin_sym = '1-27290-00096'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.49',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Â½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00096', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00096');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27290-00542' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00542', 2024, '61.91'
FROM facilities WHERE admin_sym = '1-27290-00542'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.91',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00542', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00542');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27290-00250' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00250', 2024, '53.63'
FROM facilities WHERE admin_sym = '1-27290-00250'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.63',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00250', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00250');

-- Update existing: ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27290-00421' WHERE name LIKE '%ï¿½ï¿½ï¿½Ç%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00421', 2024, '83.31'
FROM facilities WHERE admin_sym = '1-27290-00421'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.31',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00421', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00421');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ø¿ï¿½ï¿½Å¸ï¿½ï¿½1
UPDATE facilities SET admin_sym = '1-27290-00486' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00486', 2024, '81.57'
FROM facilities WHERE admin_sym = '1-27290-00486'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.57',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ø¿ï¿½ï¿½Å¸ï¿½ï¿½1', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00486', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00486');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ø¿ï¿½ï¿½Å¸ï¿½ï¿½2
UPDATE facilities SET admin_sym = '1-27290-00487' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00487', 2024, '78.72'
FROM facilities WHERE admin_sym = '1-27290-00487'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.72',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ø¿ï¿½ï¿½Å¸ï¿½ï¿½2', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00487', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00487');

-- Update existing: ï¿½Â¸ï¿½ï¿½È¿ï¿½ï¿½ï¿½Î°ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27290-00337' WHERE name LIKE '%ï¿½Â¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00337', 2024, '83.98'
FROM facilities WHERE admin_sym = '1-27290-00337'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.98',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Â¸ï¿½ï¿½È¿ï¿½ï¿½ï¿½Î°ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00337', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00337');

-- Update existing: ï¿½Ñµï¿½ï¿½ï¿½ï¿½ï¿½1
UPDATE facilities SET admin_sym = '1-27290-00403' WHERE name LIKE '%ï¿½Ñµï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00403', 2024, '77.76'
FROM facilities WHERE admin_sym = '1-27290-00403'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.76',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñµï¿½ï¿½ï¿½ï¿½ï¿½1', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00403', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00403');

-- Update existing: ï¿½Ñµï¿½ï¿½ï¿½ï¿½ï¿½2
UPDATE facilities SET admin_sym = '1-27290-00404' WHERE name LIKE '%ï¿½Ñµï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00404', 2024, '75.71'
FROM facilities WHERE admin_sym = '1-27290-00404'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.71',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñµï¿½ï¿½ï¿½ï¿½ï¿½2', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00404', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00404');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27290-00221' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00221', 2024, '88.65'
FROM facilities WHERE admin_sym = '1-27290-00221'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.65',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00221', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00221');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27290-00320' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00320', 2024, '83.47'
FROM facilities WHERE admin_sym = '1-27290-00320'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.47',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00320', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00320');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27290-00367' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00367', 2024, '88.21'
FROM facilities WHERE admin_sym = '1-27290-00367'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.21',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00367', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00367');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½2ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27290-00539' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00539', 2024, '86.82'
FROM facilities WHERE admin_sym = '1-27290-00539'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.82',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½2ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00539', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00539');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½3ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27290-00540' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00540', 2024, '85.34'
FROM facilities WHERE admin_sym = '1-27290-00540'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.34',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½3ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00540', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00540');

-- Update existing: ï¿½Å¼ï¿½ï¿½ï¿½Ç¹ï¿½È¨
UPDATE facilities SET admin_sym = '1-27290-00214' WHERE name LIKE '%ï¿½Å¼ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00214', 2024, '60.5'
FROM facilities WHERE admin_sym = '1-27290-00214'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Å¼ï¿½ï¿½ï¿½Ç¹ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00214', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00214');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½È¨
UPDATE facilities SET admin_sym = '1-27290-00238' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00238', 2024, '93.41'
FROM facilities WHERE admin_sym = '1-27290-00238'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.41',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00238', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00238');

-- Update existing: ï¿½Ò¸ï¿½ï¿½Ç¹ï¿½È¨ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27290-00392' WHERE name LIKE '%ï¿½Ò¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00392', 2024, '95.74'
FROM facilities WHERE admin_sym = '1-27290-00392'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.74',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ò¸ï¿½ï¿½Ç¹ï¿½È¨ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00392', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00392');

-- Update existing: ï¿½×¸ï¿½ï¿½ï¿½ï¿½Õºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27290-00197' WHERE name LIKE '%ï¿½×¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00197', 2024, '94.64'
FROM facilities WHERE admin_sym = '1-27290-00197'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.64',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½×¸ï¿½ï¿½ï¿½ï¿½Õºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27290-00197', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27290-00197');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ø½Ç¹ï¿½Å¸ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27710-00116' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27710-00116', 2024, '82.75'
FROM facilities WHERE admin_sym = '1-27710-00116'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.75',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ø½Ç¹ï¿½Å¸ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27710-00116', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27710-00116');

-- Update existing: ï¿½Ù»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27710-00110' WHERE name LIKE '%ï¿½Ù»ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27710-00110', 2024, '90.85'
FROM facilities WHERE admin_sym = '1-27710-00110'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ù»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27710-00110', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27710-00110');

-- Update existing: ï¿½ï¿½Çªï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27710-00070' WHERE name LIKE '%ï¿½ï¿½Çªï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27710-00070', 2024, '91.35'
FROM facilities WHERE admin_sym = '1-27710-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Çªï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27710-00070', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27710-00070');

-- Update existing: ï¿½ï¿½ï¿½Ð¹Ð¸ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-27710-00062' WHERE name LIKE '%ï¿½ï¿½ï¿½Ð%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27710-00062', 2024, '92.1'
FROM facilities WHERE admin_sym = '1-27710-00062'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ð¹Ð¸ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', '1-27710-00062', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-27710-00062');

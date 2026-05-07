-- Batch 224 of 226
-- Processing 100 facilities

-- Update existing: ï¿½ì¸®ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48270-00108' WHERE name LIKE '%ï¿½ì¸®ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00108', 2024, '63.8'
FROM facilities WHERE admin_sym = '1-48270-00108'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ì¸®ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48270-00108', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48270-00108');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48270-00102' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00102', 2024, '84.79'
FROM facilities WHERE admin_sym = '1-48270-00102'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.79',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48270-00102', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48270-00102');

-- Update existing: ï¿½ï¿½ï¿½Î³ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48270-00008' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00008', 2024, '85.85'
FROM facilities WHERE admin_sym = '1-48270-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î³ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48270-00008', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48270-00008');

-- Update existing: ï¿½ï¿½Ý¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48270-00116' WHERE name LIKE '%ï¿½ï¿½Ý¿ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00116', 2024, '91.35'
FROM facilities WHERE admin_sym = '1-48270-00116'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ý¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48270-00116', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48270-00116');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48270-00165' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00165', 2024, '65.25'
FROM facilities WHERE admin_sym = '1-48270-00165'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.25',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48270-00165', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48270-00165');

-- Update existing: ï¿½Ð¾ï¿½Ã¸ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48270-00001' WHERE name LIKE '%ï¿½Ð¾ï¿½Ã¸%' AND sido = 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00001', 2024, '81.85'
FROM facilities WHERE admin_sym = '1-48270-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ð¾ï¿½Ã¸ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼', 'ï¿½ï¿½ó³²µï¿½', '1-48270-00001', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48270-00001');

-- Update existing: ï¿½ï¿½ï¿½Î¿ï¿½ï¿½Ã¼ï¿½ È¿ï¿½É¸ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48270-00099' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00099', 2024, '82.64'
FROM facilities WHERE admin_sym = '1-48270-00099'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.64',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î¿ï¿½ï¿½Ã¼ï¿½ È¿ï¿½É¸ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48270-00099', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48270-00099');

-- Update existing: ï¿½Ò¸ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48270-00090' WHERE name LIKE '%ï¿½Ò¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00090', 2024, '86.26'
FROM facilities WHERE admin_sym = '1-48270-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.26',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ò¸ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48270-00090', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48270-00090');

-- Update existing: Ãµï¿½ï¿½ï¿½ï¿½ï¿½Úºï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48270-00103' WHERE name LIKE '%Ãµï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00103', 2024, '70.04'
FROM facilities WHERE admin_sym = '1-48270-00103'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.04',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ãµï¿½ï¿½ï¿½ï¿½ï¿½Úºï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48270-00103', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48270-00103');

-- Update existing: ï¿½Ñ°ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48270-00120' WHERE name LIKE '%ï¿½Ñ°ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00120', 2024, '83.74'
FROM facilities WHERE admin_sym = '1-48270-00120'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.74',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ°ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48270-00120', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48270-00120');

-- Update existing: ï¿½Üºï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48270-00145' WHERE name LIKE '%ï¿½Üºï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00145', 2024, '81.79'
FROM facilities WHERE admin_sym = '1-48270-00145'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.79',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Üºï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48270-00145', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48270-00145');

-- Update existing: ï¿½àº¹ï¿½ï¿½ ï¿½Ê½ï¿½È¨ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48270-00125' WHERE name LIKE '%ï¿½àº¹ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00125', 2024, '77.19'
FROM facilities WHERE admin_sym = '1-48270-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.19',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½ï¿½ ï¿½Ê½ï¿½È¨ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48270-00125', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48270-00125');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48270-00097' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00097', 2024, '93.42'
FROM facilities WHERE admin_sym = '1-48270-00097'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.42',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48270-00097', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48270-00097');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48270-00023' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00023', 2024, '74.51'
FROM facilities WHERE admin_sym = '1-48270-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.51',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48270-00023', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48270-00023');

-- Update existing: È£ï¿½ï¿½ï¿½Ì³ï¿½ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48270-00136' WHERE name LIKE '%È£ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00136', 2024, '86.37'
FROM facilities WHERE admin_sym = '1-48270-00136'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.37',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È£ï¿½ï¿½ï¿½Ì³ï¿½ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48270-00136', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48270-00136');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48270-00138' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00138', 2024, '75.23'
FROM facilities WHERE admin_sym = '1-48270-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.23',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48270-00138', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48270-00138');

-- Update existing: ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48240-00047' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00047', 2024, '90.1'
FROM facilities WHERE admin_sym = '1-48240-00047'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48240-00047', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48240-00047');

-- Update existing: ï¿½Î¸ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48240-00060' WHERE name LIKE '%ï¿½Î¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00060', 2024, '85.6'
FROM facilities WHERE admin_sym = '1-48240-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Î¸ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48240-00060', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48240-00060');

-- Update existing: ï¿½ï¿½Ãµï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48240-00002' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00002', 2024, '79.44'
FROM facilities WHERE admin_sym = '1-48240-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.44',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48240-00002', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48240-00002');

-- Update existing: ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48240-00004' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00004', 2024, '87.05'
FROM facilities WHERE admin_sym = '1-48240-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48240-00004', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48240-00004');

-- Update existing: ï¿½ï¿½Ãµï¿½àº¹ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48240-00059' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00059', 2024, '94.82'
FROM facilities WHERE admin_sym = '1-48240-00059'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.82',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½àº¹ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48240-00059', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48240-00059');

-- Update existing: ï¿½ï¿½Ãµï¿½Ö¹ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48240-00089' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00089', 2024, '93.64'
FROM facilities WHERE admin_sym = '1-48240-00089'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.64',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½Ö¹ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48240-00089', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48240-00089');

-- Update existing: ï¿½ï¿½Ãµï¿½Ç¾ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48240-00063' WHERE name LIKE '%ï¿½ï¿½Ãµï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00063', 2024, '95.6'
FROM facilities WHERE admin_sym = '1-48240-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ãµï¿½Ç¾ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48240-00063', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48240-00063');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48240-00087' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00087', 2024, '97.1'
FROM facilities WHERE admin_sym = '1-48240-00087'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48240-00087', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48240-00087');

-- Update existing: ï¿½Ï»ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48240-00116' WHERE name LIKE '%ï¿½Ï»ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00116', 2024, '93.02'
FROM facilities WHERE admin_sym = '1-48240-00116'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.02',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ï»ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48240-00116', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48240-00116');

-- Update existing: ï¿½Ñ¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48240-00068' WHERE name LIKE '%ï¿½Ñ¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00068', 2024, '87.22'
FROM facilities WHERE admin_sym = '1-48240-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.22',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48240-00068', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48240-00068');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½(ï¿½î¸£ï¿½Ã³ï¿½ï¿½ï¿½)
UPDATE facilities SET admin_sym = '1-48240-00135' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00135', 2024, '39.69'
FROM facilities WHERE admin_sym = '1-48240-00135'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '39.69',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½(ï¿½î¸£ï¿½Ã³ï¿½ï¿½ï¿½)', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48240-00135', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48240-00135');

-- Update existing: ï¿½Ö»ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48240-00062' WHERE name LIKE '%ï¿½Ö»ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00062', 2024, '82.77'
FROM facilities WHERE admin_sym = '1-48240-00062'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.77',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ö»ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48240-00062', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48240-00062');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48240-00082' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00082', 2024, '61.3'
FROM facilities WHERE admin_sym = '1-48240-00082'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48240-00082', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48240-00082');

-- Update existing: ï¿½ï¿½Çªï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48240-00140' WHERE name LIKE '%ï¿½ï¿½Çªï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00140', 2024, '84.24'
FROM facilities WHERE admin_sym = '1-48240-00140'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.24',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Çªï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48240-00140', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48240-00140');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Î·ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48240-00091' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00091', 2024, '92.6'
FROM facilities WHERE admin_sym = '1-48240-00091'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Î·ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48240-00091', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48240-00091');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48860-00065' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48860-00065', 2024, '52.56'
FROM facilities WHERE admin_sym = '1-48860-00065'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '52.56',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48860-00065', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48860-00065');

-- Update existing: ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48860-00030' WHERE name LIKE '%ï¿½ï¿½Ã»ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48860-00030', 2024, '90.35'
FROM facilities WHERE admin_sym = '1-48860-00030'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48860-00030', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48860-00030');

-- Update existing: ï¿½ï¿½ï¿½Ï³ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48860-00040' WHERE name LIKE '%ï¿½ï¿½ï¿½Ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48860-00040', 2024, '82.35'
FROM facilities WHERE admin_sym = '1-48860-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ï³ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48860-00040', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48860-00040');

-- Update existing: ï¿½ï¿½Ã»ï¿½ì¸®ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48860-00010' WHERE name LIKE '%ï¿½ï¿½Ã»ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48860-00010', 2024, '74.85'
FROM facilities WHERE admin_sym = '1-48860-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ã»ï¿½ì¸®ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48860-00010', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48860-00010');

-- Update existing: ï¿½ï¿½Ã»ï¿½Ñ¹ï¿½Ç¹ï¿½Å¸ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48860-00060' WHERE name LIKE '%ï¿½ï¿½Ã»ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48860-00060', 2024, '93.35'
FROM facilities WHERE admin_sym = '1-48860-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ã»ï¿½Ñ¹ï¿½Ç¹ï¿½Å¸ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48860-00060', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48860-00060');

-- Update existing: ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48860-00002' WHERE name LIKE '%ï¿½ï¿½Ã»ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48860-00002', 2024, '94.6'
FROM facilities WHERE admin_sym = '1-48860-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48860-00002', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48860-00002');

-- Update existing: ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48860-00003' WHERE name LIKE '%ï¿½ï¿½Ã»ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48860-00003', 2024, '95.05'
FROM facilities WHERE admin_sym = '1-48860-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48860-00003', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48860-00003');

-- Update existing: ï¿½Ñ»ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48860-00070' WHERE name LIKE '%ï¿½Ñ»ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48860-00070', 2024, '87.3'
FROM facilities WHERE admin_sym = '1-48860-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ»ï¿½ï¿½ï¿½Ç¹ï¿½Å¸ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48860-00070', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48860-00070');

-- Update existing: ï¿½ï¿½Ã»ï¿½ï¿½ï¿½É¼Ò±Ô¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Õ¼ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48860-00015' WHERE name LIKE '%ï¿½ï¿½Ã»ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48860-00015', 2024, '69.3'
FROM facilities WHERE admin_sym = '1-48860-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ã»ï¿½ï¿½ï¿½É¼Ò±Ô¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Õ¼ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48860-00015', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48860-00015');

-- Update existing: ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48860-00054' WHERE name LIKE '%ï¿½ï¿½Ã»ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48860-00054', 2024, '88.8'
FROM facilities WHERE admin_sym = '1-48860-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48860-00054', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48860-00054');

-- Update existing: ï¿½Ñ¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48330-00179' WHERE name LIKE '%ï¿½Ñ¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00179', 2024, '40.05'
FROM facilities WHERE admin_sym = '1-48330-00179'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '40.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48330-00179', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48330-00179');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48330-00010' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00010', 2024, '88.85'
FROM facilities WHERE admin_sym = '1-48330-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48330-00010', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48330-00010');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48330-00227' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00227', 2024, '59.38'
FROM facilities WHERE admin_sym = '1-48330-00227'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.38',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48330-00227', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48330-00227');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48330-00006' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00006', 2024, '86.51'
FROM facilities WHERE admin_sym = '1-48330-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.51',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48330-00006', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48330-00006');

-- Update existing: ï¿½ëµµï¿½ï¿½ï¿½Úºï¿½ï¿½ï¿½ï¿½ï¿½Ã¼ï¿½
UPDATE facilities SET admin_sym = '1-48330-00011' WHERE name LIKE '%ï¿½ëµµï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00011', 2024, '88.6'
FROM facilities WHERE admin_sym = '1-48330-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ëµµï¿½ï¿½ï¿½Úºï¿½ï¿½ï¿½ï¿½ï¿½Ã¼ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48330-00011', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48330-00011');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48330-00009' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00009', 2024, '93.85'
FROM facilities WHERE admin_sym = '1-48330-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48330-00009', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48330-00009');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48330-00005' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00005', 2024, '96.3'
FROM facilities WHERE admin_sym = '1-48330-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48330-00005', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48330-00005');

-- Update existing: ï¿½ëµµï¿½ï¿½ï¿½Úºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ã¼ï¿½
UPDATE facilities SET admin_sym = '1-48330-00007' WHERE name LIKE '%ï¿½ëµµï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00007', 2024, '93.35'
FROM facilities WHERE admin_sym = '1-48330-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ëµµï¿½ï¿½ï¿½Úºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ã¼ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48330-00007', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48330-00007');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48330-00110' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00110', 2024, '79.3'
FROM facilities WHERE admin_sym = '1-48330-00110'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48330-00110', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48330-00110');

-- Update existing: ï¿½Â¸ï¿½×¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48330-00125' WHERE name LIKE '%ï¿½Â¸ï¿½×¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00125', 2024, '80.58'
FROM facilities WHERE admin_sym = '1-48330-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.58',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Â¸ï¿½×¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48330-00125', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48330-00125');

-- Update existing: ï¿½È½É³ï¿½ï¿½Î°Ç°ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48330-00098' WHERE name LIKE '%ï¿½È½É³ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00098', 2024, '73.15'
FROM facilities WHERE admin_sym = '1-48330-00098'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.15',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½È½É³ï¿½ï¿½Î°Ç°ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48330-00098', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48330-00098');

-- Update existing: ï¿½ï¿½ï¿½ï¿½î¸£ï¿½Å¼ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48330-00111' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00111', 2024, '73.05'
FROM facilities WHERE admin_sym = '1-48330-00111'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½î¸£ï¿½Å¼ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48330-00111', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48330-00111');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ò±Ô¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Õ¼ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48330-00031' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00031', 2024, '96.85'
FROM facilities WHERE admin_sym = '1-48330-00031'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ò±Ô¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Õ¼ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48330-00031', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48330-00031');

-- Update existing: ï¿½È½É¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48330-00218' WHERE name LIKE '%ï¿½È½É¿ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00218', 2024, '61.74'
FROM facilities WHERE admin_sym = '1-48330-00218'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.74',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½È½É¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48330-00218', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48330-00218');

-- Update existing: ï¿½ï¿½Ã»ï¿½Ç¹ï¿½È¨
UPDATE facilities SET admin_sym = '1-48330-00109' WHERE name LIKE '%ï¿½ï¿½Ã»ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00109', 2024, '55.02'
FROM facilities WHERE admin_sym = '1-48330-00109'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.02',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Ã»ï¿½Ç¹ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48330-00109', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48330-00109');

-- Update existing: È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48330-00124' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00124', 2024, '88.98'
FROM facilities WHERE admin_sym = '1-48330-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.98',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48330-00124', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48330-00124');

-- Update existing: Ç®ï¿½É»ï¿½ï¿½Ã¤
UPDATE facilities SET admin_sym = '1-48330-00226' WHERE name LIKE '%Ç®ï¿½É»ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00226', 2024, '59.15'
FROM facilities WHERE admin_sym = '1-48330-00226'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.15',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ç®ï¿½É»ï¿½ï¿½Ã¤', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48330-00226', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48330-00226');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48330-00074' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00074', 2024, '36.89'
FROM facilities WHERE admin_sym = '1-48330-00074'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '36.89',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48330-00074', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48330-00074');

-- Update existing: ï¿½Ç·É¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48720-00001' WHERE name LIKE '%ï¿½Ç·É¿ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48720-00001', 2024, '85.35'
FROM facilities WHERE admin_sym = '1-48720-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ç·É¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48720-00001', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48720-00001');

-- Update existing: ï¿½Ïºï¿½È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48720-00045' WHERE name LIKE '%ï¿½Ïºï¿½È¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48720-00045', 2024, '64.14'
FROM facilities WHERE admin_sym = '1-48720-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.14',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ïºï¿½È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48720-00045', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48720-00045');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48720-00048' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48720-00048', 2024, '60.5'
FROM facilities WHERE admin_sym = '1-48720-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48720-00048', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48720-00048');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48170-00281' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00281', 2024, '90.54'
FROM facilities WHERE admin_sym = '1-48170-00281'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.54',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00281', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00281');

-- Update existing: ï¿½ï¿½ï¿½àº¹ï¿½Ñ¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48170-00277' WHERE name LIKE '%ï¿½ï¿½ï¿½à%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00277', 2024, '65.35'
FROM facilities WHERE admin_sym = '1-48170-00277'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½àº¹ï¿½Ñ¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00277', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00277');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48170-00152' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00152', 2024, '88.6'
FROM facilities WHERE admin_sym = '1-48170-00152'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00152', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00152');

-- Update existing: ï¿½ï¿½ï¿½Ö¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48170-00165' WHERE name LIKE '%ï¿½ï¿½ï¿½Ö%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00165', 2024, '87.35'
FROM facilities WHERE admin_sym = '1-48170-00165'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ö¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00165', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00165');

-- Update existing: ï¿½ï¿½ï¿½Ö¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48170-00002' WHERE name LIKE '%ï¿½ï¿½ï¿½Ö%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00002', 2024, '89.85'
FROM facilities WHERE admin_sym = '1-48170-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ö¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00002', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00002');

-- Update existing: ï¿½Ýµï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48170-00138' WHERE name LIKE '%ï¿½Ýµï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00138', 2024, '86.3'
FROM facilities WHERE admin_sym = '1-48170-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ýµï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00138', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00138');

-- Update existing: ï¿½æ³²ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48170-00268' WHERE name LIKE '%ï¿½æ³²ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00268', 2024, '56.22'
FROM facilities WHERE admin_sym = '1-48170-00268'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.22',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½æ³²ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00268', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00268');

-- Update existing: ï¿½ï¿½ï¿½Ö½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48170-00005' WHERE name LIKE '%ï¿½ï¿½ï¿½Ö%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00005', 2024, '97.1'
FROM facilities WHERE admin_sym = '1-48170-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ö½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00005', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00005');

-- Update existing: ï¿½Ö¸ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48170-00004' WHERE name LIKE '%ï¿½Ö¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00004', 2024, '92.77'
FROM facilities WHERE admin_sym = '1-48170-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.77',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ö¸ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00004', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00004');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ê½ï¿½È¨
UPDATE facilities SET admin_sym = '1-48170-00006' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00006', 2024, '94.05'
FROM facilities WHERE admin_sym = '1-48170-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ê½ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00006', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00006');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½Ö¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48170-00274' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00274', 2024, '66.5'
FROM facilities WHERE admin_sym = '1-48170-00274'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½Ö¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00274', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00274');

-- Update existing: ï¿½àº¹ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48170-00183' WHERE name LIKE '%ï¿½àº¹ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00183', 2024, '72.97'
FROM facilities WHERE admin_sym = '1-48170-00183'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.97',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00183', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00183');

-- Update existing: ï¿½æ³²ï¿½ï¿½È­ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48170-00283' WHERE name LIKE '%ï¿½æ³²ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00283', 2024, '78.75'
FROM facilities WHERE admin_sym = '1-48170-00283'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.75',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½æ³²ï¿½ï¿½È­ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00283', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00283');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ ï¿½Ç¹ï¿½ï¿½Îµï¿½ ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48170-00294' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00294', 2024, '84.52'
FROM facilities WHERE admin_sym = '1-48170-00294'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.52',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ ï¿½Ç¹ï¿½ï¿½Îµï¿½ ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00294', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00294');

-- Update existing: ï¿½àº¹ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48170-00270' WHERE name LIKE '%ï¿½àº¹ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00270', 2024, '50.97'
FROM facilities WHERE admin_sym = '1-48170-00270'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.97',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00270', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00270');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48170-00253' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00253', 2024, '63.2'
FROM facilities WHERE admin_sym = '1-48170-00253'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.2',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00253', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00253');

-- Update existing: ï¿½ï¿½ï¿½Ö³ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48170-00178' WHERE name LIKE '%ï¿½ï¿½ï¿½Ö%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00178', 2024, '93.71'
FROM facilities WHERE admin_sym = '1-48170-00178'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.71',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ö³ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00178', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00178');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48170-00013' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00013', 2024, '98.48'
FROM facilities WHERE admin_sym = '1-48170-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.48',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00013', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00013');

-- Update existing: Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Å¸ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48170-00135' WHERE name LIKE '%Ãµï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00135', 2024, '95.95'
FROM facilities WHERE admin_sym = '1-48170-00135'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.95',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ãµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Å¸ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00135', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00135');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48170-00147' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00147', 2024, '74.61'
FROM facilities WHERE admin_sym = '1-48170-00147'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.61',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00147', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00147');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48170-00264' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00264', 2024, '94.86'
FROM facilities WHERE admin_sym = '1-48170-00264'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.86',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00264', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00264');

-- Update existing: È¿ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½×·ï¿½È¨2È£
UPDATE facilities SET admin_sym = '1-48170-00180' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00180', 2024, '85.19'
FROM facilities WHERE admin_sym = '1-48170-00180'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.19',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½×·ï¿½È¨2È£', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00180', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00180');

-- Update existing: È¿ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½×·ï¿½È¨
UPDATE facilities SET admin_sym = '1-48170-00162' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00162', 2024, '88.35'
FROM facilities WHERE admin_sym = '1-48170-00162'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½×·ï¿½È¨', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00162', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00162');

-- Update existing: È¿ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½×·ï¿½È¨3È£
UPDATE facilities SET admin_sym = '1-48170-00233' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00233', 2024, '80.48'
FROM facilities WHERE admin_sym = '1-48170-00233'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.48',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½Ç¹ï¿½ï¿½×·ï¿½È¨3È£', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48170-00233', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48170-00233');

-- Update existing: Ã¢ï¿½ç±ºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Õ¼ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48740-00003' WHERE name LIKE '%Ã¢ï¿½ç±ºï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48740-00003', 2024, '80.64'
FROM facilities WHERE admin_sym = '1-48740-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.64',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ã¢ï¿½ç±ºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Õ¼ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48740-00003', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48740-00003');

-- Update existing: Ã¢ï¿½ç±ºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48740-00063' WHERE name LIKE '%Ã¢ï¿½ç±ºï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48740-00063', 2024, '93.75'
FROM facilities WHERE admin_sym = '1-48740-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.75',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ã¢ï¿½ç±ºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼', 'ï¿½ï¿½ó³²µï¿½', '1-48740-00063', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48740-00063');

-- Update existing: ï¿½Ã¿Â¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48740-00057' WHERE name LIKE '%ï¿½Ã¿Â¿ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48740-00057', 2024, '80.15'
FROM facilities WHERE admin_sym = '1-48740-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.15',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ã¿Â¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48740-00057', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48740-00057');

-- Update existing: ï¿½Î°ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48740-00055' WHERE name LIKE '%ï¿½Î°ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48740-00055', 2024, '83.01'
FROM facilities WHERE admin_sym = '1-48740-00055'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.01',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Î°ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48740-00055', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48740-00055');

-- Update existing: ï¿½Ý¾ß³ï¿½ï¿½Ä«ï¿½ï¿½Æ¼
UPDATE facilities SET admin_sym = '1-48740-00053' WHERE name LIKE '%ï¿½Ý¾ß³ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48740-00053', 2024, '80.38'
FROM facilities WHERE admin_sym = '1-48740-00053'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.38',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ý¾ß³ï¿½ï¿½Ä«ï¿½ï¿½Æ¼', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48740-00053', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48740-00053');

-- Update existing: ï¿½ï¿½ï¿½Ú·ï¿½ï¿½Ò±Ô¸ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48740-00006' WHERE name LIKE '%ï¿½ï¿½ï¿½Ú%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48740-00006', 2024, '72.14'
FROM facilities WHERE admin_sym = '1-48740-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.14',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ú·ï¿½ï¿½Ò±Ô¸ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48740-00006', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48740-00006');

-- Update existing: ï¿½Ô¹ï¿½ï¿½ï¿½Î¿ï¿½
UPDATE facilities SET admin_sym = '1-48740-00096' WHERE name LIKE '%ï¿½Ô¹ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48740-00096', 2024, '30.28'
FROM facilities WHERE admin_sym = '1-48740-00096'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '30.28',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ô¹ï¿½ï¿½ï¿½Î¿ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48740-00096', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48740-00096');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48160-00140' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48160-00140', 2024, '87.78'
FROM facilities WHERE admin_sym = '1-48160-00140'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.78',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48160-00140', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48160-00140');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ã´Ï¾ï¿½Ä«ï¿½ï¿½Æ¼2
UPDATE facilities SET admin_sym = '1-48120-00199' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00199', 2024, '82.6'
FROM facilities WHERE admin_sym = '1-48120-00199'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ã´Ï¾ï¿½Ä«ï¿½ï¿½Æ¼2', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48120-00199', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48120-00199');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ã´Ï¾ï¿½Ä«ï¿½ï¿½Æ¼
UPDATE facilities SET admin_sym = '1-48160-00008' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48160-00008', 2024, '88.35'
FROM facilities WHERE admin_sym = '1-48160-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ã´Ï¾ï¿½Ä«ï¿½ï¿½Æ¼', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48160-00008', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48160-00008');

-- Update existing: ï¿½ï¿½ï¿½ß¿ï¿½
UPDATE facilities SET admin_sym = '1-48160-00002' WHERE name LIKE '%ï¿½ï¿½ï¿½ß%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48160-00002', 2024, '91.85'
FROM facilities WHERE admin_sym = '1-48160-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ß¿ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48160-00002', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48160-00002');

-- Update existing: ï¿½ï¿½ï¿½ê¼ºï¿½Î¿ï¿½
UPDATE facilities SET admin_sym = '1-48160-00003' WHERE name LIKE '%ï¿½ï¿½ï¿½ê%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48160-00003', 2024, '91.6'
FROM facilities WHERE admin_sym = '1-48160-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ê¼ºï¿½Î¿ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48160-00003', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48160-00003');

-- Update existing: ï¿½æ³²ï¿½Ö³ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48120-00425' WHERE name LIKE '%ï¿½æ³²ï¿½Ö%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00425', 2024, '80.12'
FROM facilities WHERE admin_sym = '1-48120-00425'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.12',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½æ³²ï¿½Ö³ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48120-00425', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48120-00425');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½
UPDATE facilities SET admin_sym = '1-48160-00007' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48160-00007', 2024, '99.35'
FROM facilities WHERE admin_sym = '1-48160-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '99.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ó³²µï¿½', '1-48160-00007', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '1-48160-00007');

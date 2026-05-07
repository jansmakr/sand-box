-- Batch 166 of 226
-- Processing 100 facilities

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46830-00100' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46830-00100', 2024, '94'
FROM facilities WHERE admin_sym = '2-46830-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46830-00100', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46830-00100');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ì¸®ï¿½ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46830-00086' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46830-00086', 2024, '83.85'
FROM facilities WHERE admin_sym = '3-46830-00086'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ì¸®ï¿½ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46830-00086', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46830-00086');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46830-00098' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½Å¸';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46830-00098', 2024, '81.98'
FROM facilities WHERE admin_sym = '2-46830-00098'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.98',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Å¸ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½Å¸', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46830-00098', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46830-00098');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46830-00082' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46830-00082', 2024, '80.1'
FROM facilities WHERE admin_sym = '3-46830-00082'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46830-00082', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46830-00082');

-- Update existing: ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46830-00054' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46830-00054', 2024, '85.3'
FROM facilities WHERE admin_sym = '3-46830-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46830-00054', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46830-00054');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46830-00074' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46830-00074', 2024, '81'
FROM facilities WHERE admin_sym = '3-46830-00074'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46830-00074', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46830-00074');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46830-00078' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46830-00078', 2024, '78.3'
FROM facilities WHERE admin_sym = '3-46830-00078'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46830-00078', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46830-00078');

-- Update existing: ï¿½Ñ¸ï¿½ï¿½ï¿½ ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46830-00014' WHERE name LIKE '%ï¿½Ñ¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46830-00014', 2024, '74.3'
FROM facilities WHERE admin_sym = '3-46830-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ¸ï¿½ï¿½ï¿½ ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46830-00014', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46830-00014');

-- Update existing: È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46830-00022' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46830-00022', 2024, '67'
FROM facilities WHERE admin_sym = '3-46830-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46830-00022', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46830-00022');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46830-00010' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46830-00010', 2024, '60.8'
FROM facilities WHERE admin_sym = '3-46830-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46830-00010', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46830-00010');

-- Update existing: ï¿½Åºï¿½È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46830-00020' WHERE name LIKE '%ï¿½Åºï¿½È¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46830-00020', 2024, '63.75'
FROM facilities WHERE admin_sym = '3-46830-00020'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.75',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Åºï¿½È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46830-00020', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46830-00020');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46830-00076' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46830-00076', 2024, '55.75'
FROM facilities WHERE admin_sym = '3-46830-00076'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.75',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46830-00076', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46830-00076');

-- Update existing: ï¿½Ò¸ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46830-00050' WHERE name LIKE '%ï¿½Ò¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46830-00050', 2024, '93.25'
FROM facilities WHERE admin_sym = '3-46830-00050'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.25',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ò¸ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46830-00050', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46830-00050');

-- Update existing: ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46830-00054' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46830-00054', 2024, '92.6'
FROM facilities WHERE admin_sym = '3-46830-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½È¿ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46830-00054', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46830-00054');

-- Update existing: ï¿½ì¸®ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46830-00006' WHERE name LIKE '%ï¿½ì¸®ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46830-00006', 2024, '96.55'
FROM facilities WHERE admin_sym = '2-46830-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ì¸®ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46830-00006', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46830-00006');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46830-00100' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46830-00100', 2024, '85.8'
FROM facilities WHERE admin_sym = '2-46830-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46830-00100', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46830-00100');

-- Update existing: ï¿½Ñ¸ï¿½ï¿½ï¿½ ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46830-00014' WHERE name LIKE '%ï¿½Ñ¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46830-00014', 2024, '80.05'
FROM facilities WHERE admin_sym = '3-46830-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ¸ï¿½ï¿½ï¿½ ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46830-00014', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46830-00014');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46830-00076' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46830-00076', 2024, '48.5'
FROM facilities WHERE admin_sym = '3-46830-00076'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '48.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46830-00076', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46830-00076');

-- Update existing: ï¿½ï¿½ï¿½Ï³ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46830-00070' WHERE name LIKE '%ï¿½ï¿½ï¿½Ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46830-00070', 2024, '88.75'
FROM facilities WHERE admin_sym = '3-46830-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.75',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ï³ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46830-00070', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46830-00070');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46830-00004' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46830-00004', 2024, '80.8'
FROM facilities WHERE admin_sym = '2-46830-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46830-00004', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46830-00004');

-- Update existing: ï¿½Åºï¿½È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46830-00020' WHERE name LIKE '%ï¿½Åºï¿½È¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46830-00020', 2024, '76'
FROM facilities WHERE admin_sym = '3-46830-00020'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Åºï¿½È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46830-00020', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46830-00020');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46830-00010' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46830-00010', 2024, '64.75'
FROM facilities WHERE admin_sym = '3-46830-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.75',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46830-00010', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46830-00010');

-- Update existing: ï¿½Ì¿ï¿½ï¿½Ç°ï¿½ï¿½Ç·ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46830-00058' WHERE name LIKE '%ï¿½Ì¿ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46830-00058', 2024, '52.33'
FROM facilities WHERE admin_sym = '3-46830-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '52.33',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ì¿ï¿½ï¿½Ç°ï¿½ï¿½Ç·ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46830-00058', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46830-00058');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46890-00016' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46890-00016', 2024, '95.8'
FROM facilities WHERE admin_sym = '2-46890-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46890-00016', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46890-00016');

-- Update existing: ï¿½Ïµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ã¼ï¿½ï¿½ï¿½ï¿½Ý¿ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46890-00017' WHERE name LIKE '%ï¿½Ïµï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46890-00017', 2024, '92.85'
FROM facilities WHERE admin_sym = '3-46890-00017'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ïµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ã¼ï¿½ï¿½ï¿½ï¿½Ý¿ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46890-00017', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46890-00017');

-- Update existing: ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Ú¸ï¿½
UPDATE facilities SET admin_sym = '3-46890-00028' WHERE name LIKE '%ï¿½ï¿½ï¿½Î%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46890-00028', 2024, '86.35'
FROM facilities WHERE admin_sym = '3-46890-00028'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Î¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Ú¸ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46890-00028', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46890-00028');

-- Update existing: ï¿½Ò±Ô¸ï¿½ï¿½ï¿½Ã¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ïµï¿½ï¿½ï¿½Çªï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46890-00005' WHERE name LIKE '%ï¿½Ò±Ô¸ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46890-00005', 2024, '84.8'
FROM facilities WHERE admin_sym = '2-46890-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ò±Ô¸ï¿½ï¿½ï¿½Ã¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ïµï¿½ï¿½ï¿½Çªï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46890-00005', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46890-00005');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46890-00092' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46890-00092', 2024, '71.51'
FROM facilities WHERE admin_sym = '2-46890-00092'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.51',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46890-00092', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46890-00092');

-- Update existing: ï¿½Ý´ç³ªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46890-00066' WHERE name LIKE '%ï¿½Ý´ç³ªï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46890-00066', 2024, '79.55'
FROM facilities WHERE admin_sym = '3-46890-00066'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ý´ç³ªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46890-00066', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46890-00066');

-- Update existing: ï¿½ï¿½ï¿½Ï¼Ò¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46890-00047' WHERE name LIKE '%ï¿½ï¿½ï¿½Ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46890-00047', 2024, '74.05'
FROM facilities WHERE admin_sym = '2-46890-00047'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ï¼Ò¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46890-00047', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46890-00047');

-- Update existing: ï¿½Îµï¿½ï¿½ï¿½ï¿½Õºï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46890-00044' WHERE name LIKE '%ï¿½Îµï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46890-00044', 2024, '64.55'
FROM facilities WHERE admin_sym = '2-46890-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Îµï¿½ï¿½ï¿½ï¿½Õºï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46890-00044', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46890-00044');

-- Update existing: È¿ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46890-00070' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46890-00070', 2024, '65.5'
FROM facilities WHERE admin_sym = '3-46890-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46890-00070', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46890-00070');

-- Update existing: ï¿½Ý´ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46890-00056' WHERE name LIKE '%ï¿½Ý´ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46890-00056', 2024, '68.3'
FROM facilities WHERE admin_sym = '3-46890-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ý´ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46890-00056', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46890-00056');

-- Update existing: Ã»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46890-00054' WHERE name LIKE '%Ã»ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46890-00054', 2024, '78.85'
FROM facilities WHERE admin_sym = '3-46890-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ã»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46890-00054', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46890-00054');

-- Update existing: È¿ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46890-00070' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46890-00070', 2024, '64.25'
FROM facilities WHERE admin_sym = '3-46890-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.25',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46890-00070', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46890-00070');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46890-00058' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46890-00058', 2024, '91.85'
FROM facilities WHERE admin_sym = '2-46890-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46890-00058', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46890-00058');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46890-00016' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46890-00016', 2024, '89.8'
FROM facilities WHERE admin_sym = '2-46890-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46890-00016', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46890-00016');

-- Update existing: ï¿½Ïµï¿½ï¿½Ç·ï¿½ï¿½âº¹ï¿½ï¿½ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46890-00038' WHERE name LIKE '%ï¿½Ïµï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46890-00038', 2024, '60.08'
FROM facilities WHERE admin_sym = '3-46890-00038'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.08',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ïµï¿½ï¿½Ç·ï¿½ï¿½âº¹ï¿½ï¿½ï¿½ë±¸ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46890-00038', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46890-00038');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46880-00050' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46880-00050', 2024, '81.3'
FROM facilities WHERE admin_sym = '3-46880-00050'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46880-00050', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46880-00050');

-- Update existing: ï¿½Å¼ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46880-00042' WHERE name LIKE '%ï¿½Å¼ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46880-00042', 2024, '85.25'
FROM facilities WHERE admin_sym = '3-46880-00042'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.25',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Å¼ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46880-00042', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46880-00042');

-- Update existing: ï¿½ï¿½ï¿½Ù´ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46880-00092' WHERE name LIKE '%ï¿½ï¿½ï¿½Ù%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46880-00092', 2024, '86.55'
FROM facilities WHERE admin_sym = '3-46880-00092'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½Ù´ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46880-00092', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46880-00092');

-- Update existing: È¿ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46880-00064' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46880-00064', 2024, '84.85'
FROM facilities WHERE admin_sym = '2-46880-00064'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46880-00064', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46880-00064');

-- Update existing: ï¿½Þºï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46880-00085' WHERE name LIKE '%ï¿½Þºï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46880-00085', 2024, '79.5'
FROM facilities WHERE admin_sym = '3-46880-00085'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Þºï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46880-00085', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46880-00085');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46880-00098' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46880-00098', 2024, '71.05'
FROM facilities WHERE admin_sym = '2-46880-00098'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46880-00098', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46880-00098');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46880-00054' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46880-00054', 2024, '77.35'
FROM facilities WHERE admin_sym = '3-46880-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46880-00054', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46880-00054');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46880-00080' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46880-00080', 2024, '70.75'
FROM facilities WHERE admin_sym = '3-46880-00080'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.75',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½æ¹®ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46880-00080', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46880-00080');

-- Update existing: ''(A)ï¿½ï¿½ï¿½ï¿½ï¿½Ã¿ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½å¼ºï¿½æ¹®ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46880-00096' WHERE name LIKE '%''(A)ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46880-00096', 2024, '51.92'
FROM facilities WHERE admin_sym = '2-46880-00096'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '51.92',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', '''(A)ï¿½ï¿½ï¿½ï¿½ï¿½Ã¿ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½å¼ºï¿½æ¹®ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46880-00096', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46880-00096');

-- Update existing: ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46880-00086' WHERE name LIKE '%ï¿½Ç¹ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46880-00086', 2024, '43.25'
FROM facilities WHERE admin_sym = '3-46880-00086'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '43.25',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ç¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46880-00086', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46880-00086');

-- Update existing: ï¿½Å¼ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46880-00042' WHERE name LIKE '%ï¿½Å¼ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46880-00042', 2024, '89.05'
FROM facilities WHERE admin_sym = '3-46880-00042'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Å¼ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46880-00042', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46880-00042');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46880-00054' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46880-00054', 2024, '79.6'
FROM facilities WHERE admin_sym = '3-46880-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46880-00054', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46880-00054');

-- Update existing: È¿ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46880-00064' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46880-00064', 2024, '80.43'
FROM facilities WHERE admin_sym = '2-46880-00064'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.43',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46880-00064', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46880-00064');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46880-00090' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46880-00090', 2024, '81.1'
FROM facilities WHERE admin_sym = '2-46880-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46880-00090', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46880-00090');

-- Update existing: ï¿½Å¼ï¿½ï¿½ï¿½ ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46880-00100' WHERE name LIKE '%ï¿½Å¼ï¿½ï¿%' AND sido = 'ï¿½ï¿½Å¸';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46880-00100', 2024, '77.55'
FROM facilities WHERE admin_sym = '2-46880-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Å¼ï¿½ï¿½ï¿½ ï¿½Ö¾ß°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½Å¸ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½Å¸', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46880-00100', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46880-00100');

-- Update existing: ï¿½é¼¼ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46880-00104' WHERE name LIKE '%ï¿½é¼¼ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46880-00104', 2024, '70.58'
FROM facilities WHERE admin_sym = '2-46880-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.58',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½é¼¼ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46880-00104', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46880-00104');

-- Update existing: ï¿½ì¸®ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46800-00056' WHERE name LIKE '%ï¿½ì¸®ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46800-00056', 2024, '92.05'
FROM facilities WHERE admin_sym = '3-46800-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ì¸®ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46800-00056', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46800-00056');

-- Update existing: ï¿½ï¿½ï¿½ï±ºï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46800-00012' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46800-00012', 2024, '95.55'
FROM facilities WHERE admin_sym = '3-46800-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï±ºï¿½ï¿½ï¿½Î¿ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¡ï¿½ï¿½Ã¼', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46800-00012', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46800-00012');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46800-00010' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46800-00010', 2024, '95.05'
FROM facilities WHERE admin_sym = '3-46800-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46800-00010', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46800-00010');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46800-00074' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46800-00074', 2024, '84.1'
FROM facilities WHERE admin_sym = '2-46800-00074'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46800-00074', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46800-00074');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46800-00066' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46800-00066', 2024, '86.8'
FROM facilities WHERE admin_sym = '3-46800-00066'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46800-00066', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46800-00066');

-- Update existing: ï¿½Â´ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46800-00068' WHERE name LIKE '%ï¿½Â´ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46800-00068', 2024, '87.55'
FROM facilities WHERE admin_sym = '3-46800-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Â´ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46800-00068', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46800-00068');

-- Update existing: Ãµï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46800-00034' WHERE name LIKE '%Ãµï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46800-00034', 2024, '85.3'
FROM facilities WHERE admin_sym = '3-46800-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'Ãµï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46800-00034', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46800-00034');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46800-00078' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46800-00078', 2024, '75.35'
FROM facilities WHERE admin_sym = '2-46800-00078'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46800-00078', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46800-00078');

-- Update existing: È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46800-00046' WHERE name LIKE '%È¿ï¿½ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46800-00046', 2024, '81'
FROM facilities WHERE admin_sym = '3-46800-00046'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'È¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46800-00046', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46800-00046');

-- Update existing: ï¿½Æ°ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46800-00058' WHERE name LIKE '%ï¿½Æ°ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46800-00058', 2024, '81.1'
FROM facilities WHERE admin_sym = '3-46800-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Æ°ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46800-00058', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46800-00058');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46800-00014' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46800-00014', 2024, '88'
FROM facilities WHERE admin_sym = '3-46800-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46800-00014', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46800-00014');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ì»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46800-00052' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46800-00052', 2024, '58'
FROM facilities WHERE admin_sym = '3-46800-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ì»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46800-00052', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46800-00052');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46800-00066' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46800-00066', 2024, '86.8'
FROM facilities WHERE admin_sym = '3-46800-00066'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46800-00066', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46800-00066');

-- Update existing: ï¿½Æ°ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46800-00058' WHERE name LIKE '%ï¿½Æ°ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46800-00058', 2024, '78.1'
FROM facilities WHERE admin_sym = '3-46800-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Æ°ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46800-00058', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46800-00058');

-- Update existing: ï¿½ï¿½Çªï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46800-00064' WHERE name LIKE '%ï¿½ï¿½Çªï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46800-00064', 2024, '71'
FROM facilities WHERE admin_sym = '3-46800-00064'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½Çªï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46800-00064', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46800-00064');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46800-00038' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46800-00038', 2024, '93.1'
FROM facilities WHERE admin_sym = '3-46800-00038'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46800-00038', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46800-00038');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46800-00076' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46800-00076', 2024, '89.3'
FROM facilities WHERE admin_sym = '2-46800-00076'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È°ï¿½Ö°ï¿½ï¿½ï¿½È£ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46800-00076', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46800-00076');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Æ®ï¿½Ç·ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46800-00044' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46800-00044', 2024, '84.83'
FROM facilities WHERE admin_sym = '3-46800-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.83',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Æ®ï¿½Ç·ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46800-00044', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46800-00044');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46900-00040' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46900-00040', 2024, '93.3'
FROM facilities WHERE admin_sym = '2-46900-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46900-00040', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46900-00040');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46900-00044' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46900-00044', 2024, '86.55'
FROM facilities WHERE admin_sym = '3-46900-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46900-00044', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46900-00044');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ä«ï¿½ï¿½Å¸ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46900-00001' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46900-00001', 2024, '85.3'
FROM facilities WHERE admin_sym = '2-46900-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ä«ï¿½ï¿½Å¸ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46900-00001', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46900-00001');

-- Update existing: ï¿½àº¹ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46900-00046' WHERE name LIKE '%ï¿½àº¹ï¿½ç%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46900-00046', 2024, '81.8'
FROM facilities WHERE admin_sym = '3-46900-00046'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46900-00046', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46900-00046');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46900-00052' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46900-00052', 2024, '74.35'
FROM facilities WHERE admin_sym = '2-46900-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46900-00052', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46900-00052');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46900-00040' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46900-00040', 2024, '92.8'
FROM facilities WHERE admin_sym = '2-46900-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46900-00040', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46900-00040');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46900-00044' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46900-00044', 2024, '89.55'
FROM facilities WHERE admin_sym = '3-46900-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46900-00044', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46900-00044');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ä«ï¿½ï¿½Å¸ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46900-00001' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46900-00001', 2024, '86.8'
FROM facilities WHERE admin_sym = '2-46900-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.8',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ä«ï¿½ï¿½Å¸ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46900-00001', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46900-00001');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46900-00052' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46900-00052', 2024, '87.35'
FROM facilities WHERE admin_sym = '2-46900-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46900-00052', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46900-00052');

-- Update existing: ï¿½àº¹ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46900-00046' WHERE name LIKE '%ï¿½àº¹ï¿½ç%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46900-00046', 2024, '79.05'
FROM facilities WHERE admin_sym = '3-46900-00046'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46900-00046', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46900-00046');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46900-00052' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46900-00052', 2024, '83.1'
FROM facilities WHERE admin_sym = '2-46900-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46900-00052', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46900-00052');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Õ³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46900-00053' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46900-00053', 2024, '78.3'
FROM facilities WHERE admin_sym = '2-46900-00053'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.3',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Õ³ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46900-00053', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46900-00053');

-- Update existing: ï¿½Ì¿ï¿½ï¿½Ç·ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46900-00038' WHERE name LIKE '%ï¿½Ì¿ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46900-00038', 2024, '80.5'
FROM facilities WHERE admin_sym = '3-46900-00038'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.5',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ì¿ï¿½ï¿½Ç·ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46900-00038', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46900-00038');

-- Update existing: ï¿½Ì·ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46860-00068' WHERE name LIKE '%ï¿½Ì·ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46860-00068', 2024, '82.55'
FROM facilities WHERE admin_sym = '3-46860-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ì·ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46860-00068', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46860-00068');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46860-00070' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46860-00070', 2024, '88.25'
FROM facilities WHERE admin_sym = '3-46860-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.25',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46860-00070', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46860-00070');

-- Update existing: ï¿½ï¿½ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46860-00090' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46860-00090', 2024, '80.05'
FROM facilities WHERE admin_sym = '2-46860-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½Ãµï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46860-00090', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46860-00090');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46860-00088' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46860-00088', 2024, '81.55'
FROM facilities WHERE admin_sym = '2-46860-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46860-00088', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46860-00088');

-- Update existing: ï¿½Å±ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46860-00084' WHERE name LIKE '%ï¿½Å±ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46860-00084', 2024, '75.55'
FROM facilities WHERE admin_sym = '3-46860-00084'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Å±ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46860-00084', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46860-00084');

-- Update existing: ï¿½Ñ¾Æ¸ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46860-00054' WHERE name LIKE '%ï¿½Ñ¾Æ¸ï¿½%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46860-00054', 2024, '65.85'
FROM facilities WHERE admin_sym = '3-46860-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.85',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ñ¾Æ¸ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46860-00054', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46860-00054');

-- Update existing: ï¿½àº¹ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46860-00092' WHERE name LIKE '%ï¿½àº¹ï¿½ç%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46860-00092', 2024, '65.55'
FROM facilities WHERE admin_sym = '2-46860-00092'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½àº¹ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46860-00092', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46860-00092');

-- Update existing: ï¿½å¸²ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46860-00074' WHERE name LIKE '%ï¿½å¸²ï¿½ç%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46860-00074', 2024, '78.6'
FROM facilities WHERE admin_sym = '3-46860-00074'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.6',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½å¸²ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46860-00074', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46860-00074');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46860-00001' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46860-00001', 2024, '54.75'
FROM facilities WHERE admin_sym = '2-46860-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.75',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46860-00001', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46860-00001');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46860-00070' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46860-00070', 2024, '91.55'
FROM facilities WHERE admin_sym = '3-46860-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46860-00070', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46860-00070');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46860-00088' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46860-00088', 2024, '83.05'
FROM facilities WHERE admin_sym = '2-46860-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.05',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46860-00088', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46860-00088');

-- Update existing: (ï¿½ï¿½)È¿ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46820-00110' WHERE name LIKE '%(ï¿½ï¿½)È¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46820-00110', 2024, '97.1'
FROM facilities WHERE admin_sym = '3-46820-00110'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.1',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', '(ï¿½ï¿½)È¿ï¿½ç°¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46820-00110', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46820-00110');

-- Update existing: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46820-00072' WHERE name LIKE '%ï¿½ï¿½ï¿½ï%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46820-00072', 2024, '98.55'
FROM facilities WHERE admin_sym = '3-46820-00072'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46820-00072', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46820-00072');

-- Update existing: ï¿½Ò¸ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½
UPDATE facilities SET admin_sym = '3-46820-00054' WHERE name LIKE '%ï¿½Ò¸ï¿½ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46820-00054', 2024, '92.55'
FROM facilities WHERE admin_sym = '3-46820-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.55',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½Ò¸ï¿½ï¿½ï¿½ï¿½ï¿½ç¼¾ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '3-46820-00054', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '3-46820-00054');

-- Update existing: ï¿½ï¿½È­ï¿½ï¿½ ï¿½ï¿½ ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
UPDATE facilities SET admin_sym = '2-46820-00078' WHERE name LIKE '%ï¿½ï¿½È­ï¿%' AND sido = 'ï¿½ï¿½ï¿½ï¿½';
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46820-00078', 2024, '96.35'
FROM facilities WHERE admin_sym = '2-46820-00078'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.35',
  last_updated = CURRENT_TIMESTAMP;

-- Insert new facility if not exists
INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)
SELECT '노인요양시설', 'ï¿½ï¿½È­ï¿½ï¿½ ï¿½ï¿½ ï¿½ç°¡ï¿½ï¿½ï¿½Îºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ó³²µï¿½', 'ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ó³²µï¿½', '2-46820-00078', CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '2-46820-00078');

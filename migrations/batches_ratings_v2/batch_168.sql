-- Batch 168 of 226
-- Processing 100 facilities

-- admin_sym: 3-47290-28872
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47290-28872', 2024, '77.8'
FROM facilities WHERE admin_sym = '3-47290-28872'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47290-28958
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47290-28958', 2024, '66.3'
FROM facilities WHERE admin_sym = '3-47290-28958'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47290-28864
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47290-28864', 2024, '71.8'
FROM facilities WHERE admin_sym = '3-47290-28864'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47290-28854
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47290-28854', 2024, '90'
FROM facilities WHERE admin_sym = '3-47290-28854'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47290-28674
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47290-28674', 2024, '87.5'
FROM facilities WHERE admin_sym = '3-47290-28674'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47290-28654
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47290-28654', 2024, '77.5'
FROM facilities WHERE admin_sym = '3-47290-28654'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47290-28912
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47290-28912', 2024, '55.25'
FROM facilities WHERE admin_sym = '3-47290-28912'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47130-00296
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47130-00296', 2024, '92.8'
FROM facilities WHERE admin_sym = '2-47130-00296'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00238
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00238', 2024, '90.55'
FROM facilities WHERE admin_sym = '3-47130-00238'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00058
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00058', 2024, '91.3'
FROM facilities WHERE admin_sym = '3-47130-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00194
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00194', 2024, '93.05'
FROM facilities WHERE admin_sym = '3-47130-00194'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00110
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00110', 2024, '92.3'
FROM facilities WHERE admin_sym = '3-47130-00110'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00202
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00202', 2024, '93.05'
FROM facilities WHERE admin_sym = '3-47130-00202'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00234
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00234', 2024, '95.55'
FROM facilities WHERE admin_sym = '3-47130-00234'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00192
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00192', 2024, '92.55'
FROM facilities WHERE admin_sym = '3-47130-00192'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47130-00184
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47130-00184', 2024, '91.6'
FROM facilities WHERE admin_sym = '2-47130-00184'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00200
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00200', 2024, '94.55'
FROM facilities WHERE admin_sym = '3-47130-00200'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47130-00186
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47130-00186', 2024, '98.6'
FROM facilities WHERE admin_sym = '2-47130-00186'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00136
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00136', 2024, '84.6'
FROM facilities WHERE admin_sym = '3-47130-00136'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00204
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00204', 2024, '84.05'
FROM facilities WHERE admin_sym = '3-47130-00204'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00226
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00226', 2024, '86.8'
FROM facilities WHERE admin_sym = '3-47130-00226'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47130-00146
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47130-00146', 2024, '80.6'
FROM facilities WHERE admin_sym = '2-47130-00146'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47130-00280
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47130-00280', 2024, '83.3'
FROM facilities WHERE admin_sym = '2-47130-00280'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00074
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00074', 2024, '83.05'
FROM facilities WHERE admin_sym = '3-47130-00074'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00062
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00062', 2024, '84.85'
FROM facilities WHERE admin_sym = '3-47130-00062'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00166
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00166', 2024, '81.3'
FROM facilities WHERE admin_sym = '3-47130-00166'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00034
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00034', 2024, '83.3'
FROM facilities WHERE admin_sym = '3-47130-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00066
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00066', 2024, '90.55'
FROM facilities WHERE admin_sym = '3-47130-00066'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00222
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00222', 2024, '86'
FROM facilities WHERE admin_sym = '3-47130-00222'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00072
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00072', 2024, '81.3'
FROM facilities WHERE admin_sym = '3-47130-00072'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00198
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00198', 2024, '88.55'
FROM facilities WHERE admin_sym = '3-47130-00198'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00246
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00246', 2024, '89.55'
FROM facilities WHERE admin_sym = '3-47130-00246'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00242
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00242', 2024, '85.6'
FROM facilities WHERE admin_sym = '3-47130-00242'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00256
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00256', 2024, '76.35'
FROM facilities WHERE admin_sym = '3-47130-00256'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00262
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00262', 2024, '76'
FROM facilities WHERE admin_sym = '3-47130-00262'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00180
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00180', 2024, '87.3'
FROM facilities WHERE admin_sym = '3-47130-00180'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00160
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00160', 2024, '75.3'
FROM facilities WHERE admin_sym = '3-47130-00160'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00144
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00144', 2024, '78.3'
FROM facilities WHERE admin_sym = '3-47130-00144'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00094
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00094', 2024, '79.05'
FROM facilities WHERE admin_sym = '3-47130-00094'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00178
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00178', 2024, '72.8'
FROM facilities WHERE admin_sym = '3-47130-00178'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00212
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00212', 2024, '78.8'
FROM facilities WHERE admin_sym = '3-47130-00212'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00266
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00266', 2024, '81.6'
FROM facilities WHERE admin_sym = '3-47130-00266'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00230
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00230', 2024, '61.25'
FROM facilities WHERE admin_sym = '3-47130-00230'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00162
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00162', 2024, '80.85'
FROM facilities WHERE admin_sym = '3-47130-00162'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00096
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00096', 2024, '87.55'
FROM facilities WHERE admin_sym = '3-47130-00096'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47130-00284
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47130-00284', 2024, '68.52'
FROM facilities WHERE admin_sym = '2-47130-00284'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00260
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00260', 2024, '66.8'
FROM facilities WHERE admin_sym = '3-47130-00260'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47130-00272
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47130-00272', 2024, '47.25'
FROM facilities WHERE admin_sym = '2-47130-00272'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '47.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47130-00288
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47130-00288', 2024, '73.2'
FROM facilities WHERE admin_sym = '2-47130-00288'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.2',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00122
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00122', 2024, '57.05'
FROM facilities WHERE admin_sym = '3-47130-00122'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00196
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00196', 2024, '59.3'
FROM facilities WHERE admin_sym = '3-47130-00196'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00194
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00194', 2024, '93.55'
FROM facilities WHERE admin_sym = '3-47130-00194'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00202
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00202', 2024, '95.55'
FROM facilities WHERE admin_sym = '3-47130-00202'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00200
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00200', 2024, '94.55'
FROM facilities WHERE admin_sym = '3-47130-00200'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00136
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00136', 2024, '89.35'
FROM facilities WHERE admin_sym = '3-47130-00136'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00058
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00058', 2024, '88.05'
FROM facilities WHERE admin_sym = '3-47130-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00166
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00166', 2024, '83.8'
FROM facilities WHERE admin_sym = '3-47130-00166'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00110
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00110', 2024, '87.8'
FROM facilities WHERE admin_sym = '3-47130-00110'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00198
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00198', 2024, '88.05'
FROM facilities WHERE admin_sym = '3-47130-00198'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00242
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00242', 2024, '88.35'
FROM facilities WHERE admin_sym = '3-47130-00242'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00256
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00256', 2024, '78.6'
FROM facilities WHERE admin_sym = '3-47130-00256'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47130-00146
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47130-00146', 2024, '71.1'
FROM facilities WHERE admin_sym = '2-47130-00146'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00162
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00162', 2024, '85'
FROM facilities WHERE admin_sym = '3-47130-00162'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00144
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00144', 2024, '75.3'
FROM facilities WHERE admin_sym = '3-47130-00144'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00066
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00066', 2024, '88.75'
FROM facilities WHERE admin_sym = '3-47130-00066'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00072
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00072', 2024, '78.05'
FROM facilities WHERE admin_sym = '3-47130-00072'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00122
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00122', 2024, '55.55'
FROM facilities WHERE admin_sym = '3-47130-00122'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47130-00286
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47130-00286', 2024, '90.05'
FROM facilities WHERE admin_sym = '2-47130-00286'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00248
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00248', 2024, '95.3'
FROM facilities WHERE admin_sym = '3-47130-00248'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00234
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00234', 2024, '93.55'
FROM facilities WHERE admin_sym = '3-47130-00234'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47130-00186
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47130-00186', 2024, '93.1'
FROM facilities WHERE admin_sym = '2-47130-00186'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47130-00146
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47130-00146', 2024, '88.6'
FROM facilities WHERE admin_sym = '2-47130-00146'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47130-00278
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47130-00278', 2024, '84'
FROM facilities WHERE admin_sym = '2-47130-00278'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47130-00276
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47130-00276', 2024, '87.85'
FROM facilities WHERE admin_sym = '2-47130-00276'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00152
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00152', 2024, '84'
FROM facilities WHERE admin_sym = '3-47130-00152'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47130-00292
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47130-00292', 2024, '86.8'
FROM facilities WHERE admin_sym = '2-47130-00292'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47130-00294
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47130-00294', 2024, '85.8'
FROM facilities WHERE admin_sym = '2-47130-00294'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00132
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00132', 2024, '79.55'
FROM facilities WHERE admin_sym = '3-47130-00132'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47130-00184
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47130-00184', 2024, '79.35'
FROM facilities WHERE admin_sym = '2-47130-00184'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47130-00270
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47130-00270', 2024, '67.25'
FROM facilities WHERE admin_sym = '2-47130-00270'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00258
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00258', 2024, '54.05'
FROM facilities WHERE admin_sym = '3-47130-00258'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47130-00138
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47130-00138', 2024, '75'
FROM facilities WHERE admin_sym = '3-47130-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47830-00042
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47830-00042', 2024, '97.25'
FROM facilities WHERE admin_sym = '3-47830-00042'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47830-00056
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47830-00056', 2024, '90.1'
FROM facilities WHERE admin_sym = '3-47830-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47830-00058
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47830-00058', 2024, '93.3'
FROM facilities WHERE admin_sym = '2-47830-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47830-00034
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47830-00034', 2024, '70.05'
FROM facilities WHERE admin_sym = '3-47830-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47830-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47830-00044', 2024, '72.3'
FROM facilities WHERE admin_sym = '3-47830-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47830-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47830-00010', 2024, '73.3'
FROM facilities WHERE admin_sym = '3-47830-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47830-00034
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47830-00034', 2024, '64.8'
FROM facilities WHERE admin_sym = '3-47830-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47830-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47830-00010', 2024, '60.3'
FROM facilities WHERE admin_sym = '3-47830-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47830-00038
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47830-00038', 2024, '76.5'
FROM facilities WHERE admin_sym = '3-47830-00038'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47830-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47830-00010', 2024, '87.33'
FROM facilities WHERE admin_sym = '3-47830-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47190-00328
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47190-00328', 2024, '91.55'
FROM facilities WHERE admin_sym = '3-47190-00328'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47190-00442
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47190-00442', 2024, '95.05'
FROM facilities WHERE admin_sym = '2-47190-00442'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47190-00444
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47190-00444', 2024, '94.8'
FROM facilities WHERE admin_sym = '2-47190-00444'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47190-00390
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47190-00390', 2024, '93.35'
FROM facilities WHERE admin_sym = '3-47190-00390'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47190-00368
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47190-00368', 2024, '91.3'
FROM facilities WHERE admin_sym = '2-47190-00368'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47190-00292
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47190-00292', 2024, '91.25'
FROM facilities WHERE admin_sym = '3-47190-00292'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47190-00370
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47190-00370', 2024, '83.7'
FROM facilities WHERE admin_sym = '3-47190-00370'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47190-00312
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47190-00312', 2024, '89.8'
FROM facilities WHERE admin_sym = '3-47190-00312'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.8',
  last_updated = CURRENT_TIMESTAMP;

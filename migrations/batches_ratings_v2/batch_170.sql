-- Batch 170 of 226
-- Processing 100 facilities

-- admin_sym: 3-47920-00036
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47920-00036', 2024, '69.04'
FROM facilities WHERE admin_sym = '3-47920-00036'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47250-00200
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47250-00200', 2024, '96.1'
FROM facilities WHERE admin_sym = '2-47250-00200'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00146
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00146', 2024, '92.8'
FROM facilities WHERE admin_sym = '3-47250-00146'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00054
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00054', 2024, '94.3'
FROM facilities WHERE admin_sym = '3-47250-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00132
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00132', 2024, '89.1'
FROM facilities WHERE admin_sym = '3-47250-00132'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47250-00188
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47250-00188', 2024, '89.3'
FROM facilities WHERE admin_sym = '2-47250-00188'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00178
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00178', 2024, '80.55'
FROM facilities WHERE admin_sym = '3-47250-00178'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00160
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00160', 2024, '83.55'
FROM facilities WHERE admin_sym = '3-47250-00160'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00154
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00154', 2024, '89.3'
FROM facilities WHERE admin_sym = '3-47250-00154'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00120
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00120', 2024, '84.3'
FROM facilities WHERE admin_sym = '3-47250-00120'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47250-00202
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47250-00202', 2024, '79.55'
FROM facilities WHERE admin_sym = '2-47250-00202'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47250-00198
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47250-00198', 2024, '77.24'
FROM facilities WHERE admin_sym = '2-47250-00198'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47250-00194
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47250-00194', 2024, '74.58'
FROM facilities WHERE admin_sym = '2-47250-00194'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00144
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00144', 2024, '79.3'
FROM facilities WHERE admin_sym = '3-47250-00144'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00126
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00126', 2024, '75.05'
FROM facilities WHERE admin_sym = '3-47250-00126'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00184
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00184', 2024, '66.3'
FROM facilities WHERE admin_sym = '3-47250-00184'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00172
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00172', 2024, '72.05'
FROM facilities WHERE admin_sym = '3-47250-00172'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47250-00192
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47250-00192', 2024, '57.05'
FROM facilities WHERE admin_sym = '2-47250-00192'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47250-00107
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47250-00107', 2024, '90.85'
FROM facilities WHERE admin_sym = '2-47250-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00152
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00152', 2024, '88.8'
FROM facilities WHERE admin_sym = '3-47250-00152'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00144
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00144', 2024, '79.05'
FROM facilities WHERE admin_sym = '3-47250-00144'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00136
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00136', 2024, '92.6'
FROM facilities WHERE admin_sym = '3-47250-00136'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47250-00188
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47250-00188', 2024, '90.05'
FROM facilities WHERE admin_sym = '2-47250-00188'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00054
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00054', 2024, '94.55'
FROM facilities WHERE admin_sym = '3-47250-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00174
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00174', 2024, '88.1'
FROM facilities WHERE admin_sym = '3-47250-00174'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00140
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00140', 2024, '87.55'
FROM facilities WHERE admin_sym = '3-47250-00140'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47250-00186
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47250-00186', 2024, '86.25'
FROM facilities WHERE admin_sym = '2-47250-00186'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00164
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00164', 2024, '81.35'
FROM facilities WHERE admin_sym = '3-47250-00164'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00068
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00068', 2024, '83.8'
FROM facilities WHERE admin_sym = '3-47250-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00154
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00154', 2024, '86.05'
FROM facilities WHERE admin_sym = '3-47250-00154'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00183
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00183', 2024, '84.8'
FROM facilities WHERE admin_sym = '3-47250-00183'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00178
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00178', 2024, '74.55'
FROM facilities WHERE admin_sym = '3-47250-00178'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47250-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47250-00018', 2024, '87.55'
FROM facilities WHERE admin_sym = '2-47250-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00176
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00176', 2024, '67.8'
FROM facilities WHERE admin_sym = '3-47250-00176'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00162
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00162', 2024, '65.55'
FROM facilities WHERE admin_sym = '3-47250-00162'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00124', 2024, '90.05'
FROM facilities WHERE admin_sym = '3-47250-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00080
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00080', 2024, '65.83'
FROM facilities WHERE admin_sym = '3-47250-00080'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47250-00034
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47250-00034', 2024, '72.75'
FROM facilities WHERE admin_sym = '3-47250-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47840-00066
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47840-00066', 2024, '88.8'
FROM facilities WHERE admin_sym = '3-47840-00066'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47840-00066
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47840-00066', 2024, '81.3'
FROM facilities WHERE admin_sym = '3-47840-00066'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47840-00034
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47840-00034', 2024, '95.6'
FROM facilities WHERE admin_sym = '3-47840-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47840-00072
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47840-00072', 2024, '84.35'
FROM facilities WHERE admin_sym = '2-47840-00072'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47840-00070
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47840-00070', 2024, '87.25'
FROM facilities WHERE admin_sym = '2-47840-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47840-00024
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47840-00024', 2024, '90.85'
FROM facilities WHERE admin_sym = '3-47840-00024'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47840-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47840-00040', 2024, '77.79'
FROM facilities WHERE admin_sym = '3-47840-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00120
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00120', 2024, '94.35'
FROM facilities WHERE admin_sym = '3-47170-00120'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00078
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00078', 2024, '93.55'
FROM facilities WHERE admin_sym = '3-47170-00078'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00074
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00074', 2024, '92.05'
FROM facilities WHERE admin_sym = '3-47170-00074'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00142
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00142', 2024, '94.6'
FROM facilities WHERE admin_sym = '3-47170-00142'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00126
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00126', 2024, '92.3'
FROM facilities WHERE admin_sym = '3-47170-00126'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00156
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00156', 2024, '92.85'
FROM facilities WHERE admin_sym = '3-47170-00156'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00138
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00138', 2024, '93.3'
FROM facilities WHERE admin_sym = '3-47170-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00114
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00114', 2024, '81.55'
FROM facilities WHERE admin_sym = '3-47170-00114'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47170-00178
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47170-00178', 2024, '85.97'
FROM facilities WHERE admin_sym = '2-47170-00178'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00082
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00082', 2024, '84.8'
FROM facilities WHERE admin_sym = '3-47170-00082'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00128
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00128', 2024, '87.55'
FROM facilities WHERE admin_sym = '3-47170-00128'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00022', 2024, '88.8'
FROM facilities WHERE admin_sym = '3-47170-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00086
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00086', 2024, '83.05'
FROM facilities WHERE admin_sym = '3-47170-00086'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00130
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00130', 2024, '84.8'
FROM facilities WHERE admin_sym = '3-47170-00130'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00110
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00110', 2024, '87.05'
FROM facilities WHERE admin_sym = '3-47170-00110'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47170-00160
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47170-00160', 2024, '76.3'
FROM facilities WHERE admin_sym = '2-47170-00160'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47170-00164
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47170-00164', 2024, '71.55'
FROM facilities WHERE admin_sym = '2-47170-00164'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47170-00174
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47170-00174', 2024, '74.1'
FROM facilities WHERE admin_sym = '2-47170-00174'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00090
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00090', 2024, '82.85'
FROM facilities WHERE admin_sym = '3-47170-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47170-00172
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47170-00172', 2024, '80.05'
FROM facilities WHERE admin_sym = '2-47170-00172'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00148
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00148', 2024, '72'
FROM facilities WHERE admin_sym = '3-47170-00148'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00004', 2024, '74.85'
FROM facilities WHERE admin_sym = '3-47170-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00084
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00084', 2024, '74.55'
FROM facilities WHERE admin_sym = '3-47170-00084'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00122
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00122', 2024, '63'
FROM facilities WHERE admin_sym = '3-47170-00122'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00104
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00104', 2024, '59.44'
FROM facilities WHERE admin_sym = '3-47170-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00074
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00074', 2024, '88.8'
FROM facilities WHERE admin_sym = '3-47170-00074'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00138
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00138', 2024, '94.05'
FROM facilities WHERE admin_sym = '3-47170-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00082
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00082', 2024, '84.05'
FROM facilities WHERE admin_sym = '3-47170-00082'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00022', 2024, '87.05'
FROM facilities WHERE admin_sym = '3-47170-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00114
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00114', 2024, '79.25'
FROM facilities WHERE admin_sym = '3-47170-00114'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00004', 2024, '74.55'
FROM facilities WHERE admin_sym = '3-47170-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47170-00164
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47170-00164', 2024, '68.05'
FROM facilities WHERE admin_sym = '2-47170-00164'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47170-00158
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47170-00158', 2024, '90.35'
FROM facilities WHERE admin_sym = '2-47170-00158'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00078
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00078', 2024, '88.85'
FROM facilities WHERE admin_sym = '3-47170-00078'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47170-00176
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47170-00176', 2024, '86.25'
FROM facilities WHERE admin_sym = '2-47170-00176'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00086
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00086', 2024, '83.05'
FROM facilities WHERE admin_sym = '3-47170-00086'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47170-00162
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47170-00162', 2024, '79.05'
FROM facilities WHERE admin_sym = '2-47170-00162'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00090
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00090', 2024, '62.3'
FROM facilities WHERE admin_sym = '3-47170-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00116
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00116', 2024, '93.3'
FROM facilities WHERE admin_sym = '3-47170-00116'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47170-00016
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47170-00016', 2024, '70.67'
FROM facilities WHERE admin_sym = '3-47170-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47770-00034
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47770-00034', 2024, '91.55'
FROM facilities WHERE admin_sym = '3-47770-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47770-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47770-00044', 2024, '91.6'
FROM facilities WHERE admin_sym = '3-47770-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47770-00026
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47770-00026', 2024, '88.8'
FROM facilities WHERE admin_sym = '3-47770-00026'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47770-00050
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47770-00050', 2024, '88.3'
FROM facilities WHERE admin_sym = '3-47770-00050'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47770-00016
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47770-00016', 2024, '89.55'
FROM facilities WHERE admin_sym = '3-47770-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47770-00060
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47770-00060', 2024, '83.8'
FROM facilities WHERE admin_sym = '3-47770-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47770-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47770-00012', 2024, '83.5'
FROM facilities WHERE admin_sym = '3-47770-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47770-00026
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47770-00026', 2024, '96.5'
FROM facilities WHERE admin_sym = '3-47770-00026'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47770-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47770-00012', 2024, '87.55'
FROM facilities WHERE admin_sym = '3-47770-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47770-00034
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47770-00034', 2024, '91.05'
FROM facilities WHERE admin_sym = '3-47770-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47770-00026
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47770-00026', 2024, '91.05'
FROM facilities WHERE admin_sym = '3-47770-00026'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47770-00016
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47770-00016', 2024, '86.55'
FROM facilities WHERE admin_sym = '3-47770-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47770-00060
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47770-00060', 2024, '81.55'
FROM facilities WHERE admin_sym = '3-47770-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47770-00054
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47770-00054', 2024, '81.1'
FROM facilities WHERE admin_sym = '3-47770-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47770-00048
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47770-00048', 2024, '74.05'
FROM facilities WHERE admin_sym = '3-47770-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.05',
  last_updated = CURRENT_TIMESTAMP;

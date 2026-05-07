-- Batch 94 of 226
-- Processing 100 facilities

-- admin_sym: 3-11620-00186
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11620-00186', 2024, '86.6'
FROM facilities WHERE admin_sym = '3-11620-00186'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11620-00369
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11620-00369', 2024, '85.55'
FROM facilities WHERE admin_sym = '2-11620-00369'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11620-00236
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11620-00236', 2024, '89.1'
FROM facilities WHERE admin_sym = '2-11620-00236'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11620-00194
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11620-00194', 2024, '87.05'
FROM facilities WHERE admin_sym = '3-11620-00194'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11620-00326
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11620-00326', 2024, '81.6'
FROM facilities WHERE admin_sym = '2-11620-00326'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11620-00220
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11620-00220', 2024, '80.55'
FROM facilities WHERE admin_sym = '3-11620-00220'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11620-00228
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11620-00228', 2024, '85.25'
FROM facilities WHERE admin_sym = '3-11620-00228'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11620-00300
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11620-00300', 2024, '81.05'
FROM facilities WHERE admin_sym = '3-11620-00300'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11620-00204
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11620-00204', 2024, '85.85'
FROM facilities WHERE admin_sym = '3-11620-00204'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11620-00098
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11620-00098', 2024, '71.75'
FROM facilities WHERE admin_sym = '3-11620-00098'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11620-00376
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11620-00376', 2024, '86.05'
FROM facilities WHERE admin_sym = '2-11620-00376'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11620-00143
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11620-00143', 2024, '81.55'
FROM facilities WHERE admin_sym = '3-11620-00143'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11620-00364
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11620-00364', 2024, '75.6'
FROM facilities WHERE admin_sym = '2-11620-00364'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11620-00240
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11620-00240', 2024, '77.05'
FROM facilities WHERE admin_sym = '3-11620-00240'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11620-00222
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11620-00222', 2024, '81.05'
FROM facilities WHERE admin_sym = '3-11620-00222'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11620-00338
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11620-00338', 2024, '72.8'
FROM facilities WHERE admin_sym = '3-11620-00338'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11620-00264
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11620-00264', 2024, '70.55'
FROM facilities WHERE admin_sym = '3-11620-00264'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11620-00336
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11620-00336', 2024, '78.3'
FROM facilities WHERE admin_sym = '3-11620-00336'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11620-00294
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11620-00294', 2024, '71.1'
FROM facilities WHERE admin_sym = '3-11620-00294'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11620-00255
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11620-00255', 2024, '74.1'
FROM facilities WHERE admin_sym = '3-11620-00255'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11620-00280
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11620-00280', 2024, '71.6'
FROM facilities WHERE admin_sym = '3-11620-00280'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11620-00200
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11620-00200', 2024, '77.85'
FROM facilities WHERE admin_sym = '3-11620-00200'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11620-00144
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11620-00144', 2024, '40.75'
FROM facilities WHERE admin_sym = '2-11620-00144'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '40.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11620-00108
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11620-00108', 2024, '85.55'
FROM facilities WHERE admin_sym = '3-11620-00108'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11620-00204
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11620-00204', 2024, '88.1'
FROM facilities WHERE admin_sym = '3-11620-00204'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11620-00143
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11620-00143', 2024, '80.05'
FROM facilities WHERE admin_sym = '3-11620-00143'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11620-00118
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11620-00118', 2024, '93.1'
FROM facilities WHERE admin_sym = '2-11620-00118'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11620-00286
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11620-00286', 2024, '91.35'
FROM facilities WHERE admin_sym = '2-11620-00286'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11620-00382
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11620-00382', 2024, '89.6'
FROM facilities WHERE admin_sym = '2-11620-00382'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11620-00136
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11620-00136', 2024, '88.85'
FROM facilities WHERE admin_sym = '2-11620-00136'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11620-00322
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11620-00322', 2024, '89.1'
FROM facilities WHERE admin_sym = '2-11620-00322'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11620-00234
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11620-00234', 2024, '86.85'
FROM facilities WHERE admin_sym = '2-11620-00234'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11620-00154
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11620-00154', 2024, '70.85'
FROM facilities WHERE admin_sym = '2-11620-00154'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11620-00370
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11620-00370', 2024, '73.35'
FROM facilities WHERE admin_sym = '2-11620-00370'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11620-00204
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11620-00204', 2024, '82.1'
FROM facilities WHERE admin_sym = '3-11620-00204'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00224
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00224', 2024, '90.75'
FROM facilities WHERE admin_sym = '3-11215-00224'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11215-00188
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11215-00188', 2024, '94.1'
FROM facilities WHERE admin_sym = '2-11215-00188'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11215-00280
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11215-00280', 2024, '91.35'
FROM facilities WHERE admin_sym = '2-11215-00280'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00230
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00230', 2024, '89.6'
FROM facilities WHERE admin_sym = '3-11215-00230'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00166
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00166', 2024, '89.1'
FROM facilities WHERE admin_sym = '3-11215-00166'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00234
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00234', 2024, '80.05'
FROM facilities WHERE admin_sym = '3-11215-00234'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00242
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00242', 2024, '84.6'
FROM facilities WHERE admin_sym = '3-11215-00242'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00186
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00186', 2024, '82.75'
FROM facilities WHERE admin_sym = '3-11215-00186'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00190
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00190', 2024, '88.55'
FROM facilities WHERE admin_sym = '3-11215-00190'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00056
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00056', 2024, '81.05'
FROM facilities WHERE admin_sym = '3-11215-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00236
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00236', 2024, '80.1'
FROM facilities WHERE admin_sym = '3-11215-00236'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11215-00132
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11215-00132', 2024, '87.35'
FROM facilities WHERE admin_sym = '2-11215-00132'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00210
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00210', 2024, '87.5'
FROM facilities WHERE admin_sym = '3-11215-00210'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00058
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00058', 2024, '83.3'
FROM facilities WHERE admin_sym = '3-11215-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00262
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00262', 2024, '72.5'
FROM facilities WHERE admin_sym = '3-11215-00262'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00046
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00046', 2024, '72.5'
FROM facilities WHERE admin_sym = '3-11215-00046'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00258
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00258', 2024, '79.35'
FROM facilities WHERE admin_sym = '3-11215-00258'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00008', 2024, '68.75'
FROM facilities WHERE admin_sym = '3-11215-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00244
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00244', 2024, '77.3'
FROM facilities WHERE admin_sym = '3-11215-00244'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00248
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00248', 2024, '77.5'
FROM facilities WHERE admin_sym = '3-11215-00248'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00170
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00170', 2024, '72.25'
FROM facilities WHERE admin_sym = '3-11215-00170'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00250
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00250', 2024, '65.05'
FROM facilities WHERE admin_sym = '3-11215-00250'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00222
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00222', 2024, '65.55'
FROM facilities WHERE admin_sym = '3-11215-00222'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00256
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00256', 2024, '56.25'
FROM facilities WHERE admin_sym = '3-11215-00256'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00216
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00216', 2024, '90.8'
FROM facilities WHERE admin_sym = '3-11215-00216'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11215-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11215-00012', 2024, '83.55'
FROM facilities WHERE admin_sym = '2-11215-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11215-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11215-00011', 2024, '86.85'
FROM facilities WHERE admin_sym = '2-11215-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00202
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00202', 2024, '85.35'
FROM facilities WHERE admin_sym = '3-11215-00202'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11215-00274
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11215-00274', 2024, '70.8'
FROM facilities WHERE admin_sym = '2-11215-00274'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11215-00275
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11215-00275', 2024, '69.8'
FROM facilities WHERE admin_sym = '2-11215-00275'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11215-00214
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11215-00214', 2024, '60.35'
FROM facilities WHERE admin_sym = '2-11215-00214'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00164
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00164', 2024, '82.6'
FROM facilities WHERE admin_sym = '3-11215-00164'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00134
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00134', 2024, '91.08'
FROM facilities WHERE admin_sym = '3-11215-00134'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00042
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00042', 2024, '74'
FROM facilities WHERE admin_sym = '3-11215-00042'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00028
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00028', 2024, '37.25'
FROM facilities WHERE admin_sym = '3-11215-00028'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '37.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11215-00284
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11215-00284', 2024, '77.75'
FROM facilities WHERE admin_sym = '2-11215-00284'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00068
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00068', 2024, '90.3'
FROM facilities WHERE admin_sym = '3-11530-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00238
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00238', 2024, '90.85'
FROM facilities WHERE admin_sym = '3-11530-00238'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11530-00360
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11530-00360', 2024, '94.1'
FROM facilities WHERE admin_sym = '2-11530-00360'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00260
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00260', 2024, '97.1'
FROM facilities WHERE admin_sym = '3-11530-00260'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00108
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00108', 2024, '94.6'
FROM facilities WHERE admin_sym = '3-11530-00108'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00100
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00100', 2024, '95.85'
FROM facilities WHERE admin_sym = '3-11530-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00272
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00272', 2024, '91.25'
FROM facilities WHERE admin_sym = '3-11530-00272'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00324
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00324', 2024, '95.1'
FROM facilities WHERE admin_sym = '3-11530-00324'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00286
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00286', 2024, '95.35'
FROM facilities WHERE admin_sym = '3-11530-00286'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00244
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00244', 2024, '92.55'
FROM facilities WHERE admin_sym = '3-11530-00244'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00158
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00158', 2024, '93.6'
FROM facilities WHERE admin_sym = '3-11530-00158'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00284
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00284', 2024, '96.3'
FROM facilities WHERE admin_sym = '3-11530-00284'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00156
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00156', 2024, '88.55'
FROM facilities WHERE admin_sym = '3-11530-00156'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00112
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00112', 2024, '92.1'
FROM facilities WHERE admin_sym = '3-11530-00112'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00280
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00280', 2024, '85.05'
FROM facilities WHERE admin_sym = '3-11530-00280'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00018', 2024, '86.85'
FROM facilities WHERE admin_sym = '3-11530-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00106
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00106', 2024, '88.1'
FROM facilities WHERE admin_sym = '3-11530-00106'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11530-00362
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11530-00362', 2024, '83.1'
FROM facilities WHERE admin_sym = '2-11530-00362'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11530-00378
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11530-00378', 2024, '82.5'
FROM facilities WHERE admin_sym = '2-11530-00378'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11530-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11530-00088', 2024, '92.6'
FROM facilities WHERE admin_sym = '2-11530-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00342
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00342', 2024, '85.85'
FROM facilities WHERE admin_sym = '3-11530-00342'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11530-00380
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11530-00380', 2024, '84.6'
FROM facilities WHERE admin_sym = '2-11530-00380'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00282
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00282', 2024, '86.6'
FROM facilities WHERE admin_sym = '3-11530-00282'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00354
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00354', 2024, '85.1'
FROM facilities WHERE admin_sym = '3-11530-00354'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00296
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00296', 2024, '87.6'
FROM facilities WHERE admin_sym = '3-11530-00296'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00190
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00190', 2024, '87.05'
FROM facilities WHERE admin_sym = '3-11530-00190'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11530-00368
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11530-00368', 2024, '81.5'
FROM facilities WHERE admin_sym = '2-11530-00368'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00057
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00057', 2024, '91.25'
FROM facilities WHERE admin_sym = '3-11530-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11530-00332
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11530-00332', 2024, '79.1'
FROM facilities WHERE admin_sym = '3-11530-00332'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

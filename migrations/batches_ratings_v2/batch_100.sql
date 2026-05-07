-- Batch 100 of 226
-- Processing 100 facilities

-- admin_sym: 3-11290-00214
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11290-00214', 2024, '90.6'
FROM facilities WHERE admin_sym = '3-11290-00214'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11290-00066
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11290-00066', 2024, '90.2'
FROM facilities WHERE admin_sym = '3-11290-00066'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.2',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11290-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11290-00040', 2024, '80.25'
FROM facilities WHERE admin_sym = '3-11290-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11290-00224
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11290-00224', 2024, '83.05'
FROM facilities WHERE admin_sym = '3-11290-00224'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11290-00285
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11290-00285', 2024, '71.05'
FROM facilities WHERE admin_sym = '3-11290-00285'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11290-00282
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11290-00282', 2024, '74.3'
FROM facilities WHERE admin_sym = '3-11290-00282'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11290-00217
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11290-00217', 2024, '79.55'
FROM facilities WHERE admin_sym = '3-11290-00217'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11290-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11290-00023', 2024, '92.35'
FROM facilities WHERE admin_sym = '2-11290-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11290-00175
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11290-00175', 2024, '98.25'
FROM facilities WHERE admin_sym = '2-11290-00175'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11290-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11290-00044', 2024, '91.1'
FROM facilities WHERE admin_sym = '2-11290-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11290-00102
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11290-00102', 2024, '90.3'
FROM facilities WHERE admin_sym = '2-11290-00102'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11290-00329
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11290-00329', 2024, '89.85'
FROM facilities WHERE admin_sym = '2-11290-00329'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11290-00315
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11290-00315', 2024, '86.35'
FROM facilities WHERE admin_sym = '2-11290-00315'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11290-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11290-00005', 2024, '85.55'
FROM facilities WHERE admin_sym = '2-11290-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11290-00270
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11290-00270', 2024, '81.3'
FROM facilities WHERE admin_sym = '2-11290-00270'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11290-00236
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11290-00236', 2024, '89.6'
FROM facilities WHERE admin_sym = '2-11290-00236'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11290-00316
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11290-00316', 2024, '84.1'
FROM facilities WHERE admin_sym = '2-11290-00316'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11290-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11290-00124', 2024, '80.6'
FROM facilities WHERE admin_sym = '2-11290-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11290-00314
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11290-00314', 2024, '71.6'
FROM facilities WHERE admin_sym = '2-11290-00314'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11290-00034
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11290-00034', 2024, '86'
FROM facilities WHERE admin_sym = '3-11290-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11290-00268
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11290-00268', 2024, '65.75'
FROM facilities WHERE admin_sym = '3-11290-00268'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11290-00272
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11290-00272', 2024, '60.88'
FROM facilities WHERE admin_sym = '3-11290-00272'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11290-00274
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11290-00274', 2024, '64.58'
FROM facilities WHERE admin_sym = '3-11290-00274'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00170
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00170', 2024, '91.85'
FROM facilities WHERE admin_sym = '3-11710-00170'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00158
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00158', 2024, '92.3'
FROM facilities WHERE admin_sym = '3-11710-00158'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00382
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00382', 2024, '91.85'
FROM facilities WHERE admin_sym = '2-11710-00382'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00118
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00118', 2024, '95.35'
FROM facilities WHERE admin_sym = '3-11710-00118'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00306
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00306', 2024, '94.1'
FROM facilities WHERE admin_sym = '3-11710-00306'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00294
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00294', 2024, '93.55'
FROM facilities WHERE admin_sym = '3-11710-00294'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00284
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00284', 2024, '90.3'
FROM facilities WHERE admin_sym = '3-11710-00284'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00276
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00276', 2024, '90.55'
FROM facilities WHERE admin_sym = '3-11710-00276'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00290
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00290', 2024, '91.85'
FROM facilities WHERE admin_sym = '3-11710-00290'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00215
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00215', 2024, '91.35'
FROM facilities WHERE admin_sym = '3-11710-00215'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00250
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00250', 2024, '96.35'
FROM facilities WHERE admin_sym = '3-11710-00250'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00404
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00404', 2024, '91.04'
FROM facilities WHERE admin_sym = '2-11710-00404'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00056
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00056', 2024, '95.6'
FROM facilities WHERE admin_sym = '3-11710-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00006', 2024, '91.85'
FROM facilities WHERE admin_sym = '2-11710-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00278
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00278', 2024, '94.6'
FROM facilities WHERE admin_sym = '3-11710-00278'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00369
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00369', 2024, '93.52'
FROM facilities WHERE admin_sym = '2-11710-00369'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00248
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00248', 2024, '94.05'
FROM facilities WHERE admin_sym = '3-11710-00248'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00148
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00148', 2024, '94'
FROM facilities WHERE admin_sym = '3-11710-00148'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00358
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00358', 2024, '83.35'
FROM facilities WHERE admin_sym = '2-11710-00358'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00198
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00198', 2024, '87.35'
FROM facilities WHERE admin_sym = '3-11710-00198'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00310
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00310', 2024, '82.3'
FROM facilities WHERE admin_sym = '3-11710-00310'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00166
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00166', 2024, '81.35'
FROM facilities WHERE admin_sym = '3-11710-00166'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00286
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00286', 2024, '84.55'
FROM facilities WHERE admin_sym = '3-11710-00286'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00342
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00342', 2024, '84.6'
FROM facilities WHERE admin_sym = '3-11710-00342'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00034
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00034', 2024, '80.8'
FROM facilities WHERE admin_sym = '3-11710-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00344
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00344', 2024, '87.1'
FROM facilities WHERE admin_sym = '3-11710-00344'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00202
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00202', 2024, '88.85'
FROM facilities WHERE admin_sym = '3-11710-00202'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00370
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00370', 2024, '82.85'
FROM facilities WHERE admin_sym = '2-11710-00370'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00100
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00100', 2024, '84.1'
FROM facilities WHERE admin_sym = '3-11710-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00386
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00386', 2024, '84.3'
FROM facilities WHERE admin_sym = '2-11710-00386'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00314
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00314', 2024, '80.85'
FROM facilities WHERE admin_sym = '3-11710-00314'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00390
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00390', 2024, '83.76'
FROM facilities WHERE admin_sym = '2-11710-00390'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.76',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00324
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00324', 2024, '79.35'
FROM facilities WHERE admin_sym = '3-11710-00324'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00266
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00266', 2024, '82.75'
FROM facilities WHERE admin_sym = '3-11710-00266'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00214
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00214', 2024, '72.55'
FROM facilities WHERE admin_sym = '3-11710-00214'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00388
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00388', 2024, '78.32'
FROM facilities WHERE admin_sym = '2-11710-00388'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00254
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00254', 2024, '79.8'
FROM facilities WHERE admin_sym = '3-11710-00254'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00224
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00224', 2024, '70.55'
FROM facilities WHERE admin_sym = '3-11710-00224'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00366
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00366', 2024, '79.3'
FROM facilities WHERE admin_sym = '2-11710-00366'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00348
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00348', 2024, '71.6'
FROM facilities WHERE admin_sym = '3-11710-00348'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00362
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00362', 2024, '76.3'
FROM facilities WHERE admin_sym = '2-11710-00362'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00108
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00108', 2024, '84.35'
FROM facilities WHERE admin_sym = '3-11710-00108'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00018', 2024, '91.3'
FROM facilities WHERE admin_sym = '3-11710-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00044', 2024, '61.35'
FROM facilities WHERE admin_sym = '3-11710-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00304
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00304', 2024, '67.3'
FROM facilities WHERE admin_sym = '3-11710-00304'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00316
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00316', 2024, '68.05'
FROM facilities WHERE admin_sym = '3-11710-00316'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00302
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00302', 2024, '65.35'
FROM facilities WHERE admin_sym = '3-11710-00302'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00322
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00322', 2024, '78.85'
FROM facilities WHERE admin_sym = '3-11710-00322'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00208
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00208', 2024, '64.8'
FROM facilities WHERE admin_sym = '3-11710-00208'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00326
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00326', 2024, '50.55'
FROM facilities WHERE admin_sym = '3-11710-00326'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00336
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00336', 2024, '55.3'
FROM facilities WHERE admin_sym = '3-11710-00336'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00402
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00402', 2024, '59.6'
FROM facilities WHERE admin_sym = '2-11710-00402'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00088', 2024, '89.8'
FROM facilities WHERE admin_sym = '3-11710-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00148
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00148', 2024, '96.55'
FROM facilities WHERE admin_sym = '3-11710-00148'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00166
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00166', 2024, '86.3'
FROM facilities WHERE admin_sym = '3-11710-00166'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00202
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00202', 2024, '86.35'
FROM facilities WHERE admin_sym = '3-11710-00202'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00322
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00322', 2024, '82.85'
FROM facilities WHERE admin_sym = '3-11710-00322'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00120
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00120', 2024, '91.1'
FROM facilities WHERE admin_sym = '2-11710-00120'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00017
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00017', 2024, '94.85'
FROM facilities WHERE admin_sym = '2-11710-00017'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00328
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00328', 2024, '88.6'
FROM facilities WHERE admin_sym = '2-11710-00328'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00260
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00260', 2024, '81.6'
FROM facilities WHERE admin_sym = '2-11710-00260'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00161
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00161', 2024, '82.35'
FROM facilities WHERE admin_sym = '2-11710-00161'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00128
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00128', 2024, '87.3'
FROM facilities WHERE admin_sym = '2-11710-00128'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00004', 2024, '89.55'
FROM facilities WHERE admin_sym = '2-11710-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00282
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00282', 2024, '84.35'
FROM facilities WHERE admin_sym = '2-11710-00282'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00240
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00240', 2024, '88.85'
FROM facilities WHERE admin_sym = '2-11710-00240'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00374
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00374', 2024, '86.6'
FROM facilities WHERE admin_sym = '2-11710-00374'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00319
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00319', 2024, '85.6'
FROM facilities WHERE admin_sym = '2-11710-00319'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00288
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00288', 2024, '76.05'
FROM facilities WHERE admin_sym = '2-11710-00288'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00360
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00360', 2024, '72.05'
FROM facilities WHERE admin_sym = '2-11710-00360'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00246
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00246', 2024, '76.55'
FROM facilities WHERE admin_sym = '2-11710-00246'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00376
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00376', 2024, '69.1'
FROM facilities WHERE admin_sym = '2-11710-00376'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11710-00298
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11710-00298', 2024, '87.1'
FROM facilities WHERE admin_sym = '2-11710-00298'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00232
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00232', 2024, '90.1'
FROM facilities WHERE admin_sym = '3-11710-00232'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00261
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00261', 2024, '86.8'
FROM facilities WHERE admin_sym = '3-11710-00261'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00218
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00218', 2024, '77'
FROM facilities WHERE admin_sym = '3-11710-00218'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11710-00262
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11710-00262', 2024, '68.42'
FROM facilities WHERE admin_sym = '3-11710-00262'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.42',
  last_updated = CURRENT_TIMESTAMP;

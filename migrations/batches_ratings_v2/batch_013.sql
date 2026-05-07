-- Batch 13 of 226
-- Processing 100 facilities

-- admin_sym: 2-42130-00367
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00367', 2024, 'A'
FROM facilities WHERE admin_sym = '2-42130-00367'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = 'A',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00363
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00363', 2024, '73.6'
FROM facilities WHERE admin_sym = '2-42130-00363'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42130-00307
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42130-00307', 2024, '91.6'
FROM facilities WHERE admin_sym = '3-42130-00307'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00311
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00311', 2024, '72.16'
FROM facilities WHERE admin_sym = '2-42130-00311'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00397
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00397', 2024, '90.41'
FROM facilities WHERE admin_sym = '2-42130-00397'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42130-00273
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42130-00273', 2024, '74.6'
FROM facilities WHERE admin_sym = '3-42130-00273'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00393
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00393', 2024, '85.21'
FROM facilities WHERE admin_sym = '2-42130-00393'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42130-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42130-00011', 2024, '92.75'
FROM facilities WHERE admin_sym = '3-42130-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00413
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00413', 2024, '93.02'
FROM facilities WHERE admin_sym = '2-42130-00413'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00379
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00379', 2024, '85.82'
FROM facilities WHERE admin_sym = '2-42130-00379'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42130-00151
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42130-00151', 2024, '81.85'
FROM facilities WHERE admin_sym = '3-42130-00151'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00309
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00309', 2024, '82.85'
FROM facilities WHERE admin_sym = '2-42130-00309'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00413
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00413', 2024, '91.96'
FROM facilities WHERE admin_sym = '2-42130-00413'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42130-00193
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42130-00193', 2024, '86.85'
FROM facilities WHERE admin_sym = '3-42130-00193'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00291
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00291', 2024, '51.8'
FROM facilities WHERE admin_sym = '2-42130-00291'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '51.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00259
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00259', 2024, '92.6'
FROM facilities WHERE admin_sym = '2-42130-00259'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00271
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00271', 2024, '77.35'
FROM facilities WHERE admin_sym = '2-42130-00271'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00299
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00299', 2024, '74.85'
FROM facilities WHERE admin_sym = '2-42130-00299'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00417
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00417', 2024, '92.6'
FROM facilities WHERE admin_sym = '2-42130-00417'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00301
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00301', 2024, '88.1'
FROM facilities WHERE admin_sym = '2-42130-00301'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00321
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00321', 2024, '80.1'
FROM facilities WHERE admin_sym = '2-42130-00321'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00279
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00279', 2024, '96.35'
FROM facilities WHERE admin_sym = '2-42130-00279'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00411
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00411', 2024, '83.6'
FROM facilities WHERE admin_sym = '2-42130-00411'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42130-00193
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42130-00193', 2024, '84.6'
FROM facilities WHERE admin_sym = '3-42130-00193'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00377
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00377', 2024, '91.35'
FROM facilities WHERE admin_sym = '2-42130-00377'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00329
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00329', 2024, '84.6'
FROM facilities WHERE admin_sym = '2-42130-00329'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00349
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00349', 2024, '79.6'
FROM facilities WHERE admin_sym = '2-42130-00349'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00293
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00293', 2024, '68.85'
FROM facilities WHERE admin_sym = '2-42130-00293'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00407
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00407', 2024, '88.85'
FROM facilities WHERE admin_sym = '2-42130-00407'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00361
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00361', 2024, '84.85'
FROM facilities WHERE admin_sym = '2-42130-00361'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42130-00205
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42130-00205', 2024, '86.3'
FROM facilities WHERE admin_sym = '3-42130-00205'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42130-00033
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42130-00033', 2024, '86.2'
FROM facilities WHERE admin_sym = '3-42130-00033'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.2',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42130-00053
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42130-00053', 2024, '69.04'
FROM facilities WHERE admin_sym = '3-42130-00053'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00335
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00335', 2024, '80.83'
FROM facilities WHERE admin_sym = '2-42130-00335'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42130-00347
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42130-00347', 2024, '67'
FROM facilities WHERE admin_sym = '2-42130-00347'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42730-00067
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42730-00067', 2024, '84.38'
FROM facilities WHERE admin_sym = '2-42730-00067'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42730-00083
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42730-00083', 2024, '90.07'
FROM facilities WHERE admin_sym = '2-42730-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.07',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42730-00083
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42730-00083', 2024, '85.13'
FROM facilities WHERE admin_sym = '2-42730-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42730-00067
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42730-00067', 2024, '94.85'
FROM facilities WHERE admin_sym = '2-42730-00067'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42730-00083
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42730-00083', 2024, '82.1'
FROM facilities WHERE admin_sym = '2-42730-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42730-00025
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42730-00025', 2024, '85.1'
FROM facilities WHERE admin_sym = '2-42730-00025'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42730-00061
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42730-00061', 2024, '86.6'
FROM facilities WHERE admin_sym = '2-42730-00061'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42730-00045
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42730-00045', 2024, '81.04'
FROM facilities WHERE admin_sym = '2-42730-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42730-00071
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42730-00071', 2024, '75.83'
FROM facilities WHERE admin_sym = '3-42730-00071'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42150-00087
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42150-00087', 2024, '70.18'
FROM facilities WHERE admin_sym = '3-42150-00087'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00355
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00355', 2024, '87.16'
FROM facilities WHERE admin_sym = '2-42150-00355'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00379
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00379', 2024, '91.96'
FROM facilities WHERE admin_sym = '2-42150-00379'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00005', 2024, '90.3'
FROM facilities WHERE admin_sym = '2-42150-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00335
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00335', 2024, '82.86'
FROM facilities WHERE admin_sym = '2-42150-00335'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00371
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00371', 2024, '83.82'
FROM facilities WHERE admin_sym = '2-42150-00371'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42150-00309
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42150-00309', 2024, '69.35'
FROM facilities WHERE admin_sym = '3-42150-00309'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00291
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00291', 2024, '87.1'
FROM facilities WHERE admin_sym = '2-42150-00291'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00377
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00377', 2024, '85.1'
FROM facilities WHERE admin_sym = '2-42150-00377'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00301
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00301', 2024, '98.1'
FROM facilities WHERE admin_sym = '2-42150-00301'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00385
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00385', 2024, '87.88'
FROM facilities WHERE admin_sym = '2-42150-00385'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00341
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00341', 2024, '50.97'
FROM facilities WHERE admin_sym = '2-42150-00341'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42150-00155
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42150-00155', 2024, '88.1'
FROM facilities WHERE admin_sym = '3-42150-00155'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42150-00143
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42150-00143', 2024, '74.77'
FROM facilities WHERE admin_sym = '3-42150-00143'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42150-00247
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42150-00247', 2024, '90.1'
FROM facilities WHERE admin_sym = '3-42150-00247'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00305
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00305', 2024, '73.6'
FROM facilities WHERE admin_sym = '2-42150-00305'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42150-00285
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42150-00285', 2024, '91.6'
FROM facilities WHERE admin_sym = '3-42150-00285'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00369
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00369', 2024, '77.13'
FROM facilities WHERE admin_sym = '2-42150-00369'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00303
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00303', 2024, '74.1'
FROM facilities WHERE admin_sym = '2-42150-00303'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00363
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00363', 2024, '71.24'
FROM facilities WHERE admin_sym = '2-42150-00363'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42150-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42150-00023', 2024, '93.55'
FROM facilities WHERE admin_sym = '3-42150-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42150-00265
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42150-00265', 2024, '67.1'
FROM facilities WHERE admin_sym = '3-42150-00265'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00353
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00353', 2024, '47.63'
FROM facilities WHERE admin_sym = '2-42150-00353'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '47.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00351
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00351', 2024, '74.35'
FROM facilities WHERE admin_sym = '2-42150-00351'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00373
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00373', 2024, '62.35'
FROM facilities WHERE admin_sym = '2-42150-00373'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00293
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00293', 2024, '97.1'
FROM facilities WHERE admin_sym = '2-42150-00293'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00383
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00383', 2024, '82.21'
FROM facilities WHERE admin_sym = '2-42150-00383'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00331
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00331', 2024, '86.85'
FROM facilities WHERE admin_sym = '2-42150-00331'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42150-00309
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42150-00309', 2024, '62.35'
FROM facilities WHERE admin_sym = '3-42150-00309'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42150-00155
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42150-00155', 2024, '79.35'
FROM facilities WHERE admin_sym = '3-42150-00155'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00305
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00305', 2024, '63.85'
FROM facilities WHERE admin_sym = '2-42150-00305'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00353
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00353', 2024, '46.74'
FROM facilities WHERE admin_sym = '2-42150-00353'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '46.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42150-00273
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42150-00273', 2024, '52.35'
FROM facilities WHERE admin_sym = '3-42150-00273'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '52.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00293
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00293', 2024, '90.85'
FROM facilities WHERE admin_sym = '2-42150-00293'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42150-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42150-00023', 2024, '91'
FROM facilities WHERE admin_sym = '3-42150-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00293
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00293', 2024, '96.55'
FROM facilities WHERE admin_sym = '2-42150-00293'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00211
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00211', 2024, '55.55'
FROM facilities WHERE admin_sym = '2-42150-00211'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00005', 2024, '84.85'
FROM facilities WHERE admin_sym = '2-42150-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00335
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00335', 2024, '84.3'
FROM facilities WHERE admin_sym = '2-42150-00335'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00199
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00199', 2024, '76.75'
FROM facilities WHERE admin_sym = '2-42150-00199'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00367
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00367', 2024, '84.35'
FROM facilities WHERE admin_sym = '2-42150-00367'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00287
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00287', 2024, '74.1'
FROM facilities WHERE admin_sym = '2-42150-00287'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00349
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00349', 2024, '90.6'
FROM facilities WHERE admin_sym = '2-42150-00349'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00293
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00293', 2024, '91.85'
FROM facilities WHERE admin_sym = '2-42150-00293'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00357
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00357', 2024, '73.1'
FROM facilities WHERE admin_sym = '2-42150-00357'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00339
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00339', 2024, '88.6'
FROM facilities WHERE admin_sym = '2-42150-00339'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00357
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00357', 2024, '73.3'
FROM facilities WHERE admin_sym = '2-42150-00357'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42150-00057
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42150-00057', 2024, '73.8'
FROM facilities WHERE admin_sym = '3-42150-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42150-00219
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42150-00219', 2024, '61.5'
FROM facilities WHERE admin_sym = '3-42150-00219'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42150-00165
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42150-00165', 2024, '56.75'
FROM facilities WHERE admin_sym = '3-42150-00165'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42150-00343
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42150-00343', 2024, '63.42'
FROM facilities WHERE admin_sym = '2-42150-00343'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-42150-00171
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-42150-00171', 2024, '88.3'
FROM facilities WHERE admin_sym = '3-42150-00171'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42190-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42190-00005', 2024, '97.8'
FROM facilities WHERE admin_sym = '2-42190-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42190-00019
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42190-00019', 2024, '90.85'
FROM facilities WHERE admin_sym = '2-42190-00019'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42190-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42190-00023', 2024, '80.1'
FROM facilities WHERE admin_sym = '2-42190-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-42190-00021
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-42190-00021', 2024, '97.6'
FROM facilities WHERE admin_sym = '2-42190-00021'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.6',
  last_updated = CURRENT_TIMESTAMP;

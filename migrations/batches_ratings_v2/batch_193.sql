-- Batch 193 of 226
-- Processing 100 facilities

-- admin_sym: 1-29170-00296
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00296', 2024, '74.95'
FROM facilities WHERE admin_sym = '1-29170-00296'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.95',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00295
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00295', 2024, '74.92'
FROM facilities WHERE admin_sym = '1-29170-00295'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.92',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00275
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00275', 2024, '79.4'
FROM facilities WHERE admin_sym = '1-29170-00275'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00353
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00353', 2024, '74.75'
FROM facilities WHERE admin_sym = '1-29170-00353'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00371
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00371', 2024, '49.34'
FROM facilities WHERE admin_sym = '1-29170-00371'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.34',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00530
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00530', 2024, '47.42'
FROM facilities WHERE admin_sym = '1-29170-00530'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '47.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00047
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00047', 2024, '77.81'
FROM facilities WHERE admin_sym = '1-29170-00047'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00523
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00523', 2024, '87.16'
FROM facilities WHERE admin_sym = '1-29170-00523'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29140-00013
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29140-00013', 2024, '84.8'
FROM facilities WHERE admin_sym = '1-29140-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29140-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29140-00009', 2024, '99.35'
FROM facilities WHERE admin_sym = '1-29140-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '99.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29140-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29140-00001', 2024, '97.05'
FROM facilities WHERE admin_sym = '1-29140-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29140-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29140-00002', 2024, '93.35'
FROM facilities WHERE admin_sym = '1-29140-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29140-00015
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29140-00015', 2024, '99.1'
FROM facilities WHERE admin_sym = '1-29140-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '99.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29140-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29140-00006', 2024, '74.14'
FROM facilities WHERE admin_sym = '1-29140-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29140-00134
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29140-00134', 2024, '76.93'
FROM facilities WHERE admin_sym = '1-29140-00134'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29140-00362
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29140-00362', 2024, '74.8'
FROM facilities WHERE admin_sym = '1-29140-00362'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29140-00270
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29140-00270', 2024, '82.52'
FROM facilities WHERE admin_sym = '1-29140-00270'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29140-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29140-00018', 2024, '75.49'
FROM facilities WHERE admin_sym = '1-29140-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29140-00251
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29140-00251', 2024, '83.15'
FROM facilities WHERE admin_sym = '1-29140-00251'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.15',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29140-00254
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29140-00254', 2024, '94.29'
FROM facilities WHERE admin_sym = '1-29140-00254'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29140-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29140-00003', 2024, '97.1'
FROM facilities WHERE admin_sym = '1-29140-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29140-00152
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29140-00152', 2024, '95.01'
FROM facilities WHERE admin_sym = '1-29140-00152'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.01',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29140-00284
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29140-00284', 2024, '98.29'
FROM facilities WHERE admin_sym = '1-29140-00284'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30230-00152
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30230-00152', 2024, '75.35'
FROM facilities WHERE admin_sym = '1-30230-00152'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30230-00129
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30230-00129', 2024, '80.6'
FROM facilities WHERE admin_sym = '1-30230-00129'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30230-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30230-00125', 2024, '92.35'
FROM facilities WHERE admin_sym = '1-30230-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30230-00187
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30230-00187', 2024, '63.77'
FROM facilities WHERE admin_sym = '1-30230-00187'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30230-00017
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30230-00017', 2024, '79.6'
FROM facilities WHERE admin_sym = '1-30230-00017'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30230-00110
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30230-00110', 2024, '80.55'
FROM facilities WHERE admin_sym = '1-30230-00110'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30230-00207
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30230-00207', 2024, '68.99'
FROM facilities WHERE admin_sym = '1-30230-00207'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30230-00188
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30230-00188', 2024, '84.53'
FROM facilities WHERE admin_sym = '1-30230-00188'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.53',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30230-00058
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30230-00058', 2024, '81.46'
FROM facilities WHERE admin_sym = '1-30230-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30230-00106
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30230-00106', 2024, '87.64'
FROM facilities WHERE admin_sym = '1-30230-00106'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30230-00184
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30230-00184', 2024, '65.95'
FROM facilities WHERE admin_sym = '1-30230-00184'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.95',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30230-00119
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30230-00119', 2024, '97.75'
FROM facilities WHERE admin_sym = '1-30230-00119'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30230-00197
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30230-00197', 2024, '70.56'
FROM facilities WHERE admin_sym = '1-30230-00197'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.56',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30230-00075
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30230-00075', 2024, '68.89'
FROM facilities WHERE admin_sym = '1-30230-00075'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30230-00151
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30230-00151', 2024, '74.17'
FROM facilities WHERE admin_sym = '1-30230-00151'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00299
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00299', 2024, '75.3'
FROM facilities WHERE admin_sym = '1-30110-00299'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00199
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00199', 2024, '76.35'
FROM facilities WHERE admin_sym = '1-30110-00199'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00263
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00263', 2024, '68.25'
FROM facilities WHERE admin_sym = '1-30110-00263'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00009', 2024, '91.05'
FROM facilities WHERE admin_sym = '1-30110-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00015
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00015', 2024, '73.19'
FROM facilities WHERE admin_sym = '1-30110-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.19',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00004', 2024, '85.85'
FROM facilities WHERE admin_sym = '1-30110-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00219
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00219', 2024, '82.1'
FROM facilities WHERE admin_sym = '1-30110-00219'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00048
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00048', 2024, '92.1'
FROM facilities WHERE admin_sym = '1-30110-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00279
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00279', 2024, '89.05'
FROM facilities WHERE admin_sym = '1-30110-00279'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00202
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00202', 2024, '74.35'
FROM facilities WHERE admin_sym = '1-30110-00202'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00315
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00315', 2024, '78.85'
FROM facilities WHERE admin_sym = '1-30110-00315'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00287
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00287', 2024, '93.35'
FROM facilities WHERE admin_sym = '1-30110-00287'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00271
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00271', 2024, '94.6'
FROM facilities WHERE admin_sym = '1-30110-00271'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00195
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00195', 2024, '92.6'
FROM facilities WHERE admin_sym = '1-30110-00195'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00298
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00298', 2024, '90.98'
FROM facilities WHERE admin_sym = '1-30110-00298'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00001', 2024, '71.18'
FROM facilities WHERE admin_sym = '1-30110-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00150
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00150', 2024, '94.1'
FROM facilities WHERE admin_sym = '1-30110-00150'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00265
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00265', 2024, '88.32'
FROM facilities WHERE admin_sym = '1-30110-00265'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00184
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00184', 2024, '88.26'
FROM facilities WHERE admin_sym = '1-30110-00184'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.26',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00283
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00283', 2024, '69'
FROM facilities WHERE admin_sym = '1-30110-00283'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00284
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00284', 2024, '73.72'
FROM facilities WHERE admin_sym = '1-30110-00284'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00306
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00306', 2024, '81.44'
FROM facilities WHERE admin_sym = '1-30110-00306'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00180
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00180', 2024, '55.76'
FROM facilities WHERE admin_sym = '1-30110-00180'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.76',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00294
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00294', 2024, '71.36'
FROM facilities WHERE admin_sym = '1-30110-00294'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.36',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00346
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00346', 2024, '66.58'
FROM facilities WHERE admin_sym = '1-30110-00346'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00145
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00145', 2024, '60.6'
FROM facilities WHERE admin_sym = '1-30110-00145'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30110-00120
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30110-00120', 2024, '97.33'
FROM facilities WHERE admin_sym = '1-30110-00120'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00001', 2024, '88.35'
FROM facilities WHERE admin_sym = '1-30170-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00469
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00469', 2024, '88.45'
FROM facilities WHERE admin_sym = '1-30170-00469'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.45',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00468
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00468', 2024, '84.6'
FROM facilities WHERE admin_sym = '1-30170-00468'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00018', 2024, '86.71'
FROM facilities WHERE admin_sym = '1-30170-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00410
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00410', 2024, '90.6'
FROM facilities WHERE admin_sym = '1-30170-00410'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00213
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00213', 2024, '86.6'
FROM facilities WHERE admin_sym = '1-30170-00213'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00448
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00448', 2024, '81.85'
FROM facilities WHERE admin_sym = '1-30170-00448'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00004', 2024, '77.3'
FROM facilities WHERE admin_sym = '1-30170-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00235
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00235', 2024, '92.35'
FROM facilities WHERE admin_sym = '1-30170-00235'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00263
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00263', 2024, '83.9'
FROM facilities WHERE admin_sym = '1-30170-00263'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.9',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00275
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00275', 2024, '86.05'
FROM facilities WHERE admin_sym = '1-30170-00275'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00253
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00253', 2024, '76.6'
FROM facilities WHERE admin_sym = '1-30170-00253'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00296
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00296', 2024, '92.6'
FROM facilities WHERE admin_sym = '1-30170-00296'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00250
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00250', 2024, '95.35'
FROM facilities WHERE admin_sym = '1-30170-00250'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00467
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00467', 2024, '74.62'
FROM facilities WHERE admin_sym = '1-30170-00467'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.62',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00264
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00264', 2024, '97.3'
FROM facilities WHERE admin_sym = '1-30170-00264'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00163
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00163', 2024, '96.6'
FROM facilities WHERE admin_sym = '1-30170-00163'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00330
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00330', 2024, '95.1'
FROM facilities WHERE admin_sym = '1-30170-00330'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00408
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00408', 2024, '78.6'
FROM facilities WHERE admin_sym = '1-30170-00408'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00195
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00195', 2024, '72.82'
FROM facilities WHERE admin_sym = '1-30170-00195'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00313
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00313', 2024, '91.48'
FROM facilities WHERE admin_sym = '1-30170-00313'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00123
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00123', 2024, '76.65'
FROM facilities WHERE admin_sym = '1-30170-00123'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.65',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00304
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00304', 2024, '95.1'
FROM facilities WHERE admin_sym = '1-30170-00304'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00290
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00290', 2024, '97.08'
FROM facilities WHERE admin_sym = '1-30170-00290'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00168
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00168', 2024, '95.14'
FROM facilities WHERE admin_sym = '1-30170-00168'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00019
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00019', 2024, '91.14'
FROM facilities WHERE admin_sym = '1-30170-00019'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00206
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00206', 2024, '66.22'
FROM facilities WHERE admin_sym = '1-30170-00206'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.22',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00381
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00381', 2024, '83.28'
FROM facilities WHERE admin_sym = '1-30170-00381'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.28',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00223
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00223', 2024, '70.72'
FROM facilities WHERE admin_sym = '1-30170-00223'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00366
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00366', 2024, '76.04'
FROM facilities WHERE admin_sym = '1-30170-00366'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00362
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00362', 2024, '80.91'
FROM facilities WHERE admin_sym = '1-30170-00362'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00209
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00209', 2024, '82.16'
FROM facilities WHERE admin_sym = '1-30170-00209'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00380
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00380', 2024, '59.21'
FROM facilities WHERE admin_sym = '1-30170-00380'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00419
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00419', 2024, '67.55'
FROM facilities WHERE admin_sym = '1-30170-00419'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30170-00201
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00201', 2024, '87.74'
FROM facilities WHERE admin_sym = '1-30170-00201'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.74',
  last_updated = CURRENT_TIMESTAMP;

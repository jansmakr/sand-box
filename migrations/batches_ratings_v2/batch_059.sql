-- Batch 59 of 226
-- Processing 100 facilities

-- admin_sym: 3-30140-00435
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30140-00435', 2024, '98.6'
FROM facilities WHERE admin_sym = '3-30140-00435'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30140-00481
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30140-00481', 2024, '86.05'
FROM facilities WHERE admin_sym = '3-30140-00481'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30140-00449
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30140-00449', 2024, '88.1'
FROM facilities WHERE admin_sym = '3-30140-00449'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30140-00291
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30140-00291', 2024, '96.8'
FROM facilities WHERE admin_sym = '3-30140-00291'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30140-00325
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30140-00325', 2024, '95.85'
FROM facilities WHERE admin_sym = '3-30140-00325'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30140-00479
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30140-00479', 2024, '65.35'
FROM facilities WHERE admin_sym = '2-30140-00479'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30140-00515
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30140-00515', 2024, '83.6'
FROM facilities WHERE admin_sym = '2-30140-00515'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30140-00417
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30140-00417', 2024, '89.85'
FROM facilities WHERE admin_sym = '3-30140-00417'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30140-00381
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30140-00381', 2024, '96.85'
FROM facilities WHERE admin_sym = '3-30140-00381'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30140-00569
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30140-00569', 2024, '78.85'
FROM facilities WHERE admin_sym = '2-30140-00569'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30140-00355
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30140-00355', 2024, '93.1'
FROM facilities WHERE admin_sym = '3-30140-00355'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30140-00247
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30140-00247', 2024, '90.6'
FROM facilities WHERE admin_sym = '3-30140-00247'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30140-00539
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30140-00539', 2024, '63.6'
FROM facilities WHERE admin_sym = '2-30140-00539'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30140-00579
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30140-00579', 2024, '89.1'
FROM facilities WHERE admin_sym = '2-30140-00579'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30140-00327
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30140-00327', 2024, '83.1'
FROM facilities WHERE admin_sym = '3-30140-00327'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30140-00551
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30140-00551', 2024, '81.05'
FROM facilities WHERE admin_sym = '2-30140-00551'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30140-00527
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30140-00527', 2024, '66.42'
FROM facilities WHERE admin_sym = '2-30140-00527'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30140-00045
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30140-00045', 2024, '82.5'
FROM facilities WHERE admin_sym = '3-30140-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30140-00037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30140-00037', 2024, '78.08'
FROM facilities WHERE admin_sym = '3-30140-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30140-00193
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30140-00193', 2024, '93.3'
FROM facilities WHERE admin_sym = '3-30140-00193'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30140-00439
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30140-00439', 2024, '82.3'
FROM facilities WHERE admin_sym = '3-30140-00439'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30140-00571
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30140-00571', 2024, '81.83'
FROM facilities WHERE admin_sym = '2-30140-00571'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30140-00351
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30140-00351', 2024, '87.3'
FROM facilities WHERE admin_sym = '3-30140-00351'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44710-00103
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44710-00103', 2024, '69.35'
FROM facilities WHERE admin_sym = '3-44710-00103'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44710-00131
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44710-00131', 2024, '83.35'
FROM facilities WHERE admin_sym = '2-44710-00131'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44710-00085
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44710-00085', 2024, '96.6'
FROM facilities WHERE admin_sym = '3-44710-00085'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44710-00153
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44710-00153', 2024, '61.52'
FROM facilities WHERE admin_sym = '2-44710-00153'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44710-00139
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44710-00139', 2024, '79.85'
FROM facilities WHERE admin_sym = '2-44710-00139'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44710-00145
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44710-00145', 2024, '64.13'
FROM facilities WHERE admin_sym = '2-44710-00145'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44710-00135
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44710-00135', 2024, '55.44'
FROM facilities WHERE admin_sym = '2-44710-00135'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44710-00115
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44710-00115', 2024, '73.1'
FROM facilities WHERE admin_sym = '3-44710-00115'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44710-00083
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44710-00083', 2024, '75.55'
FROM facilities WHERE admin_sym = '3-44710-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44710-00107
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44710-00107', 2024, '62.8'
FROM facilities WHERE admin_sym = '3-44710-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44710-00085
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44710-00085', 2024, '97.1'
FROM facilities WHERE admin_sym = '3-44710-00085'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44710-00115
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44710-00115', 2024, '72.35'
FROM facilities WHERE admin_sym = '3-44710-00115'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44710-00107
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44710-00107', 2024, '62.3'
FROM facilities WHERE admin_sym = '3-44710-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44710-00131
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44710-00131', 2024, '85.35'
FROM facilities WHERE admin_sym = '2-44710-00131'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44710-00135
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44710-00135', 2024, '78.55'
FROM facilities WHERE admin_sym = '2-44710-00135'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44710-00151
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44710-00151', 2024, '85.6'
FROM facilities WHERE admin_sym = '2-44710-00151'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00161
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00161', 2024, '88.35'
FROM facilities WHERE admin_sym = '3-30170-00161'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00075
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00075', 2024, '83.35'
FROM facilities WHERE admin_sym = '3-30170-00075'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00525
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00525', 2024, '95.35'
FROM facilities WHERE admin_sym = '2-30170-00525'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00527
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00527', 2024, '86.1'
FROM facilities WHERE admin_sym = '2-30170-00527'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00453
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00453', 2024, '96.85'
FROM facilities WHERE admin_sym = '3-30170-00453'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00377
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00377', 2024, '83.35'
FROM facilities WHERE admin_sym = '3-30170-00377'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00535
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00535', 2024, '85.02'
FROM facilities WHERE admin_sym = '2-30170-00535'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00373
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00373', 2024, '69.63'
FROM facilities WHERE admin_sym = '3-30170-00373'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00329
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00329', 2024, '90.6'
FROM facilities WHERE admin_sym = '2-30170-00329'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00279
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00279', 2024, '59.55'
FROM facilities WHERE admin_sym = '3-30170-00279'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00411
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00411', 2024, '71'
FROM facilities WHERE admin_sym = '3-30170-00411'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00529
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00529', 2024, '90.57'
FROM facilities WHERE admin_sym = '2-30170-00529'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.57',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00189
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00189', 2024, '94.25'
FROM facilities WHERE admin_sym = '3-30170-00189'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00401
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00401', 2024, '81.35'
FROM facilities WHERE admin_sym = '3-30170-00401'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00513
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00513', 2024, '93.6'
FROM facilities WHERE admin_sym = '2-30170-00513'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00273
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00273', 2024, '95.35'
FROM facilities WHERE admin_sym = '3-30170-00273'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00461
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00461', 2024, '90.85'
FROM facilities WHERE admin_sym = '3-30170-00461'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00413
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00413', 2024, '86.27'
FROM facilities WHERE admin_sym = '3-30170-00413'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00531
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00531', 2024, '80.79'
FROM facilities WHERE admin_sym = '2-30170-00531'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00473
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00473', 2024, '73.71'
FROM facilities WHERE admin_sym = '3-30170-00473'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00365
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00365', 2024, '88.85'
FROM facilities WHERE admin_sym = '3-30170-00365'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00217
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00217', 2024, '87.05'
FROM facilities WHERE admin_sym = '3-30170-00217'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00441
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00441', 2024, '96.85'
FROM facilities WHERE admin_sym = '3-30170-00441'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00423
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00423', 2024, '85.55'
FROM facilities WHERE admin_sym = '3-30170-00423'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00521
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00521', 2024, '72.38'
FROM facilities WHERE admin_sym = '2-30170-00521'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00481
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00481', 2024, '78.05'
FROM facilities WHERE admin_sym = '3-30170-00481'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00011', 2024, '62.22'
FROM facilities WHERE admin_sym = '2-30170-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.22',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00463
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00463', 2024, '56.18'
FROM facilities WHERE admin_sym = '3-30170-00463'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00457
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00457', 2024, '83.35'
FROM facilities WHERE admin_sym = '3-30170-00457'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00297
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00297', 2024, '63.85'
FROM facilities WHERE admin_sym = '3-30170-00297'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00449
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00449', 2024, '89.85'
FROM facilities WHERE admin_sym = '3-30170-00449'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00333
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00333', 2024, '74.85'
FROM facilities WHERE admin_sym = '3-30170-00333'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00541
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00541', 2024, '83.41'
FROM facilities WHERE admin_sym = '2-30170-00541'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00327
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00327', 2024, '92.35'
FROM facilities WHERE admin_sym = '2-30170-00327'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00107
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00107', 2024, '93.85'
FROM facilities WHERE admin_sym = '3-30170-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00073
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00073', 2024, '93.3'
FROM facilities WHERE admin_sym = '3-30170-00073'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00421
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00421', 2024, '83.35'
FROM facilities WHERE admin_sym = '3-30170-00421'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00507
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00507', 2024, '95.35'
FROM facilities WHERE admin_sym = '2-30170-00507'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00323
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00323', 2024, '96.02'
FROM facilities WHERE admin_sym = '2-30170-00323'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00497
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00497', 2024, '75.35'
FROM facilities WHERE admin_sym = '2-30170-00497'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00367
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00367', 2024, '49.79'
FROM facilities WHERE admin_sym = '3-30170-00367'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00515
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00515', 2024, '78.16'
FROM facilities WHERE admin_sym = '2-30170-00515'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00435
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00435', 2024, '74.35'
FROM facilities WHERE admin_sym = '3-30170-00435'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00455
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00455', 2024, '91.1'
FROM facilities WHERE admin_sym = '2-30170-00455'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00247
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00247', 2024, '75.63'
FROM facilities WHERE admin_sym = '3-30170-00247'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00393
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00393', 2024, '86.3'
FROM facilities WHERE admin_sym = '3-30170-00393'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00525
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00525', 2024, '94.1'
FROM facilities WHERE admin_sym = '2-30170-00525'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00481
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00481', 2024, '80'
FROM facilities WHERE admin_sym = '3-30170-00481'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00421
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00421', 2024, '84.35'
FROM facilities WHERE admin_sym = '3-30170-00421'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00507
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00507', 2024, '97.85'
FROM facilities WHERE admin_sym = '2-30170-00507'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00539
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00539', 2024, '81.05'
FROM facilities WHERE admin_sym = '2-30170-00539'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00439
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00439', 2024, '97.35'
FROM facilities WHERE admin_sym = '2-30170-00439'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00437
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00437', 2024, '66.85'
FROM facilities WHERE admin_sym = '2-30170-00437'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00493
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00493', 2024, '75.35'
FROM facilities WHERE admin_sym = '2-30170-00493'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00329
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00329', 2024, '93.85'
FROM facilities WHERE admin_sym = '2-30170-00329'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00417
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00417', 2024, '81.6'
FROM facilities WHERE admin_sym = '2-30170-00417'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-30170-00411
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-30170-00411', 2024, '86.35'
FROM facilities WHERE admin_sym = '3-30170-00411'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00505
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00505', 2024, '93.85'
FROM facilities WHERE admin_sym = '2-30170-00505'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00361
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00361', 2024, '85.93'
FROM facilities WHERE admin_sym = '2-30170-00361'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00517
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00517', 2024, '91.85'
FROM facilities WHERE admin_sym = '2-30170-00517'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-30170-00521
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-30170-00521', 2024, '88.1'
FROM facilities WHERE admin_sym = '2-30170-00521'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

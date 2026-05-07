-- Batch 31 of 226
-- Processing 100 facilities

-- admin_sym: 3-27290-00501
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00501', 2024, '97.05'
FROM facilities WHERE admin_sym = '3-27290-00501'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00473
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00473', 2024, '75.55'
FROM facilities WHERE admin_sym = '3-27290-00473'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00553
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00553', 2024, '85.85'
FROM facilities WHERE admin_sym = '3-27290-00553'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00457
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00457', 2024, '94.85'
FROM facilities WHERE admin_sym = '3-27290-00457'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00341
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00341', 2024, '85.55'
FROM facilities WHERE admin_sym = '3-27290-00341'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27290-00601
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27290-00601', 2024, '90.47'
FROM facilities WHERE admin_sym = '2-27290-00601'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27290-00633
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27290-00633', 2024, '75.46'
FROM facilities WHERE admin_sym = '2-27290-00633'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00417
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00417', 2024, '90.8'
FROM facilities WHERE admin_sym = '3-27290-00417'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00515
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00515', 2024, '67.3'
FROM facilities WHERE admin_sym = '3-27290-00515'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27290-00609
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27290-00609', 2024, '82.83'
FROM facilities WHERE admin_sym = '2-27290-00609'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27290-00631
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27290-00631', 2024, '79.91'
FROM facilities WHERE admin_sym = '2-27290-00631'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00397
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00397', 2024, '93.22'
FROM facilities WHERE admin_sym = '3-27290-00397'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.22',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00265
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00265', 2024, '90.25'
FROM facilities WHERE admin_sym = '3-27290-00265'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00473
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00473', 2024, '86.5'
FROM facilities WHERE admin_sym = '3-27290-00473'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27290-00637
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27290-00637', 2024, '84.05'
FROM facilities WHERE admin_sym = '2-27290-00637'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00297
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00297', 2024, '94.8'
FROM facilities WHERE admin_sym = '3-27290-00297'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00399
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00399', 2024, '92.55'
FROM facilities WHERE admin_sym = '3-27290-00399'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27290-00617
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27290-00617', 2024, '88.3'
FROM facilities WHERE admin_sym = '2-27290-00617'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00551
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00551', 2024, '80.3'
FROM facilities WHERE admin_sym = '3-27290-00551'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00349
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00349', 2024, '93.55'
FROM facilities WHERE admin_sym = '3-27290-00349'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27290-00613
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27290-00613', 2024, '89.3'
FROM facilities WHERE admin_sym = '2-27290-00613'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27290-00563
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27290-00563', 2024, '73.05'
FROM facilities WHERE admin_sym = '2-27290-00563'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27290-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27290-00007', 2024, '85.8'
FROM facilities WHERE admin_sym = '2-27290-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27290-00587
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27290-00587', 2024, '96.6'
FROM facilities WHERE admin_sym = '2-27290-00587'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00393
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00393', 2024, '71.3'
FROM facilities WHERE admin_sym = '3-27290-00393'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00533
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00533', 2024, '74.8'
FROM facilities WHERE admin_sym = '3-27290-00533'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00439
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00439', 2024, '88.35'
FROM facilities WHERE admin_sym = '3-27290-00439'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27290-00507
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27290-00507', 2024, '90.3'
FROM facilities WHERE admin_sym = '2-27290-00507'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27290-00561
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27290-00561', 2024, '84.8'
FROM facilities WHERE admin_sym = '2-27290-00561'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00509
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00509', 2024, '90.1'
FROM facilities WHERE admin_sym = '3-27290-00509'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00485
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00485', 2024, '85.3'
FROM facilities WHERE admin_sym = '3-27290-00485'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27290-00647
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27290-00647', 2024, '88.3'
FROM facilities WHERE admin_sym = '2-27290-00647'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00429
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00429', 2024, '86.55'
FROM facilities WHERE admin_sym = '3-27290-00429'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00357
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00357', 2024, '86.55'
FROM facilities WHERE admin_sym = '3-27290-00357'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27290-00609
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27290-00609', 2024, '90.6'
FROM facilities WHERE admin_sym = '2-27290-00609'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00521
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00521', 2024, '91'
FROM facilities WHERE admin_sym = '3-27290-00521'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00037', 2024, '63.88'
FROM facilities WHERE admin_sym = '3-27290-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00317
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00317', 2024, '80.3'
FROM facilities WHERE admin_sym = '3-27290-00317'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00549
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00549', 2024, '90.3'
FROM facilities WHERE admin_sym = '3-27290-00549'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00409
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00409', 2024, '74.5'
FROM facilities WHERE admin_sym = '3-27290-00409'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27290-00045
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27290-00045', 2024, '77.08'
FROM facilities WHERE admin_sym = '3-27290-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27110-00171
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27110-00171', 2024, '90.13'
FROM facilities WHERE admin_sym = '2-27110-00171'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27110-00151
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27110-00151', 2024, '40.3'
FROM facilities WHERE admin_sym = '3-27110-00151'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '40.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27110-00133
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27110-00133', 2024, '87.3'
FROM facilities WHERE admin_sym = '3-27110-00133'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27110-00019
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27110-00019', 2024, '74.8'
FROM facilities WHERE admin_sym = '3-27110-00019'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27110-00157
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27110-00157', 2024, '55.8'
FROM facilities WHERE admin_sym = '3-27110-00157'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27110-00147
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27110-00147', 2024, '67.8'
FROM facilities WHERE admin_sym = '3-27110-00147'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27110-00087
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27110-00087', 2024, '81.8'
FROM facilities WHERE admin_sym = '3-27110-00087'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27110-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27110-00005', 2024, '97.05'
FROM facilities WHERE admin_sym = '2-27110-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27110-00105
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27110-00105', 2024, '62.55'
FROM facilities WHERE admin_sym = '3-27110-00105'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27110-00167
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27110-00167', 2024, '82.91'
FROM facilities WHERE admin_sym = '2-27110-00167'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27110-00105
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27110-00105', 2024, '72.61'
FROM facilities WHERE admin_sym = '3-27110-00105'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27110-00159
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27110-00159', 2024, '93.1'
FROM facilities WHERE admin_sym = '2-27110-00159'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27110-00133
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27110-00133', 2024, '92.3'
FROM facilities WHERE admin_sym = '3-27110-00133'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27110-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27110-00005', 2024, '96.1'
FROM facilities WHERE admin_sym = '2-27110-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27110-00119
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27110-00119', 2024, '48'
FROM facilities WHERE admin_sym = '3-27110-00119'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00253
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00253', 2024, '71.35'
FROM facilities WHERE admin_sym = '3-27170-00253'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00157
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00157', 2024, '86.05'
FROM facilities WHERE admin_sym = '3-27170-00157'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27170-00401
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27170-00401', 2024, '79.78'
FROM facilities WHERE admin_sym = '2-27170-00401'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.78',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27170-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27170-00009', 2024, '78.3'
FROM facilities WHERE admin_sym = '2-27170-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00365
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00365', 2024, '78.55'
FROM facilities WHERE admin_sym = '3-27170-00365'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00291
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00291', 2024, '59.61'
FROM facilities WHERE admin_sym = '3-27170-00291'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00329
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00329', 2024, '87.05'
FROM facilities WHERE admin_sym = '3-27170-00329'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00325
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00325', 2024, '69.35'
FROM facilities WHERE admin_sym = '3-27170-00325'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00347
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00347', 2024, '77.05'
FROM facilities WHERE admin_sym = '3-27170-00347'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27170-00395
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27170-00395', 2024, '82.85'
FROM facilities WHERE admin_sym = '2-27170-00395'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00251
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00251', 2024, '95.85'
FROM facilities WHERE admin_sym = '3-27170-00251'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27170-00403
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27170-00403', 2024, '78.69'
FROM facilities WHERE admin_sym = '2-27170-00403'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00039
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00039', 2024, '92.3'
FROM facilities WHERE admin_sym = '3-27170-00039'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00065
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00065', 2024, '91.85'
FROM facilities WHERE admin_sym = '3-27170-00065'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00051
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00051', 2024, '80.2'
FROM facilities WHERE admin_sym = '3-27170-00051'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.2',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00323
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00323', 2024, '77.55'
FROM facilities WHERE admin_sym = '3-27170-00323'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00297
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00297', 2024, '85.3'
FROM facilities WHERE admin_sym = '3-27170-00297'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00095
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00095', 2024, '94.55'
FROM facilities WHERE admin_sym = '3-27170-00095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00363
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00363', 2024, '76.55'
FROM facilities WHERE admin_sym = '3-27170-00363'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00315
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00315', 2024, '91.05'
FROM facilities WHERE admin_sym = '3-27170-00315'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00187
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00187', 2024, '56.55'
FROM facilities WHERE admin_sym = '3-27170-00187'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00305
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00305', 2024, '90.6'
FROM facilities WHERE admin_sym = '3-27170-00305'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27170-00349
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27170-00349', 2024, '86.3'
FROM facilities WHERE admin_sym = '2-27170-00349'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27170-00379
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27170-00379', 2024, '51.64'
FROM facilities WHERE admin_sym = '2-27170-00379'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '51.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00361
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00361', 2024, '47.39'
FROM facilities WHERE admin_sym = '3-27170-00361'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '47.39',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00303
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00303', 2024, '85.8'
FROM facilities WHERE admin_sym = '3-27170-00303'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27170-00409
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27170-00409', 2024, '95.94'
FROM facilities WHERE admin_sym = '2-27170-00409'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00309
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00309', 2024, '93.05'
FROM facilities WHERE admin_sym = '3-27170-00309'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27170-00349
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27170-00349', 2024, '90.1'
FROM facilities WHERE admin_sym = '2-27170-00349'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00217
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00217', 2024, '85.1'
FROM facilities WHERE admin_sym = '3-27170-00217'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27170-00407
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27170-00407', 2024, '86.43'
FROM facilities WHERE admin_sym = '2-27170-00407'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27170-00375
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27170-00375', 2024, '86.35'
FROM facilities WHERE admin_sym = '2-27170-00375'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27170-00317
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27170-00317', 2024, '82.55'
FROM facilities WHERE admin_sym = '2-27170-00317'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00065
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00065', 2024, '89.35'
FROM facilities WHERE admin_sym = '3-27170-00065'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00323
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00323', 2024, '85.55'
FROM facilities WHERE admin_sym = '3-27170-00323'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00259
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00259', 2024, '83.1'
FROM facilities WHERE admin_sym = '3-27170-00259'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00271
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00271', 2024, '82.8'
FROM facilities WHERE admin_sym = '3-27170-00271'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00341
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00341', 2024, '93.35'
FROM facilities WHERE admin_sym = '3-27170-00341'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00301
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00301', 2024, '87.3'
FROM facilities WHERE admin_sym = '3-27170-00301'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27170-00335
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27170-00335', 2024, '83'
FROM facilities WHERE admin_sym = '3-27170-00335'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27140-00581
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27140-00581', 2024, '84.05'
FROM facilities WHERE admin_sym = '2-27140-00581'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27140-00579
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27140-00579', 2024, '91.68'
FROM facilities WHERE admin_sym = '2-27140-00579'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27140-00501
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00501', 2024, '77.05'
FROM facilities WHERE admin_sym = '3-27140-00501'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27140-00495
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27140-00495', 2024, '89.6'
FROM facilities WHERE admin_sym = '3-27140-00495'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

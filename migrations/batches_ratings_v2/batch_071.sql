-- Batch 71 of 226
-- Processing 100 facilities

-- admin_sym: 3-28260-00267
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00267', 2024, '87.35'
FROM facilities WHERE admin_sym = '3-28260-00267'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00369
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00369', 2024, '86.1'
FROM facilities WHERE admin_sym = '3-28260-00369'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00337
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00337', 2024, '74.18'
FROM facilities WHERE admin_sym = '3-28260-00337'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00521
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00521', 2024, '80.35'
FROM facilities WHERE admin_sym = '2-28260-00521'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00447
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00447', 2024, '89.35'
FROM facilities WHERE admin_sym = '3-28260-00447'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00497
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00497', 2024, '80.6'
FROM facilities WHERE admin_sym = '2-28260-00497'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00449
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00449', 2024, '47.85'
FROM facilities WHERE admin_sym = '2-28260-00449'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '47.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00587
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00587', 2024, '83.85'
FROM facilities WHERE admin_sym = '2-28260-00587'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00027
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00027', 2024, '69.85'
FROM facilities WHERE admin_sym = '3-28260-00027'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00331
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00331', 2024, '88.1'
FROM facilities WHERE admin_sym = '3-28260-00331'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00613
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00613', 2024, '78.38'
FROM facilities WHERE admin_sym = '2-28260-00613'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00495
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00495', 2024, '62.77'
FROM facilities WHERE admin_sym = '2-28260-00495'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00459
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00459', 2024, '81.1'
FROM facilities WHERE admin_sym = '3-28260-00459'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00271
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00271', 2024, '76.1'
FROM facilities WHERE admin_sym = '3-28260-00271'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00519
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00519', 2024, '65.85'
FROM facilities WHERE admin_sym = '2-28260-00519'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00511
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00511', 2024, '61.34'
FROM facilities WHERE admin_sym = '2-28260-00511'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.34',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00537
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00537', 2024, '96.35'
FROM facilities WHERE admin_sym = '2-28260-00537'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00597
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00597', 2024, '42.18'
FROM facilities WHERE admin_sym = '2-28260-00597'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '42.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00401
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00401', 2024, '82.1'
FROM facilities WHERE admin_sym = '3-28260-00401'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00375
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00375', 2024, '77.85'
FROM facilities WHERE admin_sym = '3-28260-00375'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00635
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00635', 2024, '80.4'
FROM facilities WHERE admin_sym = '2-28260-00635'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00015
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00015', 2024, '87.1'
FROM facilities WHERE admin_sym = '3-28260-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00361
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00361', 2024, '88.6'
FROM facilities WHERE admin_sym = '3-28260-00361'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00401
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00401', 2024, '77.85'
FROM facilities WHERE admin_sym = '3-28260-00401'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00165
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00165', 2024, '89.35'
FROM facilities WHERE admin_sym = '3-28260-00165'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00515
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00515', 2024, '74.6'
FROM facilities WHERE admin_sym = '2-28260-00515'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00013
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00013', 2024, '92.1'
FROM facilities WHERE admin_sym = '2-28260-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00493
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00493', 2024, '85.1'
FROM facilities WHERE admin_sym = '2-28260-00493'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00423
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00423', 2024, '62.85'
FROM facilities WHERE admin_sym = '2-28260-00423'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00619
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00619', 2024, '80.85'
FROM facilities WHERE admin_sym = '2-28260-00619'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00363
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00363', 2024, '84.6'
FROM facilities WHERE admin_sym = '2-28260-00363'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00473
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00473', 2024, '74.85'
FROM facilities WHERE admin_sym = '2-28260-00473'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00631
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00631', 2024, '86.1'
FROM facilities WHERE admin_sym = '2-28260-00631'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00633
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00633', 2024, '97.35'
FROM facilities WHERE admin_sym = '2-28260-00633'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00481
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00481', 2024, '79.85'
FROM facilities WHERE admin_sym = '3-28260-00481'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00467
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00467', 2024, '79.1'
FROM facilities WHERE admin_sym = '2-28260-00467'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00319
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00319', 2024, '84.1'
FROM facilities WHERE admin_sym = '2-28260-00319'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00337
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00337', 2024, '72.35'
FROM facilities WHERE admin_sym = '3-28260-00337'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00027
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00027', 2024, '73.85'
FROM facilities WHERE admin_sym = '3-28260-00027'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00477
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00477', 2024, '86.35'
FROM facilities WHERE admin_sym = '2-28260-00477'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00375
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00375', 2024, '74.85'
FROM facilities WHERE admin_sym = '3-28260-00375'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00555
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00555', 2024, '79.1'
FROM facilities WHERE admin_sym = '2-28260-00555'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00219
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00219', 2024, '86.3'
FROM facilities WHERE admin_sym = '3-28260-00219'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00303
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00303', 2024, '80.6'
FROM facilities WHERE admin_sym = '3-28260-00303'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00263
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00263', 2024, '86.6'
FROM facilities WHERE admin_sym = '3-28260-00263'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00243
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00243', 2024, '80.97'
FROM facilities WHERE admin_sym = '3-28260-00243'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28710-00135
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28710-00135', 2024, '81.6'
FROM facilities WHERE admin_sym = '3-28710-00135'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28710-00047
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28710-00047', 2024, '53.35'
FROM facilities WHERE admin_sym = '3-28710-00047'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28710-00141
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28710-00141', 2024, '84.1'
FROM facilities WHERE admin_sym = '3-28710-00141'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28710-00115
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28710-00115', 2024, '81.55'
FROM facilities WHERE admin_sym = '3-28710-00115'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28710-00157
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28710-00157', 2024, '93.55'
FROM facilities WHERE admin_sym = '2-28710-00157'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28710-00153
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28710-00153', 2024, '79.34'
FROM facilities WHERE admin_sym = '2-28710-00153'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.34',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28710-00137
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28710-00137', 2024, '60.1'
FROM facilities WHERE admin_sym = '3-28710-00137'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28710-00065
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28710-00065', 2024, '75.02'
FROM facilities WHERE admin_sym = '3-28710-00065'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28710-00133
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28710-00133', 2024, '92.1'
FROM facilities WHERE admin_sym = '3-28710-00133'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28710-00083
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28710-00083', 2024, '77.52'
FROM facilities WHERE admin_sym = '3-28710-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28710-00109
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28710-00109', 2024, '78.6'
FROM facilities WHERE admin_sym = '3-28710-00109'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28710-00091
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28710-00091', 2024, '81.6'
FROM facilities WHERE admin_sym = '3-28710-00091'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28710-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28710-00125', 2024, '81.55'
FROM facilities WHERE admin_sym = '3-28710-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28710-00137
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28710-00137', 2024, '66.35'
FROM facilities WHERE admin_sym = '3-28710-00137'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28710-00083
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28710-00083', 2024, '76.52'
FROM facilities WHERE admin_sym = '3-28710-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28710-00091
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28710-00091', 2024, '81.52'
FROM facilities WHERE admin_sym = '3-28710-00091'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28710-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28710-00125', 2024, '74.85'
FROM facilities WHERE admin_sym = '3-28710-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28710-00123
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28710-00123', 2024, '96.55'
FROM facilities WHERE admin_sym = '3-28710-00123'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28710-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28710-00125', 2024, '86.6'
FROM facilities WHERE admin_sym = '3-28710-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28710-00139
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28710-00139', 2024, '81.6'
FROM facilities WHERE admin_sym = '3-28710-00139'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28710-00147
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28710-00147', 2024, '48.35'
FROM facilities WHERE admin_sym = '3-28710-00147'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '48.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28710-00131
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28710-00131', 2024, '95.35'
FROM facilities WHERE admin_sym = '2-28710-00131'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28710-00133
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28710-00133', 2024, '88.6'
FROM facilities WHERE admin_sym = '3-28710-00133'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28710-00087
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28710-00087', 2024, '49.3'
FROM facilities WHERE admin_sym = '3-28710-00087'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28200-00857
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28200-00857', 2024, '76.07'
FROM facilities WHERE admin_sym = '2-28200-00857'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.07',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28200-00859
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28200-00859', 2024, '74.77'
FROM facilities WHERE admin_sym = '2-28200-00859'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28200-00739
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28200-00739', 2024, '84.85'
FROM facilities WHERE admin_sym = '2-28200-00739'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28200-00801
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28200-00801', 2024, '76.04'
FROM facilities WHERE admin_sym = '2-28200-00801'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28200-00561
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28200-00561', 2024, '82.05'
FROM facilities WHERE admin_sym = '3-28200-00561'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28200-00781
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28200-00781', 2024, '53.91'
FROM facilities WHERE admin_sym = '2-28200-00781'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28200-00821
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28200-00821', 2024, '82.32'
FROM facilities WHERE admin_sym = '2-28200-00821'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28200-00749
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28200-00749', 2024, '82.02'
FROM facilities WHERE admin_sym = '2-28200-00749'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28200-00311
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28200-00311', 2024, '58.35'
FROM facilities WHERE admin_sym = '3-28200-00311'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28200-00737
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28200-00737', 2024, '80.35'
FROM facilities WHERE admin_sym = '2-28200-00737'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28200-00375
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28200-00375', 2024, '84.1'
FROM facilities WHERE admin_sym = '3-28200-00375'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28200-00853
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28200-00853', 2024, '88.96'
FROM facilities WHERE admin_sym = '2-28200-00853'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28200-00775
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28200-00775', 2024, '70.1'
FROM facilities WHERE admin_sym = '2-28200-00775'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28200-00575
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28200-00575', 2024, '87.6'
FROM facilities WHERE admin_sym = '3-28200-00575'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28200-00837
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28200-00837', 2024, '80.54'
FROM facilities WHERE admin_sym = '2-28200-00837'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28200-00621
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28200-00621', 2024, '78.6'
FROM facilities WHERE admin_sym = '3-28200-00621'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28200-00675
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28200-00675', 2024, '82.85'
FROM facilities WHERE admin_sym = '3-28200-00675'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28200-00761
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28200-00761', 2024, '74.52'
FROM facilities WHERE admin_sym = '2-28200-00761'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28200-00111
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28200-00111', 2024, '73.85'
FROM facilities WHERE admin_sym = '3-28200-00111'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28200-00535
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28200-00535', 2024, '91.6'
FROM facilities WHERE admin_sym = '3-28200-00535'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28200-00547
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28200-00547', 2024, '96.35'
FROM facilities WHERE admin_sym = '3-28200-00547'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28200-00037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28200-00037', 2024, '86.6'
FROM facilities WHERE admin_sym = '3-28200-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28200-00063
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28200-00063', 2024, '77.6'
FROM facilities WHERE admin_sym = '2-28200-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28200-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28200-00125', 2024, '85.1'
FROM facilities WHERE admin_sym = '3-28200-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28200-00361
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28200-00361', 2024, '77.1'
FROM facilities WHERE admin_sym = '3-28200-00361'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28200-00441
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28200-00441', 2024, '80.35'
FROM facilities WHERE admin_sym = '3-28200-00441'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28200-00659
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28200-00659', 2024, '79.35'
FROM facilities WHERE admin_sym = '3-28200-00659'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28200-00499
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28200-00499', 2024, '74.35'
FROM facilities WHERE admin_sym = '3-28200-00499'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28200-00819
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28200-00819', 2024, '80.85'
FROM facilities WHERE admin_sym = '2-28200-00819'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28200-00809
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28200-00809', 2024, '42.85'
FROM facilities WHERE admin_sym = '2-28200-00809'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '42.85',
  last_updated = CURRENT_TIMESTAMP;

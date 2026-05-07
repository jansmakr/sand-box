-- Batch 70 of 226
-- Processing 100 facilities

-- admin_sym: 2-28185-00269
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28185-00269', 2024, '63.1'
FROM facilities WHERE admin_sym = '2-28185-00269'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28185-00203
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28185-00203', 2024, '86.85'
FROM facilities WHERE admin_sym = '2-28185-00203'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28185-00257
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28185-00257', 2024, '85.85'
FROM facilities WHERE admin_sym = '2-28185-00257'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28185-00265
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28185-00265', 2024, '90.6'
FROM facilities WHERE admin_sym = '2-28185-00265'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28185-00143
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00143', 2024, '88.6'
FROM facilities WHERE admin_sym = '3-28185-00143'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28185-00193
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28185-00193', 2024, '86.6'
FROM facilities WHERE admin_sym = '2-28185-00193'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28185-00139
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00139', 2024, '60.05'
FROM facilities WHERE admin_sym = '3-28185-00139'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28185-00119
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00119', 2024, '97.72'
FROM facilities WHERE admin_sym = '3-28185-00119'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28185-00159
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00159', 2024, '77.1'
FROM facilities WHERE admin_sym = '3-28185-00159'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28185-00081
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00081', 2024, '82.13'
FROM facilities WHERE admin_sym = '3-28185-00081'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28185-00101
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28185-00101', 2024, '81.6'
FROM facilities WHERE admin_sym = '3-28185-00101'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00315
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00315', 2024, '71.1'
FROM facilities WHERE admin_sym = '3-28245-00315'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28245-00423
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28245-00423', 2024, '79.91'
FROM facilities WHERE admin_sym = '2-28245-00423'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00093
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00093', 2024, '82.85'
FROM facilities WHERE admin_sym = '3-28245-00093'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00187
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00187', 2024, '76.6'
FROM facilities WHERE admin_sym = '3-28245-00187'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00371
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00371', 2024, '80.63'
FROM facilities WHERE admin_sym = '3-28245-00371'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00381
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00381', 2024, '76.85'
FROM facilities WHERE admin_sym = '3-28245-00381'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00083
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00083', 2024, '76.27'
FROM facilities WHERE admin_sym = '3-28245-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00275
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00275', 2024, '59.6'
FROM facilities WHERE admin_sym = '3-28245-00275'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00363
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00363', 2024, '68.1'
FROM facilities WHERE admin_sym = '3-28245-00363'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00375
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00375', 2024, '86.35'
FROM facilities WHERE admin_sym = '3-28245-00375'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28245-00497
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28245-00497', 2024, '73.96'
FROM facilities WHERE admin_sym = '2-28245-00497'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00395
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00395', 2024, '73.85'
FROM facilities WHERE admin_sym = '3-28245-00395'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28245-00505
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28245-00505', 2024, '83.82'
FROM facilities WHERE admin_sym = '2-28245-00505'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00397
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00397', 2024, '81.35'
FROM facilities WHERE admin_sym = '3-28245-00397'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00361
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00361', 2024, '67.74'
FROM facilities WHERE admin_sym = '3-28245-00361'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00163
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00163', 2024, '94.1'
FROM facilities WHERE admin_sym = '3-28245-00163'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28245-00487
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28245-00487', 2024, '77.16'
FROM facilities WHERE admin_sym = '2-28245-00487'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00313
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00313', 2024, '63.1'
FROM facilities WHERE admin_sym = '3-28245-00313'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00391
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00391', 2024, '77.35'
FROM facilities WHERE admin_sym = '3-28245-00391'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00033
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00033', 2024, '73.6'
FROM facilities WHERE admin_sym = '3-28245-00033'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28245-00449
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28245-00449', 2024, '88.85'
FROM facilities WHERE admin_sym = '2-28245-00449'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00293
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00293', 2024, '66.07'
FROM facilities WHERE admin_sym = '3-28245-00293'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.07',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00301
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00301', 2024, '73.35'
FROM facilities WHERE admin_sym = '3-28245-00301'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00143
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00143', 2024, '84.21'
FROM facilities WHERE admin_sym = '3-28245-00143'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00151
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00151', 2024, '81.1'
FROM facilities WHERE admin_sym = '3-28245-00151'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28245-00461
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28245-00461', 2024, '87.1'
FROM facilities WHERE admin_sym = '2-28245-00461'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28245-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28245-00011', 2024, '95.35'
FROM facilities WHERE admin_sym = '2-28245-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28245-00235
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28245-00235', 2024, '82.6'
FROM facilities WHERE admin_sym = '2-28245-00235'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00351
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00351', 2024, '72.35'
FROM facilities WHERE admin_sym = '3-28245-00351'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00357
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00357', 2024, '81.85'
FROM facilities WHERE admin_sym = '3-28245-00357'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00237
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00237', 2024, '76.1'
FROM facilities WHERE admin_sym = '3-28245-00237'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00229
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00229', 2024, '91.85'
FROM facilities WHERE admin_sym = '3-28245-00229'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00075
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00075', 2024, '63.1'
FROM facilities WHERE admin_sym = '3-28245-00075'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28245-00425
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28245-00425', 2024, '65.85'
FROM facilities WHERE admin_sym = '2-28245-00425'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28245-00455
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28245-00455', 2024, '74.85'
FROM facilities WHERE admin_sym = '2-28245-00455'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00321
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00321', 2024, '81.1'
FROM facilities WHERE admin_sym = '3-28245-00321'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28245-00493
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28245-00493', 2024, '81.96'
FROM facilities WHERE admin_sym = '2-28245-00493'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28245-00479
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28245-00479', 2024, '84.46'
FROM facilities WHERE admin_sym = '2-28245-00479'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28245-00463
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28245-00463', 2024, '69.57'
FROM facilities WHERE admin_sym = '2-28245-00463'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.57',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00083
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00083', 2024, '87.43'
FROM facilities WHERE admin_sym = '3-28245-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00313
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00313', 2024, '68.15'
FROM facilities WHERE admin_sym = '3-28245-00313'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.15',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00321
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00321', 2024, '70.6'
FROM facilities WHERE admin_sym = '3-28245-00321'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00237
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00237', 2024, '82.85'
FROM facilities WHERE admin_sym = '3-28245-00237'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28245-00327
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28245-00327', 2024, '85.6'
FROM facilities WHERE admin_sym = '2-28245-00327'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00323
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00323', 2024, '83.1'
FROM facilities WHERE admin_sym = '3-28245-00323'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28245-00487
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28245-00487', 2024, '72.6'
FROM facilities WHERE admin_sym = '2-28245-00487'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28245-00263
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28245-00263', 2024, '83.6'
FROM facilities WHERE admin_sym = '2-28245-00263'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00287
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00287', 2024, '92.3'
FROM facilities WHERE admin_sym = '3-28245-00287'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00243
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00243', 2024, '74.8'
FROM facilities WHERE admin_sym = '3-28245-00243'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28245-00389
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28245-00389', 2024, '94.1'
FROM facilities WHERE admin_sym = '2-28245-00389'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00083
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00083', 2024, '84.63'
FROM facilities WHERE admin_sym = '3-28245-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00031
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00031', 2024, '74.05'
FROM facilities WHERE admin_sym = '3-28245-00031'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28245-00495
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28245-00495', 2024, '67.85'
FROM facilities WHERE admin_sym = '2-28245-00495'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00321
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00321', 2024, '73.6'
FROM facilities WHERE admin_sym = '3-28245-00321'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28245-00167
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28245-00167', 2024, '61.3'
FROM facilities WHERE admin_sym = '3-28245-00167'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28245-00493
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28245-00493', 2024, '84.1'
FROM facilities WHERE admin_sym = '2-28245-00493'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28245-00501
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28245-00501', 2024, '90.3'
FROM facilities WHERE admin_sym = '2-28245-00501'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00013
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00013', 2024, '95.85'
FROM facilities WHERE admin_sym = '2-28260-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00387
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00387', 2024, '71.35'
FROM facilities WHERE admin_sym = '3-28260-00387'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00445
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00445', 2024, '64.63'
FROM facilities WHERE admin_sym = '3-28260-00445'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00389
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00389', 2024, '91.6'
FROM facilities WHERE admin_sym = '3-28260-00389'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00015
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00015', 2024, '90.55'
FROM facilities WHERE admin_sym = '3-28260-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00381
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00381', 2024, '64.85'
FROM facilities WHERE admin_sym = '3-28260-00381'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00343
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00343', 2024, '87.1'
FROM facilities WHERE admin_sym = '3-28260-00343'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00107
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00107', 2024, '55.1'
FROM facilities WHERE admin_sym = '3-28260-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00535
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00535', 2024, '44.35'
FROM facilities WHERE admin_sym = '2-28260-00535'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '44.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00325
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00325', 2024, '85.71'
FROM facilities WHERE admin_sym = '3-28260-00325'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00473
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00473', 2024, '64.1'
FROM facilities WHERE admin_sym = '2-28260-00473'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00195
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00195', 2024, '92.1'
FROM facilities WHERE admin_sym = '2-28260-00195'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00399
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00399', 2024, '73.21'
FROM facilities WHERE admin_sym = '2-28260-00399'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00111
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00111', 2024, '91.13'
FROM facilities WHERE admin_sym = '3-28260-00111'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00165
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00165', 2024, '82.35'
FROM facilities WHERE admin_sym = '3-28260-00165'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00409
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00409', 2024, '69.35'
FROM facilities WHERE admin_sym = '3-28260-00409'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00323
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00323', 2024, '55.57'
FROM facilities WHERE admin_sym = '3-28260-00323'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.57',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00433
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00433', 2024, '82.1'
FROM facilities WHERE admin_sym = '3-28260-00433'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00245
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00245', 2024, '79.85'
FROM facilities WHERE admin_sym = '3-28260-00245'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00413
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00413', 2024, '91.85'
FROM facilities WHERE admin_sym = '3-28260-00413'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00151
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00151', 2024, '85.41'
FROM facilities WHERE admin_sym = '3-28260-00151'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00345
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00345', 2024, '78.35'
FROM facilities WHERE admin_sym = '3-28260-00345'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00443
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00443', 2024, '82.85'
FROM facilities WHERE admin_sym = '3-28260-00443'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00333
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00333', 2024, '72.1'
FROM facilities WHERE admin_sym = '3-28260-00333'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00455
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00455', 2024, '83.35'
FROM facilities WHERE admin_sym = '3-28260-00455'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00361
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00361', 2024, '83.1'
FROM facilities WHERE admin_sym = '3-28260-00361'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00513
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00513', 2024, '38.68'
FROM facilities WHERE admin_sym = '2-28260-00513'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '38.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00577
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00577', 2024, '82.35'
FROM facilities WHERE admin_sym = '2-28260-00577'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00549
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00549', 2024, '79.16'
FROM facilities WHERE admin_sym = '2-28260-00549'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00143
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00143', 2024, '62.91'
FROM facilities WHERE admin_sym = '3-28260-00143'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28260-00301
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28260-00301', 2024, '69.85'
FROM facilities WHERE admin_sym = '3-28260-00301'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28260-00599
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28260-00599', 2024, '87.27'
FROM facilities WHERE admin_sym = '2-28260-00599'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.27',
  last_updated = CURRENT_TIMESTAMP;

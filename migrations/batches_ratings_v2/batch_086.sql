-- Batch 86 of 226
-- Processing 100 facilities

-- admin_sym: 2-41630-00475
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41630-00475', 2024, '82.1'
FROM facilities WHERE admin_sym = '2-41630-00475'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41630-00309
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41630-00309', 2024, '83.85'
FROM facilities WHERE admin_sym = '3-41630-00309'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41630-00461
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41630-00461', 2024, '77.35'
FROM facilities WHERE admin_sym = '2-41630-00461'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00183
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00183', 2024, '78.38'
FROM facilities WHERE admin_sym = '3-41190-00183'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01195
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01195', 2024, '67.85'
FROM facilities WHERE admin_sym = '2-41190-01195'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00977
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00977', 2024, '74.07'
FROM facilities WHERE admin_sym = '3-41190-00977'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.07',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00433
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00433', 2024, '89.85'
FROM facilities WHERE admin_sym = '3-41190-00433'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01199
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01199', 2024, '86.79'
FROM facilities WHERE admin_sym = '2-41190-01199'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-01037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-01037', 2024, '74.85'
FROM facilities WHERE admin_sym = '3-41190-01037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01233
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01233', 2024, '81.35'
FROM facilities WHERE admin_sym = '2-41190-01233'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01217
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01217', 2024, '76.52'
FROM facilities WHERE admin_sym = '2-41190-01217'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01219
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01219', 2024, '85.6'
FROM facilities WHERE admin_sym = '2-41190-01219'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01291
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01291', 2024, '74.49'
FROM facilities WHERE admin_sym = '2-41190-01291'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00297
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00297', 2024, '83.85'
FROM facilities WHERE admin_sym = '3-41190-00297'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00705
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00705', 2024, '75.85'
FROM facilities WHERE admin_sym = '3-41190-00705'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00301
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00301', 2024, '78.6'
FROM facilities WHERE admin_sym = '3-41190-00301'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01285
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01285', 2024, '67.96'
FROM facilities WHERE admin_sym = '2-41190-01285'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00931
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00931', 2024, '89.6'
FROM facilities WHERE admin_sym = '3-41190-00931'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00993
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00993', 2024, '72.46'
FROM facilities WHERE admin_sym = '3-41190-00993'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01185
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01185', 2024, '75.52'
FROM facilities WHERE admin_sym = '2-41190-01185'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01247
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01247', 2024, '86.91'
FROM facilities WHERE admin_sym = '2-41190-01247'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00653
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00653', 2024, '88.88'
FROM facilities WHERE admin_sym = '3-41190-00653'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00685
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00685', 2024, '70.6'
FROM facilities WHERE admin_sym = '3-41190-00685'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01177
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01177', 2024, '84.85'
FROM facilities WHERE admin_sym = '2-41190-01177'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00987
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00987', 2024, '91.85'
FROM facilities WHERE admin_sym = '3-41190-00987'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00415
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00415', 2024, '92.6'
FROM facilities WHERE admin_sym = '3-41190-00415'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-01109
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-01109', 2024, '75.6'
FROM facilities WHERE admin_sym = '3-41190-01109'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00261
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00261', 2024, '95.5'
FROM facilities WHERE admin_sym = '3-41190-00261'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00837
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00837', 2024, '95.1'
FROM facilities WHERE admin_sym = '3-41190-00837'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00183
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00183', 2024, '70.04'
FROM facilities WHERE admin_sym = '3-41190-00183'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00993
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00993', 2024, '80.41'
FROM facilities WHERE admin_sym = '3-41190-00993'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00685
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00685', 2024, '68.35'
FROM facilities WHERE admin_sym = '3-41190-00685'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01177
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01177', 2024, '79.85'
FROM facilities WHERE admin_sym = '2-41190-01177'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00415
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00415', 2024, '91.35'
FROM facilities WHERE admin_sym = '3-41190-00415'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00183
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00183', 2024, '87.35'
FROM facilities WHERE admin_sym = '3-41190-00183'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00977
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00977', 2024, '87.85'
FROM facilities WHERE admin_sym = '3-41190-00977'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01147
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01147', 2024, 'D'
FROM facilities WHERE admin_sym = '2-41190-01147'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = 'D',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-00037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-00037', 2024, '86.35'
FROM facilities WHERE admin_sym = '2-41190-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01267
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01267', 2024, '79.6'
FROM facilities WHERE admin_sym = '2-41190-01267'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00931
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00931', 2024, '92.35'
FROM facilities WHERE admin_sym = '3-41190-00931'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00183
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00183', 2024, '84.1'
FROM facilities WHERE admin_sym = '3-41190-00183'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00063
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00063', 2024, '72.3'
FROM facilities WHERE admin_sym = '3-41190-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01133
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01133', 2024, '78.05'
FROM facilities WHERE admin_sym = '2-41190-01133'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01291
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01291', 2024, '74.13'
FROM facilities WHERE admin_sym = '2-41190-01291'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00495
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00495', 2024, '85.1'
FROM facilities WHERE admin_sym = '3-41190-00495'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00239
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00239', 2024, '79.68'
FROM facilities WHERE admin_sym = '3-41190-00239'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00483
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00483', 2024, '66.1'
FROM facilities WHERE admin_sym = '3-41390-00483'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00653
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00653', 2024, '83.68'
FROM facilities WHERE admin_sym = '2-41390-00653'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00657
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00657', 2024, '56.63'
FROM facilities WHERE admin_sym = '2-41390-00657'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00469
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00469', 2024, '83.85'
FROM facilities WHERE admin_sym = '3-41390-00469'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00285
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00285', 2024, '69.6'
FROM facilities WHERE admin_sym = '3-41390-00285'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00371
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00371', 2024, '62.38'
FROM facilities WHERE admin_sym = '3-41390-00371'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00437
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00437', 2024, '49.85'
FROM facilities WHERE admin_sym = '3-41390-00437'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00009', 2024, '88.85'
FROM facilities WHERE admin_sym = '2-41390-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00277
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00277', 2024, '86.6'
FROM facilities WHERE admin_sym = '3-41390-00277'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00559
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00559', 2024, '68.85'
FROM facilities WHERE admin_sym = '2-41390-00559'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00383
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00383', 2024, '76.1'
FROM facilities WHERE admin_sym = '3-41390-00383'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00635
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00635', 2024, '77.35'
FROM facilities WHERE admin_sym = '2-41390-00635'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00515
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00515', 2024, '61.6'
FROM facilities WHERE admin_sym = '2-41390-00515'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00659
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00659', 2024, '80.1'
FROM facilities WHERE admin_sym = '2-41390-00659'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00435
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00435', 2024, '66.49'
FROM facilities WHERE admin_sym = '3-41390-00435'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00497
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00497', 2024, '73.35'
FROM facilities WHERE admin_sym = '3-41390-00497'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00619
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00619', 2024, '83.18'
FROM facilities WHERE admin_sym = '2-41390-00619'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00089
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00089', 2024, '66.66'
FROM facilities WHERE admin_sym = '3-41390-00089'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.66',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00589
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00589', 2024, '91.35'
FROM facilities WHERE admin_sym = '2-41390-00589'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00441
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00441', 2024, '87.77'
FROM facilities WHERE admin_sym = '3-41390-00441'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00303
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00303', 2024, '54.16'
FROM facilities WHERE admin_sym = '3-41390-00303'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00631
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00631', 2024, '72.91'
FROM facilities WHERE admin_sym = '2-41390-00631'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00355
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00355', 2024, '63.49'
FROM facilities WHERE admin_sym = '3-41390-00355'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00557
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00557', 2024, '79.16'
FROM facilities WHERE admin_sym = '2-41390-00557'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00445
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00445', 2024, '74.68'
FROM facilities WHERE admin_sym = '3-41390-00445'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00499
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00499', 2024, '65.07'
FROM facilities WHERE admin_sym = '3-41390-00499'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.07',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00679
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00679', 2024, '80.45'
FROM facilities WHERE admin_sym = '2-41390-00679'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.45',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00665
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00665', 2024, '96.41'
FROM facilities WHERE admin_sym = '2-41390-00665'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00081
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00081', 2024, '67.6'
FROM facilities WHERE admin_sym = '3-41390-00081'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00583
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00583', 2024, '83.18'
FROM facilities WHERE admin_sym = '2-41390-00583'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00125', 2024, '67.6'
FROM facilities WHERE admin_sym = '3-41390-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00681
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00681', 2024, '92.68'
FROM facilities WHERE admin_sym = '2-41390-00681'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00457
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00457', 2024, '77.1'
FROM facilities WHERE admin_sym = '3-41390-00457'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00653
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00653', 2024, '76.6'
FROM facilities WHERE admin_sym = '2-41390-00653'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00469
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00469', 2024, '89.93'
FROM facilities WHERE admin_sym = '3-41390-00469'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00511
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00511', 2024, '83.85'
FROM facilities WHERE admin_sym = '2-41390-00511'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00521
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00521', 2024, '64.6'
FROM facilities WHERE admin_sym = '2-41390-00521'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00435
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00435', 2024, '71.6'
FROM facilities WHERE admin_sym = '3-41390-00435'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00607
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00607', 2024, '55.6'
FROM facilities WHERE admin_sym = '2-41390-00607'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00503
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00503', 2024, '71.1'
FROM facilities WHERE admin_sym = '2-41390-00503'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00357
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00357', 2024, '82.85'
FROM facilities WHERE admin_sym = '3-41390-00357'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00663
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00663', 2024, '73.35'
FROM facilities WHERE admin_sym = '2-41390-00663'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00603
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00603', 2024, '78.1'
FROM facilities WHERE admin_sym = '2-41390-00603'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00651
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00651', 2024, '73.85'
FROM facilities WHERE admin_sym = '2-41390-00651'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00615
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00615', 2024, '58.85'
FROM facilities WHERE admin_sym = '2-41390-00615'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00563
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00563', 2024, '59.8'
FROM facilities WHERE admin_sym = '2-41390-00563'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00181
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00181', 2024, '84.38'
FROM facilities WHERE admin_sym = '3-41390-00181'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00673
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00673', 2024, '82.6'
FROM facilities WHERE admin_sym = '2-41390-00673'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00515
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00515', 2024, '70.18'
FROM facilities WHERE admin_sym = '2-41390-00515'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41390-00527
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41390-00527', 2024, '57.8'
FROM facilities WHERE admin_sym = '2-41390-00527'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00215
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00215', 2024, '83.22'
FROM facilities WHERE admin_sym = '3-41390-00215'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.22',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41390-00035
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41390-00035', 2024, '54.05'
FROM facilities WHERE admin_sym = '3-41390-00035'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41550-00249
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41550-00249', 2024, '93.57'
FROM facilities WHERE admin_sym = '2-41550-00249'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.57',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41550-00147
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41550-00147', 2024, '83.85'
FROM facilities WHERE admin_sym = '3-41550-00147'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- Batch 142 of 226
-- Processing 100 facilities

-- admin_sym: 3-41150-00150
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00150', 2024, '64.1'
FROM facilities WHERE admin_sym = '3-41150-00150'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00822
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00822', 2024, '57.85'
FROM facilities WHERE admin_sym = '2-41150-00822'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00544
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00544', 2024, '95.35'
FROM facilities WHERE admin_sym = '3-41150-00544'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00352
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00352', 2024, '85.35'
FROM facilities WHERE admin_sym = '3-41150-00352'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00672
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00672', 2024, '87.55'
FROM facilities WHERE admin_sym = '3-41150-00672'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00158
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00158', 2024, '72.6'
FROM facilities WHERE admin_sym = '3-41150-00158'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00046
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00046', 2024, '74.6'
FROM facilities WHERE admin_sym = '3-41150-00046'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00446
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00446', 2024, '74.85'
FROM facilities WHERE admin_sym = '3-41150-00446'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00674
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00674', 2024, '70.85'
FROM facilities WHERE admin_sym = '3-41150-00674'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00784
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00784', 2024, '90.85'
FROM facilities WHERE admin_sym = '2-41150-00784'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00458
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00458', 2024, '90.35'
FROM facilities WHERE admin_sym = '3-41150-00458'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00840
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00840', 2024, '94.82'
FROM facilities WHERE admin_sym = '2-41150-00840'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00808
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00808', 2024, '90.85'
FROM facilities WHERE admin_sym = '2-41150-00808'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00600
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00600', 2024, '96.6'
FROM facilities WHERE admin_sym = '3-41150-00600'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00542
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00542', 2024, '87.1'
FROM facilities WHERE admin_sym = '3-41150-00542'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00522
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00522', 2024, '88.35'
FROM facilities WHERE admin_sym = '3-41150-00522'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00848
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00848', 2024, '89.1'
FROM facilities WHERE admin_sym = '2-41150-00848'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00554
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00554', 2024, '81.6'
FROM facilities WHERE admin_sym = '3-41150-00554'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00596
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00596', 2024, '84.1'
FROM facilities WHERE admin_sym = '3-41150-00596'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00776
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00776', 2024, '82.35'
FROM facilities WHERE admin_sym = '2-41150-00776'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00532
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00532', 2024, '85.85'
FROM facilities WHERE admin_sym = '3-41150-00532'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00824
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00824', 2024, '84.35'
FROM facilities WHERE admin_sym = '2-41150-00824'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00474
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00474', 2024, '86.85'
FROM facilities WHERE admin_sym = '3-41150-00474'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00712
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00712', 2024, '82.6'
FROM facilities WHERE admin_sym = '2-41150-00712'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00574
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00574', 2024, '87.6'
FROM facilities WHERE admin_sym = '2-41150-00574'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00258
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00258', 2024, '76.1'
FROM facilities WHERE admin_sym = '3-41150-00258'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00841
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00841', 2024, '80.6'
FROM facilities WHERE admin_sym = '2-41150-00841'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00770
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00770', 2024, '79.6'
FROM facilities WHERE admin_sym = '2-41150-00770'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00720
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00720', 2024, '75.35'
FROM facilities WHERE admin_sym = '3-41150-00720'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00740
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00740', 2024, '76.1'
FROM facilities WHERE admin_sym = '3-41150-00740'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00666
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00666', 2024, '61.35'
FROM facilities WHERE admin_sym = '2-41150-00666'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00528
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00528', 2024, '84.6'
FROM facilities WHERE admin_sym = '3-41150-00528'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00553
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00553', 2024, '79.1'
FROM facilities WHERE admin_sym = '3-41150-00553'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00768
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00768', 2024, '80.35'
FROM facilities WHERE admin_sym = '3-41150-00768'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00504
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00504', 2024, '81.1'
FROM facilities WHERE admin_sym = '3-41150-00504'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41500-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41500-00006', 2024, '91.85'
FROM facilities WHERE admin_sym = '2-41500-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41500-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41500-00040', 2024, '88.6'
FROM facilities WHERE admin_sym = '3-41500-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41500-00168
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41500-00168', 2024, '82.1'
FROM facilities WHERE admin_sym = '3-41500-00168'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41500-00024
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41500-00024', 2024, '81.85'
FROM facilities WHERE admin_sym = '3-41500-00024'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41500-00156
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41500-00156', 2024, '89.35'
FROM facilities WHERE admin_sym = '3-41500-00156'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41500-00172
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41500-00172', 2024, '86.6'
FROM facilities WHERE admin_sym = '3-41500-00172'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41500-00068
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41500-00068', 2024, '85.35'
FROM facilities WHERE admin_sym = '3-41500-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41500-00194
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41500-00194', 2024, '83.35'
FROM facilities WHERE admin_sym = '3-41500-00194'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41500-00060
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41500-00060', 2024, '89.35'
FROM facilities WHERE admin_sym = '3-41500-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41500-00140
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41500-00140', 2024, '85.85'
FROM facilities WHERE admin_sym = '3-41500-00140'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41500-00176
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41500-00176', 2024, '70.6'
FROM facilities WHERE admin_sym = '3-41500-00176'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41500-00200
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41500-00200', 2024, '78.1'
FROM facilities WHERE admin_sym = '3-41500-00200'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41500-00122
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41500-00122', 2024, '78.85'
FROM facilities WHERE admin_sym = '3-41500-00122'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41500-00188
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41500-00188', 2024, '75.85'
FROM facilities WHERE admin_sym = '3-41500-00188'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41500-00198
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41500-00198', 2024, '82.85'
FROM facilities WHERE admin_sym = '3-41500-00198'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41500-00174
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41500-00174', 2024, '64.35'
FROM facilities WHERE admin_sym = '3-41500-00174'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41500-00184
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41500-00184', 2024, '76.6'
FROM facilities WHERE admin_sym = '3-41500-00184'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41500-00212
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41500-00212', 2024, '63.6'
FROM facilities WHERE admin_sym = '2-41500-00212'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41500-00172
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41500-00172', 2024, '83.6'
FROM facilities WHERE admin_sym = '3-41500-00172'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41500-00142
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41500-00142', 2024, '91.85'
FROM facilities WHERE admin_sym = '2-41500-00142'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41500-00216
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41500-00216', 2024, '93.6'
FROM facilities WHERE admin_sym = '2-41500-00216'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41500-00206
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41500-00206', 2024, '82.35'
FROM facilities WHERE admin_sym = '2-41500-00206'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41500-00190
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41500-00190', 2024, '69.85'
FROM facilities WHERE admin_sym = '2-41500-00190'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41500-00218
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41500-00218', 2024, '84.35'
FROM facilities WHERE admin_sym = '2-41500-00218'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41500-00184
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41500-00184', 2024, '71.35'
FROM facilities WHERE admin_sym = '3-41500-00184'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41480-00518
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41480-00518', 2024, '95.85'
FROM facilities WHERE admin_sym = '2-41480-00518'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00080
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00080', 2024, '92.1'
FROM facilities WHERE admin_sym = '3-41480-00080'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00407
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00407', 2024, '90.1'
FROM facilities WHERE admin_sym = '3-41480-00407'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41480-00510
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41480-00510', 2024, '95.35'
FROM facilities WHERE admin_sym = '2-41480-00510'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41480-00031
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41480-00031', 2024, '90.3'
FROM facilities WHERE admin_sym = '2-41480-00031'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00380
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00380', 2024, '91.6'
FROM facilities WHERE admin_sym = '3-41480-00380'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00043
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00043', 2024, '93.35'
FROM facilities WHERE admin_sym = '3-41480-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00402
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00402', 2024, '95.6'
FROM facilities WHERE admin_sym = '3-41480-00402'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00308
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00308', 2024, '91.6'
FROM facilities WHERE admin_sym = '3-41480-00308'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00052
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00052', 2024, '86.35'
FROM facilities WHERE admin_sym = '3-41480-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00328
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00328', 2024, '88.85'
FROM facilities WHERE admin_sym = '3-41480-00328'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41480-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41480-00008', 2024, '83.85'
FROM facilities WHERE admin_sym = '2-41480-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41480-00522
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41480-00522', 2024, '85.35'
FROM facilities WHERE admin_sym = '2-41480-00522'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41480-00480
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41480-00480', 2024, '78.35'
FROM facilities WHERE admin_sym = '2-41480-00480'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00072
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00072', 2024, '78.3'
FROM facilities WHERE admin_sym = '3-41480-00072'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00334
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00334', 2024, '78.3'
FROM facilities WHERE admin_sym = '3-41480-00334'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00158
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00158', 2024, '79.6'
FROM facilities WHERE admin_sym = '3-41480-00158'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00208
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00208', 2024, '74.35'
FROM facilities WHERE admin_sym = '3-41480-00208'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00172
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00172', 2024, '74.85'
FROM facilities WHERE admin_sym = '3-41480-00172'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00440
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00440', 2024, '81.6'
FROM facilities WHERE admin_sym = '3-41480-00440'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00272
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00272', 2024, '73.1'
FROM facilities WHERE admin_sym = '3-41480-00272'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00452
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00452', 2024, '70.85'
FROM facilities WHERE admin_sym = '3-41480-00452'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00240
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00240', 2024, '70.43'
FROM facilities WHERE admin_sym = '3-41480-00240'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00388
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00388', 2024, '72.6'
FROM facilities WHERE admin_sym = '3-41480-00388'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00460
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00460', 2024, '66.85'
FROM facilities WHERE admin_sym = '3-41480-00460'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00200
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00200', 2024, '75.85'
FROM facilities WHERE admin_sym = '3-41480-00200'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41480-00436
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41480-00436', 2024, '52.85'
FROM facilities WHERE admin_sym = '2-41480-00436'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '52.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00096
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00096', 2024, '57.6'
FROM facilities WHERE admin_sym = '3-41480-00096'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41480-00494
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41480-00494', 2024, '54.35'
FROM facilities WHERE admin_sym = '2-41480-00494'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00130
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00130', 2024, '56.6'
FROM facilities WHERE admin_sym = '3-41480-00130'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00444
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00444', 2024, '73.85'
FROM facilities WHERE admin_sym = '3-41480-00444'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41480-00546
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41480-00546', 2024, '61.88'
FROM facilities WHERE admin_sym = '2-41480-00546'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00072
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00072', 2024, '84.6'
FROM facilities WHERE admin_sym = '3-41480-00072'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00158
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00158', 2024, '87.6'
FROM facilities WHERE admin_sym = '3-41480-00158'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00440
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00440', 2024, '87.1'
FROM facilities WHERE admin_sym = '3-41480-00440'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00328
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00328', 2024, '80.1'
FROM facilities WHERE admin_sym = '3-41480-00328'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00308
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00308', 2024, '89.6'
FROM facilities WHERE admin_sym = '3-41480-00308'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00334
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00334', 2024, '77.35'
FROM facilities WHERE admin_sym = '3-41480-00334'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41480-00208
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41480-00208', 2024, '74.35'
FROM facilities WHERE admin_sym = '3-41480-00208'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41480-00568
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41480-00568', 2024, '92.07'
FROM facilities WHERE admin_sym = '2-41480-00568'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.07',
  last_updated = CURRENT_TIMESTAMP;

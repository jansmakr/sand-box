-- Batch 160 of 226
-- Processing 100 facilities

-- admin_sym: 3-45740-00026
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45740-00026', 2024, '63.8'
FROM facilities WHERE admin_sym = '3-45740-00026'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45740-00036
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45740-00036', 2024, '81.55'
FROM facilities WHERE admin_sym = '2-45740-00036'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45740-00020
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45740-00020', 2024, '66.75'
FROM facilities WHERE admin_sym = '3-45740-00020'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45740-00026
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45740-00026', 2024, '65.8'
FROM facilities WHERE admin_sym = '3-45740-00026'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45740-00041
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45740-00041', 2024, '90.3'
FROM facilities WHERE admin_sym = '2-45740-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45740-00036
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45740-00036', 2024, '83.05'
FROM facilities WHERE admin_sym = '2-45740-00036'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00631
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00631', 2024, '94.85'
FROM facilities WHERE admin_sym = '3-45110-00631'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00434
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00434', 2024, '90.3'
FROM facilities WHERE admin_sym = '3-45110-00434'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00466
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00466', 2024, '95.55'
FROM facilities WHERE admin_sym = '3-45110-00466'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00136
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00136', 2024, '94.75'
FROM facilities WHERE admin_sym = '3-45110-00136'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00216
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00216', 2024, '97.5'
FROM facilities WHERE admin_sym = '3-45110-00216'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00410
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00410', 2024, '90.8'
FROM facilities WHERE admin_sym = '3-45110-00410'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00566
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00566', 2024, '85.6'
FROM facilities WHERE admin_sym = '3-45110-00566'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00494
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00494', 2024, '86.05'
FROM facilities WHERE admin_sym = '3-45110-00494'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00468
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00468', 2024, '80.05'
FROM facilities WHERE admin_sym = '3-45110-00468'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00568
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00568', 2024, '86.6'
FROM facilities WHERE admin_sym = '3-45110-00568'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00682
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00682', 2024, '80.26'
FROM facilities WHERE admin_sym = '2-45110-00682'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.26',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00534
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00534', 2024, '82.5'
FROM facilities WHERE admin_sym = '3-45110-00534'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00408
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00408', 2024, '89.6'
FROM facilities WHERE admin_sym = '3-45110-00408'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00446
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00446', 2024, '89.6'
FROM facilities WHERE admin_sym = '3-45110-00446'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00546
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00546', 2024, '87.25'
FROM facilities WHERE admin_sym = '3-45110-00546'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00500
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00500', 2024, '81.6'
FROM facilities WHERE admin_sym = '3-45110-00500'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00574
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00574', 2024, '81.5'
FROM facilities WHERE admin_sym = '3-45110-00574'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00646
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00646', 2024, '85.85'
FROM facilities WHERE admin_sym = '2-45110-00646'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00602
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00602', 2024, '79.55'
FROM facilities WHERE admin_sym = '3-45110-00602'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00540
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00540', 2024, '88.1'
FROM facilities WHERE admin_sym = '3-45110-00540'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00406
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00406', 2024, '77.02'
FROM facilities WHERE admin_sym = '3-45110-00406'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00444
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00444', 2024, '74.8'
FROM facilities WHERE admin_sym = '3-45110-00444'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00642
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00642', 2024, '71.1'
FROM facilities WHERE admin_sym = '3-45110-00642'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00588
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00588', 2024, '63.89'
FROM facilities WHERE admin_sym = '3-45110-00588'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00570
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00570', 2024, '69.1'
FROM facilities WHERE admin_sym = '3-45110-00570'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00436
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00436', 2024, '79.05'
FROM facilities WHERE admin_sym = '3-45110-00436'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00678
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00678', 2024, '54.61'
FROM facilities WHERE admin_sym = '2-45110-00678'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00335
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00335', 2024, '71.55'
FROM facilities WHERE admin_sym = '3-45110-00335'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00466
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00466', 2024, '96.05'
FROM facilities WHERE admin_sym = '3-45110-00466'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00408
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00408', 2024, '93.6'
FROM facilities WHERE admin_sym = '3-45110-00408'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00566
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00566', 2024, '83.1'
FROM facilities WHERE admin_sym = '3-45110-00566'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00500
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00500', 2024, '81.55'
FROM facilities WHERE admin_sym = '3-45110-00500'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00540
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00540', 2024, '87.85'
FROM facilities WHERE admin_sym = '3-45110-00540'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00646
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00646', 2024, '81.6'
FROM facilities WHERE admin_sym = '2-45110-00646'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00588
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00588', 2024, '63.55'
FROM facilities WHERE admin_sym = '3-45110-00588'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00448
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00448', 2024, '94.85'
FROM facilities WHERE admin_sym = '3-45110-00448'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00316
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00316', 2024, '93.1'
FROM facilities WHERE admin_sym = '2-45110-00316'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00550
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00550', 2024, '91.6'
FROM facilities WHERE admin_sym = '2-45110-00550'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00552
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00552', 2024, '91.25'
FROM facilities WHERE admin_sym = '3-45110-00552'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00686
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00686', 2024, '91.25'
FROM facilities WHERE admin_sym = '2-45110-00686'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00136
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00136', 2024, '93.5'
FROM facilities WHERE admin_sym = '3-45110-00136'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00244
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00244', 2024, '92.1'
FROM facilities WHERE admin_sym = '2-45110-00244'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00530
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00530', 2024, '86.1'
FROM facilities WHERE admin_sym = '3-45110-00530'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00524
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00524', 2024, '85.3'
FROM facilities WHERE admin_sym = '2-45110-00524'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00406
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00406', 2024, '86.1'
FROM facilities WHERE admin_sym = '3-45110-00406'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00408
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00408', 2024, '88.6'
FROM facilities WHERE admin_sym = '3-45110-00408'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00588
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00588', 2024, '73.05'
FROM facilities WHERE admin_sym = '3-45110-00588'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00282
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00282', 2024, '79.1'
FROM facilities WHERE admin_sym = '2-45110-00282'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00414
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00414', 2024, '82.71'
FROM facilities WHERE admin_sym = '3-45110-00414'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00700
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00700', 2024, '80.67'
FROM facilities WHERE admin_sym = '2-45110-00700'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00146
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00146', 2024, '81.33'
FROM facilities WHERE admin_sym = '3-45110-00146'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00348
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00348', 2024, '79.75'
FROM facilities WHERE admin_sym = '3-45110-00348'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00156
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00156', 2024, '67.75'
FROM facilities WHERE admin_sym = '3-45110-00156'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00120
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00120', 2024, '50'
FROM facilities WHERE admin_sym = '3-45110-00120'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00294
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00294', 2024, '90.1'
FROM facilities WHERE admin_sym = '3-45110-00294'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00542
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00542', 2024, '92.1'
FROM facilities WHERE admin_sym = '3-45110-00542'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00422
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00422', 2024, '94.1'
FROM facilities WHERE admin_sym = '3-45110-00422'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00278
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00278', 2024, '94.6'
FROM facilities WHERE admin_sym = '3-45110-00278'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00346
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00346', 2024, '90.85'
FROM facilities WHERE admin_sym = '3-45110-00346'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00364
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00364', 2024, '95.35'
FROM facilities WHERE admin_sym = '2-45110-00364'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00484
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00484', 2024, '93.8'
FROM facilities WHERE admin_sym = '3-45110-00484'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00024
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00024', 2024, '90.6'
FROM facilities WHERE admin_sym = '2-45110-00024'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00148
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00148', 2024, '90.55'
FROM facilities WHERE admin_sym = '3-45110-00148'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00520
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00520', 2024, '88.05'
FROM facilities WHERE admin_sym = '3-45110-00520'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00676
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00676', 2024, '80.3'
FROM facilities WHERE admin_sym = '2-45110-00676'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00192
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00192', 2024, '86.35'
FROM facilities WHERE admin_sym = '3-45110-00192'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00450
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00450', 2024, '81.8'
FROM facilities WHERE admin_sym = '3-45110-00450'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00442
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00442', 2024, '88.8'
FROM facilities WHERE admin_sym = '3-45110-00442'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00586
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00586', 2024, '81.6'
FROM facilities WHERE admin_sym = '3-45110-00586'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00456
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00456', 2024, '84.75'
FROM facilities WHERE admin_sym = '3-45110-00456'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00648
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00648', 2024, '89.85'
FROM facilities WHERE admin_sym = '2-45110-00648'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00482
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00482', 2024, '81'
FROM facilities WHERE admin_sym = '3-45110-00482'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00077
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00077', 2024, '87.6'
FROM facilities WHERE admin_sym = '3-45110-00077'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00640
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00640', 2024, '86'
FROM facilities WHERE admin_sym = '3-45110-00640'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00596
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00596', 2024, '82.1'
FROM facilities WHERE admin_sym = '3-45110-00596'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00694
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00694', 2024, '78.25'
FROM facilities WHERE admin_sym = '2-45110-00694'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00598
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00598', 2024, '79.6'
FROM facilities WHERE admin_sym = '3-45110-00598'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00476
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00476', 2024, '76.3'
FROM facilities WHERE admin_sym = '3-45110-00476'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00680
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00680', 2024, '74.35'
FROM facilities WHERE admin_sym = '2-45110-00680'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00632
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00632', 2024, '78.55'
FROM facilities WHERE admin_sym = '3-45110-00632'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00079
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00079', 2024, '74.8'
FROM facilities WHERE admin_sym = '3-45110-00079'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00498
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00498', 2024, '77.8'
FROM facilities WHERE admin_sym = '3-45110-00498'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00606
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00606', 2024, '76.05'
FROM facilities WHERE admin_sym = '3-45110-00606'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00220
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00220', 2024, '71.75'
FROM facilities WHERE admin_sym = '3-45110-00220'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00296
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00296', 2024, '86.8'
FROM facilities WHERE admin_sym = '3-45110-00296'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00624
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00624', 2024, '75.1'
FROM facilities WHERE admin_sym = '3-45110-00624'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00372
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00372', 2024, '69.8'
FROM facilities WHERE admin_sym = '2-45110-00372'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00594
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00594', 2024, '71.75'
FROM facilities WHERE admin_sym = '3-45110-00594'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00458
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00458', 2024, '67'
FROM facilities WHERE admin_sym = '3-45110-00458'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00656
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00656', 2024, '52.8'
FROM facilities WHERE admin_sym = '2-45110-00656'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '52.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00684
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00684', 2024, '59.05'
FROM facilities WHERE admin_sym = '2-45110-00684'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00364
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00364', 2024, '97.6'
FROM facilities WHERE admin_sym = '2-45110-00364'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00148
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00148', 2024, '95.55'
FROM facilities WHERE admin_sym = '3-45110-00148'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00450
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00450', 2024, '85.05'
FROM facilities WHERE admin_sym = '3-45110-00450'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.05',
  last_updated = CURRENT_TIMESTAMP;

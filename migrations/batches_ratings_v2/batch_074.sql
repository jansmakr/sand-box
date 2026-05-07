-- Batch 74 of 226
-- Processing 100 facilities

-- admin_sym: 3-41110-00723
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41110-00723', 2024, '69.6'
FROM facilities WHERE admin_sym = '3-41110-00723'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41110-00685
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41110-00685', 2024, '93.1'
FROM facilities WHERE admin_sym = '3-41110-00685'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41110-00849
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41110-00849', 2024, '73.6'
FROM facilities WHERE admin_sym = '2-41110-00849'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41110-00151
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41110-00151', 2024, '96.21'
FROM facilities WHERE admin_sym = '3-41110-00151'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41110-00575
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41110-00575', 2024, '88.21'
FROM facilities WHERE admin_sym = '3-41110-00575'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41110-00875
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41110-00875', 2024, '77.1'
FROM facilities WHERE admin_sym = '2-41110-00875'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41110-00079
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41110-00079', 2024, '95.85'
FROM facilities WHERE admin_sym = '3-41110-00079'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41110-00923
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41110-00923', 2024, '77.35'
FROM facilities WHERE admin_sym = '2-41110-00923'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41110-00921
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41110-00921', 2024, '80.1'
FROM facilities WHERE admin_sym = '2-41110-00921'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41110-00951
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41110-00951', 2024, '60.1'
FROM facilities WHERE admin_sym = '2-41110-00951'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41110-00777
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41110-00777', 2024, '84.8'
FROM facilities WHERE admin_sym = '2-41110-00777'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41110-00533
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41110-00533', 2024, '91.88'
FROM facilities WHERE admin_sym = '3-41110-00533'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00457
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00457', 2024, '87.35'
FROM facilities WHERE admin_sym = '3-41130-00457'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00549
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00549', 2024, '92.24'
FROM facilities WHERE admin_sym = '3-41130-00549'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00543
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00543', 2024, '77.1'
FROM facilities WHERE admin_sym = '3-41130-00543'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00467
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00467', 2024, '75.85'
FROM facilities WHERE admin_sym = '3-41130-00467'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00409
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00409', 2024, '92.85'
FROM facilities WHERE admin_sym = '3-41130-00409'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00691
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00691', 2024, '90.6'
FROM facilities WHERE admin_sym = '2-41130-00691'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00037', 2024, '91.79'
FROM facilities WHERE admin_sym = '2-41130-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00701
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00701', 2024, '33.1'
FROM facilities WHERE admin_sym = '2-41130-00701'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '33.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00019
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00019', 2024, '93.1'
FROM facilities WHERE admin_sym = '2-41130-00019'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00593
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00593', 2024, '89.16'
FROM facilities WHERE admin_sym = '3-41130-00593'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00513
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00513', 2024, '82.85'
FROM facilities WHERE admin_sym = '3-41130-00513'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00437
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00437', 2024, '90.3'
FROM facilities WHERE admin_sym = '3-41130-00437'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00561
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00561', 2024, '91.38'
FROM facilities WHERE admin_sym = '3-41130-00561'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00093
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00093', 2024, '90.35'
FROM facilities WHERE admin_sym = '3-41130-00093'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00339
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00339', 2024, '84.1'
FROM facilities WHERE admin_sym = '3-41130-00339'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00181
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00181', 2024, '90'
FROM facilities WHERE admin_sym = '3-41130-00181'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00671
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00671', 2024, '77.1'
FROM facilities WHERE admin_sym = '2-41130-00671'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00021
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00021', 2024, '89.35'
FROM facilities WHERE admin_sym = '2-41130-00021'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00655
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00655', 2024, '82.1'
FROM facilities WHERE admin_sym = '2-41130-00655'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00743
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00743', 2024, '63.6'
FROM facilities WHERE admin_sym = '2-41130-00743'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00477
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00477', 2024, '69.88'
FROM facilities WHERE admin_sym = '3-41130-00477'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00157
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00157', 2024, '85.85'
FROM facilities WHERE admin_sym = '3-41130-00157'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00435
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00435', 2024, '88.8'
FROM facilities WHERE admin_sym = '3-41130-00435'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00553
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00553', 2024, '73.35'
FROM facilities WHERE admin_sym = '3-41130-00553'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00499
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00499', 2024, '90.55'
FROM facilities WHERE admin_sym = '3-41130-00499'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00689
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00689', 2024, '70.1'
FROM facilities WHERE admin_sym = '2-41130-00689'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00095
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00095', 2024, '68.85'
FROM facilities WHERE admin_sym = '3-41130-00095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00609
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00609', 2024, '82.6'
FROM facilities WHERE admin_sym = '3-41130-00609'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00587
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00587', 2024, '88.24'
FROM facilities WHERE admin_sym = '3-41130-00587'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00603
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00603', 2024, '89.11'
FROM facilities WHERE admin_sym = '3-41130-00603'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.11',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00279
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00279', 2024, '86.71'
FROM facilities WHERE admin_sym = '3-41130-00279'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00033
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00033', 2024, '90.27'
FROM facilities WHERE admin_sym = '3-41130-00033'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00673
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00673', 2024, '73.1'
FROM facilities WHERE admin_sym = '2-41130-00673'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00351
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00351', 2024, '97.91'
FROM facilities WHERE admin_sym = '3-41130-00351'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00693
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00693', 2024, '92.6'
FROM facilities WHERE admin_sym = '2-41130-00693'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00449
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00449', 2024, '86.6'
FROM facilities WHERE admin_sym = '3-41130-00449'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00611
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00611', 2024, '73.6'
FROM facilities WHERE admin_sym = '3-41130-00611'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00583
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00583', 2024, '92.05'
FROM facilities WHERE admin_sym = '3-41130-00583'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00637
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00637', 2024, '73.88'
FROM facilities WHERE admin_sym = '3-41130-00637'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00477
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00477', 2024, '89.35'
FROM facilities WHERE admin_sym = '3-41130-00477'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00597
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00597', 2024, '78.05'
FROM facilities WHERE admin_sym = '3-41130-00597'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00463
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00463', 2024, '93.75'
FROM facilities WHERE admin_sym = '3-41130-00463'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00719
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00719', 2024, '83.85'
FROM facilities WHERE admin_sym = '2-41130-00719'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00459
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00459', 2024, '77.6'
FROM facilities WHERE admin_sym = '3-41130-00459'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00021
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00021', 2024, '94.6'
FROM facilities WHERE admin_sym = '2-41130-00021'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00669
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00669', 2024, '76.85'
FROM facilities WHERE admin_sym = '2-41130-00669'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00537
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00537', 2024, '62.1'
FROM facilities WHERE admin_sym = '3-41130-00537'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00393
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00393', 2024, '77.35'
FROM facilities WHERE admin_sym = '3-41130-00393'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00667
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00667', 2024, '76.35'
FROM facilities WHERE admin_sym = '2-41130-00667'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00737
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00737', 2024, '72.85'
FROM facilities WHERE admin_sym = '2-41130-00737'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00539
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00539', 2024, '59.85'
FROM facilities WHERE admin_sym = '3-41130-00539'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00415
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00415', 2024, '52.3'
FROM facilities WHERE admin_sym = '3-41130-00415'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '52.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00073
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00073', 2024, '76.59'
FROM facilities WHERE admin_sym = '3-41130-00073'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.59',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00637
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00637', 2024, '67.3'
FROM facilities WHERE admin_sym = '3-41130-00637'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00815
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00815', 2024, '88.85'
FROM facilities WHERE admin_sym = '2-41150-00815'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00671
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00671', 2024, '80.18'
FROM facilities WHERE admin_sym = '3-41150-00671'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00665
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00665', 2024, '89.1'
FROM facilities WHERE admin_sym = '2-41150-00665'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00819
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00819', 2024, '91.85'
FROM facilities WHERE admin_sym = '2-41150-00819'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00893
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00893', 2024, '87.33'
FROM facilities WHERE admin_sym = '2-41150-00893'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00763
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00763', 2024, '78.1'
FROM facilities WHERE admin_sym = '3-41150-00763'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00885
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00885', 2024, '85.66'
FROM facilities WHERE admin_sym = '2-41150-00885'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.66',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00369
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00369', 2024, '79.38'
FROM facilities WHERE admin_sym = '3-41150-00369'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00531
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00531', 2024, '69.35'
FROM facilities WHERE admin_sym = '3-41150-00531'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00901
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00901', 2024, '86.57'
FROM facilities WHERE admin_sym = '2-41150-00901'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.57',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00783
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00783', 2024, '77.1'
FROM facilities WHERE admin_sym = '2-41150-00783'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00605
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00605', 2024, '73.85'
FROM facilities WHERE admin_sym = '3-41150-00605'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00427
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00427', 2024, '85.85'
FROM facilities WHERE admin_sym = '3-41150-00427'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00497
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00497', 2024, '90.85'
FROM facilities WHERE admin_sym = '3-41150-00497'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00299
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00299', 2024, '59.85'
FROM facilities WHERE admin_sym = '3-41150-00299'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00689
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00689', 2024, '58.35'
FROM facilities WHERE admin_sym = '3-41150-00689'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00707
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00707', 2024, '77.1'
FROM facilities WHERE admin_sym = '3-41150-00707'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00033
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00033', 2024, '86.6'
FROM facilities WHERE admin_sym = '3-41150-00033'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00883
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00883', 2024, '95.85'
FROM facilities WHERE admin_sym = '2-41150-00883'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00515
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00515', 2024, '79.6'
FROM facilities WHERE admin_sym = '3-41150-00515'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00487
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00487', 2024, '65.96'
FROM facilities WHERE admin_sym = '3-41150-00487'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00653
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00653', 2024, '93.35'
FROM facilities WHERE admin_sym = '3-41150-00653'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00863
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00863', 2024, '87.74'
FROM facilities WHERE admin_sym = '2-41150-00863'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00711
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00711', 2024, '82.1'
FROM facilities WHERE admin_sym = '3-41150-00711'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00479
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00479', 2024, '68.6'
FROM facilities WHERE admin_sym = '3-41150-00479'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00811
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00811', 2024, '90.6'
FROM facilities WHERE admin_sym = '2-41150-00811'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00009', 2024, '94.35'
FROM facilities WHERE admin_sym = '2-41150-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00757
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00757', 2024, '85.6'
FROM facilities WHERE admin_sym = '3-41150-00757'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00891
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00891', 2024, '68.32'
FROM facilities WHERE admin_sym = '2-41150-00891'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00065
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00065', 2024, '87.8'
FROM facilities WHERE admin_sym = '3-41150-00065'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00721
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00721', 2024, '84.6'
FROM facilities WHERE admin_sym = '3-41150-00721'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00365
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00365', 2024, '81.6'
FROM facilities WHERE admin_sym = '3-41150-00365'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00595
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00595', 2024, '76.35'
FROM facilities WHERE admin_sym = '3-41150-00595'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00715
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00715', 2024, '77.85'
FROM facilities WHERE admin_sym = '3-41150-00715'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.85',
  last_updated = CURRENT_TIMESTAMP;

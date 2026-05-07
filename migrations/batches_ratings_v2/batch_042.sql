-- Batch 42 of 226
-- Processing 100 facilities

-- admin_sym: 2-29170-00701
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00701', 2024, '77.69'
FROM facilities WHERE admin_sym = '2-29170-00701'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00541
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00541', 2024, '78.85'
FROM facilities WHERE admin_sym = '3-29170-00541'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00563
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00563', 2024, '95.95'
FROM facilities WHERE admin_sym = '3-29170-00563'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.95',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00573
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00573', 2024, '87.35'
FROM facilities WHERE admin_sym = '3-29170-00573'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00473
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00473', 2024, '74.35'
FROM facilities WHERE admin_sym = '3-29170-00473'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00131
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00131', 2024, '84'
FROM facilities WHERE admin_sym = '3-29170-00131'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00351
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00351', 2024, '81.75'
FROM facilities WHERE admin_sym = '3-29170-00351'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00693
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00693', 2024, '87.41'
FROM facilities WHERE admin_sym = '2-29170-00693'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00643
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00643', 2024, '64.55'
FROM facilities WHERE admin_sym = '2-29170-00643'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00525
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00525', 2024, '70.3'
FROM facilities WHERE admin_sym = '2-29170-00525'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00215
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00215', 2024, '77.35'
FROM facilities WHERE admin_sym = '3-29170-00215'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00635
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00635', 2024, '75.55'
FROM facilities WHERE admin_sym = '2-29170-00635'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00691
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00691', 2024, '96.38'
FROM facilities WHERE admin_sym = '2-29170-00691'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00607
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00607', 2024, '85.8'
FROM facilities WHERE admin_sym = '3-29170-00607'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00479
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00479', 2024, '94.3'
FROM facilities WHERE admin_sym = '3-29170-00479'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00527
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00527', 2024, '81.41'
FROM facilities WHERE admin_sym = '3-29170-00527'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00565
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00565', 2024, '55.69'
FROM facilities WHERE admin_sym = '2-29170-00565'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00705
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00705', 2024, '70.41'
FROM facilities WHERE admin_sym = '2-29170-00705'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00661
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00661', 2024, '76.22'
FROM facilities WHERE admin_sym = '2-29170-00661'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.22',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00601
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00601', 2024, '86.5'
FROM facilities WHERE admin_sym = '2-29170-00601'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00475
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00475', 2024, '80.6'
FROM facilities WHERE admin_sym = '3-29170-00475'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00383
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00383', 2024, '83.35'
FROM facilities WHERE admin_sym = '3-29170-00383'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00521
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00521', 2024, '94.1'
FROM facilities WHERE admin_sym = '3-29170-00521'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00713
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00713', 2024, '64.19'
FROM facilities WHERE admin_sym = '2-29170-00713'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.19',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00251
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00251', 2024, '88.8'
FROM facilities WHERE admin_sym = '3-29170-00251'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00161
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00161', 2024, '79.69'
FROM facilities WHERE admin_sym = '3-29170-00161'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00659
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00659', 2024, '92.8'
FROM facilities WHERE admin_sym = '2-29170-00659'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00581
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00581', 2024, '86.3'
FROM facilities WHERE admin_sym = '3-29170-00581'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00437
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00437', 2024, '93.3'
FROM facilities WHERE admin_sym = '3-29170-00437'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00597
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00597', 2024, '82.1'
FROM facilities WHERE admin_sym = '3-29170-00597'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00331
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00331', 2024, '84.75'
FROM facilities WHERE admin_sym = '3-29170-00331'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00511
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00511', 2024, '65.47'
FROM facilities WHERE admin_sym = '3-29170-00511'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00577
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00577', 2024, '95.85'
FROM facilities WHERE admin_sym = '3-29170-00577'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00603
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00603', 2024, '94.11'
FROM facilities WHERE admin_sym = '3-29170-00603'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.11',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00409
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00409', 2024, '87'
FROM facilities WHERE admin_sym = '3-29170-00409'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00551
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00551', 2024, '53.58'
FROM facilities WHERE admin_sym = '3-29170-00551'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00575
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00575', 2024, '89.55'
FROM facilities WHERE admin_sym = '3-29170-00575'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00465
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00465', 2024, '80.27'
FROM facilities WHERE admin_sym = '3-29170-00465'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00715
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00715', 2024, '70.94'
FROM facilities WHERE admin_sym = '2-29170-00715'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00677
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00677', 2024, '77.08'
FROM facilities WHERE admin_sym = '2-29170-00677'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00533
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00533', 2024, '71.88'
FROM facilities WHERE admin_sym = '3-29170-00533'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00671
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00671', 2024, '75.99'
FROM facilities WHERE admin_sym = '2-29170-00671'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00553
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00553', 2024, '74.99'
FROM facilities WHERE admin_sym = '3-29170-00553'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00401
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00401', 2024, '81.55'
FROM facilities WHERE admin_sym = '2-29170-00401'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00609
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00609', 2024, '62.77'
FROM facilities WHERE admin_sym = '3-29170-00609'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00681
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00681', 2024, '61.74'
FROM facilities WHERE admin_sym = '2-29170-00681'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00373
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00373', 2024, '80.25'
FROM facilities WHERE admin_sym = '3-29170-00373'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00651
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00651', 2024, '77.6'
FROM facilities WHERE admin_sym = '2-29170-00651'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00605
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00605', 2024, '79.3'
FROM facilities WHERE admin_sym = '3-29170-00605'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00515
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00515', 2024, '80.85'
FROM facilities WHERE admin_sym = '3-29170-00515'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00637
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00637', 2024, '79.05'
FROM facilities WHERE admin_sym = '2-29170-00637'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00593
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00593', 2024, '93.55'
FROM facilities WHERE admin_sym = '3-29170-00593'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00691
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00691', 2024, '95.63'
FROM facilities WHERE admin_sym = '2-29170-00691'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00601
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00601', 2024, '81.6'
FROM facilities WHERE admin_sym = '2-29170-00601'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00521
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00521', 2024, '97.55'
FROM facilities WHERE admin_sym = '3-29170-00521'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00581
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00581', 2024, '86.8'
FROM facilities WHERE admin_sym = '3-29170-00581'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00437
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00437', 2024, '86.3'
FROM facilities WHERE admin_sym = '3-29170-00437'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00533
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00533', 2024, '65.63'
FROM facilities WHERE admin_sym = '3-29170-00533'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00373
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00373', 2024, '82.05'
FROM facilities WHERE admin_sym = '3-29170-00373'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00651
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00651', 2024, '85.1'
FROM facilities WHERE admin_sym = '2-29170-00651'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00661
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00661', 2024, '76.05'
FROM facilities WHERE admin_sym = '2-29170-00661'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00581
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00581', 2024, '88.55'
FROM facilities WHERE admin_sym = '3-29170-00581'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00331
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00331', 2024, '80.8'
FROM facilities WHERE admin_sym = '3-29170-00331'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00575
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00575', 2024, '93.35'
FROM facilities WHERE admin_sym = '3-29170-00575'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00547
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00547', 2024, '82.8'
FROM facilities WHERE admin_sym = '3-29170-00547'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00645
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00645', 2024, '81.3'
FROM facilities WHERE admin_sym = '2-29170-00645'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00703
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00703', 2024, '89.05'
FROM facilities WHERE admin_sym = '2-29170-00703'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00707
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00707', 2024, '27.86'
FROM facilities WHERE admin_sym = '2-29170-00707'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '27.86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00525
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00525', 2024, '74.75'
FROM facilities WHERE admin_sym = '2-29170-00525'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00641
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00641', 2024, '95.35'
FROM facilities WHERE admin_sym = '2-29170-00641'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00691
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00691', 2024, '93.8'
FROM facilities WHERE admin_sym = '2-29170-00691'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00171
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00171', 2024, '88.35'
FROM facilities WHERE admin_sym = '3-29170-00171'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00675
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00675', 2024, '95.85'
FROM facilities WHERE admin_sym = '2-29170-00675'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00565
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00565', 2024, '74.8'
FROM facilities WHERE admin_sym = '2-29170-00565'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00481
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00481', 2024, '75.55'
FROM facilities WHERE admin_sym = '2-29170-00481'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00601
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00601', 2024, '79.85'
FROM facilities WHERE admin_sym = '2-29170-00601'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00495
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00495', 2024, '94.6'
FROM facilities WHERE admin_sym = '2-29170-00495'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00567
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00567', 2024, '85.05'
FROM facilities WHERE admin_sym = '3-29170-00567'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00427
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00427', 2024, '85.05'
FROM facilities WHERE admin_sym = '3-29170-00427'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00555
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00555', 2024, '94.85'
FROM facilities WHERE admin_sym = '2-29170-00555'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00551
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00551', 2024, '70.3'
FROM facilities WHERE admin_sym = '3-29170-00551'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00401
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00401', 2024, '84.6'
FROM facilities WHERE admin_sym = '2-29170-00401'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00689
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00689', 2024, '79.85'
FROM facilities WHERE admin_sym = '2-29170-00689'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00651
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00651', 2024, '92.85'
FROM facilities WHERE admin_sym = '2-29170-00651'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00445
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00445', 2024, '86.6'
FROM facilities WHERE admin_sym = '2-29170-00445'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00313
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00313', 2024, '49.83'
FROM facilities WHERE admin_sym = '3-29170-00313'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00439
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00439', 2024, '58.67'
FROM facilities WHERE admin_sym = '3-29170-00439'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00559
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00559', 2024, '92'
FROM facilities WHERE admin_sym = '3-29170-00559'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29170-00169
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29170-00169', 2024, '60.54'
FROM facilities WHERE admin_sym = '3-29170-00169'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29170-00663
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29170-00663', 2024, '91.1'
FROM facilities WHERE admin_sym = '2-29170-00663'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29140-00285
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29140-00285', 2024, '63.55'
FROM facilities WHERE admin_sym = '3-29140-00285'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29140-00399
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29140-00399', 2024, 'D'
FROM facilities WHERE admin_sym = '3-29140-00399'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = 'D',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29140-00355
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29140-00355', 2024, '79.25'
FROM facilities WHERE admin_sym = '3-29140-00355'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29140-00403
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29140-00403', 2024, '89.6'
FROM facilities WHERE admin_sym = '3-29140-00403'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29140-00465
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29140-00465', 2024, '73.25'
FROM facilities WHERE admin_sym = '2-29140-00465'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29140-00265
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29140-00265', 2024, '94'
FROM facilities WHERE admin_sym = '2-29140-00265'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29140-00353
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29140-00353', 2024, '80.25'
FROM facilities WHERE admin_sym = '3-29140-00353'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29140-00329
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29140-00329', 2024, '88.1'
FROM facilities WHERE admin_sym = '3-29140-00329'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29140-00471
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29140-00471', 2024, '79.99'
FROM facilities WHERE admin_sym = '2-29140-00471'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29140-00459
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29140-00459', 2024, '86.85'
FROM facilities WHERE admin_sym = '2-29140-00459'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.85',
  last_updated = CURRENT_TIMESTAMP;

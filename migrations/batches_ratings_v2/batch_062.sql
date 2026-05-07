-- Batch 62 of 226
-- Processing 100 facilities

-- admin_sym: 2-43760-00093
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43760-00093', 2024, '67.35'
FROM facilities WHERE admin_sym = '2-43760-00093'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43760-00081
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43760-00081', 2024, '84.35'
FROM facilities WHERE admin_sym = '3-43760-00081'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43760-00027
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43760-00027', 2024, '90.3'
FROM facilities WHERE admin_sym = '3-43760-00027'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43760-00095
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43760-00095', 2024, '88.24'
FROM facilities WHERE admin_sym = '2-43760-00095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43760-00027
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43760-00027', 2024, '84.35'
FROM facilities WHERE admin_sym = '3-43760-00027'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43760-00071
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43760-00071', 2024, '72.1'
FROM facilities WHERE admin_sym = '2-43760-00071'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43760-00097
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43760-00097', 2024, '83.55'
FROM facilities WHERE admin_sym = '2-43760-00097'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43760-00077
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43760-00077', 2024, '90.1'
FROM facilities WHERE admin_sym = '2-43760-00077'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43760-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43760-00011', 2024, '89.35'
FROM facilities WHERE admin_sym = '2-43760-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43760-00063
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43760-00063', 2024, '76.3'
FROM facilities WHERE admin_sym = '3-43760-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00371
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00371', 2024, '97.97'
FROM facilities WHERE admin_sym = '3-43110-00371'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00445
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00445', 2024, '81.85'
FROM facilities WHERE admin_sym = '3-43110-00445'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00341
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00341', 2024, '79.47'
FROM facilities WHERE admin_sym = '3-43110-00341'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00465
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00465', 2024, '83.6'
FROM facilities WHERE admin_sym = '3-43110-00465'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00667
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00667', 2024, '76.85'
FROM facilities WHERE admin_sym = '3-43110-00667'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00643
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00643', 2024, '86.1'
FROM facilities WHERE admin_sym = '3-43110-00643'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00843
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00843', 2024, '85.55'
FROM facilities WHERE admin_sym = '2-43110-00843'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00779
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00779', 2024, '86.07'
FROM facilities WHERE admin_sym = '2-43110-00779'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.07',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00627
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00627', 2024, '83.6'
FROM facilities WHERE admin_sym = '3-43110-00627'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00861
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00861', 2024, '96.29'
FROM facilities WHERE admin_sym = '2-43110-00861'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00661
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00661', 2024, '85.85'
FROM facilities WHERE admin_sym = '3-43110-00661'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00415
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00415', 2024, '90.35'
FROM facilities WHERE admin_sym = '3-43110-00415'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00837
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00837', 2024, '88.35'
FROM facilities WHERE admin_sym = '2-43110-00837'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00565
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00565', 2024, '84.8'
FROM facilities WHERE admin_sym = '3-43110-00565'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00797
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00797', 2024, '85.1'
FROM facilities WHERE admin_sym = '2-43110-00797'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00803
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00803', 2024, '90.1'
FROM facilities WHERE admin_sym = '2-43110-00803'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00593
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00593', 2024, '84.55'
FROM facilities WHERE admin_sym = '3-43110-00593'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00895
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00895', 2024, '66.9'
FROM facilities WHERE admin_sym = '2-43110-00895'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.9',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00215
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00215', 2024, '79.85'
FROM facilities WHERE admin_sym = '3-43110-00215'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00559
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00559', 2024, '76.6'
FROM facilities WHERE admin_sym = '3-43110-00559'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00215
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00215', 2024, '74.6'
FROM facilities WHERE admin_sym = '3-43110-00215'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00745
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00745', 2024, '74.8'
FROM facilities WHERE admin_sym = '2-43110-00745'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00685
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00685', 2024, '87.35'
FROM facilities WHERE admin_sym = '2-43110-00685'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00817
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00817', 2024, '84.35'
FROM facilities WHERE admin_sym = '2-43110-00817'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00441
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00441', 2024, '89.1'
FROM facilities WHERE admin_sym = '3-43110-00441'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00695
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00695', 2024, '70.05'
FROM facilities WHERE admin_sym = '2-43110-00695'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00403
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00403', 2024, '91.85'
FROM facilities WHERE admin_sym = '3-43110-00403'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00633
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00633', 2024, '95.3'
FROM facilities WHERE admin_sym = '3-43110-00633'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00595
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00595', 2024, '92.6'
FROM facilities WHERE admin_sym = '3-43110-00595'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00509
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00509', 2024, '53.8'
FROM facilities WHERE admin_sym = '3-43110-00509'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00559
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00559', 2024, '75.1'
FROM facilities WHERE admin_sym = '3-43110-00559'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00779
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00779', 2024, '91.1'
FROM facilities WHERE admin_sym = '2-43110-00779'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00837
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00837', 2024, '94.35'
FROM facilities WHERE admin_sym = '2-43110-00837'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00565
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00565', 2024, '82.85'
FROM facilities WHERE admin_sym = '3-43110-00565'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00499
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00499', 2024, '88.1'
FROM facilities WHERE admin_sym = '3-43110-00499'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00679
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00679', 2024, '97.1'
FROM facilities WHERE admin_sym = '3-43110-00679'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00593
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00593', 2024, '91.3'
FROM facilities WHERE admin_sym = '3-43110-00593'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00849
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00849', 2024, '82.6'
FROM facilities WHERE admin_sym = '2-43110-00849'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00881
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00881', 2024, '91.6'
FROM facilities WHERE admin_sym = '2-43110-00881'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00363
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00363', 2024, '59.67'
FROM facilities WHERE admin_sym = '3-43110-00363'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00581
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00581', 2024, '90.08'
FROM facilities WHERE admin_sym = '3-43110-00581'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00257
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00257', 2024, '66.71'
FROM facilities WHERE admin_sym = '3-43110-00257'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00265
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00265', 2024, '77'
FROM facilities WHERE admin_sym = '3-43110-00265'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00673
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00673', 2024, '65.25'
FROM facilities WHERE admin_sym = '3-43110-00673'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00071
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00071', 2024, '63.58'
FROM facilities WHERE admin_sym = '3-43110-00071'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00073
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00073', 2024, '81.83'
FROM facilities WHERE admin_sym = '3-43110-00073'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00727
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00727', 2024, '85.96'
FROM facilities WHERE admin_sym = '2-43110-00727'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00645
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00645', 2024, '92.35'
FROM facilities WHERE admin_sym = '3-43110-00645'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00669
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00669', 2024, '68.92'
FROM facilities WHERE admin_sym = '3-43110-00669'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.92',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00823
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00823', 2024, '86.35'
FROM facilities WHERE admin_sym = '2-43110-00823'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00069
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00069', 2024, '69.05'
FROM facilities WHERE admin_sym = '3-43110-00069'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00165
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00165', 2024, '89.35'
FROM facilities WHERE admin_sym = '3-43110-00165'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00603
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00603', 2024, '89.8'
FROM facilities WHERE admin_sym = '3-43110-00603'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00705
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00705', 2024, '87.35'
FROM facilities WHERE admin_sym = '3-43110-00705'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00801
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00801', 2024, '72.1'
FROM facilities WHERE admin_sym = '2-43110-00801'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00575
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00575', 2024, '61.58'
FROM facilities WHERE admin_sym = '2-43110-00575'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00335
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00335', 2024, '78.35'
FROM facilities WHERE admin_sym = '3-43110-00335'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00173
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00173', 2024, '87.1'
FROM facilities WHERE admin_sym = '3-43110-00173'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00765
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00765', 2024, '85.1'
FROM facilities WHERE admin_sym = '2-43110-00765'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00521
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00521', 2024, '93.85'
FROM facilities WHERE admin_sym = '3-43110-00521'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00399
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00399', 2024, '97.85'
FROM facilities WHERE admin_sym = '3-43110-00399'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00749
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00749', 2024, '86.05'
FROM facilities WHERE admin_sym = '2-43110-00749'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00815
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00815', 2024, '92.1'
FROM facilities WHERE admin_sym = '2-43110-00815'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00525
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00525', 2024, '82.35'
FROM facilities WHERE admin_sym = '3-43110-00525'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00261
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00261', 2024, '85.85'
FROM facilities WHERE admin_sym = '3-43110-00261'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00709
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00709', 2024, '61.1'
FROM facilities WHERE admin_sym = '3-43110-00709'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00741
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00741', 2024, '86.85'
FROM facilities WHERE admin_sym = '2-43110-00741'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00469
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00469', 2024, '95.85'
FROM facilities WHERE admin_sym = '3-43110-00469'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00773
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00773', 2024, '90.1'
FROM facilities WHERE admin_sym = '2-43110-00773'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00455
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00455', 2024, '95.35'
FROM facilities WHERE admin_sym = '3-43110-00455'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00885
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00885', 2024, '78.66'
FROM facilities WHERE admin_sym = '2-43110-00885'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.66',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00821
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00821', 2024, '86.6'
FROM facilities WHERE admin_sym = '2-43110-00821'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00329
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00329', 2024, '72.4'
FROM facilities WHERE admin_sym = '3-43110-00329'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00463
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00463', 2024, '78.1'
FROM facilities WHERE admin_sym = '3-43110-00463'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00813
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00813', 2024, '74.02'
FROM facilities WHERE admin_sym = '2-43110-00813'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00809
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00809', 2024, '82.1'
FROM facilities WHERE admin_sym = '2-43110-00809'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00715
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00715', 2024, '72.6'
FROM facilities WHERE admin_sym = '3-43110-00715'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00727
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00727', 2024, '93.6'
FROM facilities WHERE admin_sym = '2-43110-00727'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00669
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00669', 2024, '86.5'
FROM facilities WHERE admin_sym = '3-43110-00669'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00805
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00805', 2024, '75.85'
FROM facilities WHERE admin_sym = '2-43110-00805'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00725
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00725', 2024, '70.1'
FROM facilities WHERE admin_sym = '2-43110-00725'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00893
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00893', 2024, '78.3'
FROM facilities WHERE admin_sym = '2-43110-00893'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00641
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00641', 2024, '71.35'
FROM facilities WHERE admin_sym = '3-43110-00641'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00483
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00483', 2024, '84.6'
FROM facilities WHERE admin_sym = '3-43110-00483'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00875
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00875', 2024, '73.35'
FROM facilities WHERE admin_sym = '2-43110-00875'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00749
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00749', 2024, '89.35'
FROM facilities WHERE admin_sym = '2-43110-00749'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00455
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00455', 2024, '95.85'
FROM facilities WHERE admin_sym = '3-43110-00455'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00491
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00491', 2024, '89.85'
FROM facilities WHERE admin_sym = '3-43110-00491'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43110-00069
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43110-00069', 2024, '65.5'
FROM facilities WHERE admin_sym = '3-43110-00069'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43110-00859
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43110-00859', 2024, '76.54'
FROM facilities WHERE admin_sym = '2-43110-00859'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.54',
  last_updated = CURRENT_TIMESTAMP;

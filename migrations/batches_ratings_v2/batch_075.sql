-- Batch 75 of 226
-- Processing 100 facilities

-- admin_sym: 2-41150-00795
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00795', 2024, '62.1'
FROM facilities WHERE admin_sym = '2-41150-00795'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00831
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00831', 2024, '79.82'
FROM facilities WHERE admin_sym = '2-41150-00831'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00697
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00697', 2024, '81.1'
FROM facilities WHERE admin_sym = '3-41150-00697'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00827
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00827', 2024, '82.85'
FROM facilities WHERE admin_sym = '2-41150-00827'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00845
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00845', 2024, '76.85'
FROM facilities WHERE admin_sym = '2-41150-00845'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00455
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00455', 2024, '71.88'
FROM facilities WHERE admin_sym = '3-41150-00455'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00799
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00799', 2024, '70.1'
FROM facilities WHERE admin_sym = '2-41150-00799'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00717
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00717', 2024, '74.13'
FROM facilities WHERE admin_sym = '3-41150-00717'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00629
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00629', 2024, '83.1'
FROM facilities WHERE admin_sym = '3-41150-00629'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00857
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00857', 2024, '59.18'
FROM facilities WHERE admin_sym = '2-41150-00857'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00623
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00623', 2024, '78.85'
FROM facilities WHERE admin_sym = '3-41150-00623'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00881
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00881', 2024, '89.77'
FROM facilities WHERE admin_sym = '2-41150-00881'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00691
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00691', 2024, '81.85'
FROM facilities WHERE admin_sym = '3-41150-00691'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00849
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00849', 2024, '69.46'
FROM facilities WHERE admin_sym = '2-41150-00849'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00793
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00793', 2024, '86.35'
FROM facilities WHERE admin_sym = '2-41150-00793'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00747
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00747', 2024, '77.8'
FROM facilities WHERE admin_sym = '3-41150-00747'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00873
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00873', 2024, '72.35'
FROM facilities WHERE admin_sym = '2-41150-00873'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00661
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00661', 2024, '77.85'
FROM facilities WHERE admin_sym = '3-41150-00661'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00655
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00655', 2024, '76.32'
FROM facilities WHERE admin_sym = '3-41150-00655'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00705
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00705', 2024, '81.8'
FROM facilities WHERE admin_sym = '3-41150-00705'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00801
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00801', 2024, '93.1'
FROM facilities WHERE admin_sym = '2-41150-00801'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00503
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00503', 2024, '85.18'
FROM facilities WHERE admin_sym = '3-41150-00503'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00165
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00165', 2024, '40.43'
FROM facilities WHERE admin_sym = '3-41150-00165'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '40.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00331
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00331', 2024, '51.66'
FROM facilities WHERE admin_sym = '3-41150-00331'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '51.66',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00615
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00615', 2024, '91.35'
FROM facilities WHERE admin_sym = '3-41150-00615'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00731
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00731', 2024, '86.1'
FROM facilities WHERE admin_sym = '3-41150-00731'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00861
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00861', 2024, '79.74'
FROM facilities WHERE admin_sym = '2-41150-00861'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00509
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00509', 2024, '89.6'
FROM facilities WHERE admin_sym = '3-41150-00509'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00853
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00853', 2024, '76.24'
FROM facilities WHERE admin_sym = '2-41150-00853'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00807
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00807', 2024, '81.1'
FROM facilities WHERE admin_sym = '2-41150-00807'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00755
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00755', 2024, '86.1'
FROM facilities WHERE admin_sym = '3-41150-00755'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00647
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00647', 2024, '89.6'
FROM facilities WHERE admin_sym = '3-41150-00647'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00893
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00893', 2024, '84.85'
FROM facilities WHERE admin_sym = '2-41150-00893'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00885
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00885', 2024, '80.66'
FROM facilities WHERE admin_sym = '2-41150-00885'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.66',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00711
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00711', 2024, '81.35'
FROM facilities WHERE admin_sym = '3-41150-00711'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00629
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00629', 2024, '76.35'
FROM facilities WHERE admin_sym = '3-41150-00629'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00623
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00623', 2024, '82.6'
FROM facilities WHERE admin_sym = '3-41150-00623'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00503
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00503', 2024, '71.32'
FROM facilities WHERE admin_sym = '3-41150-00503'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00755
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00755', 2024, '93.02'
FROM facilities WHERE admin_sym = '3-41150-00755'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00757
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00757', 2024, '90.1'
FROM facilities WHERE admin_sym = '3-41150-00757'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00491
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00491', 2024, '72.6'
FROM facilities WHERE admin_sym = '3-41150-00491'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00785
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00785', 2024, '85.8'
FROM facilities WHERE admin_sym = '2-41150-00785'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00833
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00833', 2024, '81.6'
FROM facilities WHERE admin_sym = '2-41150-00833'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00671
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00671', 2024, '83.6'
FROM facilities WHERE admin_sym = '3-41150-00671'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00763
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00763', 2024, '73.1'
FROM facilities WHERE admin_sym = '3-41150-00763'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00545
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00545', 2024, '87.35'
FROM facilities WHERE admin_sym = '3-41150-00545'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00805
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00805', 2024, '79.35'
FROM facilities WHERE admin_sym = '2-41150-00805'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00769
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00769', 2024, '69.85'
FROM facilities WHERE admin_sym = '3-41150-00769'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00775
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00775', 2024, '88.85'
FROM facilities WHERE admin_sym = '2-41150-00775'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00741
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00741', 2024, '94.35'
FROM facilities WHERE admin_sym = '3-41150-00741'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00859
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00859', 2024, '76.6'
FROM facilities WHERE admin_sym = '2-41150-00859'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00595
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00595', 2024, '82.1'
FROM facilities WHERE admin_sym = '3-41150-00595'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00855
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00855', 2024, '74.85'
FROM facilities WHERE admin_sym = '2-41150-00855'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00831
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00831', 2024, '83.35'
FROM facilities WHERE admin_sym = '2-41150-00831'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00869
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00869', 2024, '85.1'
FROM facilities WHERE admin_sym = '2-41150-00869'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00809
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00809', 2024, '86.1'
FROM facilities WHERE admin_sym = '2-41150-00809'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00879
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00879', 2024, '92.85'
FROM facilities WHERE admin_sym = '2-41150-00879'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00561
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00561', 2024, '91.6'
FROM facilities WHERE admin_sym = '3-41150-00561'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00285
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00285', 2024, '80.55'
FROM facilities WHERE admin_sym = '3-41150-00285'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41150-00825
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41150-00825', 2024, '90.6'
FROM facilities WHERE admin_sym = '2-41150-00825'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00033
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00033', 2024, '77.6'
FROM facilities WHERE admin_sym = '3-41150-00033'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00673
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00673', 2024, '96.6'
FROM facilities WHERE admin_sym = '3-41150-00673'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00317
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00317', 2024, '90.35'
FROM facilities WHERE admin_sym = '3-41150-00317'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41150-00307
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41150-00307', 2024, '42.1'
FROM facilities WHERE admin_sym = '3-41150-00307'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '42.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00449
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00449', 2024, '77.13'
FROM facilities WHERE admin_sym = '3-41190-00449'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00639
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00639', 2024, '88.1'
FROM facilities WHERE admin_sym = '3-41190-00639'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00771
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00771', 2024, '89.55'
FROM facilities WHERE admin_sym = '3-41190-00771'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01159
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01159', 2024, '88.66'
FROM facilities WHERE admin_sym = '2-41190-01159'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.66',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00773
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00773', 2024, '47.07'
FROM facilities WHERE admin_sym = '3-41190-00773'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '47.07',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00979
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00979', 2024, '50.99'
FROM facilities WHERE admin_sym = '3-41190-00979'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01255
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01255', 2024, '59.68'
FROM facilities WHERE admin_sym = '2-41190-01255'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01141
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01141', 2024, '87.85'
FROM facilities WHERE admin_sym = '2-41190-01141'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00491
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00491', 2024, '73.6'
FROM facilities WHERE admin_sym = '3-41190-00491'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01269
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01269', 2024, '85.04'
FROM facilities WHERE admin_sym = '2-41190-01269'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01243
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01243', 2024, '80.71'
FROM facilities WHERE admin_sym = '2-41190-01243'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00845
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00845', 2024, '67.02'
FROM facilities WHERE admin_sym = '3-41190-00845'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01257
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01257', 2024, '70.91'
FROM facilities WHERE admin_sym = '2-41190-01257'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01207
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01207', 2024, '84.74'
FROM facilities WHERE admin_sym = '2-41190-01207'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00985
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00985', 2024, '70.6'
FROM facilities WHERE admin_sym = '3-41190-00985'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00905
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00905', 2024, '72.6'
FROM facilities WHERE admin_sym = '3-41190-00905'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00125', 2024, '91.85'
FROM facilities WHERE admin_sym = '3-41190-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00307
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00307', 2024, '92.1'
FROM facilities WHERE admin_sym = '3-41190-00307'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00973
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00973', 2024, '58.43'
FROM facilities WHERE admin_sym = '3-41190-00973'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01273
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01273', 2024, '92.16'
FROM facilities WHERE admin_sym = '2-41190-01273'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00275
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00275', 2024, '74.6'
FROM facilities WHERE admin_sym = '3-41190-00275'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-01053
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-01053', 2024, '54.85'
FROM facilities WHERE admin_sym = '3-41190-01053'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00995
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00995', 2024, '56.38'
FROM facilities WHERE admin_sym = '3-41190-00995'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00619
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00619', 2024, '80.6'
FROM facilities WHERE admin_sym = '3-41190-00619'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00811
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00811', 2024, '82.35'
FROM facilities WHERE admin_sym = '3-41190-00811'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-01105
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-01105', 2024, '80.6'
FROM facilities WHERE admin_sym = '3-41190-01105'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01261
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01261', 2024, '89.46'
FROM facilities WHERE admin_sym = '2-41190-01261'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00759
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00759', 2024, '92.85'
FROM facilities WHERE admin_sym = '3-41190-00759'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00193
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00193', 2024, '93.35'
FROM facilities WHERE admin_sym = '3-41190-00193'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00919
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00919', 2024, '77.35'
FROM facilities WHERE admin_sym = '3-41190-00919'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00505
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00505', 2024, '69.1'
FROM facilities WHERE admin_sym = '3-41190-00505'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00801
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00801', 2024, '95.6'
FROM facilities WHERE admin_sym = '3-41190-00801'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-01095
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-01095', 2024, '74.57'
FROM facilities WHERE admin_sym = '3-41190-01095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.57',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41190-00807
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41190-00807', 2024, '85.6'
FROM facilities WHERE admin_sym = '3-41190-00807'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01317
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01317', 2024, '61.32'
FROM facilities WHERE admin_sym = '2-41190-01317'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41190-01293
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41190-01293', 2024, '78.82'
FROM facilities WHERE admin_sym = '2-41190-01293'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.82',
  last_updated = CURRENT_TIMESTAMP;

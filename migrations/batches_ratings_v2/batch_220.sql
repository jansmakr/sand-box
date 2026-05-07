-- Batch 220 of 226
-- Processing 100 facilities

-- admin_sym: 1-46820-00062
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00062', 2024, '84.78'
FROM facilities WHERE admin_sym = '1-46820-00062'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.78',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46820-00029
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00029', 2024, '78.52'
FROM facilities WHERE admin_sym = '1-46820-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46820-00127
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00127', 2024, '82.26'
FROM facilities WHERE admin_sym = '1-46820-00127'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.26',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46820-00064
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00064', 2024, '90.4'
FROM facilities WHERE admin_sym = '1-46820-00064'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46820-00100
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00100', 2024, '72.04'
FROM facilities WHERE admin_sym = '1-46820-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46820-00104
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00104', 2024, '55.49'
FROM facilities WHERE admin_sym = '1-46820-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46820-00036
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00036', 2024, '77.28'
FROM facilities WHERE admin_sym = '1-46820-00036'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.28',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46820-00047
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00047', 2024, '74.55'
FROM facilities WHERE admin_sym = '1-46820-00047'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46820-00113
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00113', 2024, '49.45'
FROM facilities WHERE admin_sym = '1-46820-00113'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.45',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46820-00049
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00049', 2024, '92.13'
FROM facilities WHERE admin_sym = '1-46820-00049'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46790-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00010', 2024, '65.26'
FROM facilities WHERE admin_sym = '1-46790-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.26',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46790-00178
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00178', 2024, '80.46'
FROM facilities WHERE admin_sym = '1-46790-00178'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46790-00117
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00117', 2024, '80.1'
FROM facilities WHERE admin_sym = '1-46790-00117'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46790-00161
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00161', 2024, '85.85'
FROM facilities WHERE admin_sym = '1-46790-00161'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46790-00092
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00092', 2024, '89.58'
FROM facilities WHERE admin_sym = '1-46790-00092'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46790-00148
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00148', 2024, '75.15'
FROM facilities WHERE admin_sym = '1-46790-00148'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.15',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46790-00163
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00163', 2024, '85.93'
FROM facilities WHERE admin_sym = '1-46790-00163'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46790-00181
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00181', 2024, '69.3'
FROM facilities WHERE admin_sym = '1-46790-00181'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46790-00100
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00100', 2024, '85.84'
FROM facilities WHERE admin_sym = '1-46790-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.84',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46790-00183
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00183', 2024, '76.72'
FROM facilities WHERE admin_sym = '1-46790-00183'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46790-00058
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00058', 2024, '80.9'
FROM facilities WHERE admin_sym = '1-46790-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.9',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46790-00140
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46790-00140', 2024, '80.54'
FROM facilities WHERE admin_sym = '1-46790-00140'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28843
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28843', 2024, '71.53'
FROM facilities WHERE admin_sym = '1-47290-28843'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.53',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28642
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28642', 2024, '91.1'
FROM facilities WHERE admin_sym = '1-47290-28642'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28785
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28785', 2024, '65.85'
FROM facilities WHERE admin_sym = '1-47290-28785'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28784
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28784', 2024, '58.98'
FROM facilities WHERE admin_sym = '1-47290-28784'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28906
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28906', 2024, '76.28'
FROM facilities WHERE admin_sym = '1-47290-28906'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.28',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-00008', 2024, '85.6'
FROM facilities WHERE admin_sym = '1-47290-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28954
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28954', 2024, '89.43'
FROM facilities WHERE admin_sym = '1-47290-28954'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28662
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28662', 2024, '83.85'
FROM facilities WHERE admin_sym = '1-47290-28662'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28810
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28810', 2024, '88.8'
FROM facilities WHERE admin_sym = '1-47290-28810'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28725
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28725', 2024, '88.1'
FROM facilities WHERE admin_sym = '1-47290-28725'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28870
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28870', 2024, '80.85'
FROM facilities WHERE admin_sym = '1-47290-28870'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-00004', 2024, '96.1'
FROM facilities WHERE admin_sym = '1-47290-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28684
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28684', 2024, '96.08'
FROM facilities WHERE admin_sym = '1-47290-28684'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28866
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28866', 2024, '97.6'
FROM facilities WHERE admin_sym = '1-47290-28866'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28940
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28940', 2024, '72.54'
FROM facilities WHERE admin_sym = '1-47290-28940'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28838
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28838', 2024, '68.16'
FROM facilities WHERE admin_sym = '1-47290-28838'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28885
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28885', 2024, '61.36'
FROM facilities WHERE admin_sym = '1-47290-28885'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.36',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28812
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28812', 2024, '44.88'
FROM facilities WHERE admin_sym = '1-47290-28812'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '44.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28850
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28850', 2024, '86.35'
FROM facilities WHERE admin_sym = '1-47290-28850'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28792
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28792', 2024, '78.63'
FROM facilities WHERE admin_sym = '1-47290-28792'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28897
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28897', 2024, '54.04'
FROM facilities WHERE admin_sym = '1-47290-28897'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28856
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28856', 2024, '66.13'
FROM facilities WHERE admin_sym = '1-47290-28856'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28746
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28746', 2024, '82.48'
FROM facilities WHERE admin_sym = '1-47290-28746'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28842
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28842', 2024, '76.83'
FROM facilities WHERE admin_sym = '1-47290-28842'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28744
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28744', 2024, '90.1'
FROM facilities WHERE admin_sym = '1-47290-28744'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28835
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28835', 2024, '98.31'
FROM facilities WHERE admin_sym = '1-47290-28835'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28938
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28938', 2024, '93.81'
FROM facilities WHERE admin_sym = '1-47290-28938'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28859
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28859', 2024, '91.94'
FROM facilities WHERE admin_sym = '1-47290-28859'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28846
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28846', 2024, '83.06'
FROM facilities WHERE admin_sym = '1-47290-28846'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28849
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28849', 2024, '82.85'
FROM facilities WHERE admin_sym = '1-47290-28849'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28877
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28877', 2024, '88.45'
FROM facilities WHERE admin_sym = '1-47290-28877'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.45',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28756
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28756', 2024, '74.55'
FROM facilities WHERE admin_sym = '1-47290-28756'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28703
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28703', 2024, '41.31'
FROM facilities WHERE admin_sym = '1-47290-28703'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '41.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28816
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28816', 2024, '82.2'
FROM facilities WHERE admin_sym = '1-47290-28816'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.2',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28881
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28881', 2024, '69.85'
FROM facilities WHERE admin_sym = '1-47290-28881'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28745
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28745', 2024, '67.55'
FROM facilities WHERE admin_sym = '1-47290-28745'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28808
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28808', 2024, '58.02'
FROM facilities WHERE admin_sym = '1-47290-28808'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28825
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28825', 2024, '81.28'
FROM facilities WHERE admin_sym = '1-47290-28825'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.28',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28818
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28818', 2024, '64.36'
FROM facilities WHERE admin_sym = '1-47290-28818'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.36',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28828
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28828', 2024, '68.48'
FROM facilities WHERE admin_sym = '1-47290-28828'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28811
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28811', 2024, '70.06'
FROM facilities WHERE admin_sym = '1-47290-28811'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28788
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28788', 2024, '76.52'
FROM facilities WHERE admin_sym = '1-47290-28788'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28765
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28765', 2024, '74.9'
FROM facilities WHERE admin_sym = '1-47290-28765'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.9',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28757
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28757', 2024, '74.72'
FROM facilities WHERE admin_sym = '1-47290-28757'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47290-28742
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47290-28742', 2024, '60.96'
FROM facilities WHERE admin_sym = '1-47290-28742'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47130-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00011', 2024, '90.08'
FROM facilities WHERE admin_sym = '1-47130-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47130-00215
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00215', 2024, '81.07'
FROM facilities WHERE admin_sym = '1-47130-00215'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.07',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47130-00104
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00104', 2024, '88.6'
FROM facilities WHERE admin_sym = '1-47130-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47130-00214
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00214', 2024, '69.21'
FROM facilities WHERE admin_sym = '1-47130-00214'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47130-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00012', 2024, '90.3'
FROM facilities WHERE admin_sym = '1-47130-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47130-00168
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00168', 2024, '85.75'
FROM facilities WHERE admin_sym = '1-47130-00168'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47130-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00004', 2024, '94.75'
FROM facilities WHERE admin_sym = '1-47130-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47130-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00003', 2024, '97.35'
FROM facilities WHERE admin_sym = '1-47130-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47130-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00005', 2024, '95.41'
FROM facilities WHERE admin_sym = '1-47130-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47130-00101
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00101', 2024, '69.09'
FROM facilities WHERE admin_sym = '1-47130-00101'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.09',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47130-00261
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00261', 2024, '68.18'
FROM facilities WHERE admin_sym = '1-47130-00261'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47130-00164
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00164', 2024, '65.39'
FROM facilities WHERE admin_sym = '1-47130-00164'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.39',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47130-00123
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00123', 2024, '89.64'
FROM facilities WHERE admin_sym = '1-47130-00123'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47130-00134
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00134', 2024, '70.64'
FROM facilities WHERE admin_sym = '1-47130-00134'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47130-00102
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00102', 2024, '63.85'
FROM facilities WHERE admin_sym = '1-47130-00102'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47130-00107
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00107', 2024, '74.62'
FROM facilities WHERE admin_sym = '1-47130-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.62',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47130-00016
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00016', 2024, '83.12'
FROM facilities WHERE admin_sym = '1-47130-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47130-00145
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00145', 2024, '78.79'
FROM facilities WHERE admin_sym = '1-47130-00145'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47130-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47130-00023', 2024, '73.98'
FROM facilities WHERE admin_sym = '1-47130-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47830-00031
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47830-00031', 2024, '86.51'
FROM facilities WHERE admin_sym = '1-47830-00031'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.51',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47830-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47830-00023', 2024, '93.1'
FROM facilities WHERE admin_sym = '1-47830-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47830-00021
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47830-00021', 2024, '96.35'
FROM facilities WHERE admin_sym = '1-47830-00021'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47830-00043
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47830-00043', 2024, '88.55'
FROM facilities WHERE admin_sym = '1-47830-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47830-00052
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47830-00052', 2024, '79.55'
FROM facilities WHERE admin_sym = '1-47830-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47830-00035
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47830-00035', 2024, '91.72'
FROM facilities WHERE admin_sym = '1-47830-00035'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47190-00369
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47190-00369', 2024, '79.54'
FROM facilities WHERE admin_sym = '1-47190-00369'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47190-00297
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47190-00297', 2024, '83.3'
FROM facilities WHERE admin_sym = '1-47190-00297'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47190-00339
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47190-00339', 2024, '78.89'
FROM facilities WHERE admin_sym = '1-47190-00339'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47190-00036
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47190-00036', 2024, '85.71'
FROM facilities WHERE admin_sym = '1-47190-00036'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47190-00157
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47190-00157', 2024, '90.8'
FROM facilities WHERE admin_sym = '1-47190-00157'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47190-00067
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47190-00067', 2024, '78.55'
FROM facilities WHERE admin_sym = '1-47190-00067'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47190-00214
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47190-00214', 2024, '85.8'
FROM facilities WHERE admin_sym = '1-47190-00214'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47190-00224
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47190-00224', 2024, '80.35'
FROM facilities WHERE admin_sym = '1-47190-00224'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.35',
  last_updated = CURRENT_TIMESTAMP;

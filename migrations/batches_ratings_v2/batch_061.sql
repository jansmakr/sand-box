-- Batch 61 of 226
-- Processing 100 facilities

-- admin_sym: 3-43150-00077
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00077', 2024, '75.35'
FROM facilities WHERE admin_sym = '3-43150-00077'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43150-00113
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00113', 2024, '63.55'
FROM facilities WHERE admin_sym = '3-43150-00113'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43150-00039
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43150-00039', 2024, '87.35'
FROM facilities WHERE admin_sym = '2-43150-00039'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43150-00083
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00083', 2024, '95.6'
FROM facilities WHERE admin_sym = '3-43150-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43150-00209
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43150-00209', 2024, '81.02'
FROM facilities WHERE admin_sym = '2-43150-00209'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43150-00121
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00121', 2024, '70.35'
FROM facilities WHERE admin_sym = '3-43150-00121'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43150-00131
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00131', 2024, '93.6'
FROM facilities WHERE admin_sym = '3-43150-00131'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43150-00187
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43150-00187', 2024, '64.42'
FROM facilities WHERE admin_sym = '2-43150-00187'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43150-00205
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43150-00205', 2024, '70.66'
FROM facilities WHERE admin_sym = '2-43150-00205'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.66',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43150-00167
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43150-00167', 2024, '81.05'
FROM facilities WHERE admin_sym = '2-43150-00167'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43150-00179
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43150-00179', 2024, '77.85'
FROM facilities WHERE admin_sym = '2-43150-00179'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43150-00203
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43150-00203', 2024, '70.8'
FROM facilities WHERE admin_sym = '2-43150-00203'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43150-00117
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00117', 2024, '73.85'
FROM facilities WHERE admin_sym = '3-43150-00117'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43150-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00125', 2024, '88.6'
FROM facilities WHERE admin_sym = '3-43150-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43150-00133
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00133', 2024, '85.55'
FROM facilities WHERE admin_sym = '3-43150-00133'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43150-00115
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00115', 2024, '74.6'
FROM facilities WHERE admin_sym = '3-43150-00115'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43150-00155
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00155', 2024, '81.35'
FROM facilities WHERE admin_sym = '3-43150-00155'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43150-00119
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00119', 2024, '91.85'
FROM facilities WHERE admin_sym = '3-43150-00119'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43150-00149
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00149', 2024, '93.85'
FROM facilities WHERE admin_sym = '3-43150-00149'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43150-00207
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43150-00207', 2024, '53'
FROM facilities WHERE admin_sym = '2-43150-00207'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43150-00039
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43150-00039', 2024, '93.85'
FROM facilities WHERE admin_sym = '2-43150-00039'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43150-00183
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43150-00183', 2024, '78.1'
FROM facilities WHERE admin_sym = '2-43150-00183'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43150-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00011', 2024, '54.5'
FROM facilities WHERE admin_sym = '3-43150-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43150-00127
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43150-00127', 2024, '77.38'
FROM facilities WHERE admin_sym = '3-43150-00127'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43800-00043
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43800-00043', 2024, '83.1'
FROM facilities WHERE admin_sym = '2-43800-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43800-00029
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43800-00029', 2024, '88.1'
FROM facilities WHERE admin_sym = '3-43800-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43800-00045
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43800-00045', 2024, '73.04'
FROM facilities WHERE admin_sym = '2-43800-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43800-00017
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43800-00017', 2024, '66'
FROM facilities WHERE admin_sym = '3-43800-00017'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43800-00043
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43800-00043', 2024, '78.1'
FROM facilities WHERE admin_sym = '2-43800-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43800-00029
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43800-00029', 2024, '91.35'
FROM facilities WHERE admin_sym = '3-43800-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43800-00035
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43800-00035', 2024, '89.83'
FROM facilities WHERE admin_sym = '3-43800-00035'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43720-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43720-00009', 2024, '97.8'
FROM facilities WHERE admin_sym = '3-43720-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43720-00055
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43720-00055', 2024, '74.6'
FROM facilities WHERE admin_sym = '2-43720-00055'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43720-00029
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43720-00029', 2024, '92.8'
FROM facilities WHERE admin_sym = '3-43720-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43720-00039
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43720-00039', 2024, '88.35'
FROM facilities WHERE admin_sym = '3-43720-00039'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43720-00037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43720-00037', 2024, '94.6'
FROM facilities WHERE admin_sym = '3-43720-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43720-00031
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43720-00031', 2024, '87.29'
FROM facilities WHERE admin_sym = '3-43720-00031'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43720-00029
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43720-00029', 2024, '94.1'
FROM facilities WHERE admin_sym = '3-43720-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43720-00045
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43720-00045', 2024, '77.49'
FROM facilities WHERE admin_sym = '2-43720-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43720-00033
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43720-00033', 2024, '80.1'
FROM facilities WHERE admin_sym = '2-43720-00033'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43720-00053
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43720-00053', 2024, '82.75'
FROM facilities WHERE admin_sym = '2-43720-00053'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43720-00041
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43720-00041', 2024, '90'
FROM facilities WHERE admin_sym = '3-43720-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43730-00075
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43730-00075', 2024, '77.32'
FROM facilities WHERE admin_sym = '3-43730-00075'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43730-00085
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43730-00085', 2024, '89.85'
FROM facilities WHERE admin_sym = '3-43730-00085'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43730-00083
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43730-00083', 2024, '91.05'
FROM facilities WHERE admin_sym = '3-43730-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43730-00029
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43730-00029', 2024, '97.05'
FROM facilities WHERE admin_sym = '3-43730-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43730-00111
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43730-00111', 2024, '62.81'
FROM facilities WHERE admin_sym = '2-43730-00111'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43730-00117
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43730-00117', 2024, '74.07'
FROM facilities WHERE admin_sym = '2-43730-00117'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.07',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43730-00089
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43730-00089', 2024, '56.52'
FROM facilities WHERE admin_sym = '3-43730-00089'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43730-00081
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43730-00081', 2024, '93.85'
FROM facilities WHERE admin_sym = '3-43730-00081'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43730-00063
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43730-00063', 2024, '86.29'
FROM facilities WHERE admin_sym = '3-43730-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43730-00105
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43730-00105', 2024, '84.8'
FROM facilities WHERE admin_sym = '2-43730-00105'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43730-00091
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43730-00091', 2024, '67.6'
FROM facilities WHERE admin_sym = '3-43730-00091'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43730-00063
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43730-00063', 2024, '83.49'
FROM facilities WHERE admin_sym = '3-43730-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43730-00105
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43730-00105', 2024, '85.35'
FROM facilities WHERE admin_sym = '2-43730-00105'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43730-00091
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43730-00091', 2024, '61.6'
FROM facilities WHERE admin_sym = '3-43730-00091'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43730-00095
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43730-00095', 2024, '71.8'
FROM facilities WHERE admin_sym = '2-43730-00095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43730-00119
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43730-00119', 2024, '77.18'
FROM facilities WHERE admin_sym = '2-43730-00119'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43730-00079
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43730-00079', 2024, '70.85'
FROM facilities WHERE admin_sym = '2-43730-00079'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43740-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43740-00125', 2024, '77.93'
FROM facilities WHERE admin_sym = '2-43740-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43740-00113
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00113', 2024, '71.85'
FROM facilities WHERE admin_sym = '3-43740-00113'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43740-00129
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43740-00129', 2024, '61.08'
FROM facilities WHERE admin_sym = '2-43740-00129'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43740-00073
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00073', 2024, '90.13'
FROM facilities WHERE admin_sym = '3-43740-00073'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43740-00057
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00057', 2024, '92.85'
FROM facilities WHERE admin_sym = '3-43740-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43740-00095
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00095', 2024, '90.85'
FROM facilities WHERE admin_sym = '3-43740-00095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43740-00123
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43740-00123', 2024, '76.35'
FROM facilities WHERE admin_sym = '2-43740-00123'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43740-00121
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43740-00121', 2024, '88.55'
FROM facilities WHERE admin_sym = '2-43740-00121'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43740-00077
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00077', 2024, '78.85'
FROM facilities WHERE admin_sym = '3-43740-00077'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43740-00107
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00107', 2024, '84.85'
FROM facilities WHERE admin_sym = '3-43740-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43740-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00009', 2024, '64.1'
FROM facilities WHERE admin_sym = '3-43740-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43740-00073
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00073', 2024, '90.6'
FROM facilities WHERE admin_sym = '3-43740-00073'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43740-00057
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00057', 2024, '87.16'
FROM facilities WHERE admin_sym = '3-43740-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43740-00095
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00095', 2024, '92.35'
FROM facilities WHERE admin_sym = '3-43740-00095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43740-00123
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43740-00123', 2024, '77.1'
FROM facilities WHERE admin_sym = '2-43740-00123'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43740-00121
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43740-00121', 2024, '91.49'
FROM facilities WHERE admin_sym = '2-43740-00121'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43740-00107
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00107', 2024, '89.35'
FROM facilities WHERE admin_sym = '3-43740-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43740-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00009', 2024, '75.6'
FROM facilities WHERE admin_sym = '3-43740-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43740-00061
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43740-00061', 2024, '92.85'
FROM facilities WHERE admin_sym = '2-43740-00061'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43740-00133
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43740-00133', 2024, '77.32'
FROM facilities WHERE admin_sym = '2-43740-00133'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43740-00057
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43740-00057', 2024, '89.3'
FROM facilities WHERE admin_sym = '3-43740-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43750-00071
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43750-00071', 2024, '90.85'
FROM facilities WHERE admin_sym = '3-43750-00071'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43750-00041
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43750-00041', 2024, '88.35'
FROM facilities WHERE admin_sym = '3-43750-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43750-00041
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43750-00041', 2024, '90.35'
FROM facilities WHERE admin_sym = '3-43750-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43750-00095
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43750-00095', 2024, '85.85'
FROM facilities WHERE admin_sym = '2-43750-00095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43750-00073
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43750-00073', 2024, '87.35'
FROM facilities WHERE admin_sym = '3-43750-00073'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43750-00069
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43750-00069', 2024, '68.05'
FROM facilities WHERE admin_sym = '3-43750-00069'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43750-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43750-00003', 2024, '94.6'
FROM facilities WHERE admin_sym = '2-43750-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43750-00083
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43750-00083', 2024, '86.55'
FROM facilities WHERE admin_sym = '2-43750-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43750-00075
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43750-00075', 2024, '82.6'
FROM facilities WHERE admin_sym = '3-43750-00075'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43750-00087
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43750-00087', 2024, '49.35'
FROM facilities WHERE admin_sym = '2-43750-00087'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43750-00061
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43750-00061', 2024, '58.5'
FROM facilities WHERE admin_sym = '3-43750-00061'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43745-00037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43745-00037', 2024, '78.05'
FROM facilities WHERE admin_sym = '3-43745-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43745-00049
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43745-00049', 2024, '64.3'
FROM facilities WHERE admin_sym = '3-43745-00049'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43745-00063
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43745-00063', 2024, '80.85'
FROM facilities WHERE admin_sym = '2-43745-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43745-00051
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43745-00051', 2024, '68.35'
FROM facilities WHERE admin_sym = '3-43745-00051'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43745-00053
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43745-00053', 2024, '59.85'
FROM facilities WHERE admin_sym = '3-43745-00053'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43745-00049
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43745-00049', 2024, '68.55'
FROM facilities WHERE admin_sym = '3-43745-00049'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43745-00053
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43745-00053', 2024, '60.85'
FROM facilities WHERE admin_sym = '3-43745-00053'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-43745-00065
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-43745-00065', 2024, '87.1'
FROM facilities WHERE admin_sym = '2-43745-00065'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-43745-00047
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-43745-00047', 2024, '63.5'
FROM facilities WHERE admin_sym = '3-43745-00047'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.5',
  last_updated = CURRENT_TIMESTAMP;

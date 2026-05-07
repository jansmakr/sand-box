-- Batch 21 of 226
-- Processing 100 facilities

-- admin_sym: 3-31110-00109
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31110-00109', 2024, '90.6'
FROM facilities WHERE admin_sym = '3-31110-00109'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31110-00165
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31110-00165', 2024, '54.3'
FROM facilities WHERE admin_sym = '2-31110-00165'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31110-00161
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31110-00161', 2024, '86.55'
FROM facilities WHERE admin_sym = '2-31110-00161'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31110-00155
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31110-00155', 2024, '86'
FROM facilities WHERE admin_sym = '2-31110-00155'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31110-00117
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31110-00117', 2024, '93.85'
FROM facilities WHERE admin_sym = '3-31110-00117'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31110-00183
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31110-00183', 2024, '79.8'
FROM facilities WHERE admin_sym = '2-31110-00183'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31110-00089
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31110-00089', 2024, '94.3'
FROM facilities WHERE admin_sym = '3-31110-00089'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31110-00159
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31110-00159', 2024, '56.75'
FROM facilities WHERE admin_sym = '2-31110-00159'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31110-00091
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31110-00091', 2024, '90.3'
FROM facilities WHERE admin_sym = '3-31110-00091'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31110-00041
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31110-00041', 2024, '30.5'
FROM facilities WHERE admin_sym = '3-31110-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '30.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31110-00149
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31110-00149', 2024, '69.83'
FROM facilities WHERE admin_sym = '2-31110-00149'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31200-00069
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31200-00069', 2024, '85.3'
FROM facilities WHERE admin_sym = '3-31200-00069'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31200-00037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31200-00037', 2024, '82.55'
FROM facilities WHERE admin_sym = '3-31200-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31200-00089
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31200-00089', 2024, '87.05'
FROM facilities WHERE admin_sym = '3-31200-00089'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31200-00097
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31200-00097', 2024, '74'
FROM facilities WHERE admin_sym = '2-31200-00097'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31200-00067
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31200-00067', 2024, '95.05'
FROM facilities WHERE admin_sym = '3-31200-00067'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31200-00093
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31200-00093', 2024, '66.8'
FROM facilities WHERE admin_sym = '2-31200-00093'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31200-00029
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31200-00029', 2024, '96.75'
FROM facilities WHERE admin_sym = '3-31200-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31200-00109
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31200-00109', 2024, '54.99'
FROM facilities WHERE admin_sym = '2-31200-00109'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31200-00055
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31200-00055', 2024, '98.8'
FROM facilities WHERE admin_sym = '3-31200-00055'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31200-00123
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31200-00123', 2024, '67.36'
FROM facilities WHERE admin_sym = '2-31200-00123'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.36',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31200-00057
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31200-00057', 2024, '89.1'
FROM facilities WHERE admin_sym = '3-31200-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31200-00087
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31200-00087', 2024, '76.3'
FROM facilities WHERE admin_sym = '3-31200-00087'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31200-00065
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31200-00065', 2024, '91.55'
FROM facilities WHERE admin_sym = '3-31200-00065'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31200-00117
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31200-00117', 2024, '81.96'
FROM facilities WHERE admin_sym = '2-31200-00117'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31200-00109
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31200-00109', 2024, '59.74'
FROM facilities WHERE admin_sym = '2-31200-00109'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31200-00057
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31200-00057', 2024, '95.1'
FROM facilities WHERE admin_sym = '3-31200-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31200-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31200-00125', 2024, '90.1'
FROM facilities WHERE admin_sym = '2-31200-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31200-00015
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31200-00015', 2024, '92.85'
FROM facilities WHERE admin_sym = '2-31200-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31200-00101
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31200-00101', 2024, '84.8'
FROM facilities WHERE admin_sym = '2-31200-00101'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31200-00105
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31200-00105', 2024, '82.3'
FROM facilities WHERE admin_sym = '2-31200-00105'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31200-00121
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31200-00121', 2024, '87.85'
FROM facilities WHERE admin_sym = '2-31200-00121'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31200-00115
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31200-00115', 2024, '90.55'
FROM facilities WHERE admin_sym = '2-31200-00115'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31200-00099
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31200-00099', 2024, '92.35'
FROM facilities WHERE admin_sym = '2-31200-00099'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31200-00031
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31200-00031', 2024, '70.83'
FROM facilities WHERE admin_sym = '3-31200-00031'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31170-00063
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31170-00063', 2024, '85.05'
FROM facilities WHERE admin_sym = '3-31170-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31170-00043
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31170-00043', 2024, '91.6'
FROM facilities WHERE admin_sym = '3-31170-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31170-00067
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31170-00067', 2024, '91.8'
FROM facilities WHERE admin_sym = '2-31170-00067'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31170-00057
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31170-00057', 2024, '76.55'
FROM facilities WHERE admin_sym = '3-31170-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31170-00065
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31170-00065', 2024, '80.35'
FROM facilities WHERE admin_sym = '3-31170-00065'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31170-00047
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31170-00047', 2024, '85.05'
FROM facilities WHERE admin_sym = '3-31170-00047'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31170-00061
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31170-00061', 2024, '80.8'
FROM facilities WHERE admin_sym = '3-31170-00061'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31170-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31170-00023', 2024, '82.1'
FROM facilities WHERE admin_sym = '3-31170-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31170-00043
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31170-00043', 2024, '97.35'
FROM facilities WHERE admin_sym = '3-31170-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31170-00047
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31170-00047', 2024, '90.05'
FROM facilities WHERE admin_sym = '3-31170-00047'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31170-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31170-00023', 2024, '79.1'
FROM facilities WHERE admin_sym = '3-31170-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31170-00067
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31170-00067', 2024, '84.55'
FROM facilities WHERE admin_sym = '2-31170-00067'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31170-00069
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31170-00069', 2024, '79.6'
FROM facilities WHERE admin_sym = '2-31170-00069'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31710-00069
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31710-00069', 2024, '94.55'
FROM facilities WHERE admin_sym = '3-31710-00069'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31710-00223
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31710-00223', 2024, '70.49'
FROM facilities WHERE admin_sym = '2-31710-00223'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31710-00207
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31710-00207', 2024, '79.1'
FROM facilities WHERE admin_sym = '2-31710-00207'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31710-00219
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31710-00219', 2024, '87.38'
FROM facilities WHERE admin_sym = '2-31710-00219'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31710-00225
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31710-00225', 2024, '90.38'
FROM facilities WHERE admin_sym = '2-31710-00225'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31710-00159
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31710-00159', 2024, '82.05'
FROM facilities WHERE admin_sym = '3-31710-00159'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31710-00163
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31710-00163', 2024, '78.6'
FROM facilities WHERE admin_sym = '2-31710-00163'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31710-00137
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31710-00137', 2024, '96.55'
FROM facilities WHERE admin_sym = '3-31710-00137'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31710-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31710-00001', 2024, '94.85'
FROM facilities WHERE admin_sym = '2-31710-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31710-00229
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31710-00229', 2024, '65.77'
FROM facilities WHERE admin_sym = '2-31710-00229'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31710-00141
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31710-00141', 2024, '87.3'
FROM facilities WHERE admin_sym = '3-31710-00141'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31710-00151
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31710-00151', 2024, '94.1'
FROM facilities WHERE admin_sym = '3-31710-00151'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31710-00181
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31710-00181', 2024, '61.66'
FROM facilities WHERE admin_sym = '3-31710-00181'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.66',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31710-00205
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31710-00205', 2024, '64.08'
FROM facilities WHERE admin_sym = '2-31710-00205'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31710-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31710-00005', 2024, '86.35'
FROM facilities WHERE admin_sym = '2-31710-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31710-00215
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31710-00215', 2024, '85.3'
FROM facilities WHERE admin_sym = '2-31710-00215'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31710-00091
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31710-00091', 2024, '73.1'
FROM facilities WHERE admin_sym = '3-31710-00091'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31710-00179
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31710-00179', 2024, '76.1'
FROM facilities WHERE admin_sym = '2-31710-00179'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31710-00135
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31710-00135', 2024, '82.3'
FROM facilities WHERE admin_sym = '3-31710-00135'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31710-00213
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31710-00213', 2024, '60.3'
FROM facilities WHERE admin_sym = '2-31710-00213'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31710-00163
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31710-00163', 2024, '75.8'
FROM facilities WHERE admin_sym = '2-31710-00163'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31710-00205
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31710-00205', 2024, '83.72'
FROM facilities WHERE admin_sym = '2-31710-00205'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31710-00215
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31710-00215', 2024, '75.8'
FROM facilities WHERE admin_sym = '2-31710-00215'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31710-00157
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31710-00157', 2024, '84.85'
FROM facilities WHERE admin_sym = '3-31710-00157'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31710-00161
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31710-00161', 2024, '88.5'
FROM facilities WHERE admin_sym = '3-31710-00161'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31710-00197
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31710-00197', 2024, '64.35'
FROM facilities WHERE admin_sym = '2-31710-00197'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31710-00171
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31710-00171', 2024, '76.05'
FROM facilities WHERE admin_sym = '2-31710-00171'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31710-00195
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31710-00195', 2024, '79'
FROM facilities WHERE admin_sym = '2-31710-00195'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31710-00165
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31710-00165', 2024, '85.8'
FROM facilities WHERE admin_sym = '2-31710-00165'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31710-00193
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31710-00193', 2024, '89.3'
FROM facilities WHERE admin_sym = '2-31710-00193'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31710-00201
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31710-00201', 2024, '90.35'
FROM facilities WHERE admin_sym = '2-31710-00201'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31710-00179
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31710-00179', 2024, '81.85'
FROM facilities WHERE admin_sym = '2-31710-00179'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31710-00133
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31710-00133', 2024, '86.6'
FROM facilities WHERE admin_sym = '3-31710-00133'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31710-00123
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31710-00123', 2024, '86.5'
FROM facilities WHERE admin_sym = '3-31710-00123'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31140-00225
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31140-00225', 2024, '84.04'
FROM facilities WHERE admin_sym = '2-31140-00225'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31140-00179
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31140-00179', 2024, '90.3'
FROM facilities WHERE admin_sym = '3-31140-00179'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31140-00149
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31140-00149', 2024, '75.55'
FROM facilities WHERE admin_sym = '3-31140-00149'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31140-00223
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31140-00223', 2024, '86.1'
FROM facilities WHERE admin_sym = '2-31140-00223'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31140-00199
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31140-00199', 2024, '93.1'
FROM facilities WHERE admin_sym = '3-31140-00199'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31140-00211
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31140-00211', 2024, '61.21'
FROM facilities WHERE admin_sym = '2-31140-00211'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31140-00091
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31140-00091', 2024, '82.55'
FROM facilities WHERE admin_sym = '3-31140-00091'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31140-00229
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31140-00229', 2024, '44.91'
FROM facilities WHERE admin_sym = '2-31140-00229'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '44.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31140-00189
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31140-00189', 2024, '83.55'
FROM facilities WHERE admin_sym = '3-31140-00189'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31140-00095
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31140-00095', 2024, '89.85'
FROM facilities WHERE admin_sym = '3-31140-00095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31140-00191
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31140-00191', 2024, '78.55'
FROM facilities WHERE admin_sym = '3-31140-00191'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31140-00175
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31140-00175', 2024, '88.35'
FROM facilities WHERE admin_sym = '3-31140-00175'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31140-00195
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31140-00195', 2024, '85.3'
FROM facilities WHERE admin_sym = '3-31140-00195'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-31140-00235
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-31140-00235', 2024, '78.26'
FROM facilities WHERE admin_sym = '2-31140-00235'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.26',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31140-00043
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31140-00043', 2024, '71.8'
FROM facilities WHERE admin_sym = '3-31140-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31140-00071
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31140-00071', 2024, '81.35'
FROM facilities WHERE admin_sym = '3-31140-00071'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31140-00151
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31140-00151', 2024, '93.6'
FROM facilities WHERE admin_sym = '3-31140-00151'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-31140-00129
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-31140-00129', 2024, '90.55'
FROM facilities WHERE admin_sym = '3-31140-00129'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.55',
  last_updated = CURRENT_TIMESTAMP;

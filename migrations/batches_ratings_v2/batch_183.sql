-- Batch 183 of 226
-- Processing 100 facilities

-- admin_sym: 1-11620-00304
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11620-00304', 2024, '80.44'
FROM facilities WHERE admin_sym = '1-11620-00304'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11620-00337
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11620-00337', 2024, '62.62'
FROM facilities WHERE admin_sym = '1-11620-00337'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.62',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11620-00099
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11620-00099', 2024, '56.7'
FROM facilities WHERE admin_sym = '1-11620-00099'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11620-00253
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11620-00253', 2024, '66.89'
FROM facilities WHERE admin_sym = '1-11620-00253'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11620-00113
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11620-00113', 2024, '79.85'
FROM facilities WHERE admin_sym = '1-11620-00113'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11620-00246
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11620-00246', 2024, '82.53'
FROM facilities WHERE admin_sym = '1-11620-00246'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.53',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11620-00189
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11620-00189', 2024, '78.05'
FROM facilities WHERE admin_sym = '1-11620-00189'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11620-00223
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11620-00223', 2024, '64.21'
FROM facilities WHERE admin_sym = '1-11620-00223'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11620-00114
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11620-00114', 2024, '80.78'
FROM facilities WHERE admin_sym = '1-11620-00114'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.78',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11620-00268
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11620-00268', 2024, '70.88'
FROM facilities WHERE admin_sym = '1-11620-00268'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11620-00269
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11620-00269', 2024, '85.34'
FROM facilities WHERE admin_sym = '1-11620-00269'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.34',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11620-00349
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11620-00349', 2024, '57.04'
FROM facilities WHERE admin_sym = '1-11620-00349'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11620-00350
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11620-00350', 2024, '65.7'
FROM facilities WHERE admin_sym = '1-11620-00350'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11620-00247
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11620-00247', 2024, '82.29'
FROM facilities WHERE admin_sym = '1-11620-00247'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11215-00142
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11215-00142', 2024, '91.85'
FROM facilities WHERE admin_sym = '1-11215-00142'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11215-00268
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11215-00268', 2024, '77.6'
FROM facilities WHERE admin_sym = '1-11215-00268'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11215-00269
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11215-00269', 2024, '73.1'
FROM facilities WHERE admin_sym = '1-11215-00269'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11215-00101
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11215-00101', 2024, '73.1'
FROM facilities WHERE admin_sym = '1-11215-00101'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11215-00118
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11215-00118', 2024, '79.7'
FROM facilities WHERE admin_sym = '1-11215-00118'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11215-00148
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11215-00148', 2024, '72.56'
FROM facilities WHERE admin_sym = '1-11215-00148'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.56',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11215-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11215-00005', 2024, '85.19'
FROM facilities WHERE admin_sym = '1-11215-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.19',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11215-00161
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11215-00161', 2024, '67.32'
FROM facilities WHERE admin_sym = '1-11215-00161'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11215-00095
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11215-00095', 2024, '83.04'
FROM facilities WHERE admin_sym = '1-11215-00095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11215-00252
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11215-00252', 2024, '71.71'
FROM facilities WHERE admin_sym = '1-11215-00252'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11215-00254
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11215-00254', 2024, '85.21'
FROM facilities WHERE admin_sym = '1-11215-00254'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11215-00093
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11215-00093', 2024, '58.09'
FROM facilities WHERE admin_sym = '1-11215-00093'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.09',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11215-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11215-00009', 2024, '63.11'
FROM facilities WHERE admin_sym = '1-11215-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.11',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11215-00196
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11215-00196', 2024, '59.97'
FROM facilities WHERE admin_sym = '1-11215-00196'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11215-00271
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11215-00271', 2024, '66.49'
FROM facilities WHERE admin_sym = '1-11215-00271'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11215-00260
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11215-00260', 2024, '67.53'
FROM facilities WHERE admin_sym = '1-11215-00260'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.53',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11215-00112
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11215-00112', 2024, '83.3'
FROM facilities WHERE admin_sym = '1-11215-00112'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11530-00210
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11530-00210', 2024, '89.1'
FROM facilities WHERE admin_sym = '1-11530-00210'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11530-00215
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11530-00215', 2024, '89.8'
FROM facilities WHERE admin_sym = '1-11530-00215'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11530-00136
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11530-00136', 2024, '89.1'
FROM facilities WHERE admin_sym = '1-11530-00136'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11530-00309
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11530-00309', 2024, '69.6'
FROM facilities WHERE admin_sym = '1-11530-00309'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11530-00234
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11530-00234', 2024, '84.6'
FROM facilities WHERE admin_sym = '1-11530-00234'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11530-00208
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11530-00208', 2024, '93.25'
FROM facilities WHERE admin_sym = '1-11530-00208'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11530-00246
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11530-00246', 2024, '73.67'
FROM facilities WHERE admin_sym = '1-11530-00246'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11530-00267
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11530-00267', 2024, '83.43'
FROM facilities WHERE admin_sym = '1-11530-00267'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11530-00320
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11530-00320', 2024, '80.74'
FROM facilities WHERE admin_sym = '1-11530-00320'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11530-00321
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11530-00321', 2024, '81.41'
FROM facilities WHERE admin_sym = '1-11530-00321'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11530-00103
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11530-00103', 2024, '84.24'
FROM facilities WHERE admin_sym = '1-11530-00103'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11530-00178
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11530-00178', 2024, '81.42'
FROM facilities WHERE admin_sym = '1-11530-00178'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11530-00336
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11530-00336', 2024, '69.79'
FROM facilities WHERE admin_sym = '1-11530-00336'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11545-00157
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11545-00157', 2024, '81.85'
FROM facilities WHERE admin_sym = '1-11545-00157'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11545-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11545-00008', 2024, '65.75'
FROM facilities WHERE admin_sym = '1-11545-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11545-00194
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11545-00194', 2024, '89.85'
FROM facilities WHERE admin_sym = '1-11545-00194'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11545-00096
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11545-00096', 2024, '72.48'
FROM facilities WHERE admin_sym = '1-11545-00096'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11545-00209
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11545-00209', 2024, '84.87'
FROM facilities WHERE admin_sym = '1-11545-00209'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.87',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11545-00170
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11545-00170', 2024, '83.3'
FROM facilities WHERE admin_sym = '1-11545-00170'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11545-00029
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11545-00029', 2024, '86.1'
FROM facilities WHERE admin_sym = '1-11545-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11545-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11545-00002', 2024, '86'
FROM facilities WHERE admin_sym = '1-11545-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11545-00200
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11545-00200', 2024, '86.46'
FROM facilities WHERE admin_sym = '1-11545-00200'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11545-00101
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11545-00101', 2024, '64.62'
FROM facilities WHERE admin_sym = '1-11545-00101'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.62',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11545-00142
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11545-00142', 2024, '62.55'
FROM facilities WHERE admin_sym = '1-11545-00142'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11545-00205
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11545-00205', 2024, '61.01'
FROM facilities WHERE admin_sym = '1-11545-00205'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.01',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11545-00206
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11545-00206', 2024, '59.81'
FROM facilities WHERE admin_sym = '1-11545-00206'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11545-00164
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11545-00164', 2024, '89.84'
FROM facilities WHERE admin_sym = '1-11545-00164'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.84',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11545-00216
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11545-00216', 2024, '93.3'
FROM facilities WHERE admin_sym = '1-11545-00216'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11545-00217
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11545-00217', 2024, '95.09'
FROM facilities WHERE admin_sym = '1-11545-00217'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.09',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11545-00184
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11545-00184', 2024, '83.4'
FROM facilities WHERE admin_sym = '1-11545-00184'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11545-00213
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11545-00213', 2024, '88.74'
FROM facilities WHERE admin_sym = '1-11545-00213'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11545-00190
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11545-00190', 2024, '70.05'
FROM facilities WHERE admin_sym = '1-11545-00190'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11545-00097
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11545-00097', 2024, '95.15'
FROM facilities WHERE admin_sym = '1-11545-00097'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.15',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00268
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00268', 2024, '77.35'
FROM facilities WHERE admin_sym = '1-11350-00268'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00188
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00188', 2024, '81.85'
FROM facilities WHERE admin_sym = '1-11350-00188'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00175
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00175', 2024, '79.35'
FROM facilities WHERE admin_sym = '1-11350-00175'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00400
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00400', 2024, '81.1'
FROM facilities WHERE admin_sym = '1-11350-00400'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00223
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00223', 2024, '59.05'
FROM facilities WHERE admin_sym = '1-11350-00223'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00273
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00273', 2024, '83.1'
FROM facilities WHERE admin_sym = '1-11350-00273'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00011', 2024, '78.85'
FROM facilities WHERE admin_sym = '1-11350-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00020
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00020', 2024, '65.05'
FROM facilities WHERE admin_sym = '1-11350-00020'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00016
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00016', 2024, '94.6'
FROM facilities WHERE admin_sym = '1-11350-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00425
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00425', 2024, '86.13'
FROM facilities WHERE admin_sym = '1-11350-00425'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00355
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00355', 2024, '87.4'
FROM facilities WHERE admin_sym = '1-11350-00355'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00260
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00260', 2024, '72.71'
FROM facilities WHERE admin_sym = '1-11350-00260'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00261
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00261', 2024, '73.41'
FROM facilities WHERE admin_sym = '1-11350-00261'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00160
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00160', 2024, '69.59'
FROM facilities WHERE admin_sym = '1-11350-00160'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.59',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00292
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00292', 2024, '57.37'
FROM facilities WHERE admin_sym = '1-11350-00292'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.37',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00460
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00460', 2024, '60.84'
FROM facilities WHERE admin_sym = '1-11350-00460'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.84',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00465
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00465', 2024, '76.13'
FROM facilities WHERE admin_sym = '1-11350-00465'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00372
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00372', 2024, '90.68'
FROM facilities WHERE admin_sym = '1-11350-00372'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00407
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00407', 2024, '79.71'
FROM facilities WHERE admin_sym = '1-11350-00407'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00487
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00487', 2024, '70.61'
FROM facilities WHERE admin_sym = '1-11350-00487'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00441
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00441', 2024, '72.74'
FROM facilities WHERE admin_sym = '1-11350-00441'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00442
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00442', 2024, '65.9'
FROM facilities WHERE admin_sym = '1-11350-00442'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.9',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00327
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00327', 2024, '42.46'
FROM facilities WHERE admin_sym = '1-11350-00327'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '42.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11350-00333
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11350-00333', 2024, '28.54'
FROM facilities WHERE admin_sym = '1-11350-00333'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '28.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11320-00337
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11320-00337', 2024, '74.85'
FROM facilities WHERE admin_sym = '1-11320-00337'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11320-00257
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11320-00257', 2024, '88.31'
FROM facilities WHERE admin_sym = '1-11320-00257'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11320-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11320-00003', 2024, '86.1'
FROM facilities WHERE admin_sym = '1-11320-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11320-00281
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11320-00281', 2024, '84.85'
FROM facilities WHERE admin_sym = '1-11320-00281'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11320-00407
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11320-00407', 2024, '77.35'
FROM facilities WHERE admin_sym = '1-11320-00407'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11320-00451
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11320-00451', 2024, '76.75'
FROM facilities WHERE admin_sym = '1-11320-00451'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11320-00339
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11320-00339', 2024, '82.1'
FROM facilities WHERE admin_sym = '1-11320-00339'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11320-00406
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11320-00406', 2024, '83.85'
FROM facilities WHERE admin_sym = '1-11320-00406'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11320-00465
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11320-00465', 2024, '84.12'
FROM facilities WHERE admin_sym = '1-11320-00465'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11320-00402
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11320-00402', 2024, '85.18'
FROM facilities WHERE admin_sym = '1-11320-00402'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11320-00403
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11320-00403', 2024, '79.93'
FROM facilities WHERE admin_sym = '1-11320-00403'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11320-00304
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11320-00304', 2024, '76.77'
FROM facilities WHERE admin_sym = '1-11320-00304'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.77',
  last_updated = CURRENT_TIMESTAMP;

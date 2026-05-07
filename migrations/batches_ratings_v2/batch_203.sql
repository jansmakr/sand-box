-- Batch 203 of 226
-- Processing 100 facilities

-- admin_sym: 1-41630-00343
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00343', 2024, '80.98'
FROM facilities WHERE admin_sym = '1-41630-00343'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00274
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00274', 2024, '85.18'
FROM facilities WHERE admin_sym = '1-41630-00274'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00122
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00122', 2024, '77.2'
FROM facilities WHERE admin_sym = '1-41630-00122'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.2',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00318
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00318', 2024, '75.18'
FROM facilities WHERE admin_sym = '1-41630-00318'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00212
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00212', 2024, '41.21'
FROM facilities WHERE admin_sym = '1-41630-00212'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '41.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00214
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00214', 2024, '76.48'
FROM facilities WHERE admin_sym = '1-41630-00214'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00077
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00077', 2024, '82.47'
FROM facilities WHERE admin_sym = '1-41630-00077'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00285
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00285', 2024, '82.79'
FROM facilities WHERE admin_sym = '1-41630-00285'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00227
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00227', 2024, '66.82'
FROM facilities WHERE admin_sym = '1-41630-00227'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00355
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00355', 2024, '55.5'
FROM facilities WHERE admin_sym = '1-41630-00355'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00235
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00235', 2024, '41.81'
FROM facilities WHERE admin_sym = '1-41630-00235'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '41.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00280
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00280', 2024, '80.85'
FROM facilities WHERE admin_sym = '1-41630-00280'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00213
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00213', 2024, '95.08'
FROM facilities WHERE admin_sym = '1-41630-00213'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00225
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00225', 2024, '91.13'
FROM facilities WHERE admin_sym = '1-41630-00225'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00138
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00138', 2024, '86.35'
FROM facilities WHERE admin_sym = '1-41830-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00095
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00095', 2024, '75.1'
FROM facilities WHERE admin_sym = '1-41830-00095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00008', 2024, '75.97'
FROM facilities WHERE admin_sym = '1-41830-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00003', 2024, '63.6'
FROM facilities WHERE admin_sym = '1-41830-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00094
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00094', 2024, '74.85'
FROM facilities WHERE admin_sym = '1-41830-00094'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00122
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00122', 2024, '69.75'
FROM facilities WHERE admin_sym = '1-41830-00122'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00158
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00158', 2024, '83.1'
FROM facilities WHERE admin_sym = '1-41830-00158'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00129
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00129', 2024, '69.69'
FROM facilities WHERE admin_sym = '1-41830-00129'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00125', 2024, '95.1'
FROM facilities WHERE admin_sym = '1-41830-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00124', 2024, '73.17'
FROM facilities WHERE admin_sym = '1-41830-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00018', 2024, '83.53'
FROM facilities WHERE admin_sym = '1-41830-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.53',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00009', 2024, '89.35'
FROM facilities WHERE admin_sym = '1-41830-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00024
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00024', 2024, '86.67'
FROM facilities WHERE admin_sym = '1-41830-00024'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00006', 2024, '79.89'
FROM facilities WHERE admin_sym = '1-41830-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00128
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00128', 2024, '77.89'
FROM facilities WHERE admin_sym = '1-41830-00128'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00101
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00101', 2024, '68.39'
FROM facilities WHERE admin_sym = '1-41830-00101'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.39',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00136
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00136', 2024, '83.02'
FROM facilities WHERE admin_sym = '1-41830-00136'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00119
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00119', 2024, '80.62'
FROM facilities WHERE admin_sym = '1-41830-00119'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.62',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00075
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00075', 2024, '67.43'
FROM facilities WHERE admin_sym = '1-41830-00075'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00123
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00123', 2024, '69.77'
FROM facilities WHERE admin_sym = '1-41830-00123'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00021
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00021', 2024, '79.71'
FROM facilities WHERE admin_sym = '1-41830-00021'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00165
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00165', 2024, '77.42'
FROM facilities WHERE admin_sym = '1-41830-00165'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00146
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00146', 2024, '74.57'
FROM facilities WHERE admin_sym = '1-41830-00146'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.57',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00104
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00104', 2024, '82.96'
FROM facilities WHERE admin_sym = '1-41830-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00102
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00102', 2024, '73.39'
FROM facilities WHERE admin_sym = '1-41830-00102'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.39',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00103
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00103', 2024, '81.35'
FROM facilities WHERE admin_sym = '1-41830-00103'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41830-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41830-00088', 2024, '56.03'
FROM facilities WHERE admin_sym = '1-41830-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.03',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41670-00135
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41670-00135', 2024, '54.44'
FROM facilities WHERE admin_sym = '1-41670-00135'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41730-00077
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41730-00077', 2024, '89.35'
FROM facilities WHERE admin_sym = '1-41730-00077'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41730-00027
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41730-00027', 2024, '89.85'
FROM facilities WHERE admin_sym = '1-41730-00027'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41730-00094
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41730-00094', 2024, '89.6'
FROM facilities WHERE admin_sym = '1-41730-00094'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41730-00067
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41730-00067', 2024, '96.3'
FROM facilities WHERE admin_sym = '1-41730-00067'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41730-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41730-00009', 2024, '83.5'
FROM facilities WHERE admin_sym = '1-41730-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41730-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41730-00022', 2024, '73.63'
FROM facilities WHERE admin_sym = '1-41730-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41730-00107
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41730-00107', 2024, '78.37'
FROM facilities WHERE admin_sym = '1-41730-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.37',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41730-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41730-00008', 2024, '64.83'
FROM facilities WHERE admin_sym = '1-41730-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41670-00115
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41670-00115', 2024, '65.02'
FROM facilities WHERE admin_sym = '1-41670-00115'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41730-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41730-00004', 2024, '85.18'
FROM facilities WHERE admin_sym = '1-41730-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41670-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41670-00124', 2024, '71.42'
FROM facilities WHERE admin_sym = '1-41670-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41730-00090
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41730-00090', 2024, '69.62'
FROM facilities WHERE admin_sym = '1-41730-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.62',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41730-00070
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41730-00070', 2024, '89.12'
FROM facilities WHERE admin_sym = '1-41730-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41670-00139
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41670-00139', 2024, '83.94'
FROM facilities WHERE admin_sym = '1-41670-00139'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41730-00072
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41730-00072', 2024, '96.8'
FROM facilities WHERE admin_sym = '1-41730-00072'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41670-00121
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41670-00121', 2024, '76.79'
FROM facilities WHERE admin_sym = '1-41670-00121'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41670-00126
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41670-00126', 2024, '88.03'
FROM facilities WHERE admin_sym = '1-41670-00126'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.03',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41670-00149
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41670-00149', 2024, '48.82'
FROM facilities WHERE admin_sym = '1-41670-00149'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '48.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41730-00102
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41730-00102', 2024, '82.71'
FROM facilities WHERE admin_sym = '1-41730-00102'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41730-00028
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41730-00028', 2024, '75.19'
FROM facilities WHERE admin_sym = '1-41730-00028'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.19',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41800-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41800-00009', 2024, '76.1'
FROM facilities WHERE admin_sym = '1-41800-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41800-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41800-00004', 2024, '89.35'
FROM facilities WHERE admin_sym = '1-41800-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41800-00013
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41800-00013', 2024, '50.71'
FROM facilities WHERE admin_sym = '1-41800-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41800-00087
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41800-00087', 2024, '55.68'
FROM facilities WHERE admin_sym = '1-41800-00087'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41800-00072
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41800-00072', 2024, '80.68'
FROM facilities WHERE admin_sym = '1-41800-00072'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41800-00071
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41800-00071', 2024, '57.55'
FROM facilities WHERE admin_sym = '1-41800-00071'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41800-00015
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41800-00015', 2024, '51.68'
FROM facilities WHERE admin_sym = '1-41800-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '51.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41800-00103
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41800-00103', 2024, '55.55'
FROM facilities WHERE admin_sym = '1-41800-00103'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41800-00083
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41800-00083', 2024, '69.44'
FROM facilities WHERE admin_sym = '1-41800-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41370-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41370-00044', 2024, '94.1'
FROM facilities WHERE admin_sym = '1-41370-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41370-00067
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41370-00067', 2024, '79.1'
FROM facilities WHERE admin_sym = '1-41370-00067'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41370-00082
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41370-00082', 2024, '91.35'
FROM facilities WHERE admin_sym = '1-41370-00082'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41370-00065
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41370-00065', 2024, '76.85'
FROM facilities WHERE admin_sym = '1-41370-00065'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41370-00090
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41370-00090', 2024, '94.1'
FROM facilities WHERE admin_sym = '1-41370-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41370-00085
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41370-00085', 2024, '84.05'
FROM facilities WHERE admin_sym = '1-41370-00085'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41370-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41370-00002', 2024, '97.85'
FROM facilities WHERE admin_sym = '1-41370-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41370-00060
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41370-00060', 2024, '95.35'
FROM facilities WHERE admin_sym = '1-41370-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41370-00107
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41370-00107', 2024, '92.81'
FROM facilities WHERE admin_sym = '1-41370-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41370-00103
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41370-00103', 2024, '74.25'
FROM facilities WHERE admin_sym = '1-41370-00103'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41460-00290
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00290', 2024, '92.39'
FROM facilities WHERE admin_sym = '1-41460-00290'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.39',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41460-00600
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00600', 2024, '86.6'
FROM facilities WHERE admin_sym = '1-41460-00600'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41460-00531
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00531', 2024, '82'
FROM facilities WHERE admin_sym = '1-41460-00531'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41460-00240
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00240', 2024, '88.6'
FROM facilities WHERE admin_sym = '1-41460-00240'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41460-00682
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00682', 2024, '80.35'
FROM facilities WHERE admin_sym = '1-41460-00682'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41460-00720
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00720', 2024, '78.85'
FROM facilities WHERE admin_sym = '1-41460-00720'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41460-00385
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00385', 2024, '84.8'
FROM facilities WHERE admin_sym = '1-41460-00385'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41460-00412
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00412', 2024, '80.35'
FROM facilities WHERE admin_sym = '1-41460-00412'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41460-00513
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00513', 2024, '87.1'
FROM facilities WHERE admin_sym = '1-41460-00513'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41460-00678
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00678', 2024, '90.35'
FROM facilities WHERE admin_sym = '1-41460-00678'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41460-00365
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00365', 2024, '43.75'
FROM facilities WHERE admin_sym = '1-41460-00365'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '43.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41460-00389
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00389', 2024, '89.1'
FROM facilities WHERE admin_sym = '1-41460-00389'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41460-00607
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00607', 2024, '95.05'
FROM facilities WHERE admin_sym = '1-41460-00607'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41460-00644
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00644', 2024, '76.53'
FROM facilities WHERE admin_sym = '1-41460-00644'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.53',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41460-00560
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00560', 2024, '77.18'
FROM facilities WHERE admin_sym = '1-41460-00560'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41460-00615
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00615', 2024, '83.42'
FROM facilities WHERE admin_sym = '1-41460-00615'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41460-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00012', 2024, '85.2'
FROM facilities WHERE admin_sym = '1-41460-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.2',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41460-00703
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00703', 2024, '68.52'
FROM facilities WHERE admin_sym = '1-41460-00703'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41460-00693
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41460-00693', 2024, '90.35'
FROM facilities WHERE admin_sym = '1-41460-00693'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

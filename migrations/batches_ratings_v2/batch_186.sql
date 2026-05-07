-- Batch 186 of 226
-- Processing 100 facilities

-- admin_sym: 1-11140-00043
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11140-00043', 2024, '62.92'
FROM facilities WHERE admin_sym = '1-11140-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.92',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00442
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00442', 2024, '59.05'
FROM facilities WHERE admin_sym = '1-11260-00442'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00322
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00322', 2024, '73.34'
FROM facilities WHERE admin_sym = '1-11260-00322'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.34',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00287
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00287', 2024, '79.1'
FROM facilities WHERE admin_sym = '1-11260-00287'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00271
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00271', 2024, '91.35'
FROM facilities WHERE admin_sym = '1-11260-00271'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00111
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00111', 2024, '86.85'
FROM facilities WHERE admin_sym = '1-11260-00111'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00011', 2024, '99.35'
FROM facilities WHERE admin_sym = '1-11260-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '99.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00162
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00162', 2024, '75.33'
FROM facilities WHERE admin_sym = '1-11260-00162'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00036
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00036', 2024, '72.9'
FROM facilities WHERE admin_sym = '1-11260-00036'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.9',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00253
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00253', 2024, '78.48'
FROM facilities WHERE admin_sym = '1-11260-00253'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00254
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00254', 2024, '77.64'
FROM facilities WHERE admin_sym = '1-11260-00254'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00291
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00291', 2024, '73.43'
FROM facilities WHERE admin_sym = '1-11260-00291'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00292
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00292', 2024, '66.64'
FROM facilities WHERE admin_sym = '1-11260-00292'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00361
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00361', 2024, '61.43'
FROM facilities WHERE admin_sym = '1-11260-00361'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00362
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00362', 2024, '61.65'
FROM facilities WHERE admin_sym = '1-11260-00362'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.65',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00359
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00359', 2024, '63.69'
FROM facilities WHERE admin_sym = '1-11260-00359'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00113
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00113', 2024, '70.61'
FROM facilities WHERE admin_sym = '1-11260-00113'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00230
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00230', 2024, '84.5'
FROM facilities WHERE admin_sym = '1-11260-00230'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00231
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00231', 2024, '79.72'
FROM facilities WHERE admin_sym = '1-11260-00231'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00232
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00232', 2024, '84.27'
FROM facilities WHERE admin_sym = '1-11260-00232'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00163
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00163', 2024, '78.06'
FROM facilities WHERE admin_sym = '1-11260-00163'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00164
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00164', 2024, '73.91'
FROM facilities WHERE admin_sym = '1-11260-00164'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00333
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00333', 2024, '72.75'
FROM facilities WHERE admin_sym = '1-11260-00333'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00218
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00218', 2024, '80.69'
FROM facilities WHERE admin_sym = '1-11260-00218'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00315
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00315', 2024, '85.99'
FROM facilities WHERE admin_sym = '1-11260-00315'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00316
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00316', 2024, '76.56'
FROM facilities WHERE admin_sym = '1-11260-00316'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.56',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00326
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00326', 2024, '80.27'
FROM facilities WHERE admin_sym = '1-11260-00326'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00074
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00074', 2024, '77.61'
FROM facilities WHERE admin_sym = '1-11260-00074'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00406
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00406', 2024, '77.03'
FROM facilities WHERE admin_sym = '1-11260-00406'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.03',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00336
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00336', 2024, '72.83'
FROM facilities WHERE admin_sym = '1-11260-00336'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00438
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00438', 2024, '56.34'
FROM facilities WHERE admin_sym = '1-11260-00438'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.34',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00119
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00119', 2024, '63.05'
FROM facilities WHERE admin_sym = '1-11260-00119'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00191
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00191', 2024, '68.85'
FROM facilities WHERE admin_sym = '1-11260-00191'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00234
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00234', 2024, '59.09'
FROM facilities WHERE admin_sym = '1-11260-00234'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.09',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00300
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00300', 2024, '81.54'
FROM facilities WHERE admin_sym = '1-11260-00300'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00284
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00284', 2024, '65.5'
FROM facilities WHERE admin_sym = '1-11260-00284'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00118
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00118', 2024, '68.56'
FROM facilities WHERE admin_sym = '1-11260-00118'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.56',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00249
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00249', 2024, '90.7'
FROM facilities WHERE admin_sym = '1-11260-00249'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11260-00342
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11260-00342', 2024, '71.89'
FROM facilities WHERE admin_sym = '1-11260-00342'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26440-00021
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26440-00021', 2024, '68.25'
FROM facilities WHERE admin_sym = '1-26440-00021'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26440-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26440-00009', 2024, '73.6'
FROM facilities WHERE admin_sym = '1-26440-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26440-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26440-00040', 2024, '64.06'
FROM facilities WHERE admin_sym = '1-26440-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26440-00019
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26440-00019', 2024, '93.23'
FROM facilities WHERE admin_sym = '1-26440-00019'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.23',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26410-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26410-00003', 2024, '88.35'
FROM facilities WHERE admin_sym = '1-26410-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26410-00024
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26410-00024', 2024, '91.35'
FROM facilities WHERE admin_sym = '1-26410-00024'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26410-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26410-00007', 2024, '87.85'
FROM facilities WHERE admin_sym = '1-26410-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26410-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26410-00006', 2024, '73.6'
FROM facilities WHERE admin_sym = '1-26410-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26410-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26410-00001', 2024, '87.1'
FROM facilities WHERE admin_sym = '1-26410-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26410-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26410-00004', 2024, '85.3'
FROM facilities WHERE admin_sym = '1-26410-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26410-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26410-00005', 2024, '95.62'
FROM facilities WHERE admin_sym = '1-26410-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.62',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26410-00037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26410-00037', 2024, '89.86'
FROM facilities WHERE admin_sym = '1-26410-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26710-00090
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26710-00090', 2024, '76.18'
FROM facilities WHERE admin_sym = '1-26710-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26710-00160
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26710-00160', 2024, '56.82'
FROM facilities WHERE admin_sym = '1-26710-00160'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26710-00086
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26710-00086', 2024, '86.35'
FROM facilities WHERE admin_sym = '1-26710-00086'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26710-00100
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26710-00100', 2024, '89'
FROM facilities WHERE admin_sym = '1-26710-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26710-00163
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26710-00163', 2024, '77.05'
FROM facilities WHERE admin_sym = '1-26710-00163'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26710-00173
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26710-00173', 2024, '78.35'
FROM facilities WHERE admin_sym = '1-26710-00173'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26710-00077
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26710-00077', 2024, '78.3'
FROM facilities WHERE admin_sym = '1-26710-00077'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26710-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26710-00003', 2024, '91.25'
FROM facilities WHERE admin_sym = '1-26710-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26710-00075
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26710-00075', 2024, '87.58'
FROM facilities WHERE admin_sym = '1-26710-00075'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26710-00037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26710-00037', 2024, '72'
FROM facilities WHERE admin_sym = '1-26710-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26710-00094
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26710-00094', 2024, '72.6'
FROM facilities WHERE admin_sym = '1-26710-00094'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26710-00117
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26710-00117', 2024, '70.63'
FROM facilities WHERE admin_sym = '1-26710-00117'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26710-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26710-00004', 2024, '96.55'
FROM facilities WHERE admin_sym = '1-26710-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26710-00062
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26710-00062', 2024, '83.81'
FROM facilities WHERE admin_sym = '1-26710-00062'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26710-00107
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26710-00107', 2024, '98.79'
FROM facilities WHERE admin_sym = '1-26710-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26710-00161
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26710-00161', 2024, '92.4'
FROM facilities WHERE admin_sym = '1-26710-00161'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26710-00138
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26710-00138', 2024, '80.96'
FROM facilities WHERE admin_sym = '1-26710-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26290-00108
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26290-00108', 2024, '79.75'
FROM facilities WHERE admin_sym = '1-26290-00108'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26290-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26290-00004', 2024, '88.81'
FROM facilities WHERE admin_sym = '1-26290-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26290-00061
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26290-00061', 2024, '88.75'
FROM facilities WHERE admin_sym = '1-26290-00061'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26290-00165
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26290-00165', 2024, '76.5'
FROM facilities WHERE admin_sym = '1-26290-00165'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26170-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26170-00001', 2024, '90.6'
FROM facilities WHERE admin_sym = '1-26170-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26170-00074
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26170-00074', 2024, '86.85'
FROM facilities WHERE admin_sym = '1-26170-00074'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26170-00090
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26170-00090', 2024, '62.42'
FROM facilities WHERE admin_sym = '1-26170-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26260-00167
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26260-00167', 2024, '86.55'
FROM facilities WHERE admin_sym = '1-26260-00167'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26260-00121
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26260-00121', 2024, '66.16'
FROM facilities WHERE admin_sym = '1-26260-00121'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26260-00084
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26260-00084', 2024, '96.35'
FROM facilities WHERE admin_sym = '1-26260-00084'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26260-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26260-00004', 2024, '98.35'
FROM facilities WHERE admin_sym = '1-26260-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26260-00247
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26260-00247', 2024, '80.84'
FROM facilities WHERE admin_sym = '1-26260-00247'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.84',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26260-00126
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26260-00126', 2024, '87.12'
FROM facilities WHERE admin_sym = '1-26260-00126'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26260-00106
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26260-00106', 2024, '97.26'
FROM facilities WHERE admin_sym = '1-26260-00106'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.26',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26230-00149
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26230-00149', 2024, '81.35'
FROM facilities WHERE admin_sym = '1-26230-00149'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26230-00294
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26230-00294', 2024, '63.28'
FROM facilities WHERE admin_sym = '1-26230-00294'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.28',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26230-00176
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26230-00176', 2024, '87.2'
FROM facilities WHERE admin_sym = '1-26230-00176'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.2',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26230-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26230-00001', 2024, '46.96'
FROM facilities WHERE admin_sym = '1-26230-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '46.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26230-00091
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26230-00091', 2024, '61.01'
FROM facilities WHERE admin_sym = '1-26230-00091'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.01',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26230-00357
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26230-00357', 2024, '85.18'
FROM facilities WHERE admin_sym = '1-26230-00357'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26230-00281
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26230-00281', 2024, '73.31'
FROM facilities WHERE admin_sym = '1-26230-00281'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26320-00210
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26320-00210', 2024, '83.19'
FROM facilities WHERE admin_sym = '1-26320-00210'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.19',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26320-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26320-00004', 2024, '84.1'
FROM facilities WHERE admin_sym = '1-26320-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26320-00098
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26320-00098', 2024, '90.85'
FROM facilities WHERE admin_sym = '1-26320-00098'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26320-00200
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26320-00200', 2024, '83.15'
FROM facilities WHERE admin_sym = '1-26320-00200'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.15',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26320-00188
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26320-00188', 2024, '79.19'
FROM facilities WHERE admin_sym = '1-26320-00188'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.19',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26320-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26320-00009', 2024, '99.5'
FROM facilities WHERE admin_sym = '1-26320-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '99.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26320-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26320-00018', 2024, '95.33'
FROM facilities WHERE admin_sym = '1-26320-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26320-00053
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26320-00053', 2024, '85.27'
FROM facilities WHERE admin_sym = '1-26320-00053'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26320-00049
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26320-00049', 2024, '97.07'
FROM facilities WHERE admin_sym = '1-26320-00049'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.07',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26320-00284
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26320-00284', 2024, '33.06'
FROM facilities WHERE admin_sym = '1-26320-00284'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '33.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26530-00092
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26530-00092', 2024, '78.5'
FROM facilities WHERE admin_sym = '1-26530-00092'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.5',
  last_updated = CURRENT_TIMESTAMP;

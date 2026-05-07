-- Batch 225 of 226
-- Processing 100 facilities

-- admin_sym: 1-48160-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48160-00011', 2024, '96.85'
FROM facilities WHERE admin_sym = '1-48160-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48160-00122
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48160-00122', 2024, '97.6'
FROM facilities WHERE admin_sym = '1-48160-00122'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48120-00189
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00189', 2024, '82.27'
FROM facilities WHERE admin_sym = '1-48120-00189'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48160-00071
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48160-00071', 2024, '82.01'
FROM facilities WHERE admin_sym = '1-48160-00071'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.01',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48160-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48160-00009', 2024, '82.38'
FROM facilities WHERE admin_sym = '1-48160-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48120-00450
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00450', 2024, '91.6'
FROM facilities WHERE admin_sym = '1-48120-00450'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48120-00258
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00258', 2024, '83.85'
FROM facilities WHERE admin_sym = '1-48120-00258'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48160-00137
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48160-00137', 2024, '79.48'
FROM facilities WHERE admin_sym = '1-48160-00137'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48160-00037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48160-00037', 2024, '82.8'
FROM facilities WHERE admin_sym = '1-48160-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48120-00495
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00495', 2024, '77.53'
FROM facilities WHERE admin_sym = '1-48120-00495'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.53',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48110-00037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48110-00037', 2024, '72.13'
FROM facilities WHERE admin_sym = '1-48110-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48120-00305
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00305', 2024, '75.19'
FROM facilities WHERE admin_sym = '1-48120-00305'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.19',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48110-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48110-00005', 2024, '78.6'
FROM facilities WHERE admin_sym = '1-48110-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48120-00197
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00197', 2024, '75.59'
FROM facilities WHERE admin_sym = '1-48120-00197'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.59',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48110-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48110-00006', 2024, '70.77'
FROM facilities WHERE admin_sym = '1-48110-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48110-00016
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48110-00016', 2024, '91.51'
FROM facilities WHERE admin_sym = '1-48110-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.51',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48110-00017
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48110-00017', 2024, '89.6'
FROM facilities WHERE admin_sym = '1-48110-00017'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48120-00356
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00356', 2024, '65.35'
FROM facilities WHERE admin_sym = '1-48120-00356'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48120-00583
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00583', 2024, '55.3'
FROM facilities WHERE admin_sym = '1-48120-00583'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48110-00133
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48110-00133', 2024, '66.35'
FROM facilities WHERE admin_sym = '1-48110-00133'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48120-00360
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00360', 2024, '87.68'
FROM facilities WHERE admin_sym = '1-48120-00360'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48110-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48110-00023', 2024, '81.18'
FROM facilities WHERE admin_sym = '1-48110-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48120-00244
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00244', 2024, '97.6'
FROM facilities WHERE admin_sym = '1-48120-00244'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48120-00402
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00402', 2024, '80.93'
FROM facilities WHERE admin_sym = '1-48120-00402'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48110-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48110-00007', 2024, '64.73'
FROM facilities WHERE admin_sym = '1-48110-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.73',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48120-00496
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00496', 2024, '61.79'
FROM facilities WHERE admin_sym = '1-48120-00496'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48120-00153
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00153', 2024, '74.26'
FROM facilities WHERE admin_sym = '1-48120-00153'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.26',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48110-00081
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48110-00081', 2024, '82.75'
FROM facilities WHERE admin_sym = '1-48110-00081'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48190-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48190-00005', 2024, '89.85'
FROM facilities WHERE admin_sym = '1-48190-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48120-00248
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00248', 2024, '94.6'
FROM facilities WHERE admin_sym = '1-48120-00248'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48120-00478
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00478', 2024, '95.6'
FROM facilities WHERE admin_sym = '1-48120-00478'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48190-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48190-00002', 2024, '96.85'
FROM facilities WHERE admin_sym = '1-48190-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48120-00292
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00292', 2024, '87.06'
FROM facilities WHERE admin_sym = '1-48120-00292'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48120-00409
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00409', 2024, '73.85'
FROM facilities WHERE admin_sym = '1-48120-00409'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48190-00061
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48190-00061', 2024, '67.85'
FROM facilities WHERE admin_sym = '1-48190-00061'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48120-00306
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00306', 2024, '72.23'
FROM facilities WHERE admin_sym = '1-48120-00306'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.23',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48190-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48190-00006', 2024, '74.67'
FROM facilities WHERE admin_sym = '1-48190-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48120-00180
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00180', 2024, '89.85'
FROM facilities WHERE admin_sym = '1-48120-00180'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48220-00059
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48220-00059', 2024, '76.18'
FROM facilities WHERE admin_sym = '1-48220-00059'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48220-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48220-00040', 2024, '84.35'
FROM facilities WHERE admin_sym = '1-48220-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48220-00038
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48220-00038', 2024, '68.1'
FROM facilities WHERE admin_sym = '1-48220-00038'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48220-00029
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48220-00029', 2024, '95.85'
FROM facilities WHERE admin_sym = '1-48220-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48220-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48220-00001', 2024, '98.8'
FROM facilities WHERE admin_sym = '1-48220-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48220-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48220-00023', 2024, '77.65'
FROM facilities WHERE admin_sym = '1-48220-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.65',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48220-00056
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48220-00056', 2024, '95.6'
FROM facilities WHERE admin_sym = '1-48220-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48850-00019
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48850-00019', 2024, '89.35'
FROM facilities WHERE admin_sym = '1-48850-00019'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48850-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48850-00001', 2024, '77.85'
FROM facilities WHERE admin_sym = '1-48850-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48850-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48850-00002', 2024, '90.1'
FROM facilities WHERE admin_sym = '1-48850-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48850-00038
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48850-00038', 2024, '98.3'
FROM facilities WHERE admin_sym = '1-48850-00038'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48850-00077
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48850-00077', 2024, '46.74'
FROM facilities WHERE admin_sym = '1-48850-00077'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '46.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48850-00052
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48850-00052', 2024, '57.9'
FROM facilities WHERE admin_sym = '1-48850-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.9',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48850-00069
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48850-00069', 2024, '86.75'
FROM facilities WHERE admin_sym = '1-48850-00069'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48850-00089
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48850-00089', 2024, '42.06'
FROM facilities WHERE admin_sym = '1-48850-00089'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '42.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48730-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48730-00003', 2024, '90.85'
FROM facilities WHERE admin_sym = '1-48730-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48730-00029
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48730-00029', 2024, '90.85'
FROM facilities WHERE admin_sym = '1-48730-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48730-00037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48730-00037', 2024, '62.37'
FROM facilities WHERE admin_sym = '1-48730-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.37',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48730-00054
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48730-00054', 2024, '67.85'
FROM facilities WHERE admin_sym = '1-48730-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48730-00072
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48730-00072', 2024, '74.73'
FROM facilities WHERE admin_sym = '1-48730-00072'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.73',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48730-00049
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48730-00049', 2024, '91.98'
FROM facilities WHERE admin_sym = '1-48730-00049'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48730-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48730-00009', 2024, '84.88'
FROM facilities WHERE admin_sym = '1-48730-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48730-00045
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48730-00045', 2024, '86.46'
FROM facilities WHERE admin_sym = '1-48730-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48730-00050
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48730-00050', 2024, '73.34'
FROM facilities WHERE admin_sym = '1-48730-00050'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.34',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48730-00059
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48730-00059', 2024, '77.39'
FROM facilities WHERE admin_sym = '1-48730-00059'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.39',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48730-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48730-00012', 2024, '72.92'
FROM facilities WHERE admin_sym = '1-48730-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.92',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48730-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48730-00007', 2024, '91.95'
FROM facilities WHERE admin_sym = '1-48730-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.95',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48870-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48870-00004', 2024, '65.05'
FROM facilities WHERE admin_sym = '1-48870-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48870-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48870-00003', 2024, '85.1'
FROM facilities WHERE admin_sym = '1-48870-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48870-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48870-00001', 2024, '80.35'
FROM facilities WHERE admin_sym = '1-48870-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48870-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48870-00005', 2024, '69'
FROM facilities WHERE admin_sym = '1-48870-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48870-00038
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48870-00038', 2024, '90.85'
FROM facilities WHERE admin_sym = '1-48870-00038'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48870-00034
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48870-00034', 2024, '93.6'
FROM facilities WHERE admin_sym = '1-48870-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48870-00035
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48870-00035', 2024, '94.85'
FROM facilities WHERE admin_sym = '1-48870-00035'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48870-00048
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48870-00048', 2024, '91.96'
FROM facilities WHERE admin_sym = '1-48870-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48890-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48890-00008', 2024, '79.6'
FROM facilities WHERE admin_sym = '1-48890-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48890-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48890-00009', 2024, '91.3'
FROM facilities WHERE admin_sym = '1-48890-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48890-00066
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48890-00066', 2024, '90.1'
FROM facilities WHERE admin_sym = '1-48890-00066'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48890-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48890-00010', 2024, '80.6'
FROM facilities WHERE admin_sym = '1-48890-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48890-00068
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48890-00068', 2024, '84.1'
FROM facilities WHERE admin_sym = '1-48890-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48890-00027
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48890-00027', 2024, '82.35'
FROM facilities WHERE admin_sym = '1-48890-00027'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-50130-00077
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-50130-00077', 2024, '97.6'
FROM facilities WHERE admin_sym = '1-50130-00077'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-50130-00069
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-50130-00069', 2024, '87.6'
FROM facilities WHERE admin_sym = '1-50130-00069'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-50130-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-50130-00007', 2024, '92.6'
FROM facilities WHERE admin_sym = '1-50130-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-50130-00100
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-50130-00100', 2024, '89.6'
FROM facilities WHERE admin_sym = '1-50130-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-50130-00076
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-50130-00076', 2024, '86.8'
FROM facilities WHERE admin_sym = '1-50130-00076'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-50130-00072
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-50130-00072', 2024, '72.1'
FROM facilities WHERE admin_sym = '1-50130-00072'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-50130-00108
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-50130-00108', 2024, '91.55'
FROM facilities WHERE admin_sym = '1-50130-00108'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-50130-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-50130-00002', 2024, '85.85'
FROM facilities WHERE admin_sym = '1-50130-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-50130-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-50130-00003', 2024, '74.8'
FROM facilities WHERE admin_sym = '1-50130-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-50130-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-50130-00004', 2024, '90.85'
FROM facilities WHERE admin_sym = '1-50130-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-50130-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-50130-00009', 2024, '87.35'
FROM facilities WHERE admin_sym = '1-50130-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-50130-00037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-50130-00037', 2024, '95.6'
FROM facilities WHERE admin_sym = '1-50130-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-50130-00079
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-50130-00079', 2024, '94.85'
FROM facilities WHERE admin_sym = '1-50130-00079'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-50130-00094
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-50130-00094', 2024, '76.63'
FROM facilities WHERE admin_sym = '1-50130-00094'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-50130-00115
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-50130-00115', 2024, '65.6'
FROM facilities WHERE admin_sym = '1-50130-00115'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-50130-00081
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-50130-00081', 2024, '59.72'
FROM facilities WHERE admin_sym = '1-50130-00081'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-50130-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-50130-00005', 2024, '94.72'
FROM facilities WHERE admin_sym = '1-50130-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-50130-00047
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-50130-00047', 2024, '94.44'
FROM facilities WHERE admin_sym = '1-50130-00047'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-50130-00113
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-50130-00113', 2024, '61.89'
FROM facilities WHERE admin_sym = '1-50130-00113'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-50130-00091
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-50130-00091', 2024, '93.03'
FROM facilities WHERE admin_sym = '1-50130-00091'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.03',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-50110-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-50110-00010', 2024, '96.55'
FROM facilities WHERE admin_sym = '1-50110-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.55',
  last_updated = CURRENT_TIMESTAMP;

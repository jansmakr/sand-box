-- Batch 129 of 226
-- Processing 100 facilities

-- admin_sym: 3-41280-01104
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01104', 2024, '69.6'
FROM facilities WHERE admin_sym = '3-41280-01104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00782
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00782', 2024, '60.1'
FROM facilities WHERE admin_sym = '3-41280-00782'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00326
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00326', 2024, '85.1'
FROM facilities WHERE admin_sym = '3-41280-00326'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01104
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01104', 2024, '75.35'
FROM facilities WHERE admin_sym = '3-41280-01104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00884
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00884', 2024, '88.85'
FROM facilities WHERE admin_sym = '3-41280-00884'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00924
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00924', 2024, '88.3'
FROM facilities WHERE admin_sym = '3-41280-00924'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-00932
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-00932', 2024, '79.35'
FROM facilities WHERE admin_sym = '2-41280-00932'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00952
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00952', 2024, '87.35'
FROM facilities WHERE admin_sym = '3-41280-00952'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00672
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00672', 2024, '94.35'
FROM facilities WHERE admin_sym = '3-41280-00672'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01344
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01344', 2024, '61.35'
FROM facilities WHERE admin_sym = '2-41280-01344'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01186
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01186', 2024, '65.6'
FROM facilities WHERE admin_sym = '2-41280-01186'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01288
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01288', 2024, '55.35'
FROM facilities WHERE admin_sym = '2-41280-01288'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00880
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00880', 2024, '53.1'
FROM facilities WHERE admin_sym = '3-41280-00880'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01285
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01285', 2024, '64.1'
FROM facilities WHERE admin_sym = '2-41280-01285'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01318
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01318', 2024, '65.85'
FROM facilities WHERE admin_sym = '2-41280-01318'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00976
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00976', 2024, '66.35'
FROM facilities WHERE admin_sym = '3-41280-00976'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01032
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01032', 2024, '75.88'
FROM facilities WHERE admin_sym = '3-41280-01032'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00480
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00480', 2024, '73.8'
FROM facilities WHERE admin_sym = '3-41280-00480'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00068
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00068', 2024, '68.13'
FROM facilities WHERE admin_sym = '3-41280-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00082
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00082', 2024, '39.83'
FROM facilities WHERE admin_sym = '3-41280-00082'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '39.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00826
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00826', 2024, '67.38'
FROM facilities WHERE admin_sym = '3-41280-00826'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00376
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00376', 2024, '45.08'
FROM facilities WHERE admin_sym = '3-41280-00376'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '45.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41290-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41290-00012', 2024, '96.1'
FROM facilities WHERE admin_sym = '3-41290-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41290-00026
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41290-00026', 2024, '73.85'
FROM facilities WHERE admin_sym = '2-41290-00026'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41290-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41290-00008', 2024, '94.85'
FROM facilities WHERE admin_sym = '2-41290-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41290-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41290-00007', 2024, '96.6'
FROM facilities WHERE admin_sym = '2-41290-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41290-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41290-00006', 2024, '93.6'
FROM facilities WHERE admin_sym = '2-41290-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00126
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00126', 2024, '94.8'
FROM facilities WHERE admin_sym = '3-41210-00126'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00018', 2024, '93.05'
FROM facilities WHERE admin_sym = '3-41210-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00160
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00160', 2024, '95.55'
FROM facilities WHERE admin_sym = '3-41210-00160'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00196
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00196', 2024, '93.6'
FROM facilities WHERE admin_sym = '3-41210-00196'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00164
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00164', 2024, '92.25'
FROM facilities WHERE admin_sym = '3-41210-00164'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41210-00250
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41210-00250', 2024, '92.24'
FROM facilities WHERE admin_sym = '2-41210-00250'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00216
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00216', 2024, '96.1'
FROM facilities WHERE admin_sym = '3-41210-00216'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41210-00230
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41210-00230', 2024, '83.74'
FROM facilities WHERE admin_sym = '2-41210-00230'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41210-00248
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41210-00248', 2024, '86.6'
FROM facilities WHERE admin_sym = '2-41210-00248'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00144
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00144', 2024, '80.35'
FROM facilities WHERE admin_sym = '3-41210-00144'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00165
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00165', 2024, '82.1'
FROM facilities WHERE admin_sym = '3-41210-00165'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00154
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00154', 2024, '82.6'
FROM facilities WHERE admin_sym = '3-41210-00154'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00036
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00036', 2024, '83.85'
FROM facilities WHERE admin_sym = '3-41210-00036'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41210-00244
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41210-00244', 2024, '80.57'
FROM facilities WHERE admin_sym = '2-41210-00244'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.57',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41210-00226
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41210-00226', 2024, '85.1'
FROM facilities WHERE admin_sym = '2-41210-00226'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00158
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00158', 2024, '84.35'
FROM facilities WHERE admin_sym = '3-41210-00158'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00040', 2024, '86.6'
FROM facilities WHERE admin_sym = '3-41210-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00218
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00218', 2024, '79.35'
FROM facilities WHERE admin_sym = '3-41210-00218'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00138
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00138', 2024, '71.1'
FROM facilities WHERE admin_sym = '3-41210-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00166
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00166', 2024, '79.35'
FROM facilities WHERE admin_sym = '3-41210-00166'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41210-00252
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41210-00252', 2024, '78.46'
FROM facilities WHERE admin_sym = '2-41210-00252'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00142
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00142', 2024, '79.1'
FROM facilities WHERE admin_sym = '3-41210-00142'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00206
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00206', 2024, '78.85'
FROM facilities WHERE admin_sym = '3-41210-00206'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00232
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00232', 2024, '59.6'
FROM facilities WHERE admin_sym = '3-41210-00232'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00176
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00176', 2024, '53.8'
FROM facilities WHERE admin_sym = '3-41210-00176'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00196
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00196', 2024, '91.85'
FROM facilities WHERE admin_sym = '3-41210-00196'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00176
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00176', 2024, '73.35'
FROM facilities WHERE admin_sym = '3-41210-00176'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00192
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00192', 2024, '92.6'
FROM facilities WHERE admin_sym = '3-41210-00192'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41210-00220
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41210-00220', 2024, '94.6'
FROM facilities WHERE admin_sym = '2-41210-00220'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00038
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00038', 2024, '96.1'
FROM facilities WHERE admin_sym = '3-41210-00038'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41210-00230
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41210-00230', 2024, '85.1'
FROM facilities WHERE admin_sym = '2-41210-00230'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00146
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00146', 2024, '88.35'
FROM facilities WHERE admin_sym = '3-41210-00146'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00214
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00214', 2024, '69.85'
FROM facilities WHERE admin_sym = '3-41210-00214'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41210-00254
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41210-00254', 2024, '67.85'
FROM facilities WHERE admin_sym = '2-41210-00254'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00112
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00112', 2024, '80.1'
FROM facilities WHERE admin_sym = '3-41210-00112'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41210-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41210-00012', 2024, '74.23'
FROM facilities WHERE admin_sym = '3-41210-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.23',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00064
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00064', 2024, '90.1'
FROM facilities WHERE admin_sym = '3-41610-00064'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00156
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00156', 2024, '91.6'
FROM facilities WHERE admin_sym = '3-41610-00156'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41610-00238
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41610-00238', 2024, '92.85'
FROM facilities WHERE admin_sym = '2-41610-00238'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00082
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00082', 2024, '92.85'
FROM facilities WHERE admin_sym = '3-41610-00082'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00134
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00134', 2024, '84.6'
FROM facilities WHERE admin_sym = '3-41610-00134'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00146
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00146', 2024, '88.85'
FROM facilities WHERE admin_sym = '3-41610-00146'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00024
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00024', 2024, '85.1'
FROM facilities WHERE admin_sym = '3-41610-00024'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00190
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00190', 2024, '87.85'
FROM facilities WHERE admin_sym = '3-41610-00190'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41610-00230
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41610-00230', 2024, '85.35'
FROM facilities WHERE admin_sym = '2-41610-00230'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00204
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00204', 2024, '88.85'
FROM facilities WHERE admin_sym = '3-41610-00204'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00004', 2024, '91.8'
FROM facilities WHERE admin_sym = '3-41610-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00124', 2024, '81.1'
FROM facilities WHERE admin_sym = '3-41610-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00046
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00046', 2024, '88.1'
FROM facilities WHERE admin_sym = '3-41610-00046'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00052
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00052', 2024, '87.55'
FROM facilities WHERE admin_sym = '3-41610-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41610-00242
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41610-00242', 2024, '88.77'
FROM facilities WHERE admin_sym = '2-41610-00242'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00158
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00158', 2024, '84.35'
FROM facilities WHERE admin_sym = '3-41610-00158'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41610-00240
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41610-00240', 2024, '78.1'
FROM facilities WHERE admin_sym = '2-41610-00240'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00150
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00150', 2024, '78.85'
FROM facilities WHERE admin_sym = '3-41610-00150'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00148
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00148', 2024, '87.6'
FROM facilities WHERE admin_sym = '3-41610-00148'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41610-00216
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41610-00216', 2024, '72.1'
FROM facilities WHERE admin_sym = '2-41610-00216'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00202
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00202', 2024, '74.1'
FROM facilities WHERE admin_sym = '3-41610-00202'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00140
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00140', 2024, '72.35'
FROM facilities WHERE admin_sym = '3-41610-00140'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41610-00226
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41610-00226', 2024, '74.6'
FROM facilities WHERE admin_sym = '2-41610-00226'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41610-00228
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41610-00228', 2024, '72.1'
FROM facilities WHERE admin_sym = '2-41610-00228'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00058
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00058', 2024, '86.35'
FROM facilities WHERE admin_sym = '3-41610-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00194
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00194', 2024, '74.6'
FROM facilities WHERE admin_sym = '3-41610-00194'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00192
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00192', 2024, '63.85'
FROM facilities WHERE admin_sym = '3-41610-00192'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00198
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00198', 2024, '68.1'
FROM facilities WHERE admin_sym = '3-41610-00198'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00148
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00148', 2024, '92.6'
FROM facilities WHERE admin_sym = '3-41610-00148'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00150
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00150', 2024, '86.6'
FROM facilities WHERE admin_sym = '3-41610-00150'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41610-00206
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41610-00206', 2024, '78.85'
FROM facilities WHERE admin_sym = '2-41610-00206'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41610-00228
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41610-00228', 2024, '74.1'
FROM facilities WHERE admin_sym = '2-41610-00228'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00004', 2024, '72.6'
FROM facilities WHERE admin_sym = '3-41610-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00156
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00156', 2024, '90.35'
FROM facilities WHERE admin_sym = '3-41610-00156'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00094
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00094', 2024, '95.1'
FROM facilities WHERE admin_sym = '3-41610-00094'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00134
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00134', 2024, '83.35'
FROM facilities WHERE admin_sym = '3-41610-00134'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41610-00114
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41610-00114', 2024, '87.35'
FROM facilities WHERE admin_sym = '3-41610-00114'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

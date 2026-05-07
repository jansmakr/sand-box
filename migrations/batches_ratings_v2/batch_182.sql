-- Batch 182 of 226
-- Processing 100 facilities

-- admin_sym: 2-50110-00328
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-50110-00328', 2024, '91.57'
FROM facilities WHERE admin_sym = '2-50110-00328'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.57',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-50110-00136
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-50110-00136', 2024, '89.8'
FROM facilities WHERE admin_sym = '3-50110-00136'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-50110-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-50110-00002', 2024, '85'
FROM facilities WHERE admin_sym = '2-50110-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-50110-00304
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-50110-00304', 2024, '87.1'
FROM facilities WHERE admin_sym = '3-50110-00304'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-50110-00275
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-50110-00275', 2024, '87.1'
FROM facilities WHERE admin_sym = '3-50110-00275'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-50110-00098
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-50110-00098', 2024, '89.05'
FROM facilities WHERE admin_sym = '3-50110-00098'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-50110-00312
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-50110-00312', 2024, '80.05'
FROM facilities WHERE admin_sym = '3-50110-00312'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-50110-00274
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-50110-00274', 2024, '81.55'
FROM facilities WHERE admin_sym = '3-50110-00274'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-50110-00266
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-50110-00266', 2024, '85.55'
FROM facilities WHERE admin_sym = '3-50110-00266'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-50110-00332
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-50110-00332', 2024, '72.8'
FROM facilities WHERE admin_sym = '2-50110-00332'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-50110-00298
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-50110-00298', 2024, '71.3'
FROM facilities WHERE admin_sym = '2-50110-00298'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-50110-00296
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-50110-00296', 2024, '70.75'
FROM facilities WHERE admin_sym = '3-50110-00296'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-50110-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-50110-00124', 2024, '69.8'
FROM facilities WHERE admin_sym = '2-50110-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-50110-00114
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-50110-00114', 2024, '78.55'
FROM facilities WHERE admin_sym = '3-50110-00114'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-50110-00188
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-50110-00188', 2024, '68.05'
FROM facilities WHERE admin_sym = '3-50110-00188'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-50110-00316
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-50110-00316', 2024, '84.5'
FROM facilities WHERE admin_sym = '2-50110-00316'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-50110-00162
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-50110-00162', 2024, '92'
FROM facilities WHERE admin_sym = '3-50110-00162'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-50110-00334
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-50110-00334', 2024, '86.67'
FROM facilities WHERE admin_sym = '2-50110-00334'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11680-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11680-00009', 2024, '93.1'
FROM facilities WHERE admin_sym = '1-11680-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11680-00175
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11680-00175', 2024, '96.3'
FROM facilities WHERE admin_sym = '1-11680-00175'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11680-00104
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11680-00104', 2024, '84.19'
FROM facilities WHERE admin_sym = '1-11680-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.19',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11680-00067
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11680-00067', 2024, '85.97'
FROM facilities WHERE admin_sym = '1-11680-00067'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11680-00082
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11680-00082', 2024, '75.76'
FROM facilities WHERE admin_sym = '1-11680-00082'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.76',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11680-00180
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11680-00180', 2024, '80.81'
FROM facilities WHERE admin_sym = '1-11680-00180'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11680-00127
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11680-00127', 2024, '98.46'
FROM facilities WHERE admin_sym = '1-11680-00127'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11740-00156
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11740-00156', 2024, '84.1'
FROM facilities WHERE admin_sym = '1-11740-00156'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11740-00208
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11740-00208', 2024, '79.6'
FROM facilities WHERE admin_sym = '1-11740-00208'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11740-00261
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11740-00261', 2024, '90.85'
FROM facilities WHERE admin_sym = '1-11740-00261'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11740-00290
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11740-00290', 2024, '82.53'
FROM facilities WHERE admin_sym = '1-11740-00290'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.53',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11740-00327
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11740-00327', 2024, '81.73'
FROM facilities WHERE admin_sym = '1-11740-00327'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.73',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11740-00126
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11740-00126', 2024, '92.16'
FROM facilities WHERE admin_sym = '1-11740-00126'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11740-00191
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11740-00191', 2024, '89.4'
FROM facilities WHERE admin_sym = '1-11740-00191'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11740-00228
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11740-00228', 2024, '80.03'
FROM facilities WHERE admin_sym = '1-11740-00228'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.03',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11740-00123
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11740-00123', 2024, '81.12'
FROM facilities WHERE admin_sym = '1-11740-00123'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11740-00217
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11740-00217', 2024, '77.11'
FROM facilities WHERE admin_sym = '1-11740-00217'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.11',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11740-00218
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11740-00218', 2024, '87.19'
FROM facilities WHERE admin_sym = '1-11740-00218'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.19',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11740-00335
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11740-00335', 2024, '69.12'
FROM facilities WHERE admin_sym = '1-11740-00335'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11740-00336
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11740-00336', 2024, '73.99'
FROM facilities WHERE admin_sym = '1-11740-00336'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11740-00222
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11740-00222', 2024, '58.15'
FROM facilities WHERE admin_sym = '1-11740-00222'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.15',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11740-00310
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11740-00310', 2024, '66.15'
FROM facilities WHERE admin_sym = '1-11740-00310'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.15',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11740-00311
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11740-00311', 2024, '62.63'
FROM facilities WHERE admin_sym = '1-11740-00311'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11740-00195
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11740-00195', 2024, '79.03'
FROM facilities WHERE admin_sym = '1-11740-00195'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.03',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11740-00204
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11740-00204', 2024, '70.3'
FROM facilities WHERE admin_sym = '1-11740-00204'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00234
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00234', 2024, '71.85'
FROM facilities WHERE admin_sym = '1-11305-00234'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00001', 2024, '87.1'
FROM facilities WHERE admin_sym = '1-11305-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00290
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00290', 2024, '72.3'
FROM facilities WHERE admin_sym = '1-11305-00290'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00172
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00172', 2024, '92.6'
FROM facilities WHERE admin_sym = '1-11305-00172'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00246
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00246', 2024, '81'
FROM facilities WHERE admin_sym = '1-11305-00246'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00126
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00126', 2024, '84.33'
FROM facilities WHERE admin_sym = '1-11305-00126'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00280
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00280', 2024, '77.31'
FROM facilities WHERE admin_sym = '1-11305-00280'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00045
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00045', 2024, '81.4'
FROM facilities WHERE admin_sym = '1-11305-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00047
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00047', 2024, '54.07'
FROM facilities WHERE admin_sym = '1-11305-00047'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.07',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00229
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00229', 2024, '80.47'
FROM facilities WHERE admin_sym = '1-11305-00229'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00309
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00309', 2024, '45.25'
FROM facilities WHERE admin_sym = '1-11305-00309'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '45.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00302
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00302', 2024, '75.27'
FROM facilities WHERE admin_sym = '1-11305-00302'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00303
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00303', 2024, '66.91'
FROM facilities WHERE admin_sym = '1-11305-00303'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00329
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00329', 2024, '77.42'
FROM facilities WHERE admin_sym = '1-11305-00329'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00068
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00068', 2024, '59.89'
FROM facilities WHERE admin_sym = '1-11305-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00179
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00179', 2024, '68.43'
FROM facilities WHERE admin_sym = '1-11305-00179'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00341
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00341', 2024, '83.67'
FROM facilities WHERE admin_sym = '1-11305-00341'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00064
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00064', 2024, '60.54'
FROM facilities WHERE admin_sym = '1-11305-00064'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00169
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00169', 2024, '70.63'
FROM facilities WHERE admin_sym = '1-11305-00169'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00170
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00170', 2024, '75.17'
FROM facilities WHERE admin_sym = '1-11305-00170'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00171
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00171', 2024, '75.32'
FROM facilities WHERE admin_sym = '1-11305-00171'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00219
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00219', 2024, '54.51'
FROM facilities WHERE admin_sym = '1-11305-00219'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.51',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00220
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00220', 2024, '54.34'
FROM facilities WHERE admin_sym = '1-11305-00220'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.34',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00307
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00307', 2024, '86.91'
FROM facilities WHERE admin_sym = '1-11305-00307'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00248
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00248', 2024, '75.47'
FROM facilities WHERE admin_sym = '1-11305-00248'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00250
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00250', 2024, '76.37'
FROM facilities WHERE admin_sym = '1-11305-00250'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.37',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00276
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00276', 2024, '76.3'
FROM facilities WHERE admin_sym = '1-11305-00276'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11305-00273
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11305-00273', 2024, '69.54'
FROM facilities WHERE admin_sym = '1-11305-00273'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00008', 2024, '76.81'
FROM facilities WHERE admin_sym = '1-11500-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00340
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00340', 2024, '86.05'
FROM facilities WHERE admin_sym = '1-11500-00340'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00437
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00437', 2024, '80.43'
FROM facilities WHERE admin_sym = '1-11500-00437'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00325
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00325', 2024, '68.05'
FROM facilities WHERE admin_sym = '1-11500-00325'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00003', 2024, '74.35'
FROM facilities WHERE admin_sym = '1-11500-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00468
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00468', 2024, '74.6'
FROM facilities WHERE admin_sym = '1-11500-00468'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00154
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00154', 2024, '74.25'
FROM facilities WHERE admin_sym = '1-11500-00154'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00249
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00249', 2024, '69.32'
FROM facilities WHERE admin_sym = '1-11500-00249'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00336
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00336', 2024, '78.85'
FROM facilities WHERE admin_sym = '1-11500-00336'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00339
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00339', 2024, '91.8'
FROM facilities WHERE admin_sym = '1-11500-00339'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00257
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00257', 2024, '78.85'
FROM facilities WHERE admin_sym = '1-11500-00257'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00004', 2024, '81.85'
FROM facilities WHERE admin_sym = '1-11500-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00238
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00238', 2024, '97.6'
FROM facilities WHERE admin_sym = '1-11500-00238'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00391
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00391', 2024, '81.91'
FROM facilities WHERE admin_sym = '1-11500-00391'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00068
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00068', 2024, '71.14'
FROM facilities WHERE admin_sym = '1-11500-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00376
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00376', 2024, '80.05'
FROM facilities WHERE admin_sym = '1-11500-00376'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00002', 2024, '95.36'
FROM facilities WHERE admin_sym = '1-11500-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.36',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00429
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00429', 2024, '72.61'
FROM facilities WHERE admin_sym = '1-11500-00429'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00399
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00399', 2024, '37.23'
FROM facilities WHERE admin_sym = '1-11500-00399'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '37.23',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00400
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00400', 2024, '39.94'
FROM facilities WHERE admin_sym = '1-11500-00400'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '39.94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00401
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00401', 2024, '36.61'
FROM facilities WHERE admin_sym = '1-11500-00401'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '36.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00351
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00351', 2024, '87.36'
FROM facilities WHERE admin_sym = '1-11500-00351'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.36',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00392
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00392', 2024, '48.57'
FROM facilities WHERE admin_sym = '1-11500-00392'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '48.57',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00393
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00393', 2024, '44.55'
FROM facilities WHERE admin_sym = '1-11500-00393'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '44.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11500-00195
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11500-00195', 2024, '29.65'
FROM facilities WHERE admin_sym = '1-11500-00195'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '29.65',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11620-00277
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11620-00277', 2024, '93.55'
FROM facilities WHERE admin_sym = '1-11620-00277'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11620-00078
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11620-00078', 2024, '77.1'
FROM facilities WHERE admin_sym = '1-11620-00078'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11620-00193
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11620-00193', 2024, '79.1'
FROM facilities WHERE admin_sym = '1-11620-00193'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11620-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11620-00002', 2024, '97.55'
FROM facilities WHERE admin_sym = '1-11620-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.55',
  last_updated = CURRENT_TIMESTAMP;

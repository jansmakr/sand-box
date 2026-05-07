-- Batch 185 of 226
-- Processing 100 facilities

-- admin_sym: 1-11290-00020
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11290-00020', 2024, '96.35'
FROM facilities WHERE admin_sym = '1-11290-00020'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11290-00127
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11290-00127', 2024, '71.81'
FROM facilities WHERE admin_sym = '1-11290-00127'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11290-00227
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11290-00227', 2024, '89.51'
FROM facilities WHERE admin_sym = '1-11290-00227'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.51',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11290-00170
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11290-00170', 2024, '51.8'
FROM facilities WHERE admin_sym = '1-11290-00170'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '51.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11290-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11290-00018', 2024, '65.6'
FROM facilities WHERE admin_sym = '1-11290-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11290-00216
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11290-00216', 2024, '78.22'
FROM facilities WHERE admin_sym = '1-11290-00216'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.22',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11290-00215
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11290-00215', 2024, '86.23'
FROM facilities WHERE admin_sym = '1-11290-00215'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.23',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11290-00104
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11290-00104', 2024, '92.07'
FROM facilities WHERE admin_sym = '1-11290-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.07',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11290-00139
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11290-00139', 2024, '46.01'
FROM facilities WHERE admin_sym = '1-11290-00139'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '46.01',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11290-00192
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11290-00192', 2024, '51.68'
FROM facilities WHERE admin_sym = '1-11290-00192'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '51.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11290-00231
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11290-00231', 2024, '49.05'
FROM facilities WHERE admin_sym = '1-11290-00231'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11290-00273
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11290-00273', 2024, '52.04'
FROM facilities WHERE admin_sym = '1-11290-00273'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '52.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11710-00016
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11710-00016', 2024, '90.1'
FROM facilities WHERE admin_sym = '1-11710-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11710-00136
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11710-00136', 2024, '79.1'
FROM facilities WHERE admin_sym = '1-11710-00136'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11710-00123
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11710-00123', 2024, '85.05'
FROM facilities WHERE admin_sym = '1-11710-00123'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11710-00116
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11710-00116', 2024, '72.6'
FROM facilities WHERE admin_sym = '1-11710-00116'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11710-00318
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11710-00318', 2024, '92.1'
FROM facilities WHERE admin_sym = '1-11710-00318'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11710-00216
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11710-00216', 2024, '74.85'
FROM facilities WHERE admin_sym = '1-11710-00216'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11710-00280
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11710-00280', 2024, '70.1'
FROM facilities WHERE admin_sym = '1-11710-00280'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11710-00139
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11710-00139', 2024, '83.05'
FROM facilities WHERE admin_sym = '1-11710-00139'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11710-00172
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11710-00172', 2024, '79.98'
FROM facilities WHERE admin_sym = '1-11710-00172'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11710-00191
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11710-00191', 2024, '78.6'
FROM facilities WHERE admin_sym = '1-11710-00191'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11710-00156
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11710-00156', 2024, '76.91'
FROM facilities WHERE admin_sym = '1-11710-00156'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11710-00175
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11710-00175', 2024, '74.49'
FROM facilities WHERE admin_sym = '1-11710-00175'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11710-00176
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11710-00176', 2024, '81.32'
FROM facilities WHERE admin_sym = '1-11710-00176'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11710-00141
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11710-00141', 2024, '80.29'
FROM facilities WHERE admin_sym = '1-11710-00141'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11710-00084
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11710-00084', 2024, '73.85'
FROM facilities WHERE admin_sym = '1-11710-00084'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11710-00085
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11710-00085', 2024, '71.47'
FROM facilities WHERE admin_sym = '1-11710-00085'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11710-00140
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11710-00140', 2024, '79.1'
FROM facilities WHERE admin_sym = '1-11710-00140'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11710-00203
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11710-00203', 2024, '67.03'
FROM facilities WHERE admin_sym = '1-11710-00203'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.03',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11710-00144
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11710-00144', 2024, '76.17'
FROM facilities WHERE admin_sym = '1-11710-00144'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11470-00322
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11470-00322', 2024, '84.35'
FROM facilities WHERE admin_sym = '1-11470-00322'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11470-00330
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11470-00330', 2024, '82.1'
FROM facilities WHERE admin_sym = '1-11470-00330'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11470-00221
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11470-00221', 2024, '91.8'
FROM facilities WHERE admin_sym = '1-11470-00221'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11470-00013
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11470-00013', 2024, '74.85'
FROM facilities WHERE admin_sym = '1-11470-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11470-00366
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11470-00366', 2024, '60.1'
FROM facilities WHERE admin_sym = '1-11470-00366'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11470-00383
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11470-00383', 2024, '75.1'
FROM facilities WHERE admin_sym = '1-11470-00383'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11470-00362
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11470-00362', 2024, '88.35'
FROM facilities WHERE admin_sym = '1-11470-00362'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11470-00183
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11470-00183', 2024, '88.35'
FROM facilities WHERE admin_sym = '1-11470-00183'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11470-00350
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11470-00350', 2024, '83.57'
FROM facilities WHERE admin_sym = '1-11470-00350'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.57',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11470-00121
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11470-00121', 2024, '76.14'
FROM facilities WHERE admin_sym = '1-11470-00121'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11470-00136
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11470-00136', 2024, '85.34'
FROM facilities WHERE admin_sym = '1-11470-00136'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.34',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11470-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11470-00005', 2024, '95.82'
FROM facilities WHERE admin_sym = '1-11470-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11470-00294
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11470-00294', 2024, '93.4'
FROM facilities WHERE admin_sym = '1-11470-00294'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11470-00165
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11470-00165', 2024, '76.28'
FROM facilities WHERE admin_sym = '1-11470-00165'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.28',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11470-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11470-00124', 2024, '76.92'
FROM facilities WHERE admin_sym = '1-11470-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.92',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11470-00126
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11470-00126', 2024, '76.05'
FROM facilities WHERE admin_sym = '1-11470-00126'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11470-00076
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11470-00076', 2024, '87.22'
FROM facilities WHERE admin_sym = '1-11470-00076'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.22',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11470-00093
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11470-00093', 2024, '93.67'
FROM facilities WHERE admin_sym = '1-11470-00093'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11560-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11560-00018', 2024, '99.55'
FROM facilities WHERE admin_sym = '1-11560-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '99.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11560-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11560-00023', 2024, '93.55'
FROM facilities WHERE admin_sym = '1-11560-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11560-00213
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11560-00213', 2024, '83.3'
FROM facilities WHERE admin_sym = '1-11560-00213'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11560-00049
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11560-00049', 2024, '82.55'
FROM facilities WHERE admin_sym = '1-11560-00049'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11560-00057
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11560-00057', 2024, '81.5'
FROM facilities WHERE admin_sym = '1-11560-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11560-00295
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11560-00295', 2024, '83.96'
FROM facilities WHERE admin_sym = '1-11560-00295'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11560-00296
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11560-00296', 2024, '76.65'
FROM facilities WHERE admin_sym = '1-11560-00296'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.65',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11560-00297
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11560-00297', 2024, '78.81'
FROM facilities WHERE admin_sym = '1-11560-00297'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11560-00287
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11560-00287', 2024, '77.62'
FROM facilities WHERE admin_sym = '1-11560-00287'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.62',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11560-00148
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11560-00148', 2024, '76.61'
FROM facilities WHERE admin_sym = '1-11560-00148'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11560-00150
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11560-00150', 2024, '81.86'
FROM facilities WHERE admin_sym = '1-11560-00150'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11560-00264
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11560-00264', 2024, '73.11'
FROM facilities WHERE admin_sym = '1-11560-00264'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.11',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11560-00265
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11560-00265', 2024, '75.52'
FROM facilities WHERE admin_sym = '1-11560-00265'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11560-00193
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11560-00193', 2024, '76.87'
FROM facilities WHERE admin_sym = '1-11560-00193'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.87',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11560-00194
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11560-00194', 2024, '84.77'
FROM facilities WHERE admin_sym = '1-11560-00194'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11560-00266
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11560-00266', 2024, '96.5'
FROM facilities WHERE admin_sym = '1-11560-00266'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11560-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11560-00001', 2024, '95.71'
FROM facilities WHERE admin_sym = '1-11560-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11170-00092
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11170-00092', 2024, '83.1'
FROM facilities WHERE admin_sym = '1-11170-00092'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11170-00054
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11170-00054', 2024, '94.25'
FROM facilities WHERE admin_sym = '1-11170-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11170-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11170-00004', 2024, '66.7'
FROM facilities WHERE admin_sym = '1-11170-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11380-00243
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11380-00243', 2024, '91.1'
FROM facilities WHERE admin_sym = '1-11380-00243'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11380-00216
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11380-00216', 2024, '93.05'
FROM facilities WHERE admin_sym = '1-11380-00216'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11380-00195
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11380-00195', 2024, '76.8'
FROM facilities WHERE admin_sym = '1-11380-00195'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11380-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11380-00006', 2024, '83.35'
FROM facilities WHERE admin_sym = '1-11380-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11380-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11380-00008', 2024, '77.35'
FROM facilities WHERE admin_sym = '1-11380-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11380-00128
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11380-00128', 2024, '80.8'
FROM facilities WHERE admin_sym = '1-11380-00128'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11380-00355
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11380-00355', 2024, '71.85'
FROM facilities WHERE admin_sym = '1-11380-00355'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11380-00224
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11380-00224', 2024, '67.1'
FROM facilities WHERE admin_sym = '1-11380-00224'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11380-00258
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11380-00258', 2024, '74.85'
FROM facilities WHERE admin_sym = '1-11380-00258'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11380-00065
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11380-00065', 2024, '94.1'
FROM facilities WHERE admin_sym = '1-11380-00065'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11380-00217
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11380-00217', 2024, '93.85'
FROM facilities WHERE admin_sym = '1-11380-00217'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11380-00171
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11380-00171', 2024, '50.54'
FROM facilities WHERE admin_sym = '1-11380-00171'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11380-00093
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11380-00093', 2024, '82.03'
FROM facilities WHERE admin_sym = '1-11380-00093'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.03',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11380-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11380-00004', 2024, '84.68'
FROM facilities WHERE admin_sym = '1-11380-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11380-00090
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11380-00090', 2024, '94.67'
FROM facilities WHERE admin_sym = '1-11380-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11380-00271
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11380-00271', 2024, '55.76'
FROM facilities WHERE admin_sym = '1-11380-00271'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.76',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11380-00031
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11380-00031', 2024, '76.53'
FROM facilities WHERE admin_sym = '1-11380-00031'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.53',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11380-00121
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11380-00121', 2024, '90.63'
FROM facilities WHERE admin_sym = '1-11380-00121'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11380-00280
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11380-00280', 2024, '71.44'
FROM facilities WHERE admin_sym = '1-11380-00280'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11380-00257
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11380-00257', 2024, '73'
FROM facilities WHERE admin_sym = '1-11380-00257'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11110-00056
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11110-00056', 2024, '90.6'
FROM facilities WHERE admin_sym = '1-11110-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11110-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11110-00006', 2024, '80.3'
FROM facilities WHERE admin_sym = '1-11110-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11110-00087
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11110-00087', 2024, '83.85'
FROM facilities WHERE admin_sym = '1-11110-00087'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11110-00060
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11110-00060', 2024, '88.75'
FROM facilities WHERE admin_sym = '1-11110-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11110-00076
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11110-00076', 2024, '84.85'
FROM facilities WHERE admin_sym = '1-11110-00076'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11110-00068
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11110-00068', 2024, '98.3'
FROM facilities WHERE admin_sym = '1-11110-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11110-00078
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11110-00078', 2024, '83.21'
FROM facilities WHERE admin_sym = '1-11110-00078'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11110-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11110-00088', 2024, '90.23'
FROM facilities WHERE admin_sym = '1-11110-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.23',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11110-00033
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11110-00033', 2024, '89.31'
FROM facilities WHERE admin_sym = '1-11110-00033'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11140-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11140-00040', 2024, '81.35'
FROM facilities WHERE admin_sym = '1-11140-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-11140-00030
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-11140-00030', 2024, '77.21'
FROM facilities WHERE admin_sym = '1-11140-00030'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.21',
  last_updated = CURRENT_TIMESTAMP;

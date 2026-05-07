-- Batch 33 of 226
-- Processing 100 facilities

-- admin_sym: 2-27710-00133
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27710-00133', 2024, '91.6'
FROM facilities WHERE admin_sym = '2-27710-00133'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27710-00167
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27710-00167', 2024, '80'
FROM facilities WHERE admin_sym = '3-27710-00167'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27710-00199
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27710-00199', 2024, '93.6'
FROM facilities WHERE admin_sym = '2-27710-00199'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27710-00215
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27710-00215', 2024, '83.04'
FROM facilities WHERE admin_sym = '2-27710-00215'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27710-00231
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27710-00231', 2024, '86.1'
FROM facilities WHERE admin_sym = '2-27710-00231'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47830-00049
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47830-00049', 2024, '87.75'
FROM facilities WHERE admin_sym = '3-47830-00049'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47830-00051
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47830-00051', 2024, '87.85'
FROM facilities WHERE admin_sym = '3-47830-00051'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47830-00047
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47830-00047', 2024, '92.8'
FROM facilities WHERE admin_sym = '3-47830-00047'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47830-00039
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47830-00039', 2024, '88.3'
FROM facilities WHERE admin_sym = '3-47830-00039'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47830-00059
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47830-00059', 2024, '50.06'
FROM facilities WHERE admin_sym = '2-47830-00059'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47830-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47830-00001', 2024, '47.44'
FROM facilities WHERE admin_sym = '3-47830-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '47.44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47830-00051
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47830-00051', 2024, '97.35'
FROM facilities WHERE admin_sym = '3-47830-00051'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47830-00061
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47830-00061', 2024, '50.29'
FROM facilities WHERE admin_sym = '2-47830-00061'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47830-00063
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47830-00063', 2024, '77.3'
FROM facilities WHERE admin_sym = '2-47830-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-47830-00059
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-47830-00059', 2024, '58.25'
FROM facilities WHERE admin_sym = '2-47830-00059'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-47830-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-47830-00001', 2024, '65.05'
FROM facilities WHERE admin_sym = '3-47830-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27200-00293
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27200-00293', 2024, '80.97'
FROM facilities WHERE admin_sym = '2-27200-00293'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00195
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00195', 2024, '85.08'
FROM facilities WHERE admin_sym = '3-27200-00195'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00131
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00131', 2024, '68.3'
FROM facilities WHERE admin_sym = '3-27200-00131'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27200-00303
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27200-00303', 2024, '93.24'
FROM facilities WHERE admin_sym = '2-27200-00303'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00021
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00021', 2024, '44.25'
FROM facilities WHERE admin_sym = '3-27200-00021'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '44.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00221
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00221', 2024, '80.05'
FROM facilities WHERE admin_sym = '3-27200-00221'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00213
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00213', 2024, '59.71'
FROM facilities WHERE admin_sym = '3-27200-00213'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00163
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00163', 2024, '69.75'
FROM facilities WHERE admin_sym = '3-27200-00163'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00193
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00193', 2024, '85.3'
FROM facilities WHERE admin_sym = '3-27200-00193'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00237
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00237', 2024, '90.6'
FROM facilities WHERE admin_sym = '3-27200-00237'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00219
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00219', 2024, '90.55'
FROM facilities WHERE admin_sym = '3-27200-00219'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00181
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00181', 2024, '73.35'
FROM facilities WHERE admin_sym = '3-27200-00181'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00205
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00205', 2024, '60'
FROM facilities WHERE admin_sym = '3-27200-00205'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27200-00297
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27200-00297', 2024, '79.04'
FROM facilities WHERE admin_sym = '2-27200-00297'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00241
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00241', 2024, '80.35'
FROM facilities WHERE admin_sym = '3-27200-00241'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00159
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00159', 2024, '90.8'
FROM facilities WHERE admin_sym = '3-27200-00159'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00225
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00225', 2024, '90.8'
FROM facilities WHERE admin_sym = '3-27200-00225'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00249
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00249', 2024, '81.6'
FROM facilities WHERE admin_sym = '3-27200-00249'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00203
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00203', 2024, '95.55'
FROM facilities WHERE admin_sym = '3-27200-00203'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00217
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00217', 2024, '93.35'
FROM facilities WHERE admin_sym = '3-27200-00217'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00223
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00223', 2024, '82.74'
FROM facilities WHERE admin_sym = '3-27200-00223'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27200-00287
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27200-00287', 2024, '61.94'
FROM facilities WHERE admin_sym = '2-27200-00287'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00041
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00041', 2024, '89.85'
FROM facilities WHERE admin_sym = '3-27200-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00265
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00265', 2024, '94.8'
FROM facilities WHERE admin_sym = '3-27200-00265'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00187
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00187', 2024, '83.8'
FROM facilities WHERE admin_sym = '3-27200-00187'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00053
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00053', 2024, '83.95'
FROM facilities WHERE admin_sym = '3-27200-00053'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.95',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27200-00279
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27200-00279', 2024, '79.86'
FROM facilities WHERE admin_sym = '2-27200-00279'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00235
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00235', 2024, '87.85'
FROM facilities WHERE admin_sym = '3-27200-00235'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27200-00271
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27200-00271', 2024, '91.9'
FROM facilities WHERE admin_sym = '2-27200-00271'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.9',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27200-00299
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27200-00299', 2024, '75.63'
FROM facilities WHERE admin_sym = '2-27200-00299'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00247
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00247', 2024, '78.5'
FROM facilities WHERE admin_sym = '3-27200-00247'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27200-00293
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27200-00293', 2024, '81.08'
FROM facilities WHERE admin_sym = '2-27200-00293'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00041
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00041', 2024, '80.55'
FROM facilities WHERE admin_sym = '3-27200-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00089
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00089', 2024, '94.6'
FROM facilities WHERE admin_sym = '3-27200-00089'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00195
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00195', 2024, '80.55'
FROM facilities WHERE admin_sym = '3-27200-00195'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00269
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00269', 2024, '85.1'
FROM facilities WHERE admin_sym = '3-27200-00269'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00263
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00263', 2024, '88.85'
FROM facilities WHERE admin_sym = '3-27200-00263'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27200-00307
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27200-00307', 2024, '78.3'
FROM facilities WHERE admin_sym = '2-27200-00307'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27200-00301
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27200-00301', 2024, '86.05'
FROM facilities WHERE admin_sym = '2-27200-00301'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27200-00287
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27200-00287', 2024, '85.55'
FROM facilities WHERE admin_sym = '2-27200-00287'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27200-00271
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27200-00271', 2024, '90.34'
FROM facilities WHERE admin_sym = '2-27200-00271'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.34',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00017
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00017', 2024, '61.5'
FROM facilities WHERE admin_sym = '3-27200-00017'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27200-00159
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27200-00159', 2024, '92.8'
FROM facilities WHERE admin_sym = '3-27200-00159'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27200-00281
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27200-00281', 2024, '83'
FROM facilities WHERE admin_sym = '2-27200-00281'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00433
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00433', 2024, '91.05'
FROM facilities WHERE admin_sym = '3-27230-00433'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00205
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00205', 2024, '44.55'
FROM facilities WHERE admin_sym = '3-27230-00205'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '44.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00217
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00217', 2024, '84.19'
FROM facilities WHERE admin_sym = '3-27230-00217'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.19',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00419
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00419', 2024, '81.3'
FROM facilities WHERE admin_sym = '3-27230-00419'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27230-00625
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27230-00625', 2024, '93.35'
FROM facilities WHERE admin_sym = '2-27230-00625'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00547
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00547', 2024, '91.8'
FROM facilities WHERE admin_sym = '3-27230-00547'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00543
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00543', 2024, '85.81'
FROM facilities WHERE admin_sym = '3-27230-00543'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00421
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00421', 2024, '74.86'
FROM facilities WHERE admin_sym = '3-27230-00421'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00391
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00391', 2024, '92.05'
FROM facilities WHERE admin_sym = '3-27230-00391'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00377
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00377', 2024, '71.75'
FROM facilities WHERE admin_sym = '3-27230-00377'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00511
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00511', 2024, '87.55'
FROM facilities WHERE admin_sym = '3-27230-00511'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27230-00585
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27230-00585', 2024, '94.85'
FROM facilities WHERE admin_sym = '2-27230-00585'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00325
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00325', 2024, '89.3'
FROM facilities WHERE admin_sym = '3-27230-00325'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27230-00671
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27230-00671', 2024, '90.63'
FROM facilities WHERE admin_sym = '2-27230-00671'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00473
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00473', 2024, '77.02'
FROM facilities WHERE admin_sym = '3-27230-00473'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00055
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00055', 2024, '92.16'
FROM facilities WHERE admin_sym = '3-27230-00055'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00129
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00129', 2024, '96.3'
FROM facilities WHERE admin_sym = '3-27230-00129'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00481
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00481', 2024, '96.6'
FROM facilities WHERE admin_sym = '3-27230-00481'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00533
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00533', 2024, '73.05'
FROM facilities WHERE admin_sym = '3-27230-00533'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00079
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00079', 2024, '77.1'
FROM facilities WHERE admin_sym = '3-27230-00079'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00487
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00487', 2024, '80.8'
FROM facilities WHERE admin_sym = '3-27230-00487'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00475
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00475', 2024, '90.05'
FROM facilities WHERE admin_sym = '3-27230-00475'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00551
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00551', 2024, '93.8'
FROM facilities WHERE admin_sym = '3-27230-00551'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00517
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00517', 2024, '78.8'
FROM facilities WHERE admin_sym = '3-27230-00517'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27230-00669
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27230-00669', 2024, '75.69'
FROM facilities WHERE admin_sym = '2-27230-00669'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27230-00615
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27230-00615', 2024, '90.55'
FROM facilities WHERE admin_sym = '2-27230-00615'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00369
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00369', 2024, '88.6'
FROM facilities WHERE admin_sym = '3-27230-00369'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27230-00621
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27230-00621', 2024, '68.99'
FROM facilities WHERE admin_sym = '2-27230-00621'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00467
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00467', 2024, '87.8'
FROM facilities WHERE admin_sym = '3-27230-00467'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27230-00661
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27230-00661', 2024, '70.55'
FROM facilities WHERE admin_sym = '2-27230-00661'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00239
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00239', 2024, '82.75'
FROM facilities WHERE admin_sym = '3-27230-00239'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00151
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00151', 2024, '76.05'
FROM facilities WHERE admin_sym = '3-27230-00151'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00301
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00301', 2024, '96.85'
FROM facilities WHERE admin_sym = '3-27230-00301'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00479
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00479', 2024, '82.55'
FROM facilities WHERE admin_sym = '3-27230-00479'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00531
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00531', 2024, '68.05'
FROM facilities WHERE admin_sym = '3-27230-00531'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00327
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00327', 2024, '77.5'
FROM facilities WHERE admin_sym = '3-27230-00327'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27230-00635
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27230-00635', 2024, '75.22'
FROM facilities WHERE admin_sym = '2-27230-00635'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.22',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-27230-00469
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-27230-00469', 2024, '93.55'
FROM facilities WHERE admin_sym = '3-27230-00469'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27230-00657
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27230-00657', 2024, '80.74'
FROM facilities WHERE admin_sym = '2-27230-00657'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-27230-00675
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-27230-00675', 2024, '72.93'
FROM facilities WHERE admin_sym = '2-27230-00675'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.93',
  last_updated = CURRENT_TIMESTAMP;

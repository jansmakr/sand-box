-- Batch 206 of 226
-- Processing 100 facilities

-- admin_sym: 1-41480-00322
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00322', 2024, '65.71'
FROM facilities WHERE admin_sym = '1-41480-00322'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00226
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00226', 2024, '60.52'
FROM facilities WHERE admin_sym = '1-41480-00226'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00412
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00412', 2024, '76.89'
FROM facilities WHERE admin_sym = '1-41480-00412'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00351
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00351', 2024, '62.27'
FROM facilities WHERE admin_sym = '1-41480-00351'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00356
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00356', 2024, '66.55'
FROM facilities WHERE admin_sym = '1-41480-00356'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00233
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00233', 2024, '89.97'
FROM facilities WHERE admin_sym = '1-41480-00233'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00434
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00434', 2024, '76.31'
FROM facilities WHERE admin_sym = '1-41480-00434'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00327
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00327', 2024, '70.47'
FROM facilities WHERE admin_sym = '1-41480-00327'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00237
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00237', 2024, '98.3'
FROM facilities WHERE admin_sym = '1-41480-00237'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00451
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00451', 2024, '94.64'
FROM facilities WHERE admin_sym = '1-41480-00451'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00030
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00030', 2024, '62.69'
FROM facilities WHERE admin_sym = '1-41480-00030'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00399
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00399', 2024, '55.64'
FROM facilities WHERE admin_sym = '1-41480-00399'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00008', 2024, '81.83'
FROM facilities WHERE admin_sym = '1-41480-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00169
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00169', 2024, '60.76'
FROM facilities WHERE admin_sym = '1-41480-00169'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.76',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00354
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00354', 2024, '44.39'
FROM facilities WHERE admin_sym = '1-41480-00354'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '44.39',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00350
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00350', 2024, '71.14'
FROM facilities WHERE admin_sym = '1-41480-00350'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00274
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00274', 2024, '80.43'
FROM facilities WHERE admin_sym = '1-41480-00274'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00372
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00372', 2024, '80.73'
FROM facilities WHERE admin_sym = '1-41480-00372'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.73',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00303
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00303', 2024, '82.82'
FROM facilities WHERE admin_sym = '1-41480-00303'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00409
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00409', 2024, '58.42'
FROM facilities WHERE admin_sym = '1-41480-00409'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00245
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00245', 2024, '83.5'
FROM facilities WHERE admin_sym = '1-41480-00245'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00109
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00109', 2024, '88.05'
FROM facilities WHERE admin_sym = '1-41480-00109'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00338
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00338', 2024, '74.06'
FROM facilities WHERE admin_sym = '1-41480-00338'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00427
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00427', 2024, '61.22'
FROM facilities WHERE admin_sym = '1-41480-00427'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.22',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00209
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00209', 2024, '87.83'
FROM facilities WHERE admin_sym = '1-41480-00209'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00422
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00422', 2024, '63.69'
FROM facilities WHERE admin_sym = '1-41480-00422'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00318
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00318', 2024, '52.66'
FROM facilities WHERE admin_sym = '1-41480-00318'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '52.66',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00363
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00363', 2024, '83.59'
FROM facilities WHERE admin_sym = '1-41480-00363'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.59',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00398
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00398', 2024, '58.72'
FROM facilities WHERE admin_sym = '1-41480-00398'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00286
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00286', 2024, '79.74'
FROM facilities WHERE admin_sym = '1-41480-00286'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00239
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00239', 2024, '69.14'
FROM facilities WHERE admin_sym = '1-41480-00239'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00221
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00221', 2024, '52.37'
FROM facilities WHERE admin_sym = '1-41480-00221'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '52.37',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00347
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00347', 2024, '52.33'
FROM facilities WHERE admin_sym = '1-41480-00347'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '52.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00241
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00241', 2024, '88.8'
FROM facilities WHERE admin_sym = '1-41480-00241'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00379
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00379', 2024, '84.5'
FROM facilities WHERE admin_sym = '1-41480-00379'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00121
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00121', 2024, '39.5'
FROM facilities WHERE admin_sym = '1-41480-00121'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '39.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41480-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41480-00006', 2024, '98.31'
FROM facilities WHERE admin_sym = '1-41480-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00166
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00166', 2024, '90.85'
FROM facilities WHERE admin_sym = '1-41220-00166'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00014
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00014', 2024, '70.85'
FROM facilities WHERE admin_sym = '1-41220-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00179
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00179', 2024, '87.35'
FROM facilities WHERE admin_sym = '1-41220-00179'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00067
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00067', 2024, '76.35'
FROM facilities WHERE admin_sym = '1-41220-00067'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00022', 2024, '87.05'
FROM facilities WHERE admin_sym = '1-41220-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00272
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00272', 2024, '62.6'
FROM facilities WHERE admin_sym = '1-41220-00272'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00165
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00165', 2024, '84.85'
FROM facilities WHERE admin_sym = '1-41220-00165'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00205
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00205', 2024, '88.55'
FROM facilities WHERE admin_sym = '1-41220-00205'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00023', 2024, '91.85'
FROM facilities WHERE admin_sym = '1-41220-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00189
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00189', 2024, '80.3'
FROM facilities WHERE admin_sym = '1-41220-00189'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00335
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00335', 2024, '78.39'
FROM facilities WHERE admin_sym = '1-41220-00335'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.39',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00215
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00215', 2024, '85'
FROM facilities WHERE admin_sym = '1-41220-00215'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00281
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00281', 2024, '71.1'
FROM facilities WHERE admin_sym = '1-41220-00281'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00114
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00114', 2024, '90.05'
FROM facilities WHERE admin_sym = '1-41220-00114'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00345
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00345', 2024, '75.1'
FROM facilities WHERE admin_sym = '1-41220-00345'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00331
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00331', 2024, '93.6'
FROM facilities WHERE admin_sym = '1-41220-00331'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00024
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00024', 2024, '75.85'
FROM facilities WHERE admin_sym = '1-41220-00024'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00286
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00286', 2024, '72.33'
FROM facilities WHERE admin_sym = '1-41220-00286'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00267
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00267', 2024, '73.01'
FROM facilities WHERE admin_sym = '1-41220-00267'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.01',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00013
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00013', 2024, '94'
FROM facilities WHERE admin_sym = '1-41220-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00199
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00199', 2024, '89.58'
FROM facilities WHERE admin_sym = '1-41220-00199'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00151
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00151', 2024, '87.8'
FROM facilities WHERE admin_sym = '1-41220-00151'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00321
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00321', 2024, '72.8'
FROM facilities WHERE admin_sym = '1-41220-00321'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00258
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00258', 2024, '69.24'
FROM facilities WHERE admin_sym = '1-41220-00258'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00040', 2024, '89.26'
FROM facilities WHERE admin_sym = '1-41220-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.26',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00197
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00197', 2024, '81.73'
FROM facilities WHERE admin_sym = '1-41220-00197'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.73',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00354
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00354', 2024, '76.26'
FROM facilities WHERE admin_sym = '1-41220-00354'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.26',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00118
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00118', 2024, '79.95'
FROM facilities WHERE admin_sym = '1-41220-00118'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.95',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00266
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00266', 2024, '70.86'
FROM facilities WHERE admin_sym = '1-41220-00266'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41220-00155
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41220-00155', 2024, '61.61'
FROM facilities WHERE admin_sym = '1-41220-00155'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00117
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00117', 2024, '70.96'
FROM facilities WHERE admin_sym = '1-41650-00117'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00238
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00238', 2024, '77.1'
FROM facilities WHERE admin_sym = '1-41650-00238'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00143
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00143', 2024, '85.95'
FROM facilities WHERE admin_sym = '1-41650-00143'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.95',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00192
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00192', 2024, '75.35'
FROM facilities WHERE admin_sym = '1-41650-00192'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00018', 2024, '92.68'
FROM facilities WHERE admin_sym = '1-41650-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00010', 2024, '83.53'
FROM facilities WHERE admin_sym = '1-41650-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.53',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00303
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00303', 2024, '65.11'
FROM facilities WHERE admin_sym = '1-41650-00303'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.11',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00220
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00220', 2024, '90.32'
FROM facilities WHERE admin_sym = '1-41650-00220'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00011', 2024, '85.6'
FROM facilities WHERE admin_sym = '1-41650-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00035
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00035', 2024, '81.35'
FROM facilities WHERE admin_sym = '1-41650-00035'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00164
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00164', 2024, '89.85'
FROM facilities WHERE admin_sym = '1-41650-00164'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00271
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00271', 2024, '85.85'
FROM facilities WHERE admin_sym = '1-41650-00271'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00037', 2024, '75.1'
FROM facilities WHERE admin_sym = '1-41650-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00118
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00118', 2024, '71.81'
FROM facilities WHERE admin_sym = '1-41650-00118'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00168
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00168', 2024, '67.37'
FROM facilities WHERE admin_sym = '1-41650-00168'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.37',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00203
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00203', 2024, '81.62'
FROM facilities WHERE admin_sym = '1-41650-00203'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.62',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00227
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00227', 2024, '82.31'
FROM facilities WHERE admin_sym = '1-41650-00227'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00251
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00251', 2024, '86.32'
FROM facilities WHERE admin_sym = '1-41650-00251'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00043
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00043', 2024, '87.02'
FROM facilities WHERE admin_sym = '1-41650-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00245
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00245', 2024, '86.4'
FROM facilities WHERE admin_sym = '1-41650-00245'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00283
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00283', 2024, '45.85'
FROM facilities WHERE admin_sym = '1-41650-00283'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '45.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00310
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00310', 2024, '81.09'
FROM facilities WHERE admin_sym = '1-41650-00310'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.09',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00141
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00141', 2024, '78.68'
FROM facilities WHERE admin_sym = '1-41650-00141'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00056
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00056', 2024, '73.9'
FROM facilities WHERE admin_sym = '1-41650-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.9',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00237
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00237', 2024, '68.28'
FROM facilities WHERE admin_sym = '1-41650-00237'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.28',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00128
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00128', 2024, '85.14'
FROM facilities WHERE admin_sym = '1-41650-00128'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00201
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00201', 2024, '52.48'
FROM facilities WHERE admin_sym = '1-41650-00201'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '52.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00276
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00276', 2024, '56.98'
FROM facilities WHERE admin_sym = '1-41650-00276'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00126
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00126', 2024, '93.85'
FROM facilities WHERE admin_sym = '1-41650-00126'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00206
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00206', 2024, '91.05'
FROM facilities WHERE admin_sym = '1-41650-00206'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00160
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00160', 2024, '94.05'
FROM facilities WHERE admin_sym = '1-41650-00160'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00009', 2024, '96.03'
FROM facilities WHERE admin_sym = '1-41650-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.03',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00288
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00288', 2024, '57.75'
FROM facilities WHERE admin_sym = '1-41650-00288'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.75',
  last_updated = CURRENT_TIMESTAMP;

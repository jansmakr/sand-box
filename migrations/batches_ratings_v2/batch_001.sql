-- Batch 1 of 226
-- Processing 100 facilities

-- admin_sym: 3-11560-00273
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00273', 2024, '82.46'
FROM facilities WHERE admin_sym = '3-11560-00273'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11560-00319
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11560-00319', 2024, '91.04'
FROM facilities WHERE admin_sym = '2-11560-00319'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00063
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00063', 2024, '85.1'
FROM facilities WHERE admin_sym = '3-11560-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00275
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00275', 2024, '91.6'
FROM facilities WHERE admin_sym = '3-11560-00275'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00279
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00279', 2024, '85.85'
FROM facilities WHERE admin_sym = '3-11560-00279'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00225
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00225', 2024, '91.6'
FROM facilities WHERE admin_sym = '3-11560-00225'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11560-00163
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11560-00163', 2024, '92.16'
FROM facilities WHERE admin_sym = '2-11560-00163'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11560-00321
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11560-00321', 2024, '87.49'
FROM facilities WHERE admin_sym = '2-11560-00321'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11560-00331
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11560-00331', 2024, '53.23'
FROM facilities WHERE admin_sym = '2-11560-00331'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.23',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00047
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00047', 2024, '78.35'
FROM facilities WHERE admin_sym = '3-11560-00047'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00161
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00161', 2024, '78.3'
FROM facilities WHERE admin_sym = '3-11560-00161'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00107
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00107', 2024, '73.05'
FROM facilities WHERE admin_sym = '3-11560-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00103
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00103', 2024, '89.29'
FROM facilities WHERE admin_sym = '3-11560-00103'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00099
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00099', 2024, '73.35'
FROM facilities WHERE admin_sym = '3-11560-00099'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11560-00283
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11560-00283', 2024, '60.55'
FROM facilities WHERE admin_sym = '2-11560-00283'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00031
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00031', 2024, '74.05'
FROM facilities WHERE admin_sym = '3-11560-00031'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00245
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00245', 2024, '67.3'
FROM facilities WHERE admin_sym = '3-11560-00245'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11560-00325
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11560-00325', 2024, '72.02'
FROM facilities WHERE admin_sym = '2-11560-00325'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00233
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00233', 2024, '80.35'
FROM facilities WHERE admin_sym = '3-11560-00233'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11560-00323
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11560-00323', 2024, '71.85'
FROM facilities WHERE admin_sym = '2-11560-00323'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00299
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00299', 2024, '61.1'
FROM facilities WHERE admin_sym = '3-11560-00299'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00215
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00215', 2024, '56.55'
FROM facilities WHERE admin_sym = '3-11560-00215'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11560-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11560-00007', 2024, '68.35'
FROM facilities WHERE admin_sym = '2-11560-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00175
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00175', 2024, '79.5'
FROM facilities WHERE admin_sym = '3-11560-00175'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00041
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00041', 2024, '85.3'
FROM facilities WHERE admin_sym = '3-11560-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00291
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00291', 2024, '81.1'
FROM facilities WHERE admin_sym = '3-11560-00291'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00217
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00217', 2024, '88.1'
FROM facilities WHERE admin_sym = '3-11560-00217'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00289
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00289', 2024, '84.35'
FROM facilities WHERE admin_sym = '3-11560-00289'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00069
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00069', 2024, '86.05'
FROM facilities WHERE admin_sym = '3-11560-00069'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00073
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00073', 2024, '78.85'
FROM facilities WHERE admin_sym = '3-11560-00073'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11560-00335
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11560-00335', 2024, '68.74'
FROM facilities WHERE admin_sym = '2-11560-00335'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11560-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11560-00009', 2024, '97.35'
FROM facilities WHERE admin_sym = '2-11560-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11560-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11560-00003', 2024, '88.35'
FROM facilities WHERE admin_sym = '2-11560-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00149
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00149', 2024, '48.43'
FROM facilities WHERE admin_sym = '3-11560-00149'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '48.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11560-00327
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11560-00327', 2024, '82.21'
FROM facilities WHERE admin_sym = '2-11560-00327'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00063
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00063', 2024, '85.35'
FROM facilities WHERE admin_sym = '3-11560-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00107
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00107', 2024, '69.8'
FROM facilities WHERE admin_sym = '3-11560-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11560-00251
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11560-00251', 2024, '71.1'
FROM facilities WHERE admin_sym = '2-11560-00251'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11560-00253
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11560-00253', 2024, '94.1'
FROM facilities WHERE admin_sym = '2-11560-00253'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11560-00259
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11560-00259', 2024, '77.6'
FROM facilities WHERE admin_sym = '2-11560-00259'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11560-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11560-00009', 2024, '95.35'
FROM facilities WHERE admin_sym = '2-11560-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11560-00211
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11560-00211', 2024, '95.1'
FROM facilities WHERE admin_sym = '2-11560-00211'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00097
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00097', 2024, '89.6'
FROM facilities WHERE admin_sym = '3-11560-00097'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11560-00045
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11560-00045', 2024, '70.75'
FROM facilities WHERE admin_sym = '3-11560-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11215-00281
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11215-00281', 2024, '68.6'
FROM facilities WHERE admin_sym = '2-11215-00281'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00265
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00265', 2024, '84.6'
FROM facilities WHERE admin_sym = '3-11215-00265'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00123
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00123', 2024, '90.85'
FROM facilities WHERE admin_sym = '3-11215-00123'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11215-00309
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11215-00309', 2024, '50.97'
FROM facilities WHERE admin_sym = '2-11215-00309'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00189
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00189', 2024, '60.88'
FROM facilities WHERE admin_sym = '3-11215-00189'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11215-00307
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11215-00307', 2024, '76.71'
FROM facilities WHERE admin_sym = '2-11215-00307'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11215-00295
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11215-00295', 2024, '76.29'
FROM facilities WHERE admin_sym = '2-11215-00295'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00249
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00249', 2024, '88.85'
FROM facilities WHERE admin_sym = '3-11215-00249'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00247
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00247', 2024, '57.8'
FROM facilities WHERE admin_sym = '3-11215-00247'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11215-00279
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11215-00279', 2024, '75.85'
FROM facilities WHERE admin_sym = '2-11215-00279'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00037', 2024, '79.35'
FROM facilities WHERE admin_sym = '3-11215-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00259
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00259', 2024, '78.35'
FROM facilities WHERE admin_sym = '3-11215-00259'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00049
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00049', 2024, '70.24'
FROM facilities WHERE admin_sym = '3-11215-00049'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11215-00235
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11215-00235', 2024, '85.35'
FROM facilities WHERE admin_sym = '2-11215-00235'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00241
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00241', 2024, '65.71'
FROM facilities WHERE admin_sym = '3-11215-00241'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00023', 2024, '82.82'
FROM facilities WHERE admin_sym = '3-11215-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00045
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00045', 2024, '73.6'
FROM facilities WHERE admin_sym = '3-11215-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00155
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00155', 2024, '85.35'
FROM facilities WHERE admin_sym = '3-11215-00155'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00237
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00237', 2024, '86.85'
FROM facilities WHERE admin_sym = '3-11215-00237'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00191
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00191', 2024, '91.3'
FROM facilities WHERE admin_sym = '3-11215-00191'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00203
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00203', 2024, '84.1'
FROM facilities WHERE admin_sym = '3-11215-00203'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00263
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00263', 2024, '82.85'
FROM facilities WHERE admin_sym = '3-11215-00263'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00245
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00245', 2024, '76.35'
FROM facilities WHERE admin_sym = '3-11215-00245'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11215-00297
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11215-00297', 2024, '93.85'
FROM facilities WHERE admin_sym = '2-11215-00297'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00223
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00223', 2024, '63.85'
FROM facilities WHERE admin_sym = '3-11215-00223'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00267
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00267', 2024, '79.85'
FROM facilities WHERE admin_sym = '3-11215-00267'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00125', 2024, '76.8'
FROM facilities WHERE admin_sym = '3-11215-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00159
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00159', 2024, '80.35'
FROM facilities WHERE admin_sym = '3-11215-00159'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00155
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00155', 2024, '84.21'
FROM facilities WHERE admin_sym = '3-11215-00155'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00223
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00223', 2024, '54.99'
FROM facilities WHERE admin_sym = '3-11215-00223'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11215-00243
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11215-00243', 2024, '94.05'
FROM facilities WHERE admin_sym = '2-11215-00243'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11215-00235
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11215-00235', 2024, '92.1'
FROM facilities WHERE admin_sym = '2-11215-00235'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11215-00293
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11215-00293', 2024, '85.85'
FROM facilities WHERE admin_sym = '2-11215-00293'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11215-00283
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11215-00283', 2024, '83.85'
FROM facilities WHERE admin_sym = '2-11215-00283'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00197
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00197', 2024, '71.85'
FROM facilities WHERE admin_sym = '3-11215-00197'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00219
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00219', 2024, '76.42'
FROM facilities WHERE admin_sym = '3-11215-00219'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00023', 2024, '94.85'
FROM facilities WHERE admin_sym = '3-11215-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11215-00215
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11215-00215', 2024, '73.47'
FROM facilities WHERE admin_sym = '3-11215-00215'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11230-00325
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11230-00325', 2024, '86.6'
FROM facilities WHERE admin_sym = '3-11230-00325'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11230-00317
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11230-00317', 2024, '89.1'
FROM facilities WHERE admin_sym = '3-11230-00317'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11230-00119
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11230-00119', 2024, '86.1'
FROM facilities WHERE admin_sym = '3-11230-00119'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11230-00279
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11230-00279', 2024, '66.1'
FROM facilities WHERE admin_sym = '3-11230-00279'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11230-00359
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11230-00359', 2024, '89.85'
FROM facilities WHERE admin_sym = '2-11230-00359'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11230-00231
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11230-00231', 2024, '58.85'
FROM facilities WHERE admin_sym = '3-11230-00231'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11230-00369
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11230-00369', 2024, '93.02'
FROM facilities WHERE admin_sym = '2-11230-00369'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11230-00287
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11230-00287', 2024, '84.1'
FROM facilities WHERE admin_sym = '3-11230-00287'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11230-00153
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11230-00153', 2024, '74.8'
FROM facilities WHERE admin_sym = '3-11230-00153'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11230-00203
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11230-00203', 2024, '79.85'
FROM facilities WHERE admin_sym = '3-11230-00203'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11230-00049
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11230-00049', 2024, '86.1'
FROM facilities WHERE admin_sym = '3-11230-00049'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11230-00355
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11230-00355', 2024, '76.74'
FROM facilities WHERE admin_sym = '2-11230-00355'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11230-00245
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11230-00245', 2024, '76.05'
FROM facilities WHERE admin_sym = '3-11230-00245'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11230-00215
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11230-00215', 2024, '85.35'
FROM facilities WHERE admin_sym = '3-11230-00215'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11230-00137
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11230-00137', 2024, '88.85'
FROM facilities WHERE admin_sym = '3-11230-00137'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11230-00059
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11230-00059', 2024, '76.85'
FROM facilities WHERE admin_sym = '3-11230-00059'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11230-00301
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11230-00301', 2024, '68.05'
FROM facilities WHERE admin_sym = '2-11230-00301'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11230-00343
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11230-00343', 2024, '84.6'
FROM facilities WHERE admin_sym = '2-11230-00343'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

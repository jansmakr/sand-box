-- Batch 202 of 226
-- Processing 100 facilities

-- admin_sym: 1-41550-00114
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00114', 2024, '85.34'
FROM facilities WHERE admin_sym = '1-41550-00114'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.34',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41550-00110
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00110', 2024, '75.17'
FROM facilities WHERE admin_sym = '1-41550-00110'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41550-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00004', 2024, '88.19'
FROM facilities WHERE admin_sym = '1-41550-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.19',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41550-00175
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00175', 2024, '71.01'
FROM facilities WHERE admin_sym = '1-41550-00175'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.01',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41550-00115
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00115', 2024, '72.93'
FROM facilities WHERE admin_sym = '1-41550-00115'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41550-00078
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00078', 2024, '67.75'
FROM facilities WHERE admin_sym = '1-41550-00078'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41550-00102
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00102', 2024, '57.68'
FROM facilities WHERE admin_sym = '1-41550-00102'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41550-00166
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00166', 2024, '76.41'
FROM facilities WHERE admin_sym = '1-41550-00166'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41550-00122
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00122', 2024, '85.18'
FROM facilities WHERE admin_sym = '1-41550-00122'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41550-00123
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00123', 2024, '83.11'
FROM facilities WHERE admin_sym = '1-41550-00123'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.11',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41550-00117
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00117', 2024, '92.34'
FROM facilities WHERE admin_sym = '1-41550-00117'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.34',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41550-00121
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00121', 2024, '66.01'
FROM facilities WHERE admin_sym = '1-41550-00121'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.01',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41550-00133
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00133', 2024, '53.36'
FROM facilities WHERE admin_sym = '1-41550-00133'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.36',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41550-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00124', 2024, '85.33'
FROM facilities WHERE admin_sym = '1-41550-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41550-00195
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00195', 2024, '77.02'
FROM facilities WHERE admin_sym = '1-41550-00195'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41550-00178
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41550-00178', 2024, '86.49'
FROM facilities WHERE admin_sym = '1-41550-00178'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00182
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00182', 2024, '64.6'
FROM facilities WHERE admin_sym = '1-41170-00182'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00194
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00194', 2024, '76.76'
FROM facilities WHERE admin_sym = '1-41170-00194'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.76',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00363
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00363', 2024, '88.6'
FROM facilities WHERE admin_sym = '1-41170-00363'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00293
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00293', 2024, '89.1'
FROM facilities WHERE admin_sym = '1-41170-00293'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00349
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00349', 2024, '84.99'
FROM facilities WHERE admin_sym = '1-41170-00349'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00398
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00398', 2024, '98.55'
FROM facilities WHERE admin_sym = '1-41170-00398'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00249
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00249', 2024, '60.09'
FROM facilities WHERE admin_sym = '1-41170-00249'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.09',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00258
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00258', 2024, '70.73'
FROM facilities WHERE admin_sym = '1-41170-00258'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.73',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00056
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00056', 2024, '71.8'
FROM facilities WHERE admin_sym = '1-41170-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00146
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00146', 2024, '86.55'
FROM facilities WHERE admin_sym = '1-41170-00146'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00159
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00159', 2024, '90.8'
FROM facilities WHERE admin_sym = '1-41170-00159'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00326
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00326', 2024, '82.35'
FROM facilities WHERE admin_sym = '1-41170-00326'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00275
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00275', 2024, '81.6'
FROM facilities WHERE admin_sym = '1-41170-00275'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00340
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00340', 2024, '65.93'
FROM facilities WHERE admin_sym = '1-41170-00340'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00367
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00367', 2024, '81.54'
FROM facilities WHERE admin_sym = '1-41170-00367'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00195
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00195', 2024, '67.8'
FROM facilities WHERE admin_sym = '1-41170-00195'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00003', 2024, '97.6'
FROM facilities WHERE admin_sym = '1-41170-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00347
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00347', 2024, '87.6'
FROM facilities WHERE admin_sym = '1-41170-00347'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00211
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00211', 2024, '81.25'
FROM facilities WHERE admin_sym = '1-41170-00211'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00370
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00370', 2024, '78.22'
FROM facilities WHERE admin_sym = '1-41170-00370'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.22',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00209
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00209', 2024, '85.88'
FROM facilities WHERE admin_sym = '1-41170-00209'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00248
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00248', 2024, '80.52'
FROM facilities WHERE admin_sym = '1-41170-00248'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00005', 2024, '70.01'
FROM facilities WHERE admin_sym = '1-41170-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.01',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00341
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00341', 2024, '85.33'
FROM facilities WHERE admin_sym = '1-41170-00341'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00374
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00374', 2024, '92.67'
FROM facilities WHERE admin_sym = '1-41170-00374'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00425
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00425', 2024, '81.98'
FROM facilities WHERE admin_sym = '1-41170-00425'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00426
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00426', 2024, '71.92'
FROM facilities WHERE admin_sym = '1-41170-00426'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.92',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00271
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00271', 2024, '66.12'
FROM facilities WHERE admin_sym = '1-41170-00271'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00272
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00272', 2024, '90.49'
FROM facilities WHERE admin_sym = '1-41170-00272'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00273
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00273', 2024, '57.82'
FROM facilities WHERE admin_sym = '1-41170-00273'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00372
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00372', 2024, '76.51'
FROM facilities WHERE admin_sym = '1-41170-00372'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.51',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41170-00180
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41170-00180', 2024, '74.09'
FROM facilities WHERE admin_sym = '1-41170-00180'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.09',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00365
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00365', 2024, '82.2'
FROM facilities WHERE admin_sym = '1-41630-00365'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.2',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00297
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00297', 2024, '65.55'
FROM facilities WHERE admin_sym = '1-41630-00297'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00278
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00278', 2024, '82.8'
FROM facilities WHERE admin_sym = '1-41630-00278'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00352
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00352', 2024, '67.33'
FROM facilities WHERE admin_sym = '1-41630-00352'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00329
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00329', 2024, '82.08'
FROM facilities WHERE admin_sym = '1-41630-00329'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00174
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00174', 2024, '63'
FROM facilities WHERE admin_sym = '1-41630-00174'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00081
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00081', 2024, '78.1'
FROM facilities WHERE admin_sym = '1-41630-00081'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00324
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00324', 2024, '71.85'
FROM facilities WHERE admin_sym = '1-41630-00324'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00194
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00194', 2024, '86.85'
FROM facilities WHERE admin_sym = '1-41630-00194'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00301
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00301', 2024, '72.28'
FROM facilities WHERE admin_sym = '1-41630-00301'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.28',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00321
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00321', 2024, '74.5'
FROM facilities WHERE admin_sym = '1-41630-00321'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00300
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00300', 2024, '66.01'
FROM facilities WHERE admin_sym = '1-41630-00300'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.01',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00131
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00131', 2024, '91.6'
FROM facilities WHERE admin_sym = '1-41630-00131'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00015
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00015', 2024, '79.75'
FROM facilities WHERE admin_sym = '1-41630-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00371
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00371', 2024, '75.85'
FROM facilities WHERE admin_sym = '1-41630-00371'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00011', 2024, '79.85'
FROM facilities WHERE admin_sym = '1-41630-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00010', 2024, '90.3'
FROM facilities WHERE admin_sym = '1-41630-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00331
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00331', 2024, '74.76'
FROM facilities WHERE admin_sym = '1-41630-00331'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.76',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00187
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00187', 2024, '73.05'
FROM facilities WHERE admin_sym = '1-41630-00187'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00172
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00172', 2024, '73.1'
FROM facilities WHERE admin_sym = '1-41630-00172'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00341
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00341', 2024, '74.59'
FROM facilities WHERE admin_sym = '1-41630-00341'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.59',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00091
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00091', 2024, '79.06'
FROM facilities WHERE admin_sym = '1-41630-00091'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00168
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00168', 2024, '77.6'
FROM facilities WHERE admin_sym = '1-41630-00168'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00260
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00260', 2024, '69.55'
FROM facilities WHERE admin_sym = '1-41630-00260'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00237
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00237', 2024, '77.35'
FROM facilities WHERE admin_sym = '1-41630-00237'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00354
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00354', 2024, '83.1'
FROM facilities WHERE admin_sym = '1-41630-00354'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00155
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00155', 2024, '76.35'
FROM facilities WHERE admin_sym = '1-41630-00155'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00310
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00310', 2024, '82.08'
FROM facilities WHERE admin_sym = '1-41630-00310'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00291
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00291', 2024, '67.46'
FROM facilities WHERE admin_sym = '1-41630-00291'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00347
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00347', 2024, '69.43'
FROM facilities WHERE admin_sym = '1-41630-00347'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00328
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00328', 2024, '81.38'
FROM facilities WHERE admin_sym = '1-41630-00328'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00191
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00191', 2024, '86.22'
FROM facilities WHERE admin_sym = '1-41630-00191'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.22',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00372
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00372', 2024, '74.9'
FROM facilities WHERE admin_sym = '1-41630-00372'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.9',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00177
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00177', 2024, '79.63'
FROM facilities WHERE admin_sym = '1-41630-00177'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00021
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00021', 2024, '69.88'
FROM facilities WHERE admin_sym = '1-41630-00021'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00019
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00019', 2024, '79.39'
FROM facilities WHERE admin_sym = '1-41630-00019'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.39',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00016
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00016', 2024, '76.24'
FROM facilities WHERE admin_sym = '1-41630-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00368
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00368', 2024, '79.46'
FROM facilities WHERE admin_sym = '1-41630-00368'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00283
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00283', 2024, '63.89'
FROM facilities WHERE admin_sym = '1-41630-00283'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00358
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00358', 2024, '76.16'
FROM facilities WHERE admin_sym = '1-41630-00358'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00084
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00084', 2024, '58.02'
FROM facilities WHERE admin_sym = '1-41630-00084'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00181
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00181', 2024, '87.2'
FROM facilities WHERE admin_sym = '1-41630-00181'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.2',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00254
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00254', 2024, '81.59'
FROM facilities WHERE admin_sym = '1-41630-00254'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.59',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00294
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00294', 2024, '64.55'
FROM facilities WHERE admin_sym = '1-41630-00294'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00199
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00199', 2024, '59.02'
FROM facilities WHERE admin_sym = '1-41630-00199'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00149
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00149', 2024, '70.42'
FROM facilities WHERE admin_sym = '1-41630-00149'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00052
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00052', 2024, '71.91'
FROM facilities WHERE admin_sym = '1-41630-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00327
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00327', 2024, '86.05'
FROM facilities WHERE admin_sym = '1-41630-00327'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00137
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00137', 2024, '82.3'
FROM facilities WHERE admin_sym = '1-41630-00137'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00338
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00338', 2024, '65.31'
FROM facilities WHERE admin_sym = '1-41630-00338'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00313
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00313', 2024, '64.59'
FROM facilities WHERE admin_sym = '1-41630-00313'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.59',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41630-00251
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41630-00251', 2024, '88.34'
FROM facilities WHERE admin_sym = '1-41630-00251'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.34',
  last_updated = CURRENT_TIMESTAMP;

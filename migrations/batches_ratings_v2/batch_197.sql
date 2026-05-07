-- Batch 197 of 226
-- Processing 100 facilities

-- admin_sym: 1-41410-00286
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41410-00286', 2024, '66.96'
FROM facilities WHERE admin_sym = '1-41410-00286'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41410-00287
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41410-00287', 2024, '74.31'
FROM facilities WHERE admin_sym = '1-41410-00287'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41410-00259
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41410-00259', 2024, '81.54'
FROM facilities WHERE admin_sym = '1-41410-00259'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41410-00260
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41410-00260', 2024, '76.3'
FROM facilities WHERE admin_sym = '1-41410-00260'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41410-00261
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41410-00261', 2024, '69.71'
FROM facilities WHERE admin_sym = '1-41410-00261'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00171
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00171', 2024, '65.6'
FROM facilities WHERE admin_sym = '1-41570-00171'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00200
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00200', 2024, '71.6'
FROM facilities WHERE admin_sym = '1-41570-00200'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00238
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00238', 2024, '91.6'
FROM facilities WHERE admin_sym = '1-41570-00238'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00309
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00309', 2024, '59.35'
FROM facilities WHERE admin_sym = '1-41570-00309'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00162
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00162', 2024, '91.85'
FROM facilities WHERE admin_sym = '1-41570-00162'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00109
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00109', 2024, '96.6'
FROM facilities WHERE admin_sym = '1-41570-00109'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00212
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00212', 2024, '93.1'
FROM facilities WHERE admin_sym = '1-41570-00212'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00297
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00297', 2024, '62.52'
FROM facilities WHERE admin_sym = '1-41570-00297'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00265
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00265', 2024, '79.08'
FROM facilities WHERE admin_sym = '1-41570-00265'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00221
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00221', 2024, '84.3'
FROM facilities WHERE admin_sym = '1-41570-00221'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00209
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00209', 2024, '71.21'
FROM facilities WHERE admin_sym = '1-41570-00209'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00025
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00025', 2024, '73.53'
FROM facilities WHERE admin_sym = '1-41570-00025'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.53',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00330
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00330', 2024, '75.02'
FROM facilities WHERE admin_sym = '1-41570-00330'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00013
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00013', 2024, '69.31'
FROM facilities WHERE admin_sym = '1-41570-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00007', 2024, '94.42'
FROM facilities WHERE admin_sym = '1-41570-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00031
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00031', 2024, '96.56'
FROM facilities WHERE admin_sym = '1-41570-00031'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.56',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00075
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00075', 2024, '35.77'
FROM facilities WHERE admin_sym = '1-41570-00075'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '35.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00146
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00146', 2024, '65.63'
FROM facilities WHERE admin_sym = '1-41570-00146'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00176
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00176', 2024, '70.71'
FROM facilities WHERE admin_sym = '1-41570-00176'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00174
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00174', 2024, '85.12'
FROM facilities WHERE admin_sym = '1-41570-00174'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00266
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00266', 2024, '45.63'
FROM facilities WHERE admin_sym = '1-41570-00266'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '45.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00211
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00211', 2024, '56.5'
FROM facilities WHERE admin_sym = '1-41570-00211'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00147
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00147', 2024, '57.7'
FROM facilities WHERE admin_sym = '1-41570-00147'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00261
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00261', 2024, '85.76'
FROM facilities WHERE admin_sym = '1-41570-00261'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.76',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00260
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00260', 2024, '81.4'
FROM facilities WHERE admin_sym = '1-41570-00260'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00157
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00157', 2024, '59.29'
FROM facilities WHERE admin_sym = '1-41570-00157'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00214
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00214', 2024, '72.97'
FROM facilities WHERE admin_sym = '1-41570-00214'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00227
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00227', 2024, '64.18'
FROM facilities WHERE admin_sym = '1-41570-00227'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00156
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00156', 2024, '51.19'
FROM facilities WHERE admin_sym = '1-41570-00156'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '51.19',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41570-00167
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41570-00167', 2024, '97.48'
FROM facilities WHERE admin_sym = '1-41570-00167'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00326
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00326', 2024, '75.88'
FROM facilities WHERE admin_sym = '1-41360-00326'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00664
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00664', 2024, '80.8'
FROM facilities WHERE admin_sym = '1-41360-00664'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00354
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00354', 2024, '84.55'
FROM facilities WHERE admin_sym = '1-41360-00354'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00251
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00251', 2024, '82.1'
FROM facilities WHERE admin_sym = '1-41360-00251'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00840
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00840', 2024, '69.85'
FROM facilities WHERE admin_sym = '1-41360-00840'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00349
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00349', 2024, '63.4'
FROM facilities WHERE admin_sym = '1-41360-00349'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00743
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00743', 2024, '57.01'
FROM facilities WHERE admin_sym = '1-41360-00743'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.01',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00810
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00810', 2024, '84.25'
FROM facilities WHERE admin_sym = '1-41360-00810'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00452
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00452', 2024, '80.85'
FROM facilities WHERE admin_sym = '1-41360-00452'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00669
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00669', 2024, '73.35'
FROM facilities WHERE admin_sym = '1-41360-00669'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00835
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00835', 2024, '69.55'
FROM facilities WHERE admin_sym = '1-41360-00835'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00744
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00744', 2024, '67.35'
FROM facilities WHERE admin_sym = '1-41360-00744'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00016
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00016', 2024, '90.05'
FROM facilities WHERE admin_sym = '1-41360-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00785
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00785', 2024, '88.1'
FROM facilities WHERE admin_sym = '1-41360-00785'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00390
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00390', 2024, '88.1'
FROM facilities WHERE admin_sym = '1-41360-00390'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00560
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00560', 2024, '71.6'
FROM facilities WHERE admin_sym = '1-41360-00560'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00319
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00319', 2024, '89.9'
FROM facilities WHERE admin_sym = '1-41360-00319'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.9',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00242
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00242', 2024, '82.5'
FROM facilities WHERE admin_sym = '1-41360-00242'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00820
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00820', 2024, '84.14'
FROM facilities WHERE admin_sym = '1-41360-00820'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00407
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00407', 2024, '58.76'
FROM facilities WHERE admin_sym = '1-41360-00407'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.76',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00421
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00421', 2024, '84.86'
FROM facilities WHERE admin_sym = '1-41360-00421'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00819
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00819', 2024, '81.13'
FROM facilities WHERE admin_sym = '1-41360-00819'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00788
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00788', 2024, '53.05'
FROM facilities WHERE admin_sym = '1-41360-00788'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00408
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00408', 2024, '86.55'
FROM facilities WHERE admin_sym = '1-41360-00408'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00384
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00384', 2024, '91.35'
FROM facilities WHERE admin_sym = '1-41360-00384'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00498
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00498', 2024, '72.17'
FROM facilities WHERE admin_sym = '1-41360-00498'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00014
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00014', 2024, '78.95'
FROM facilities WHERE admin_sym = '1-41360-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.95',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00537
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00537', 2024, '85.29'
FROM facilities WHERE admin_sym = '1-41360-00537'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00514
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00514', 2024, '75.25'
FROM facilities WHERE admin_sym = '1-41360-00514'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00601
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00601', 2024, '80.85'
FROM facilities WHERE admin_sym = '1-41360-00601'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00412
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00412', 2024, '86.6'
FROM facilities WHERE admin_sym = '1-41360-00412'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00610
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00610', 2024, '75.85'
FROM facilities WHERE admin_sym = '1-41360-00610'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00706
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00706', 2024, '82.6'
FROM facilities WHERE admin_sym = '1-41360-00706'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00685
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00685', 2024, '77.93'
FROM facilities WHERE admin_sym = '1-41360-00685'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00634
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00634', 2024, '81.6'
FROM facilities WHERE admin_sym = '1-41360-00634'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00741
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00741', 2024, '66.5'
FROM facilities WHERE admin_sym = '1-41360-00741'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00623
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00623', 2024, '97.1'
FROM facilities WHERE admin_sym = '1-41360-00623'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00236
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00236', 2024, '93.6'
FROM facilities WHERE admin_sym = '1-41360-00236'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00094
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00094', 2024, '97.8'
FROM facilities WHERE admin_sym = '1-41360-00094'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00356
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00356', 2024, '96.6'
FROM facilities WHERE admin_sym = '1-41360-00356'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00478
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00478', 2024, '95.1'
FROM facilities WHERE admin_sym = '1-41360-00478'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00369
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00369', 2024, '78.68'
FROM facilities WHERE admin_sym = '1-41360-00369'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00517
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00517', 2024, '77.79'
FROM facilities WHERE admin_sym = '1-41360-00517'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00656
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00656', 2024, '60.24'
FROM facilities WHERE admin_sym = '1-41360-00656'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00651
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00651', 2024, '70.77'
FROM facilities WHERE admin_sym = '1-41360-00651'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00640
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00640', 2024, '82.02'
FROM facilities WHERE admin_sym = '1-41360-00640'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00026
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00026', 2024, '82.14'
FROM facilities WHERE admin_sym = '1-41360-00026'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00450
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00450', 2024, '59.76'
FROM facilities WHERE admin_sym = '1-41360-00450'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.76',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00759
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00759', 2024, '78.09'
FROM facilities WHERE admin_sym = '1-41360-00759'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.09',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00635
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00635', 2024, '54.48'
FROM facilities WHERE admin_sym = '1-41360-00635'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00548
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00548', 2024, '72.59'
FROM facilities WHERE admin_sym = '1-41360-00548'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.59',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00734
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00734', 2024, '69.64'
FROM facilities WHERE admin_sym = '1-41360-00734'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00572
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00572', 2024, '77.06'
FROM facilities WHERE admin_sym = '1-41360-00572'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00729
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00729', 2024, '83.61'
FROM facilities WHERE admin_sym = '1-41360-00729'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00502
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00502', 2024, '76.37'
FROM facilities WHERE admin_sym = '1-41360-00502'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.37',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00749
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00749', 2024, '79.36'
FROM facilities WHERE admin_sym = '1-41360-00749'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.36',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00665
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00665', 2024, '82.41'
FROM facilities WHERE admin_sym = '1-41360-00665'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00536
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00536', 2024, '83.43'
FROM facilities WHERE admin_sym = '1-41360-00536'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00060
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00060', 2024, '48.14'
FROM facilities WHERE admin_sym = '1-41360-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '48.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00659
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00659', 2024, '67.64'
FROM facilities WHERE admin_sym = '1-41360-00659'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00480
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00480', 2024, '88.8'
FROM facilities WHERE admin_sym = '1-41360-00480'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00458
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00458', 2024, '68.48'
FROM facilities WHERE admin_sym = '1-41360-00458'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00577
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00577', 2024, '72.8'
FROM facilities WHERE admin_sym = '1-41360-00577'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00778
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00778', 2024, '72.98'
FROM facilities WHERE admin_sym = '1-41360-00778'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41360-00796
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41360-00796', 2024, '49.25'
FROM facilities WHERE admin_sym = '1-41360-00796'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.25',
  last_updated = CURRENT_TIMESTAMP;

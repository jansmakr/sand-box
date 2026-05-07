-- Batch 207 of 226
-- Processing 100 facilities

-- admin_sym: 1-41650-00239
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00239', 2024, '73.7'
FROM facilities WHERE admin_sym = '1-41650-00239'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00191
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00191', 2024, '75.13'
FROM facilities WHERE admin_sym = '1-41650-00191'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00265
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00265', 2024, '69.62'
FROM facilities WHERE admin_sym = '1-41650-00265'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.62',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00306
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00306', 2024, '67.94'
FROM facilities WHERE admin_sym = '1-41650-00306'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00174
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00174', 2024, '87.98'
FROM facilities WHERE admin_sym = '1-41650-00174'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00021
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00021', 2024, '65.06'
FROM facilities WHERE admin_sym = '1-41650-00021'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00278
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00278', 2024, '78.09'
FROM facilities WHERE admin_sym = '1-41650-00278'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.09',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00148
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00148', 2024, '85.24'
FROM facilities WHERE admin_sym = '1-41650-00148'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00263
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00263', 2024, '52.95'
FROM facilities WHERE admin_sym = '1-41650-00263'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '52.95',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00182
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00182', 2024, '88.73'
FROM facilities WHERE admin_sym = '1-41650-00182'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.73',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00059
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00059', 2024, '44.67'
FROM facilities WHERE admin_sym = '1-41650-00059'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '44.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00124', 2024, '72.61'
FROM facilities WHERE admin_sym = '1-41650-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41650-00218
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41650-00218', 2024, '77.86'
FROM facilities WHERE admin_sym = '1-41650-00218'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41450-00140
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41450-00140', 2024, '70.75'
FROM facilities WHERE admin_sym = '1-41450-00140'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41450-00065
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41450-00065', 2024, '90.5'
FROM facilities WHERE admin_sym = '1-41450-00065'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41450-00069
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41450-00069', 2024, '80.6'
FROM facilities WHERE admin_sym = '1-41450-00069'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41450-00158
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41450-00158', 2024, '79.1'
FROM facilities WHERE admin_sym = '1-41450-00158'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41450-00053
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41450-00053', 2024, '85'
FROM facilities WHERE admin_sym = '1-41450-00053'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41450-00169
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41450-00169', 2024, '73.6'
FROM facilities WHERE admin_sym = '1-41450-00169'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41450-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41450-00022', 2024, '96.6'
FROM facilities WHERE admin_sym = '1-41450-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41450-00081
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41450-00081', 2024, '83.65'
FROM facilities WHERE admin_sym = '1-41450-00081'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.65',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41450-00050
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41450-00050', 2024, '77.19'
FROM facilities WHERE admin_sym = '1-41450-00050'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.19',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41450-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41450-00125', 2024, '53.8'
FROM facilities WHERE admin_sym = '1-41450-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41450-00066
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41450-00066', 2024, '67.16'
FROM facilities WHERE admin_sym = '1-41450-00066'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41450-00165
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41450-00165', 2024, '80.72'
FROM facilities WHERE admin_sym = '1-41450-00165'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00023', 2024, '93.6'
FROM facilities WHERE admin_sym = '1-41590-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00024
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00024', 2024, '71.1'
FROM facilities WHERE admin_sym = '1-41590-00024'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00461
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00461', 2024, '94.6'
FROM facilities WHERE admin_sym = '1-41590-00461'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00088', 2024, '69.85'
FROM facilities WHERE admin_sym = '1-41590-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00460
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00460', 2024, '84.75'
FROM facilities WHERE admin_sym = '1-41590-00460'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00008', 2024, '78.6'
FROM facilities WHERE admin_sym = '1-41590-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00374
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00374', 2024, '69.61'
FROM facilities WHERE admin_sym = '1-41590-00374'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00279
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00279', 2024, '90.35'
FROM facilities WHERE admin_sym = '1-41590-00279'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00243
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00243', 2024, '73.5'
FROM facilities WHERE admin_sym = '1-41590-00243'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00434
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00434', 2024, '70.8'
FROM facilities WHERE admin_sym = '1-41590-00434'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00073
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00073', 2024, '96.85'
FROM facilities WHERE admin_sym = '1-41590-00073'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00230
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00230', 2024, '90.6'
FROM facilities WHERE admin_sym = '1-41590-00230'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00333
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00333', 2024, '92.1'
FROM facilities WHERE admin_sym = '1-41590-00333'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00077
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00077', 2024, '88.1'
FROM facilities WHERE admin_sym = '1-41590-00077'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00207
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00207', 2024, '62.48'
FROM facilities WHERE admin_sym = '1-41590-00207'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00419
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00419', 2024, '89.35'
FROM facilities WHERE admin_sym = '1-41590-00419'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00102
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00102', 2024, '64.02'
FROM facilities WHERE admin_sym = '1-41590-00102'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00009', 2024, '94.85'
FROM facilities WHERE admin_sym = '1-41590-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00007', 2024, '94.1'
FROM facilities WHERE admin_sym = '1-41590-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00412
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00412', 2024, '55.83'
FROM facilities WHERE admin_sym = '1-41590-00412'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00422
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00422', 2024, '81.51'
FROM facilities WHERE admin_sym = '1-41590-00422'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.51',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00350
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00350', 2024, '72.72'
FROM facilities WHERE admin_sym = '1-41590-00350'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00280
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00280', 2024, '85.44'
FROM facilities WHERE admin_sym = '1-41590-00280'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00364
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00364', 2024, '76.89'
FROM facilities WHERE admin_sym = '1-41590-00364'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00215
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00215', 2024, '65.65'
FROM facilities WHERE admin_sym = '1-41590-00215'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.65',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00211
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00211', 2024, '84.18'
FROM facilities WHERE admin_sym = '1-41590-00211'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00275
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00275', 2024, '79.12'
FROM facilities WHERE admin_sym = '1-41590-00275'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00377
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00377', 2024, '78.72'
FROM facilities WHERE admin_sym = '1-41590-00377'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00253
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00253', 2024, '71.96'
FROM facilities WHERE admin_sym = '1-41590-00253'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00198
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00198', 2024, '81.02'
FROM facilities WHERE admin_sym = '1-41590-00198'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00477
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00477', 2024, '87.97'
FROM facilities WHERE admin_sym = '1-41590-00477'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00394
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00394', 2024, '66.68'
FROM facilities WHERE admin_sym = '1-41590-00394'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00372
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00372', 2024, '69.06'
FROM facilities WHERE admin_sym = '1-41590-00372'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00370
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00370', 2024, '48.71'
FROM facilities WHERE admin_sym = '1-41590-00370'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '48.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00121
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00121', 2024, '92.6'
FROM facilities WHERE admin_sym = '1-41590-00121'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00396
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00396', 2024, '47.72'
FROM facilities WHERE admin_sym = '1-41590-00396'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '47.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00209
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00209', 2024, '79.38'
FROM facilities WHERE admin_sym = '1-41590-00209'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00217
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00217', 2024, '73.9'
FROM facilities WHERE admin_sym = '1-41590-00217'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.9',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00420
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00420', 2024, '65.82'
FROM facilities WHERE admin_sym = '1-41590-00420'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00187
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00187', 2024, '61.31'
FROM facilities WHERE admin_sym = '1-41590-00187'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00356
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00356', 2024, '61.02'
FROM facilities WHERE admin_sym = '1-41590-00356'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00132
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00132', 2024, '54'
FROM facilities WHERE admin_sym = '1-41590-00132'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00125', 2024, '59.45'
FROM facilities WHERE admin_sym = '1-41590-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.45',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00323
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00323', 2024, '73.14'
FROM facilities WHERE admin_sym = '1-41590-00323'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00448
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00448', 2024, '45.73'
FROM facilities WHERE admin_sym = '1-41590-00448'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '45.73',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00480
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00480', 2024, '49.38'
FROM facilities WHERE admin_sym = '1-41590-00480'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00221
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00221', 2024, '80.07'
FROM facilities WHERE admin_sym = '1-41590-00221'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.07',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00384
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00384', 2024, '74.26'
FROM facilities WHERE admin_sym = '1-41590-00384'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.26',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00435
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00435', 2024, '49.05'
FROM facilities WHERE admin_sym = '1-41590-00435'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00400
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00400', 2024, '61.63'
FROM facilities WHERE admin_sym = '1-41590-00400'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00352
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00352', 2024, '65.31'
FROM facilities WHERE admin_sym = '1-41590-00352'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00223
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00223', 2024, '66.02'
FROM facilities WHERE admin_sym = '1-41590-00223'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00013
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00013', 2024, '38.07'
FROM facilities WHERE admin_sym = '1-41590-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '38.07',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41590-00286
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41590-00286', 2024, '77.45'
FROM facilities WHERE admin_sym = '1-41590-00286'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.45',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00012', 2024, '55.6'
FROM facilities WHERE admin_sym = '1-42150-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00221
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00221', 2024, '90.31'
FROM facilities WHERE admin_sym = '1-42150-00221'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00003', 2024, '82.6'
FROM facilities WHERE admin_sym = '1-42150-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00215
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00215', 2024, '73.28'
FROM facilities WHERE admin_sym = '1-42150-00215'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.28',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00037', 2024, '74.85'
FROM facilities WHERE admin_sym = '1-42150-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00313
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00313', 2024, '61.49'
FROM facilities WHERE admin_sym = '1-42150-00313'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00176
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00176', 2024, '76.46'
FROM facilities WHERE admin_sym = '1-42150-00176'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00205
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00205', 2024, '79.35'
FROM facilities WHERE admin_sym = '1-42150-00205'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00174
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00174', 2024, '83.99'
FROM facilities WHERE admin_sym = '1-42150-00174'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00185
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00185', 2024, '55.92'
FROM facilities WHERE admin_sym = '1-42150-00185'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.92',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00121
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00121', 2024, '68.37'
FROM facilities WHERE admin_sym = '1-42150-00121'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.37',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00196
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00196', 2024, '80.02'
FROM facilities WHERE admin_sym = '1-42150-00196'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00093
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00093', 2024, '90.53'
FROM facilities WHERE admin_sym = '1-42150-00093'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.53',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00119
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00119', 2024, '78.45'
FROM facilities WHERE admin_sym = '1-42150-00119'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.45',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00151
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00151', 2024, '77.11'
FROM facilities WHERE admin_sym = '1-42150-00151'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.11',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00129
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00129', 2024, '62.39'
FROM facilities WHERE admin_sym = '1-42150-00129'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.39',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00195
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00195', 2024, '68.11'
FROM facilities WHERE admin_sym = '1-42150-00195'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.11',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00208
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00208', 2024, '87.8'
FROM facilities WHERE admin_sym = '1-42150-00208'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00226
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00226', 2024, '83.58'
FROM facilities WHERE admin_sym = '1-42150-00226'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00027
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00027', 2024, '67.7'
FROM facilities WHERE admin_sym = '1-42150-00027'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00138
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00138', 2024, '67.87'
FROM facilities WHERE admin_sym = '1-42150-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.87',
  last_updated = CURRENT_TIMESTAMP;

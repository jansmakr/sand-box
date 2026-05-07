-- Batch 209 of 226
-- Processing 100 facilities

-- admin_sym: 1-42130-00234
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00234', 2024, '70.05'
FROM facilities WHERE admin_sym = '1-42130-00234'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00180
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00180', 2024, '79.1'
FROM facilities WHERE admin_sym = '1-42130-00180'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00006', 2024, '82.35'
FROM facilities WHERE admin_sym = '1-42130-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00028
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00028', 2024, '80.35'
FROM facilities WHERE admin_sym = '1-42130-00028'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00107
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00107', 2024, '92.55'
FROM facilities WHERE admin_sym = '1-42130-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00221
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00221', 2024, '75.47'
FROM facilities WHERE admin_sym = '1-42130-00221'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00220
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00220', 2024, '70.45'
FROM facilities WHERE admin_sym = '1-42130-00220'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.45',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00201
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00201', 2024, '78.41'
FROM facilities WHERE admin_sym = '1-42130-00201'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00126
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00126', 2024, '86.42'
FROM facilities WHERE admin_sym = '1-42130-00126'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00100
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00100', 2024, '75.8'
FROM facilities WHERE admin_sym = '1-42130-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00267
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00267', 2024, '56.38'
FROM facilities WHERE admin_sym = '1-42130-00267'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00314
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00314', 2024, '52.19'
FROM facilities WHERE admin_sym = '1-42130-00314'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '52.19',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00117
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00117', 2024, '71.89'
FROM facilities WHERE admin_sym = '1-42130-00117'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00258
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00258', 2024, '95.05'
FROM facilities WHERE admin_sym = '1-42130-00258'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00160
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00160', 2024, '80.82'
FROM facilities WHERE admin_sym = '1-42130-00160'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00260
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00260', 2024, '64.16'
FROM facilities WHERE admin_sym = '1-42130-00260'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00300
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00300', 2024, '61.86'
FROM facilities WHERE admin_sym = '1-42130-00300'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00132
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00132', 2024, '73.95'
FROM facilities WHERE admin_sym = '1-42130-00132'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.95',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00303
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00303', 2024, '85.63'
FROM facilities WHERE admin_sym = '1-42130-00303'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00240
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00240', 2024, '61.88'
FROM facilities WHERE admin_sym = '1-42130-00240'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00168
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00168', 2024, '71.82'
FROM facilities WHERE admin_sym = '1-42130-00168'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00060
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00060', 2024, '85.32'
FROM facilities WHERE admin_sym = '1-42130-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00043
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00043', 2024, '68.04'
FROM facilities WHERE admin_sym = '1-42130-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00009', 2024, '67.27'
FROM facilities WHERE admin_sym = '1-42130-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00225
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00225', 2024, '66.32'
FROM facilities WHERE admin_sym = '1-42130-00225'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42810-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42810-00001', 2024, '83.35'
FROM facilities WHERE admin_sym = '1-42810-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42770-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42770-00010', 2024, '85.1'
FROM facilities WHERE admin_sym = '1-42770-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42770-00026
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42770-00026', 2024, '97.35'
FROM facilities WHERE admin_sym = '1-42770-00026'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42770-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42770-00005', 2024, '92.3'
FROM facilities WHERE admin_sym = '1-42770-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42770-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42770-00007', 2024, '70.46'
FROM facilities WHERE admin_sym = '1-42770-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42770-00033
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42770-00033', 2024, '76.37'
FROM facilities WHERE admin_sym = '1-42770-00033'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.37',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42770-00030
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42770-00030', 2024, '61.98'
FROM facilities WHERE admin_sym = '1-42770-00030'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42770-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42770-00003', 2024, '93.48'
FROM facilities WHERE admin_sym = '1-42770-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42770-00020
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42770-00020', 2024, '99.73'
FROM facilities WHERE admin_sym = '1-42770-00020'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '99.73',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42780-00030
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42780-00030', 2024, '61.52'
FROM facilities WHERE admin_sym = '1-42780-00030'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42780-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42780-00001', 2024, '94.55'
FROM facilities WHERE admin_sym = '1-42780-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42780-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42780-00044', 2024, '73.96'
FROM facilities WHERE admin_sym = '1-42780-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42780-00035
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42780-00035', 2024, '74.05'
FROM facilities WHERE admin_sym = '1-42780-00035'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42780-00045
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42780-00045', 2024, '81.91'
FROM facilities WHERE admin_sym = '1-42780-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42780-00039
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42780-00039', 2024, '58.54'
FROM facilities WHERE admin_sym = '1-42780-00039'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00348
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00348', 2024, '67.25'
FROM facilities WHERE admin_sym = '1-42110-00348'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00354
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00354', 2024, '91.74'
FROM facilities WHERE admin_sym = '1-42110-00354'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00011', 2024, '77.1'
FROM facilities WHERE admin_sym = '1-42110-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00204
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00204', 2024, '94.85'
FROM facilities WHERE admin_sym = '1-42110-00204'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00211
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00211', 2024, '92.87'
FROM facilities WHERE admin_sym = '1-42110-00211'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.87',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00144
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00144', 2024, '81.05'
FROM facilities WHERE admin_sym = '1-42110-00144'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00014
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00014', 2024, '89.6'
FROM facilities WHERE admin_sym = '1-42110-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00409
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00409', 2024, '94.35'
FROM facilities WHERE admin_sym = '1-42110-00409'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00010', 2024, '95.35'
FROM facilities WHERE admin_sym = '1-42110-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00217
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00217', 2024, '92.85'
FROM facilities WHERE admin_sym = '1-42110-00217'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00019
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00019', 2024, '98.85'
FROM facilities WHERE admin_sym = '1-42110-00019'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00243
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00243', 2024, '63.37'
FROM facilities WHERE admin_sym = '1-42110-00243'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.37',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00383
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00383', 2024, '78.48'
FROM facilities WHERE admin_sym = '1-42110-00383'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00389
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00389', 2024, '85.77'
FROM facilities WHERE admin_sym = '1-42110-00389'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00333
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00333', 2024, '43.97'
FROM facilities WHERE admin_sym = '1-42110-00333'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '43.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00292
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00292', 2024, '91.24'
FROM facilities WHERE admin_sym = '1-42110-00292'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00038
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00038', 2024, '89.14'
FROM facilities WHERE admin_sym = '1-42110-00038'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00358
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00358', 2024, '85.23'
FROM facilities WHERE admin_sym = '1-42110-00358'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.23',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00329
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00329', 2024, '89.77'
FROM facilities WHERE admin_sym = '1-42110-00329'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00365
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00365', 2024, '87.33'
FROM facilities WHERE admin_sym = '1-42110-00365'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00145
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00145', 2024, '81.81'
FROM facilities WHERE admin_sym = '1-42110-00145'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00332
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00332', 2024, '86.85'
FROM facilities WHERE admin_sym = '1-42110-00332'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00318
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00318', 2024, '75.3'
FROM facilities WHERE admin_sym = '1-42110-00318'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00363
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00363', 2024, '85.1'
FROM facilities WHERE admin_sym = '1-42110-00363'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00376
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00376', 2024, '93.27'
FROM facilities WHERE admin_sym = '1-42110-00376'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00186
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00186', 2024, '68.75'
FROM facilities WHERE admin_sym = '1-42110-00186'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00124', 2024, '91.96'
FROM facilities WHERE admin_sym = '1-42110-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00261
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00261', 2024, '95.41'
FROM facilities WHERE admin_sym = '1-42110-00261'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00167
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00167', 2024, '92.6'
FROM facilities WHERE admin_sym = '1-42110-00167'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00241
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00241', 2024, '91.35'
FROM facilities WHERE admin_sym = '1-42110-00241'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00398
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00398', 2024, '73.13'
FROM facilities WHERE admin_sym = '1-42110-00398'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00189
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00189', 2024, '64.07'
FROM facilities WHERE admin_sym = '1-42110-00189'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.07',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00335
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00335', 2024, '86.23'
FROM facilities WHERE admin_sym = '1-42110-00335'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.23',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00168
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00168', 2024, '75.2'
FROM facilities WHERE admin_sym = '1-42110-00168'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.2',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00288
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00288', 2024, '84.02'
FROM facilities WHERE admin_sym = '1-42110-00288'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00169
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00169', 2024, '72.89'
FROM facilities WHERE admin_sym = '1-42110-00169'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00279
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00279', 2024, '83.52'
FROM facilities WHERE admin_sym = '1-42110-00279'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00130
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00130', 2024, '84.29'
FROM facilities WHERE admin_sym = '1-42110-00130'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00381
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00381', 2024, '62.23'
FROM facilities WHERE admin_sym = '1-42110-00381'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.23',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00349
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00349', 2024, '49.28'
FROM facilities WHERE admin_sym = '1-42110-00349'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.28',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00397
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00397', 2024, '57.17'
FROM facilities WHERE admin_sym = '1-42110-00397'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00160
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00160', 2024, '50.31'
FROM facilities WHERE admin_sym = '1-42110-00160'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00400
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00400', 2024, '44.14'
FROM facilities WHERE admin_sym = '1-42110-00400'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '44.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00289
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00289', 2024, '65.75'
FROM facilities WHERE admin_sym = '1-42110-00289'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00170
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00170', 2024, '66.21'
FROM facilities WHERE admin_sym = '1-42110-00170'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00200
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00200', 2024, '61.87'
FROM facilities WHERE admin_sym = '1-42110-00200'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.87',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00120
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00120', 2024, '46.49'
FROM facilities WHERE admin_sym = '1-42110-00120'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '46.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00029
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00029', 2024, '57.11'
FROM facilities WHERE admin_sym = '1-42110-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.11',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00367
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00367', 2024, '38.78'
FROM facilities WHERE admin_sym = '1-42110-00367'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '38.78',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42110-00155
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42110-00155', 2024, '64.52'
FROM facilities WHERE admin_sym = '1-42110-00155'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42190-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42190-00003', 2024, '81.35'
FROM facilities WHERE admin_sym = '1-42190-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42190-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42190-00001', 2024, '99.3'
FROM facilities WHERE admin_sym = '1-42190-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '99.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42190-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42190-00002', 2024, '96.8'
FROM facilities WHERE admin_sym = '1-42190-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42760-00054
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42760-00054', 2024, '72.35'
FROM facilities WHERE admin_sym = '1-42760-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42760-00063
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42760-00063', 2024, '70.58'
FROM facilities WHERE admin_sym = '1-42760-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42760-00057
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42760-00057', 2024, '80.31'
FROM facilities WHERE admin_sym = '1-42760-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42760-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42760-00001', 2024, '94.73'
FROM facilities WHERE admin_sym = '1-42760-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.73',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42760-00026
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42760-00026', 2024, '92.69'
FROM facilities WHERE admin_sym = '1-42760-00026'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42760-00037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42760-00037', 2024, '71.52'
FROM facilities WHERE admin_sym = '1-42760-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42760-00027
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42760-00027', 2024, '70.61'
FROM facilities WHERE admin_sym = '1-42760-00027'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.61',
  last_updated = CURRENT_TIMESTAMP;

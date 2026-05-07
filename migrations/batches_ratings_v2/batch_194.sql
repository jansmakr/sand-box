-- Batch 194 of 226
-- Processing 100 facilities

-- admin_sym: 1-30170-00291
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30170-00291', 2024, '66.83'
FROM facilities WHERE admin_sym = '1-30170-00291'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30200-00014
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00014', 2024, '87.6'
FROM facilities WHERE admin_sym = '1-30200-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30200-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00124', 2024, '96.35'
FROM facilities WHERE admin_sym = '1-30200-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30200-00078
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00078', 2024, '79.8'
FROM facilities WHERE admin_sym = '1-30200-00078'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30200-00327
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00327', 2024, '72.85'
FROM facilities WHERE admin_sym = '1-30200-00327'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30200-00369
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00369', 2024, '70.99'
FROM facilities WHERE admin_sym = '1-30200-00369'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30200-00344
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00344', 2024, '85.8'
FROM facilities WHERE admin_sym = '1-30200-00344'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30200-00090
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00090', 2024, '88.09'
FROM facilities WHERE admin_sym = '1-30200-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.09',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30200-00145
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00145', 2024, '85.01'
FROM facilities WHERE admin_sym = '1-30200-00145'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.01',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30200-00115
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00115', 2024, '95.13'
FROM facilities WHERE admin_sym = '1-30200-00115'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30200-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00088', 2024, '93.44'
FROM facilities WHERE admin_sym = '1-30200-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30200-00322
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00322', 2024, '97.35'
FROM facilities WHERE admin_sym = '1-30200-00322'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30200-00362
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00362', 2024, '79.5'
FROM facilities WHERE admin_sym = '1-30200-00362'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30200-00350
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00350', 2024, '38.29'
FROM facilities WHERE admin_sym = '1-30200-00350'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '38.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30200-00349
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30200-00349', 2024, '57.77'
FROM facilities WHERE admin_sym = '1-30200-00349'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30140-00190
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00190', 2024, '83.56'
FROM facilities WHERE admin_sym = '1-30140-00190'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.56',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30140-00207
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00207', 2024, '67.85'
FROM facilities WHERE admin_sym = '1-30140-00207'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30140-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00003', 2024, '98.5'
FROM facilities WHERE admin_sym = '1-30140-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30140-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00006', 2024, '80.56'
FROM facilities WHERE admin_sym = '1-30140-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.56',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30140-00224
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00224', 2024, '89.3'
FROM facilities WHERE admin_sym = '1-30140-00224'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30140-00246
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00246', 2024, '86.6'
FROM facilities WHERE admin_sym = '1-30140-00246'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30140-00414
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00414', 2024, '83.35'
FROM facilities WHERE admin_sym = '1-30140-00414'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30140-00294
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00294', 2024, '89.85'
FROM facilities WHERE admin_sym = '1-30140-00294'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30140-00052
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00052', 2024, '95.35'
FROM facilities WHERE admin_sym = '1-30140-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30140-00241
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00241', 2024, '76.35'
FROM facilities WHERE admin_sym = '1-30140-00241'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30140-00107
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00107', 2024, '83.1'
FROM facilities WHERE admin_sym = '1-30140-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30140-00236
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00236', 2024, '56.8'
FROM facilities WHERE admin_sym = '1-30140-00236'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30140-00274
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00274', 2024, '77.04'
FROM facilities WHERE admin_sym = '1-30140-00274'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30140-00116
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00116', 2024, '64.97'
FROM facilities WHERE admin_sym = '1-30140-00116'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30140-00445
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00445', 2024, '91.61'
FROM facilities WHERE admin_sym = '1-30140-00445'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30140-00450
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00450', 2024, '50.02'
FROM facilities WHERE admin_sym = '1-30140-00450'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30140-00394
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00394', 2024, '71.55'
FROM facilities WHERE admin_sym = '1-30140-00394'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-30140-00292
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-30140-00292', 2024, '75.52'
FROM facilities WHERE admin_sym = '1-30140-00292'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31140-00177
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31140-00177', 2024, '72.04'
FROM facilities WHERE admin_sym = '1-31140-00177'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31140-00147
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31140-00147', 2024, '96.85'
FROM facilities WHERE admin_sym = '1-31140-00147'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31140-00063
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31140-00063', 2024, '81.6'
FROM facilities WHERE admin_sym = '1-31140-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31140-00155
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31140-00155', 2024, '84.39'
FROM facilities WHERE admin_sym = '1-31140-00155'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.39',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31140-00102
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31140-00102', 2024, '80.99'
FROM facilities WHERE admin_sym = '1-31140-00102'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31140-00135
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31140-00135', 2024, '81.65'
FROM facilities WHERE admin_sym = '1-31140-00135'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.65',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31170-00038
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31170-00038', 2024, '85.1'
FROM facilities WHERE admin_sym = '1-31170-00038'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31170-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31170-00004', 2024, '94.35'
FROM facilities WHERE admin_sym = '1-31170-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31170-00032
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31170-00032', 2024, '76.81'
FROM facilities WHERE admin_sym = '1-31170-00032'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31200-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31200-00001', 2024, '91.55'
FROM facilities WHERE admin_sym = '1-31200-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31200-00014
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31200-00014', 2024, '93.8'
FROM facilities WHERE admin_sym = '1-31200-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31200-00077
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31200-00077', 2024, '94.6'
FROM facilities WHERE admin_sym = '1-31200-00077'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31200-00045
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31200-00045', 2024, '69.13'
FROM facilities WHERE admin_sym = '1-31200-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31710-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00012', 2024, '81.55'
FROM facilities WHERE admin_sym = '1-31710-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31710-00015
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00015', 2024, '73.27'
FROM facilities WHERE admin_sym = '1-31710-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31710-00172
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00172', 2024, '69.02'
FROM facilities WHERE admin_sym = '1-31710-00172'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31710-00013
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00013', 2024, '81.05'
FROM facilities WHERE admin_sym = '1-31710-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31710-00167
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00167', 2024, '76.21'
FROM facilities WHERE admin_sym = '1-31710-00167'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31710-00095
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00095', 2024, '88.6'
FROM facilities WHERE admin_sym = '1-31710-00095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31710-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00011', 2024, '76.23'
FROM facilities WHERE admin_sym = '1-31710-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.23',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31710-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00010', 2024, '70.45'
FROM facilities WHERE admin_sym = '1-31710-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.45',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31710-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00008', 2024, '82.76'
FROM facilities WHERE admin_sym = '1-31710-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.76',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31710-00175
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00175', 2024, '90.3'
FROM facilities WHERE admin_sym = '1-31710-00175'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31710-00014
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00014', 2024, '81.48'
FROM facilities WHERE admin_sym = '1-31710-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31710-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00018', 2024, '90.85'
FROM facilities WHERE admin_sym = '1-31710-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31710-00090
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00090', 2024, '72.47'
FROM facilities WHERE admin_sym = '1-31710-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31710-00176
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00176', 2024, '71.89'
FROM facilities WHERE admin_sym = '1-31710-00176'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31710-00134
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00134', 2024, '85.4'
FROM facilities WHERE admin_sym = '1-31710-00134'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31710-00127
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00127', 2024, '69.08'
FROM facilities WHERE admin_sym = '1-31710-00127'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31710-00103
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00103', 2024, '90.68'
FROM facilities WHERE admin_sym = '1-31710-00103'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31710-00128
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00128', 2024, '73.68'
FROM facilities WHERE admin_sym = '1-31710-00128'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31710-00019
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00019', 2024, '87.57'
FROM facilities WHERE admin_sym = '1-31710-00019'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.57',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31710-00142
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00142', 2024, '37.38'
FROM facilities WHERE admin_sym = '1-31710-00142'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '37.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31710-00106
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00106', 2024, '59.2'
FROM facilities WHERE admin_sym = '1-31710-00106'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.2',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31710-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31710-00125', 2024, '93.04'
FROM facilities WHERE admin_sym = '1-31710-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31110-00143
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31110-00143', 2024, '89.6'
FROM facilities WHERE admin_sym = '1-31110-00143'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31110-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31110-00007', 2024, '90.35'
FROM facilities WHERE admin_sym = '1-31110-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31110-00082
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31110-00082', 2024, '95.8'
FROM facilities WHERE admin_sym = '1-31110-00082'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31110-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31110-00009', 2024, '82.55'
FROM facilities WHERE admin_sym = '1-31110-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31110-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31110-00008', 2024, '88.8'
FROM facilities WHERE admin_sym = '1-31110-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-31110-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-31110-00005', 2024, '96.35'
FROM facilities WHERE admin_sym = '1-31110-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-36110-00087
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-36110-00087', 2024, '80.1'
FROM facilities WHERE admin_sym = '1-36110-00087'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44730-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44730-00004', 2024, '87.3'
FROM facilities WHERE admin_sym = '1-44730-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44730-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44730-00006', 2024, '80.35'
FROM facilities WHERE admin_sym = '1-44730-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44730-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44730-00005', 2024, '89.6'
FROM facilities WHERE admin_sym = '1-44730-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-36110-00090
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-36110-00090', 2024, '35.67'
FROM facilities WHERE admin_sym = '1-36110-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '35.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-36110-00099
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-36110-00099', 2024, '50.06'
FROM facilities WHERE admin_sym = '1-36110-00099'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-36110-00067
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-36110-00067', 2024, '85.83'
FROM facilities WHERE admin_sym = '1-36110-00067'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-36110-00113
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-36110-00113', 2024, '63.38'
FROM facilities WHERE admin_sym = '1-36110-00113'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-36110-00061
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-36110-00061', 2024, '97.8'
FROM facilities WHERE admin_sym = '1-36110-00061'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44730-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44730-00023', 2024, '89.66'
FROM facilities WHERE admin_sym = '1-44730-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.66',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41820-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41820-00018', 2024, '84.85'
FROM facilities WHERE admin_sym = '1-41820-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41820-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41820-00010', 2024, '73.85'
FROM facilities WHERE admin_sym = '1-41820-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41820-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41820-00011', 2024, '61.8'
FROM facilities WHERE admin_sym = '1-41820-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41820-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41820-00012', 2024, '91.68'
FROM facilities WHERE admin_sym = '1-41820-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41820-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41820-00006', 2024, '84.93'
FROM facilities WHERE admin_sym = '1-41820-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41820-00014
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41820-00014', 2024, '66.4'
FROM facilities WHERE admin_sym = '1-41820-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41820-00099
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41820-00099', 2024, '62.27'
FROM facilities WHERE admin_sym = '1-41820-00099'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41820-00046
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41820-00046', 2024, '68.35'
FROM facilities WHERE admin_sym = '1-41820-00046'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41820-00062
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41820-00062', 2024, '91.02'
FROM facilities WHERE admin_sym = '1-41820-00062'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41820-00100
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41820-00100', 2024, '68.28'
FROM facilities WHERE admin_sym = '1-41820-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.28',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41280-01095
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41280-01095', 2024, '77.8'
FROM facilities WHERE admin_sym = '1-41280-01095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41280-00969
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41280-00969', 2024, '82.85'
FROM facilities WHERE admin_sym = '1-41280-00969'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41280-01144
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41280-01144', 2024, '74.1'
FROM facilities WHERE admin_sym = '1-41280-01144'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41280-00585
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41280-00585', 2024, '73.85'
FROM facilities WHERE admin_sym = '1-41280-00585'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41280-01194
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41280-01194', 2024, '75.85'
FROM facilities WHERE admin_sym = '1-41280-01194'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41280-00298
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41280-00298', 2024, '72.5'
FROM facilities WHERE admin_sym = '1-41280-00298'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.5',
  last_updated = CURRENT_TIMESTAMP;

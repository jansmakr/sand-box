-- Batch 223 of 226
-- Processing 100 facilities

-- admin_sym: 1-47820-00071
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47820-00071', 2024, '74.66'
FROM facilities WHERE admin_sym = '1-47820-00071'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.66',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47820-00087
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47820-00087', 2024, '79.58'
FROM facilities WHERE admin_sym = '1-47820-00087'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47820-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47820-00088', 2024, '54.11'
FROM facilities WHERE admin_sym = '1-47820-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.11',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47820-00100
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47820-00100', 2024, '45.63'
FROM facilities WHERE admin_sym = '1-47820-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '45.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47750-00016
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47750-00016', 2024, '91.1'
FROM facilities WHERE admin_sym = '1-47750-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47750-00030
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47750-00030', 2024, '88.3'
FROM facilities WHERE admin_sym = '1-47750-00030'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47750-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47750-00001', 2024, '89.6'
FROM facilities WHERE admin_sym = '1-47750-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47750-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47750-00008', 2024, '99.05'
FROM facilities WHERE admin_sym = '1-47750-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '99.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47750-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47750-00022', 2024, '79.46'
FROM facilities WHERE admin_sym = '1-47750-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47850-00105
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47850-00105', 2024, '70.08'
FROM facilities WHERE admin_sym = '1-47850-00105'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47850-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47850-00002', 2024, '86.55'
FROM facilities WHERE admin_sym = '1-47850-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47850-00107
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47850-00107', 2024, '91.05'
FROM facilities WHERE admin_sym = '1-47850-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47850-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47850-00003', 2024, '77.63'
FROM facilities WHERE admin_sym = '1-47850-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47850-00150
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47850-00150', 2024, '86.17'
FROM facilities WHERE admin_sym = '1-47850-00150'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47850-00140
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47850-00140', 2024, '77.92'
FROM facilities WHERE admin_sym = '1-47850-00140'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.92',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47850-00089
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47850-00089', 2024, '78.6'
FROM facilities WHERE admin_sym = '1-47850-00089'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47850-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47850-00001', 2024, '97.55'
FROM facilities WHERE admin_sym = '1-47850-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47850-00060
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47850-00060', 2024, '93'
FROM facilities WHERE admin_sym = '1-47850-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47850-00099
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47850-00099', 2024, '86'
FROM facilities WHERE admin_sym = '1-47850-00099'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47850-00058
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47850-00058', 2024, '59.84'
FROM facilities WHERE admin_sym = '1-47850-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.84',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47850-00056
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47850-00056', 2024, '94.09'
FROM facilities WHERE admin_sym = '1-47850-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.09',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47850-00137
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47850-00137', 2024, '96.6'
FROM facilities WHERE admin_sym = '1-47850-00137'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47850-00073
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47850-00073', 2024, '51.45'
FROM facilities WHERE admin_sym = '1-47850-00073'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '51.45',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47850-00101
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47850-00101', 2024, '82.07'
FROM facilities WHERE admin_sym = '1-47850-00101'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.07',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47850-00079
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47850-00079', 2024, '69.72'
FROM facilities WHERE admin_sym = '1-47850-00079'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47850-00070
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47850-00070', 2024, '74.75'
FROM facilities WHERE admin_sym = '1-47850-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47850-00085
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47850-00085', 2024, '64.66'
FROM facilities WHERE admin_sym = '1-47850-00085'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.66',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47850-00086
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47850-00086', 2024, '67.77'
FROM facilities WHERE admin_sym = '1-47850-00086'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47850-00160
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47850-00160', 2024, '66.05'
FROM facilities WHERE admin_sym = '1-47850-00160'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00192
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00192', 2024, '90.3'
FROM facilities WHERE admin_sym = '1-47110-00192'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00407
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00407', 2024, '93.74'
FROM facilities WHERE admin_sym = '1-47110-00407'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00015
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00015', 2024, '93.35'
FROM facilities WHERE admin_sym = '1-47110-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00006', 2024, '79.1'
FROM facilities WHERE admin_sym = '1-47110-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00301
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00301', 2024, '91.17'
FROM facilities WHERE admin_sym = '1-47110-00301'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00016
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00016', 2024, '71.5'
FROM facilities WHERE admin_sym = '1-47110-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00317
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00317', 2024, '81.8'
FROM facilities WHERE admin_sym = '1-47110-00317'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00255
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00255', 2024, '81.05'
FROM facilities WHERE admin_sym = '1-47110-00255'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00010', 2024, '94.1'
FROM facilities WHERE admin_sym = '1-47110-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00169
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00169', 2024, '89.77'
FROM facilities WHERE admin_sym = '1-47110-00169'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00268
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00268', 2024, '65.59'
FROM facilities WHERE admin_sym = '1-47110-00268'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.59',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00296
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00296', 2024, '77.06'
FROM facilities WHERE admin_sym = '1-47110-00296'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00358
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00358', 2024, '94.43'
FROM facilities WHERE admin_sym = '1-47110-00358'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00171
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00171', 2024, '89.95'
FROM facilities WHERE admin_sym = '1-47110-00171'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.95',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00272
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00272', 2024, '83.93'
FROM facilities WHERE admin_sym = '1-47110-00272'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00388
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00388', 2024, '33.08'
FROM facilities WHERE admin_sym = '1-47110-00388'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '33.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00479
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00479', 2024, '73.13'
FROM facilities WHERE admin_sym = '1-47110-00479'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00207
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00207', 2024, '74.25'
FROM facilities WHERE admin_sym = '1-47110-00207'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00008', 2024, '84.85'
FROM facilities WHERE admin_sym = '1-47110-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00031
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00031', 2024, '95.55'
FROM facilities WHERE admin_sym = '1-47110-00031'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00004', 2024, '81.39'
FROM facilities WHERE admin_sym = '1-47110-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.39',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00162
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00162', 2024, '84.85'
FROM facilities WHERE admin_sym = '1-47110-00162'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00032
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00032', 2024, '90.35'
FROM facilities WHERE admin_sym = '1-47110-00032'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00260
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00260', 2024, '96.1'
FROM facilities WHERE admin_sym = '1-47110-00260'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00378
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00378', 2024, '72.5'
FROM facilities WHERE admin_sym = '1-47110-00378'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00402
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00402', 2024, '82.88'
FROM facilities WHERE admin_sym = '1-47110-00402'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00190
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00190', 2024, '78.36'
FROM facilities WHERE admin_sym = '1-47110-00190'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.36',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00261
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00261', 2024, '82.33'
FROM facilities WHERE admin_sym = '1-47110-00261'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00453
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00453', 2024, '69.33'
FROM facilities WHERE admin_sym = '1-47110-00453'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00274
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00274', 2024, '92.99'
FROM facilities WHERE admin_sym = '1-47110-00274'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00350
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00350', 2024, '80.8'
FROM facilities WHERE admin_sym = '1-47110-00350'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00216
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00216', 2024, '64.93'
FROM facilities WHERE admin_sym = '1-47110-00216'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00231
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00231', 2024, '77.75'
FROM facilities WHERE admin_sym = '1-47110-00231'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00262
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00262', 2024, '73.59'
FROM facilities WHERE admin_sym = '1-47110-00262'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.59',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47110-00264
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47110-00264', 2024, '83.77'
FROM facilities WHERE admin_sym = '1-47110-00264'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48310-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48310-00010', 2024, '98.1'
FROM facilities WHERE admin_sym = '1-48310-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48310-00024
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48310-00024', 2024, '95.6'
FROM facilities WHERE admin_sym = '1-48310-00024'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48310-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48310-00044', 2024, '72.3'
FROM facilities WHERE admin_sym = '1-48310-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48310-00049
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48310-00049', 2024, '94.25'
FROM facilities WHERE admin_sym = '1-48310-00049'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48310-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48310-00040', 2024, '74.28'
FROM facilities WHERE admin_sym = '1-48310-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.28',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48880-00034
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48880-00034', 2024, '73.75'
FROM facilities WHERE admin_sym = '1-48880-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48880-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48880-00002', 2024, '82.6'
FROM facilities WHERE admin_sym = '1-48880-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48880-00054
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48880-00054', 2024, '83.01'
FROM facilities WHERE admin_sym = '1-48880-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.01',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48880-00033
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48880-00033', 2024, '88.85'
FROM facilities WHERE admin_sym = '1-48880-00033'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48880-00027
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48880-00027', 2024, '83.48'
FROM facilities WHERE admin_sym = '1-48880-00027'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48880-00045
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48880-00045', 2024, '89.43'
FROM facilities WHERE admin_sym = '1-48880-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48880-00042
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48880-00042', 2024, '79.83'
FROM facilities WHERE admin_sym = '1-48880-00042'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48880-00015
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48880-00015', 2024, '50.84'
FROM facilities WHERE admin_sym = '1-48880-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.84',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48820-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48820-00006', 2024, '72.55'
FROM facilities WHERE admin_sym = '1-48820-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48820-00051
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48820-00051', 2024, '62.02'
FROM facilities WHERE admin_sym = '1-48820-00051'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48820-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48820-00018', 2024, '69.85'
FROM facilities WHERE admin_sym = '1-48820-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48820-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48820-00010', 2024, '69.1'
FROM facilities WHERE admin_sym = '1-48820-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48820-00026
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48820-00026', 2024, '45.51'
FROM facilities WHERE admin_sym = '1-48820-00026'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '45.51',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48820-00027
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48820-00027', 2024, '74.26'
FROM facilities WHERE admin_sym = '1-48820-00027'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.26',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48820-00015
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48820-00015', 2024, '84.5'
FROM facilities WHERE admin_sym = '1-48820-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48250-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48250-00007', 2024, '84.81'
FROM facilities WHERE admin_sym = '1-48250-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48250-00096
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48250-00096', 2024, '93.1'
FROM facilities WHERE admin_sym = '1-48250-00096'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48250-00173
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48250-00173', 2024, '83'
FROM facilities WHERE admin_sym = '1-48250-00173'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48250-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48250-00001', 2024, '93.35'
FROM facilities WHERE admin_sym = '1-48250-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48250-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48250-00002', 2024, '95.3'
FROM facilities WHERE admin_sym = '1-48250-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48250-00258
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48250-00258', 2024, '74.93'
FROM facilities WHERE admin_sym = '1-48250-00258'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48250-00196
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48250-00196', 2024, '81.34'
FROM facilities WHERE admin_sym = '1-48250-00196'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.34',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48250-00303
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48250-00303', 2024, '82.63'
FROM facilities WHERE admin_sym = '1-48250-00303'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48250-00142
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48250-00142', 2024, '64.56'
FROM facilities WHERE admin_sym = '1-48250-00142'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.56',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48250-00223
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48250-00223', 2024, '53.67'
FROM facilities WHERE admin_sym = '1-48250-00223'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48250-00227
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48250-00227', 2024, '74.44'
FROM facilities WHERE admin_sym = '1-48250-00227'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48250-00166
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48250-00166', 2024, '77.05'
FROM facilities WHERE admin_sym = '1-48250-00166'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48250-00194
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48250-00194', 2024, '67.38'
FROM facilities WHERE admin_sym = '1-48250-00194'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48840-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48840-00002', 2024, '88.1'
FROM facilities WHERE admin_sym = '1-48840-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48840-00015
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48840-00015', 2024, '87.6'
FROM facilities WHERE admin_sym = '1-48840-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48840-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48840-00001', 2024, '92.35'
FROM facilities WHERE admin_sym = '1-48840-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.35',
  last_updated = CURRENT_TIMESTAMP;

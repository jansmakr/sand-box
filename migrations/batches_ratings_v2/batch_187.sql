-- Batch 187 of 226
-- Processing 100 facilities

-- admin_sym: 1-26530-00087
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26530-00087', 2024, '66.6'
FROM facilities WHERE admin_sym = '1-26530-00087'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26530-00078
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26530-00078', 2024, '86.6'
FROM facilities WHERE admin_sym = '1-26530-00078'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26530-00051
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26530-00051', 2024, '84.6'
FROM facilities WHERE admin_sym = '1-26530-00051'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26530-00056
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26530-00056', 2024, '79.85'
FROM facilities WHERE admin_sym = '1-26530-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26530-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26530-00003', 2024, '91.2'
FROM facilities WHERE admin_sym = '1-26530-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.2',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26530-00043
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26530-00043', 2024, '79.24'
FROM facilities WHERE admin_sym = '1-26530-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26530-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26530-00088', 2024, '61.09'
FROM facilities WHERE admin_sym = '1-26530-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.09',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26380-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26380-00010', 2024, '88.1'
FROM facilities WHERE admin_sym = '1-26380-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26380-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26380-00008', 2024, '93.6'
FROM facilities WHERE admin_sym = '1-26380-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26380-00191
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26380-00191', 2024, '87.12'
FROM facilities WHERE admin_sym = '1-26380-00191'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26380-00086
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26380-00086', 2024, '64.28'
FROM facilities WHERE admin_sym = '1-26380-00086'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.28',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26380-00230
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26380-00230', 2024, '57.93'
FROM facilities WHERE admin_sym = '1-26380-00230'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26380-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26380-00011', 2024, '93.1'
FROM facilities WHERE admin_sym = '1-26380-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26380-00118
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26380-00118', 2024, '94.1'
FROM facilities WHERE admin_sym = '1-26380-00118'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26380-00107
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26380-00107', 2024, '75.97'
FROM facilities WHERE admin_sym = '1-26380-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26380-00116
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26380-00116', 2024, '81.48'
FROM facilities WHERE admin_sym = '1-26380-00116'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26140-00051
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26140-00051', 2024, '69.9'
FROM facilities WHERE admin_sym = '1-26140-00051'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.9',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26140-00053
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26140-00053', 2024, '90.6'
FROM facilities WHERE admin_sym = '1-26140-00053'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26140-00068
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26140-00068', 2024, '82.89'
FROM facilities WHERE admin_sym = '1-26140-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26140-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26140-00008', 2024, '87.85'
FROM facilities WHERE admin_sym = '1-26140-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26500-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26500-00005', 2024, '80.85'
FROM facilities WHERE admin_sym = '1-26500-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26500-00013
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26500-00013', 2024, '93.32'
FROM facilities WHERE admin_sym = '1-26500-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26500-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26500-00004', 2024, '95.35'
FROM facilities WHERE admin_sym = '1-26500-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26500-00014
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26500-00014', 2024, '51.59'
FROM facilities WHERE admin_sym = '1-26500-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '51.59',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26500-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26500-00010', 2024, '70.92'
FROM facilities WHERE admin_sym = '1-26500-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.92',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26470-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26470-00001', 2024, '88.55'
FROM facilities WHERE admin_sym = '1-26470-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26470-00148
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26470-00148', 2024, '77.68'
FROM facilities WHERE admin_sym = '1-26470-00148'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26470-00020
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26470-00020', 2024, '91.98'
FROM facilities WHERE admin_sym = '1-26470-00020'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26470-00046
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26470-00046', 2024, '57.65'
FROM facilities WHERE admin_sym = '1-26470-00046'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.65',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26470-00047
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26470-00047', 2024, '59.19'
FROM facilities WHERE admin_sym = '1-26470-00047'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.19',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26470-00048
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26470-00048', 2024, '64.94'
FROM facilities WHERE admin_sym = '1-26470-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26200-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26200-00004', 2024, '91.6'
FROM facilities WHERE admin_sym = '1-26200-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26200-00120
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26200-00120', 2024, '67.18'
FROM facilities WHERE admin_sym = '1-26200-00120'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26110-00054
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26110-00054', 2024, '68.95'
FROM facilities WHERE admin_sym = '1-26110-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.95',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26350-00150
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26350-00150', 2024, '88.1'
FROM facilities WHERE admin_sym = '1-26350-00150'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26350-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26350-00023', 2024, '82.35'
FROM facilities WHERE admin_sym = '1-26350-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26350-00064
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26350-00064', 2024, '72.85'
FROM facilities WHERE admin_sym = '1-26350-00064'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26350-00136
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26350-00136', 2024, '87.6'
FROM facilities WHERE admin_sym = '1-26350-00136'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26350-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26350-00008', 2024, '77.59'
FROM facilities WHERE admin_sym = '1-26350-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.59',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26350-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26350-00006', 2024, '90.84'
FROM facilities WHERE admin_sym = '1-26350-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.84',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26350-00240
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26350-00240', 2024, '33.16'
FROM facilities WHERE admin_sym = '1-26350-00240'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '33.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26350-00235
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26350-00235', 2024, '45.64'
FROM facilities WHERE admin_sym = '1-26350-00235'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '45.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-26350-00221
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-26350-00221', 2024, '29.16'
FROM facilities WHERE admin_sym = '1-26350-00221'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '29.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47720-00013
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47720-00013', 2024, '91.35'
FROM facilities WHERE admin_sym = '1-47720-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47720-00029
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47720-00029', 2024, '90.5'
FROM facilities WHERE admin_sym = '1-47720-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47720-00041
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47720-00041', 2024, '58.17'
FROM facilities WHERE admin_sym = '1-47720-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27200-00081
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00081', 2024, '92.35'
FROM facilities WHERE admin_sym = '1-27200-00081'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27200-00207
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00207', 2024, '83.51'
FROM facilities WHERE admin_sym = '1-27200-00207'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.51',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27200-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00088', 2024, '92.3'
FROM facilities WHERE admin_sym = '1-27200-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27200-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00011', 2024, '88.6'
FROM facilities WHERE admin_sym = '1-27200-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27200-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00004', 2024, '96.1'
FROM facilities WHERE admin_sym = '1-27200-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27200-00052
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00052', 2024, '46.7'
FROM facilities WHERE admin_sym = '1-27200-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '46.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27200-00090
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00090', 2024, '86.78'
FROM facilities WHERE admin_sym = '1-27200-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.78',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27200-00175
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00175', 2024, '88.66'
FROM facilities WHERE admin_sym = '1-27200-00175'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.66',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27200-00099
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00099', 2024, '83.38'
FROM facilities WHERE admin_sym = '1-27200-00099'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27200-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00125', 2024, '70.08'
FROM facilities WHERE admin_sym = '1-27200-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27200-00160
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00160', 2024, '96.1'
FROM facilities WHERE admin_sym = '1-27200-00160'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27200-00100
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00100', 2024, '93.44'
FROM facilities WHERE admin_sym = '1-27200-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27200-00174
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00174', 2024, '78.64'
FROM facilities WHERE admin_sym = '1-27200-00174'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27200-00194
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00194', 2024, '82.94'
FROM facilities WHERE admin_sym = '1-27200-00194'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27200-00106
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00106', 2024, '89.08'
FROM facilities WHERE admin_sym = '1-27200-00106'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27200-00199
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00199', 2024, '74.03'
FROM facilities WHERE admin_sym = '1-27200-00199'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.03',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27200-00155
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00155', 2024, '87.2'
FROM facilities WHERE admin_sym = '1-27200-00155'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.2',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27200-00191
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00191', 2024, '84.1'
FROM facilities WHERE admin_sym = '1-27200-00191'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27200-00142
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00142', 2024, '47.82'
FROM facilities WHERE admin_sym = '1-27200-00142'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '47.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27200-00135
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00135', 2024, '72.66'
FROM facilities WHERE admin_sym = '1-27200-00135'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.66',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27200-00137
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00137', 2024, '73.55'
FROM facilities WHERE admin_sym = '1-27200-00137'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27200-00138
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27200-00138', 2024, '75.9'
FROM facilities WHERE admin_sym = '1-27200-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.9',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00496
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00496', 2024, '55.21'
FROM facilities WHERE admin_sym = '1-27290-00496'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00180
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00180', 2024, '87.35'
FROM facilities WHERE admin_sym = '1-27290-00180'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00355
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00355', 2024, '90.1'
FROM facilities WHERE admin_sym = '1-27290-00355'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00452
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00452', 2024, '84.85'
FROM facilities WHERE admin_sym = '1-27290-00452'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00212
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00212', 2024, '91.55'
FROM facilities WHERE admin_sym = '1-27290-00212'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00252
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00252', 2024, '94.1'
FROM facilities WHERE admin_sym = '1-27290-00252'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00024
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00024', 2024, '98.55'
FROM facilities WHERE admin_sym = '1-27290-00024'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00040', 2024, '93.6'
FROM facilities WHERE admin_sym = '1-27290-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00428
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00428', 2024, '94.1'
FROM facilities WHERE admin_sym = '1-27290-00428'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00261
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00261', 2024, '92.52'
FROM facilities WHERE admin_sym = '1-27290-00261'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00096
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00096', 2024, '89.49'
FROM facilities WHERE admin_sym = '1-27290-00096'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00542
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00542', 2024, '61.91'
FROM facilities WHERE admin_sym = '1-27290-00542'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00250
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00250', 2024, '53.63'
FROM facilities WHERE admin_sym = '1-27290-00250'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00421
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00421', 2024, '83.31'
FROM facilities WHERE admin_sym = '1-27290-00421'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00486
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00486', 2024, '81.57'
FROM facilities WHERE admin_sym = '1-27290-00486'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.57',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00487
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00487', 2024, '78.72'
FROM facilities WHERE admin_sym = '1-27290-00487'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00337
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00337', 2024, '83.98'
FROM facilities WHERE admin_sym = '1-27290-00337'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00403
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00403', 2024, '77.76'
FROM facilities WHERE admin_sym = '1-27290-00403'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.76',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00404
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00404', 2024, '75.71'
FROM facilities WHERE admin_sym = '1-27290-00404'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00221
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00221', 2024, '88.65'
FROM facilities WHERE admin_sym = '1-27290-00221'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.65',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00320
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00320', 2024, '83.47'
FROM facilities WHERE admin_sym = '1-27290-00320'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00367
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00367', 2024, '88.21'
FROM facilities WHERE admin_sym = '1-27290-00367'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00539
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00539', 2024, '86.82'
FROM facilities WHERE admin_sym = '1-27290-00539'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00540
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00540', 2024, '85.34'
FROM facilities WHERE admin_sym = '1-27290-00540'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.34',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00214
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00214', 2024, '60.5'
FROM facilities WHERE admin_sym = '1-27290-00214'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00238
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00238', 2024, '93.41'
FROM facilities WHERE admin_sym = '1-27290-00238'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00392
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00392', 2024, '95.74'
FROM facilities WHERE admin_sym = '1-27290-00392'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27290-00197
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27290-00197', 2024, '94.64'
FROM facilities WHERE admin_sym = '1-27290-00197'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27710-00116
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27710-00116', 2024, '82.75'
FROM facilities WHERE admin_sym = '1-27710-00116'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27710-00110
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27710-00110', 2024, '90.85'
FROM facilities WHERE admin_sym = '1-27710-00110'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27710-00070
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27710-00070', 2024, '91.35'
FROM facilities WHERE admin_sym = '1-27710-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-27710-00062
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-27710-00062', 2024, '92.1'
FROM facilities WHERE admin_sym = '1-27710-00062'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

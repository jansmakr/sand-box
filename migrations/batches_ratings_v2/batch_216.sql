-- Batch 216 of 226
-- Processing 100 facilities

-- admin_sym: 1-45190-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45190-00009', 2024, '97.1'
FROM facilities WHERE admin_sym = '1-45190-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45190-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45190-00001', 2024, '93.85'
FROM facilities WHERE admin_sym = '1-45190-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45190-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45190-00010', 2024, '94.85'
FROM facilities WHERE admin_sym = '1-45190-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45190-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45190-00011', 2024, '98.1'
FROM facilities WHERE admin_sym = '1-45190-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45190-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45190-00012', 2024, '95.35'
FROM facilities WHERE admin_sym = '1-45190-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45190-00058
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45190-00058', 2024, '74.03'
FROM facilities WHERE admin_sym = '1-45190-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.03',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45190-00074
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45190-00074', 2024, '87.8'
FROM facilities WHERE admin_sym = '1-45190-00074'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45190-00081
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45190-00081', 2024, '92.72'
FROM facilities WHERE admin_sym = '1-45190-00081'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45730-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45730-00002', 2024, '97.35'
FROM facilities WHERE admin_sym = '1-45730-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45730-00039
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45730-00039', 2024, '89.93'
FROM facilities WHERE admin_sym = '1-45730-00039'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45730-00045
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45730-00045', 2024, '78.9'
FROM facilities WHERE admin_sym = '1-45730-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.9',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45730-00014
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45730-00014', 2024, '50.79'
FROM facilities WHERE admin_sym = '1-45730-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45730-00033
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45730-00033', 2024, '90.36'
FROM facilities WHERE admin_sym = '1-45730-00033'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.36',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45800-00108
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45800-00108', 2024, '68.41'
FROM facilities WHERE admin_sym = '1-45800-00108'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45800-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45800-00003', 2024, '96'
FROM facilities WHERE admin_sym = '1-45800-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45800-00076
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45800-00076', 2024, '72.35'
FROM facilities WHERE admin_sym = '1-45800-00076'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45800-00126
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45800-00126', 2024, '62.55'
FROM facilities WHERE admin_sym = '1-45800-00126'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45800-00091
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45800-00091', 2024, '74.04'
FROM facilities WHERE admin_sym = '1-45800-00091'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45800-00145
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45800-00145', 2024, '81.28'
FROM facilities WHERE admin_sym = '1-45800-00145'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.28',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45800-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45800-00001', 2024, '90.69'
FROM facilities WHERE admin_sym = '1-45800-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45800-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45800-00088', 2024, '83.68'
FROM facilities WHERE admin_sym = '1-45800-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45770-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45770-00006', 2024, '96.55'
FROM facilities WHERE admin_sym = '1-45770-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45770-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45770-00001', 2024, '89.85'
FROM facilities WHERE admin_sym = '1-45770-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45770-00052
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45770-00052', 2024, '59.5'
FROM facilities WHERE admin_sym = '1-45770-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45770-00049
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45770-00049', 2024, '85.77'
FROM facilities WHERE admin_sym = '1-45770-00049'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45770-00035
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45770-00035', 2024, '91.35'
FROM facilities WHERE admin_sym = '1-45770-00035'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45710-00013
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45710-00013', 2024, '87'
FROM facilities WHERE admin_sym = '1-45710-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45710-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45710-00005', 2024, '86.75'
FROM facilities WHERE admin_sym = '1-45710-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45710-00043
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45710-00043', 2024, '95.58'
FROM facilities WHERE admin_sym = '1-45710-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45710-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45710-00023', 2024, '69.17'
FROM facilities WHERE admin_sym = '1-45710-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45710-00041
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45710-00041', 2024, '79.85'
FROM facilities WHERE admin_sym = '1-45710-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45710-00014
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45710-00014', 2024, '59.18'
FROM facilities WHERE admin_sym = '1-45710-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45710-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45710-00004', 2024, '96.3'
FROM facilities WHERE admin_sym = '1-45710-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45710-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45710-00003', 2024, '94.85'
FROM facilities WHERE admin_sym = '1-45710-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45710-00069
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45710-00069', 2024, '95.1'
FROM facilities WHERE admin_sym = '1-45710-00069'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45710-00027
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45710-00027', 2024, '89.25'
FROM facilities WHERE admin_sym = '1-45710-00027'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45710-00065
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45710-00065', 2024, '92.8'
FROM facilities WHERE admin_sym = '1-45710-00065'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45710-00038
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45710-00038', 2024, '57.78'
FROM facilities WHERE admin_sym = '1-45710-00038'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.78',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45710-00029
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45710-00029', 2024, '78.63'
FROM facilities WHERE admin_sym = '1-45710-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45710-00049
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45710-00049', 2024, '88.61'
FROM facilities WHERE admin_sym = '1-45710-00049'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00186
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00186', 2024, '80.8'
FROM facilities WHERE admin_sym = '1-45140-00186'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00312
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00312', 2024, '88.85'
FROM facilities WHERE admin_sym = '1-45140-00312'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00015
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00015', 2024, '91.1'
FROM facilities WHERE admin_sym = '1-45140-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00210
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00210', 2024, '90.29'
FROM facilities WHERE admin_sym = '1-45140-00210'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00415
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00415', 2024, '67.73'
FROM facilities WHERE admin_sym = '1-45140-00415'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.73',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00006', 2024, '89.6'
FROM facilities WHERE admin_sym = '1-45140-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00011', 2024, '89.1'
FROM facilities WHERE admin_sym = '1-45140-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00268
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00268', 2024, '92.1'
FROM facilities WHERE admin_sym = '1-45140-00268'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00022', 2024, '92.55'
FROM facilities WHERE admin_sym = '1-45140-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00014
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00014', 2024, '98.1'
FROM facilities WHERE admin_sym = '1-45140-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00016
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00016', 2024, '97.01'
FROM facilities WHERE admin_sym = '1-45140-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.01',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00017
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00017', 2024, '95.25'
FROM facilities WHERE admin_sym = '1-45140-00017'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00005', 2024, '98.85'
FROM facilities WHERE admin_sym = '1-45140-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00429
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00429', 2024, '95.6'
FROM facilities WHERE admin_sym = '1-45140-00429'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00336
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00336', 2024, '81.3'
FROM facilities WHERE admin_sym = '1-45140-00336'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00238
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00238', 2024, '81.52'
FROM facilities WHERE admin_sym = '1-45140-00238'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00406
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00406', 2024, '70.25'
FROM facilities WHERE admin_sym = '1-45140-00406'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00047
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00047', 2024, '70.1'
FROM facilities WHERE admin_sym = '1-45140-00047'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00359
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00359', 2024, '87.94'
FROM facilities WHERE admin_sym = '1-45140-00359'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00349
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00349', 2024, '86.1'
FROM facilities WHERE admin_sym = '1-45140-00349'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00217
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00217', 2024, '78.93'
FROM facilities WHERE admin_sym = '1-45140-00217'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00187
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00187', 2024, '71.64'
FROM facilities WHERE admin_sym = '1-45140-00187'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00222
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00222', 2024, '95.3'
FROM facilities WHERE admin_sym = '1-45140-00222'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00045
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00045', 2024, '46.25'
FROM facilities WHERE admin_sym = '1-45140-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '46.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00403
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00403', 2024, '68.7'
FROM facilities WHERE admin_sym = '1-45140-00403'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00192
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00192', 2024, '86.31'
FROM facilities WHERE admin_sym = '1-45140-00192'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00242
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00242', 2024, '90.09'
FROM facilities WHERE admin_sym = '1-45140-00242'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.09',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00189
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00189', 2024, '90.42'
FROM facilities WHERE admin_sym = '1-45140-00189'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00248
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00248', 2024, '65.44'
FROM facilities WHERE admin_sym = '1-45140-00248'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00193
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00193', 2024, '82.13'
FROM facilities WHERE admin_sym = '1-45140-00193'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00346
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00346', 2024, '47.5'
FROM facilities WHERE admin_sym = '1-45140-00346'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '47.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00319
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00319', 2024, '95.64'
FROM facilities WHERE admin_sym = '1-45140-00319'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00230
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00230', 2024, '95.3'
FROM facilities WHERE admin_sym = '1-45140-00230'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00165
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00165', 2024, '55.02'
FROM facilities WHERE admin_sym = '1-45140-00165'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00309
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00309', 2024, '43.74'
FROM facilities WHERE admin_sym = '1-45140-00309'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '43.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00100
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00100', 2024, '92.58'
FROM facilities WHERE admin_sym = '1-45140-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00261
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00261', 2024, '83.63'
FROM facilities WHERE admin_sym = '1-45140-00261'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45140-00236
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45140-00236', 2024, '78.71'
FROM facilities WHERE admin_sym = '1-45140-00236'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45750-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45750-00001', 2024, '88.85'
FROM facilities WHERE admin_sym = '1-45750-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45750-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45750-00002', 2024, '97.8'
FROM facilities WHERE admin_sym = '1-45750-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45750-00051
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45750-00051', 2024, '67.7'
FROM facilities WHERE admin_sym = '1-45750-00051'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45750-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45750-00008', 2024, '87.24'
FROM facilities WHERE admin_sym = '1-45750-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45750-00064
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45750-00064', 2024, '50.24'
FROM facilities WHERE admin_sym = '1-45750-00064'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45750-00068
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45750-00068', 2024, '50.46'
FROM facilities WHERE admin_sym = '1-45750-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45740-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45740-00002', 2024, '81.88'
FROM facilities WHERE admin_sym = '1-45740-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45740-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45740-00006', 2024, '80.42'
FROM facilities WHERE admin_sym = '1-45740-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45740-00030
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45740-00030', 2024, '90.62'
FROM facilities WHERE admin_sym = '1-45740-00030'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.62',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45740-00035
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45740-00035', 2024, '72.17'
FROM facilities WHERE admin_sym = '1-45740-00035'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45110-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45110-00002', 2024, '91.6'
FROM facilities WHERE admin_sym = '1-45110-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45110-00046
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45110-00046', 2024, '78.85'
FROM facilities WHERE admin_sym = '1-45110-00046'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45110-00042
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45110-00042', 2024, '91.85'
FROM facilities WHERE admin_sym = '1-45110-00042'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45110-00597
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45110-00597', 2024, '91.1'
FROM facilities WHERE admin_sym = '1-45110-00597'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45110-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45110-00040', 2024, '98.3'
FROM facilities WHERE admin_sym = '1-45110-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45110-00258
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45110-00258', 2024, '84.87'
FROM facilities WHERE admin_sym = '1-45110-00258'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.87',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45110-00306
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45110-00306', 2024, '66.34'
FROM facilities WHERE admin_sym = '1-45110-00306'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.34',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45110-00030
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45110-00030', 2024, '78.6'
FROM facilities WHERE admin_sym = '1-45110-00030'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45110-00027
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45110-00027', 2024, '91.6'
FROM facilities WHERE admin_sym = '1-45110-00027'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45110-00308
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45110-00308', 2024, '79.23'
FROM facilities WHERE admin_sym = '1-45110-00308'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.23',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45110-00041
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45110-00041', 2024, '48.82'
FROM facilities WHERE admin_sym = '1-45110-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '48.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-45110-00061
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-45110-00061', 2024, '79.92'
FROM facilities WHERE admin_sym = '1-45110-00061'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.92',
  last_updated = CURRENT_TIMESTAMP;

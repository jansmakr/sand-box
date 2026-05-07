-- Batch 162 of 226
-- Processing 100 facilities

-- admin_sym: 2-45720-00060
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45720-00060', 2024, '83.6'
FROM facilities WHERE admin_sym = '2-45720-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45720-00048
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45720-00048', 2024, '82.05'
FROM facilities WHERE admin_sym = '2-45720-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45720-00056
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45720-00056', 2024, '80.55'
FROM facilities WHERE admin_sym = '3-45720-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45720-00062
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45720-00062', 2024, '79.55'
FROM facilities WHERE admin_sym = '3-45720-00062'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45720-00058
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45720-00058', 2024, '60.05'
FROM facilities WHERE admin_sym = '3-45720-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45720-00048
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45720-00048', 2024, '85.55'
FROM facilities WHERE admin_sym = '2-45720-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45720-00046
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45720-00046', 2024, '84.1'
FROM facilities WHERE admin_sym = '2-45720-00046'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00604
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00604', 2024, '86.1'
FROM facilities WHERE admin_sym = '3-45110-00604'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46810-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46810-00003', 2024, '96.55'
FROM facilities WHERE admin_sym = '2-46810-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46810-00019
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46810-00019', 2024, '97.55'
FROM facilities WHERE admin_sym = '3-46810-00019'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46810-00034
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46810-00034', 2024, '90.05'
FROM facilities WHERE admin_sym = '3-46810-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46810-00038
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46810-00038', 2024, '85.3'
FROM facilities WHERE admin_sym = '3-46810-00038'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46810-00042
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46810-00042', 2024, '88.8'
FROM facilities WHERE admin_sym = '3-46810-00042'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46810-00036
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46810-00036', 2024, '89.05'
FROM facilities WHERE admin_sym = '3-46810-00036'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46810-00054
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46810-00054', 2024, '76.3'
FROM facilities WHERE admin_sym = '2-46810-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46810-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46810-00012', 2024, '84.25'
FROM facilities WHERE admin_sym = '3-46810-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46810-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46810-00040', 2024, '76.55'
FROM facilities WHERE admin_sym = '3-46810-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46810-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46810-00003', 2024, '98.8'
FROM facilities WHERE admin_sym = '2-46810-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46810-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46810-00012', 2024, '95.25'
FROM facilities WHERE admin_sym = '3-46810-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46810-00036
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46810-00036', 2024, '91.05'
FROM facilities WHERE admin_sym = '3-46810-00036'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46810-00019
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46810-00019', 2024, '99.05'
FROM facilities WHERE admin_sym = '3-46810-00019'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '99.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46810-00034
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46810-00034', 2024, '93.05'
FROM facilities WHERE admin_sym = '3-46810-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46810-00038
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46810-00038', 2024, '81.3'
FROM facilities WHERE admin_sym = '3-46810-00038'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46810-00042
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46810-00042', 2024, '84.8'
FROM facilities WHERE admin_sym = '3-46810-00042'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46810-00054
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46810-00054', 2024, '76.8'
FROM facilities WHERE admin_sym = '2-46810-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46810-00034
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46810-00034', 2024, '98.55'
FROM facilities WHERE admin_sym = '3-46810-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46810-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46810-00003', 2024, '97.5'
FROM facilities WHERE admin_sym = '2-46810-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46810-00052
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46810-00052', 2024, '61.3'
FROM facilities WHERE admin_sym = '2-46810-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46810-00038
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46810-00038', 2024, '87.5'
FROM facilities WHERE admin_sym = '3-46810-00038'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46770-00086
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46770-00086', 2024, '92.85'
FROM facilities WHERE admin_sym = '3-46770-00086'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46770-00080
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46770-00080', 2024, '94'
FROM facilities WHERE admin_sym = '3-46770-00080'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46770-00138
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46770-00138', 2024, '81.35'
FROM facilities WHERE admin_sym = '2-46770-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46770-00120
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46770-00120', 2024, '88.05'
FROM facilities WHERE admin_sym = '3-46770-00120'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46770-00104
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46770-00104', 2024, '83.05'
FROM facilities WHERE admin_sym = '2-46770-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46770-00016
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46770-00016', 2024, '81.3'
FROM facilities WHERE admin_sym = '3-46770-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46770-00052
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46770-00052', 2024, '83.05'
FROM facilities WHERE admin_sym = '3-46770-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46770-00136
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46770-00136', 2024, '89.3'
FROM facilities WHERE admin_sym = '2-46770-00136'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46770-00128
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46770-00128', 2024, '80.55'
FROM facilities WHERE admin_sym = '2-46770-00128'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46770-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46770-00124', 2024, '87.6'
FROM facilities WHERE admin_sym = '2-46770-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46770-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46770-00088', 2024, '72.55'
FROM facilities WHERE admin_sym = '3-46770-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46770-00126
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46770-00126', 2024, '76.3'
FROM facilities WHERE admin_sym = '2-46770-00126'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46770-00130
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46770-00130', 2024, '77.8'
FROM facilities WHERE admin_sym = '2-46770-00130'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46770-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46770-00004', 2024, '79.05'
FROM facilities WHERE admin_sym = '2-46770-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46770-00078
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46770-00078', 2024, '63.55'
FROM facilities WHERE admin_sym = '3-46770-00078'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46770-00116
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46770-00116', 2024, '68.75'
FROM facilities WHERE admin_sym = '3-46770-00116'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46770-00096
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46770-00096', 2024, '54.55'
FROM facilities WHERE admin_sym = '3-46770-00096'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46770-00090
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46770-00090', 2024, '49.8'
FROM facilities WHERE admin_sym = '3-46770-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46770-00086
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46770-00086', 2024, '96.85'
FROM facilities WHERE admin_sym = '3-46770-00086'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46770-00138
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46770-00138', 2024, '86.35'
FROM facilities WHERE admin_sym = '2-46770-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46770-00120
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46770-00120', 2024, '89.8'
FROM facilities WHERE admin_sym = '3-46770-00120'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46770-00128
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46770-00128', 2024, '84.8'
FROM facilities WHERE admin_sym = '2-46770-00128'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46770-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46770-00124', 2024, '85.35'
FROM facilities WHERE admin_sym = '2-46770-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46770-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46770-00088', 2024, '71.55'
FROM facilities WHERE admin_sym = '3-46770-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46770-00016
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46770-00016', 2024, '75.8'
FROM facilities WHERE admin_sym = '3-46770-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46770-00126
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46770-00126', 2024, '79.55'
FROM facilities WHERE admin_sym = '2-46770-00126'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46770-00052
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46770-00052', 2024, '73.3'
FROM facilities WHERE admin_sym = '3-46770-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46770-00130
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46770-00130', 2024, '78.3'
FROM facilities WHERE admin_sym = '2-46770-00130'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46770-00090
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46770-00090', 2024, '47.05'
FROM facilities WHERE admin_sym = '3-46770-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '47.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46770-00116
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46770-00116', 2024, '52'
FROM facilities WHERE admin_sym = '3-46770-00116'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46770-00104
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46770-00104', 2024, '83.6'
FROM facilities WHERE admin_sym = '2-46770-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46770-00016
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46770-00016', 2024, '83.8'
FROM facilities WHERE admin_sym = '3-46770-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46770-00128
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46770-00128', 2024, '88.35'
FROM facilities WHERE admin_sym = '2-46770-00128'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46770-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46770-00124', 2024, '84.1'
FROM facilities WHERE admin_sym = '2-46770-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46770-00126
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46770-00126', 2024, '77.05'
FROM facilities WHERE admin_sym = '2-46770-00126'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46770-00052
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46770-00052', 2024, '74.3'
FROM facilities WHERE admin_sym = '3-46770-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46770-00090
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46770-00090', 2024, '60.75'
FROM facilities WHERE admin_sym = '3-46770-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46770-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46770-00008', 2024, '83.75'
FROM facilities WHERE admin_sym = '3-46770-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46770-00114
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46770-00114', 2024, '44.5'
FROM facilities WHERE admin_sym = '3-46770-00114'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '44.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46720-00068
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46720-00068', 2024, '92.55'
FROM facilities WHERE admin_sym = '3-46720-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46720-00026
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46720-00026', 2024, '83.3'
FROM facilities WHERE admin_sym = '3-46720-00026'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46720-00070
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46720-00070', 2024, '81.6'
FROM facilities WHERE admin_sym = '3-46720-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46720-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46720-00009', 2024, '88.05'
FROM facilities WHERE admin_sym = '3-46720-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46720-00084
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46720-00084', 2024, '74.72'
FROM facilities WHERE admin_sym = '2-46720-00084'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46720-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46720-00040', 2024, '34.5'
FROM facilities WHERE admin_sym = '3-46720-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '34.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46720-00068
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46720-00068', 2024, '96.05'
FROM facilities WHERE admin_sym = '3-46720-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46720-00026
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46720-00026', 2024, '90.8'
FROM facilities WHERE admin_sym = '3-46720-00026'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46720-00070
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46720-00070', 2024, '85.85'
FROM facilities WHERE admin_sym = '3-46720-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46720-00020
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46720-00020', 2024, '65'
FROM facilities WHERE admin_sym = '3-46720-00020'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46720-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46720-00040', 2024, '42'
FROM facilities WHERE admin_sym = '3-46720-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46720-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46720-00022', 2024, '94.1'
FROM facilities WHERE admin_sym = '2-46720-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46720-00066
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46720-00066', 2024, '89.1'
FROM facilities WHERE admin_sym = '2-46720-00066'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46720-00084
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46720-00084', 2024, '83.05'
FROM facilities WHERE admin_sym = '2-46720-00084'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46720-00080
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46720-00080', 2024, '74.1'
FROM facilities WHERE admin_sym = '2-46720-00080'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46720-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46720-00006', 2024, '77.3'
FROM facilities WHERE admin_sym = '2-46720-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46230-00166
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46230-00166', 2024, '95.7'
FROM facilities WHERE admin_sym = '2-46230-00166'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46230-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46230-00040', 2024, '93.1'
FROM facilities WHERE admin_sym = '3-46230-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46230-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46230-00044', 2024, '93.6'
FROM facilities WHERE admin_sym = '3-46230-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46230-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46230-00124', 2024, '91.75'
FROM facilities WHERE admin_sym = '3-46230-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46230-00138
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46230-00138', 2024, '91.6'
FROM facilities WHERE admin_sym = '2-46230-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46230-00148
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46230-00148', 2024, '90.8'
FROM facilities WHERE admin_sym = '3-46230-00148'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46230-00036
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46230-00036', 2024, '91.05'
FROM facilities WHERE admin_sym = '3-46230-00036'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46230-00144
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46230-00144', 2024, '94.1'
FROM facilities WHERE admin_sym = '3-46230-00144'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46230-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46230-00006', 2024, '88.35'
FROM facilities WHERE admin_sym = '3-46230-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46230-00170
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46230-00170', 2024, '87.04'
FROM facilities WHERE admin_sym = '2-46230-00170'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46230-00122
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46230-00122', 2024, '76.35'
FROM facilities WHERE admin_sym = '3-46230-00122'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46230-00162
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46230-00162', 2024, '76.85'
FROM facilities WHERE admin_sym = '2-46230-00162'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46230-00154
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46230-00154', 2024, '62.05'
FROM facilities WHERE admin_sym = '3-46230-00154'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46230-00160
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46230-00160', 2024, '47'
FROM facilities WHERE admin_sym = '2-46230-00160'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46230-00132
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46230-00132', 2024, '95.8'
FROM facilities WHERE admin_sym = '2-46230-00132'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46230-00138
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46230-00138', 2024, '92.85'
FROM facilities WHERE admin_sym = '2-46230-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

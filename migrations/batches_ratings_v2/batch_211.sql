-- Batch 211 of 226
-- Processing 100 facilities

-- admin_sym: 1-43770-00055
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43770-00055', 2024, '81.61'
FROM facilities WHERE admin_sym = '1-43770-00055'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43770-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43770-00018', 2024, '89.24'
FROM facilities WHERE admin_sym = '1-43770-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43770-00086
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43770-00086', 2024, '87.75'
FROM facilities WHERE admin_sym = '1-43770-00086'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43770-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43770-00022', 2024, '90.88'
FROM facilities WHERE admin_sym = '1-43770-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43770-00073
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43770-00073', 2024, '88.12'
FROM facilities WHERE admin_sym = '1-43770-00073'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43770-00097
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43770-00097', 2024, '93.6'
FROM facilities WHERE admin_sym = '1-43770-00097'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43770-00075
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43770-00075', 2024, '68.27'
FROM facilities WHERE admin_sym = '1-43770-00075'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43770-00091
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43770-00091', 2024, '85.82'
FROM facilities WHERE admin_sym = '1-43770-00091'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43770-00025
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43770-00025', 2024, '54.81'
FROM facilities WHERE admin_sym = '1-43770-00025'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43770-00070
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43770-00070', 2024, '78.45'
FROM facilities WHERE admin_sym = '1-43770-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.45',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43770-00079
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43770-00079', 2024, '73.2'
FROM facilities WHERE admin_sym = '1-43770-00079'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.2',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43770-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43770-00012', 2024, '86.4'
FROM facilities WHERE admin_sym = '1-43770-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43770-00045
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43770-00045', 2024, '68.71'
FROM facilities WHERE admin_sym = '1-43770-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43770-00068
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43770-00068', 2024, '81.47'
FROM facilities WHERE admin_sym = '1-43770-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43770-00081
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43770-00081', 2024, '79.98'
FROM facilities WHERE admin_sym = '1-43770-00081'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43770-00043
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43770-00043', 2024, '73.82'
FROM facilities WHERE admin_sym = '1-43770-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00105
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00105', 2024, '71.95'
FROM facilities WHERE admin_sym = '1-43150-00105'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.95',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00070
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00070', 2024, '83.85'
FROM facilities WHERE admin_sym = '1-43150-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00096
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00096', 2024, '90.6'
FROM facilities WHERE admin_sym = '1-43150-00096'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00044', 2024, '78.46'
FROM facilities WHERE admin_sym = '1-43150-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00085
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00085', 2024, '84.85'
FROM facilities WHERE admin_sym = '1-43150-00085'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00075
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00075', 2024, '96.05'
FROM facilities WHERE admin_sym = '1-43150-00075'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00005', 2024, '97.1'
FROM facilities WHERE admin_sym = '1-43150-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00043
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00043', 2024, '76.48'
FROM facilities WHERE admin_sym = '1-43150-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00143
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00143', 2024, '84.8'
FROM facilities WHERE admin_sym = '1-43150-00143'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00073
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00073', 2024, '95.18'
FROM facilities WHERE admin_sym = '1-43150-00073'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00088', 2024, '86.21'
FROM facilities WHERE admin_sym = '1-43150-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00079
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00079', 2024, '87.72'
FROM facilities WHERE admin_sym = '1-43150-00079'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00129
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00129', 2024, '84.86'
FROM facilities WHERE admin_sym = '1-43150-00129'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00093
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00093', 2024, '93.48'
FROM facilities WHERE admin_sym = '1-43150-00093'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00122
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00122', 2024, '77.03'
FROM facilities WHERE admin_sym = '1-43150-00122'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.03',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00082
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00082', 2024, '62.3'
FROM facilities WHERE admin_sym = '1-43150-00082'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00099
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00099', 2024, '78.54'
FROM facilities WHERE admin_sym = '1-43150-00099'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00141
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00141', 2024, '88.88'
FROM facilities WHERE admin_sym = '1-43150-00141'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00124', 2024, '81.89'
FROM facilities WHERE admin_sym = '1-43150-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00126
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00126', 2024, '63.31'
FROM facilities WHERE admin_sym = '1-43150-00126'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00136
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00136', 2024, '71.65'
FROM facilities WHERE admin_sym = '1-43150-00136'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.65',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00052
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00052', 2024, '75.06'
FROM facilities WHERE admin_sym = '1-43150-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00152
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00152', 2024, '65.06'
FROM facilities WHERE admin_sym = '1-43150-00152'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00162
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00162', 2024, '94.59'
FROM facilities WHERE admin_sym = '1-43150-00162'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.59',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00032
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00032', 2024, '63.53'
FROM facilities WHERE admin_sym = '1-43150-00032'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.53',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00110
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00110', 2024, '77.3'
FROM facilities WHERE admin_sym = '1-43150-00110'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43150-00157
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43150-00157', 2024, '59.86'
FROM facilities WHERE admin_sym = '1-43150-00157'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43745-00033
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43745-00033', 2024, '84.77'
FROM facilities WHERE admin_sym = '1-43745-00033'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43745-00021
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43745-00021', 2024, '72.24'
FROM facilities WHERE admin_sym = '1-43745-00021'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43745-00015
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43745-00015', 2024, '86.17'
FROM facilities WHERE admin_sym = '1-43745-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43745-00032
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43745-00032', 2024, '91.7'
FROM facilities WHERE admin_sym = '1-43745-00032'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43745-00031
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43745-00031', 2024, '90.58'
FROM facilities WHERE admin_sym = '1-43745-00031'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43745-00041
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43745-00041', 2024, '74.54'
FROM facilities WHERE admin_sym = '1-43745-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43745-00046
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43745-00046', 2024, '77.3'
FROM facilities WHERE admin_sym = '1-43745-00046'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43750-00059
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43750-00059', 2024, '89.85'
FROM facilities WHERE admin_sym = '1-43750-00059'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43750-00058
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43750-00058', 2024, '83.6'
FROM facilities WHERE admin_sym = '1-43750-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43750-00030
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43750-00030', 2024, '79.1'
FROM facilities WHERE admin_sym = '1-43750-00030'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43750-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43750-00001', 2024, '73.09'
FROM facilities WHERE admin_sym = '1-43750-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.09',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43750-00077
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43750-00077', 2024, '90.33'
FROM facilities WHERE admin_sym = '1-43750-00077'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43750-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43750-00012', 2024, '53.62'
FROM facilities WHERE admin_sym = '1-43750-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.62',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43750-00064
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43750-00064', 2024, '67.87'
FROM facilities WHERE admin_sym = '1-43750-00064'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.87',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43750-00063
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43750-00063', 2024, '57.87'
FROM facilities WHERE admin_sym = '1-43750-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.87',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43750-00057
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43750-00057', 2024, '91.14'
FROM facilities WHERE admin_sym = '1-43750-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43750-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43750-00007', 2024, '92.92'
FROM facilities WHERE admin_sym = '1-43750-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.92',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43750-00068
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43750-00068', 2024, '92.09'
FROM facilities WHERE admin_sym = '1-43750-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.09',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43750-00079
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43750-00079', 2024, '97.85'
FROM facilities WHERE admin_sym = '1-43750-00079'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43750-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43750-00011', 2024, '47.71'
FROM facilities WHERE admin_sym = '1-43750-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '47.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43750-00056
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43750-00056', 2024, '58.4'
FROM facilities WHERE admin_sym = '1-43750-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43750-00048
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43750-00048', 2024, '91.46'
FROM facilities WHERE admin_sym = '1-43750-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00566
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00566', 2024, '75.85'
FROM facilities WHERE admin_sym = '1-43110-00566'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00688
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00688', 2024, '88.68'
FROM facilities WHERE admin_sym = '1-43110-00688'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00650
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00650', 2024, '90.55'
FROM facilities WHERE admin_sym = '1-43110-00650'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00498
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00498', 2024, '86.35'
FROM facilities WHERE admin_sym = '1-43110-00498'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00538
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00538', 2024, '81.6'
FROM facilities WHERE admin_sym = '1-43110-00538'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00659
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00659', 2024, '86.17'
FROM facilities WHERE admin_sym = '1-43110-00659'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00055
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00055', 2024, '59.54'
FROM facilities WHERE admin_sym = '1-43110-00055'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00392
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00392', 2024, '86.68'
FROM facilities WHERE admin_sym = '1-43110-00392'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00306
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00306', 2024, '95.1'
FROM facilities WHERE admin_sym = '1-43110-00306'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00580
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00580', 2024, '71.47'
FROM facilities WHERE admin_sym = '1-43110-00580'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43710-00076
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43710-00076', 2024, '34.07'
FROM facilities WHERE admin_sym = '1-43710-00076'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '34.07',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00493
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00493', 2024, '83.64'
FROM facilities WHERE admin_sym = '1-43110-00493'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43710-00060
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43710-00060', 2024, '67.58'
FROM facilities WHERE admin_sym = '1-43710-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00426
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00426', 2024, '71.31'
FROM facilities WHERE admin_sym = '1-43110-00426'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00181
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00181', 2024, '91.82'
FROM facilities WHERE admin_sym = '1-43110-00181'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00412
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00412', 2024, '87.22'
FROM facilities WHERE admin_sym = '1-43110-00412'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.22',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00114
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00114', 2024, '64.35'
FROM facilities WHERE admin_sym = '1-43110-00114'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00041
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00041', 2024, '67.8'
FROM facilities WHERE admin_sym = '1-43110-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43710-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43710-00004', 2024, '65.54'
FROM facilities WHERE admin_sym = '1-43710-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00102
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00102', 2024, '83.88'
FROM facilities WHERE admin_sym = '1-43110-00102'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00442
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00442', 2024, '85.4'
FROM facilities WHERE admin_sym = '1-43110-00442'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00494
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00494', 2024, '57.86'
FROM facilities WHERE admin_sym = '1-43110-00494'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00495
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00495', 2024, '59.52'
FROM facilities WHERE admin_sym = '1-43110-00495'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00382
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00382', 2024, '65.02'
FROM facilities WHERE admin_sym = '1-43110-00382'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00383
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00383', 2024, '73.86'
FROM facilities WHERE admin_sym = '1-43110-00383'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00362
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00362', 2024, '80.12'
FROM facilities WHERE admin_sym = '1-43110-00362'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43710-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43710-00011', 2024, '63.12'
FROM facilities WHERE admin_sym = '1-43710-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00718
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00718', 2024, '73.96'
FROM facilities WHERE admin_sym = '1-43110-00718'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00352
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00352', 2024, '95.68'
FROM facilities WHERE admin_sym = '1-43110-00352'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00353
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00353', 2024, '93.93'
FROM facilities WHERE admin_sym = '1-43110-00353'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00027
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00027', 2024, '73.35'
FROM facilities WHERE admin_sym = '1-43110-00027'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00295
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00295', 2024, '85.1'
FROM facilities WHERE admin_sym = '1-43110-00295'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43710-00054
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43710-00054', 2024, '88.55'
FROM facilities WHERE admin_sym = '1-43710-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43710-00025
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43710-00025', 2024, '90.1'
FROM facilities WHERE admin_sym = '1-43710-00025'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00042
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00042', 2024, '88.6'
FROM facilities WHERE admin_sym = '1-43110-00042'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- Batch 218 of 226
-- Processing 100 facilities

-- admin_sym: 1-46170-00142
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46170-00142', 2024, '90.27'
FROM facilities WHERE admin_sym = '1-46170-00142'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46170-00102
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46170-00102', 2024, '58.72'
FROM facilities WHERE admin_sym = '1-46170-00102'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46170-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46170-00018', 2024, '78.26'
FROM facilities WHERE admin_sym = '1-46170-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.26',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46170-00158
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46170-00158', 2024, '83.21'
FROM facilities WHERE admin_sym = '1-46170-00158'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46170-00173
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46170-00173', 2024, '55.63'
FROM facilities WHERE admin_sym = '1-46170-00173'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46170-00120
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46170-00120', 2024, '76.83'
FROM facilities WHERE admin_sym = '1-46170-00120'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46170-00019
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46170-00019', 2024, '82.05'
FROM facilities WHERE admin_sym = '1-46170-00019'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46170-00117
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46170-00117', 2024, '82.39'
FROM facilities WHERE admin_sym = '1-46170-00117'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.39',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46170-00172
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46170-00172', 2024, '76.8'
FROM facilities WHERE admin_sym = '1-46170-00172'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46170-00110
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46170-00110', 2024, '97.35'
FROM facilities WHERE admin_sym = '1-46170-00110'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46170-00099
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46170-00099', 2024, '93.97'
FROM facilities WHERE admin_sym = '1-46170-00099'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46170-00075
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46170-00075', 2024, '70.75'
FROM facilities WHERE admin_sym = '1-46170-00075'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46170-00121
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46170-00121', 2024, '78.71'
FROM facilities WHERE admin_sym = '1-46170-00121'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46710-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46710-00002', 2024, '94.1'
FROM facilities WHERE admin_sym = '1-46710-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46710-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46710-00012', 2024, '88.71'
FROM facilities WHERE admin_sym = '1-46710-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46710-00092
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46710-00092', 2024, '81.35'
FROM facilities WHERE admin_sym = '1-46710-00092'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46710-00085
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46710-00085', 2024, '92.6'
FROM facilities WHERE admin_sym = '1-46710-00085'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46710-00076
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46710-00076', 2024, '82.39'
FROM facilities WHERE admin_sym = '1-46710-00076'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.39',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46710-00029
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46710-00029', 2024, '77.35'
FROM facilities WHERE admin_sym = '1-46710-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46710-00116
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46710-00116', 2024, '64.85'
FROM facilities WHERE admin_sym = '1-46710-00116'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46710-00082
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46710-00082', 2024, '86.28'
FROM facilities WHERE admin_sym = '1-46710-00082'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.28',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46710-00086
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46710-00086', 2024, '50.51'
FROM facilities WHERE admin_sym = '1-46710-00086'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.51',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46710-00074
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46710-00074', 2024, '63.67'
FROM facilities WHERE admin_sym = '1-46710-00074'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46710-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46710-00004', 2024, '93.85'
FROM facilities WHERE admin_sym = '1-46710-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46710-00032
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46710-00032', 2024, '90.58'
FROM facilities WHERE admin_sym = '1-46710-00032'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46710-00107
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46710-00107', 2024, '80.71'
FROM facilities WHERE admin_sym = '1-46710-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46710-00100
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46710-00100', 2024, '92.24'
FROM facilities WHERE admin_sym = '1-46710-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46710-00052
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46710-00052', 2024, '69.58'
FROM facilities WHERE admin_sym = '1-46710-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00231
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00231', 2024, '74.94'
FROM facilities WHERE admin_sym = '1-46110-00231'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00198
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00198', 2024, '89.35'
FROM facilities WHERE admin_sym = '1-46110-00198'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00136
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00136', 2024, '96.85'
FROM facilities WHERE admin_sym = '1-46110-00136'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00190
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00190', 2024, '77.48'
FROM facilities WHERE admin_sym = '1-46110-00190'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00133
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00133', 2024, '90.05'
FROM facilities WHERE admin_sym = '1-46110-00133'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00189
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00189', 2024, '89.8'
FROM facilities WHERE admin_sym = '1-46110-00189'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00001', 2024, '68.35'
FROM facilities WHERE admin_sym = '1-46110-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00240
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00240', 2024, '79.13'
FROM facilities WHERE admin_sym = '1-46110-00240'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00230
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00230', 2024, '74.31'
FROM facilities WHERE admin_sym = '1-46110-00230'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00241
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00241', 2024, '46.58'
FROM facilities WHERE admin_sym = '1-46110-00241'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '46.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00004', 2024, '86.6'
FROM facilities WHERE admin_sym = '1-46110-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00096
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00096', 2024, '94.85'
FROM facilities WHERE admin_sym = '1-46110-00096'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00180
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00180', 2024, '90.66'
FROM facilities WHERE admin_sym = '1-46110-00180'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.66',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00095
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00095', 2024, '84.48'
FROM facilities WHERE admin_sym = '1-46110-00095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00242
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00242', 2024, '84.54'
FROM facilities WHERE admin_sym = '1-46110-00242'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00152
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00152', 2024, '83.34'
FROM facilities WHERE admin_sym = '1-46110-00152'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.34',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00168
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00168', 2024, '89.16'
FROM facilities WHERE admin_sym = '1-46110-00168'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00173
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00173', 2024, '82.8'
FROM facilities WHERE admin_sym = '1-46110-00173'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00163
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00163', 2024, '83.08'
FROM facilities WHERE admin_sym = '1-46110-00163'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00083
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00083', 2024, '87.04'
FROM facilities WHERE admin_sym = '1-46110-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00202
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00202', 2024, '86.92'
FROM facilities WHERE admin_sym = '1-46110-00202'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.92',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00130
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00130', 2024, '77.87'
FROM facilities WHERE admin_sym = '1-46110-00130'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.87',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00063
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00063', 2024, '83.8'
FROM facilities WHERE admin_sym = '1-46110-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00094
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00094', 2024, '92.5'
FROM facilities WHERE admin_sym = '1-46110-00094'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00139
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00139', 2024, '76.77'
FROM facilities WHERE admin_sym = '1-46110-00139'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00257
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00257', 2024, '83.69'
FROM facilities WHERE admin_sym = '1-46110-00257'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46110-00166
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46110-00166', 2024, '76.24'
FROM facilities WHERE admin_sym = '1-46110-00166'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46840-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46840-00004', 2024, '86.43'
FROM facilities WHERE admin_sym = '1-46840-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46840-00098
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46840-00098', 2024, '83.46'
FROM facilities WHERE admin_sym = '1-46840-00098'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46840-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46840-00002', 2024, '77.85'
FROM facilities WHERE admin_sym = '1-46840-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46840-00055
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46840-00055', 2024, '96.8'
FROM facilities WHERE admin_sym = '1-46840-00055'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46840-00075
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46840-00075', 2024, '75.05'
FROM facilities WHERE admin_sym = '1-46840-00075'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46840-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46840-00001', 2024, '97.85'
FROM facilities WHERE admin_sym = '1-46840-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46840-00092
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46840-00092', 2024, '66'
FROM facilities WHERE admin_sym = '1-46840-00092'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46840-00084
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46840-00084', 2024, '54.5'
FROM facilities WHERE admin_sym = '1-46840-00084'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46840-00085
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46840-00085', 2024, '62.18'
FROM facilities WHERE admin_sym = '1-46840-00085'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46840-00093
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46840-00093', 2024, '68.15'
FROM facilities WHERE admin_sym = '1-46840-00093'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.15',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46840-00065
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46840-00065', 2024, '75.44'
FROM facilities WHERE admin_sym = '1-46840-00065'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46840-00052
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46840-00052', 2024, '87.82'
FROM facilities WHERE admin_sym = '1-46840-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46840-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46840-00006', 2024, '91.43'
FROM facilities WHERE admin_sym = '1-46840-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46840-00066
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46840-00066', 2024, '88.55'
FROM facilities WHERE admin_sym = '1-46840-00066'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46840-00105
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46840-00105', 2024, '82.98'
FROM facilities WHERE admin_sym = '1-46840-00105'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46840-00082
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46840-00082', 2024, '87.12'
FROM facilities WHERE admin_sym = '1-46840-00082'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46780-00014
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46780-00014', 2024, '89.85'
FROM facilities WHERE admin_sym = '1-46780-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46780-00046
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46780-00046', 2024, '95.25'
FROM facilities WHERE admin_sym = '1-46780-00046'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46780-00061
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46780-00061', 2024, '65.03'
FROM facilities WHERE admin_sym = '1-46780-00061'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.03',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46780-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46780-00044', 2024, '55.38'
FROM facilities WHERE admin_sym = '1-46780-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46780-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46780-00011', 2024, '71.69'
FROM facilities WHERE admin_sym = '1-46780-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46780-00036
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46780-00036', 2024, '95.62'
FROM facilities WHERE admin_sym = '1-46780-00036'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.62',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46150-00179
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46150-00179', 2024, '92.6'
FROM facilities WHERE admin_sym = '1-46150-00179'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46150-00261
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46150-00261', 2024, '96.85'
FROM facilities WHERE admin_sym = '1-46150-00261'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46150-00234
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46150-00234', 2024, '85.6'
FROM facilities WHERE admin_sym = '1-46150-00234'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46150-00134
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46150-00134', 2024, '81.05'
FROM facilities WHERE admin_sym = '1-46150-00134'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46150-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46150-00003', 2024, '97.3'
FROM facilities WHERE admin_sym = '1-46150-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46150-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46150-00006', 2024, '94.8'
FROM facilities WHERE admin_sym = '1-46150-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46150-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46150-00005', 2024, '98.35'
FROM facilities WHERE admin_sym = '1-46150-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46150-00161
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46150-00161', 2024, '92.86'
FROM facilities WHERE admin_sym = '1-46150-00161'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46150-00281
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46150-00281', 2024, '80.32'
FROM facilities WHERE admin_sym = '1-46150-00281'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46150-00292
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46150-00292', 2024, '80.49'
FROM facilities WHERE admin_sym = '1-46150-00292'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46150-00099
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46150-00099', 2024, '64.16'
FROM facilities WHERE admin_sym = '1-46150-00099'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46150-00198
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46150-00198', 2024, '95.67'
FROM facilities WHERE admin_sym = '1-46150-00198'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46150-00223
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46150-00223', 2024, '80.54'
FROM facilities WHERE admin_sym = '1-46150-00223'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46150-00276
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46150-00276', 2024, '91.01'
FROM facilities WHERE admin_sym = '1-46150-00276'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.01',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46150-00200
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46150-00200', 2024, '81.65'
FROM facilities WHERE admin_sym = '1-46150-00200'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.65',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46150-00152
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46150-00152', 2024, '86.5'
FROM facilities WHERE admin_sym = '1-46150-00152'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46150-00321
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46150-00321', 2024, '94.02'
FROM facilities WHERE admin_sym = '1-46150-00321'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46150-00211
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46150-00211', 2024, '97'
FROM facilities WHERE admin_sym = '1-46150-00211'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46150-00311
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46150-00311', 2024, '73.7'
FROM facilities WHERE admin_sym = '1-46150-00311'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46150-00167
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46150-00167', 2024, '69.44'
FROM facilities WHERE admin_sym = '1-46150-00167'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46150-00202
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46150-00202', 2024, '65.15'
FROM facilities WHERE admin_sym = '1-46150-00202'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.15',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46150-00299
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46150-00299', 2024, '75.27'
FROM facilities WHERE admin_sym = '1-46150-00299'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46910-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46910-00003', 2024, '84.6'
FROM facilities WHERE admin_sym = '1-46910-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

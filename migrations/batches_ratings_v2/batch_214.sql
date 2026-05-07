-- Batch 214 of 226
-- Processing 100 facilities

-- admin_sym: 1-44210-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44210-00002', 2024, '97.1'
FROM facilities WHERE admin_sym = '1-44210-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44210-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44210-00006', 2024, '92.85'
FROM facilities WHERE admin_sym = '1-44210-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44210-00071
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44210-00071', 2024, '54.75'
FROM facilities WHERE admin_sym = '1-44210-00071'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44210-00119
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44210-00119', 2024, '85.6'
FROM facilities WHERE admin_sym = '1-44210-00119'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44210-00117
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44210-00117', 2024, '80.6'
FROM facilities WHERE admin_sym = '1-44210-00117'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44210-00160
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44210-00160', 2024, '77.54'
FROM facilities WHERE admin_sym = '1-44210-00160'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44210-00111
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44210-00111', 2024, '82.1'
FROM facilities WHERE admin_sym = '1-44210-00111'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44210-00063
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44210-00063', 2024, '89.85'
FROM facilities WHERE admin_sym = '1-44210-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44210-00097
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44210-00097', 2024, '91.35'
FROM facilities WHERE admin_sym = '1-44210-00097'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44210-00110
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44210-00110', 2024, '98.6'
FROM facilities WHERE admin_sym = '1-44210-00110'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44210-00122
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44210-00122', 2024, '67.68'
FROM facilities WHERE admin_sym = '1-44210-00122'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44210-00104
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44210-00104', 2024, '76.15'
FROM facilities WHERE admin_sym = '1-44210-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.15',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44210-00162
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44210-00162', 2024, '58.6'
FROM facilities WHERE admin_sym = '1-44210-00162'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44210-00100
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44210-00100', 2024, '77.73'
FROM facilities WHERE admin_sym = '1-44210-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.73',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44210-00098
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44210-00098', 2024, '72.81'
FROM facilities WHERE admin_sym = '1-44210-00098'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44210-00085
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44210-00085', 2024, '63.14'
FROM facilities WHERE admin_sym = '1-44210-00085'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44210-00140
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44210-00140', 2024, '68.66'
FROM facilities WHERE admin_sym = '1-44210-00140'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.66',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44210-00055
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44210-00055', 2024, '87.25'
FROM facilities WHERE admin_sym = '1-44210-00055'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44770-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44770-00001', 2024, '89.05'
FROM facilities WHERE admin_sym = '1-44770-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44770-00031
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44770-00031', 2024, '83.49'
FROM facilities WHERE admin_sym = '1-44770-00031'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44770-00089
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44770-00089', 2024, '78.5'
FROM facilities WHERE admin_sym = '1-44770-00089'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44770-00034
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44770-00034', 2024, '77.39'
FROM facilities WHERE admin_sym = '1-44770-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.39',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44770-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44770-00018', 2024, '93.35'
FROM facilities WHERE admin_sym = '1-44770-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44770-00087
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44770-00087', 2024, '62.12'
FROM facilities WHERE admin_sym = '1-44770-00087'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44770-00054
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44770-00054', 2024, '90'
FROM facilities WHERE admin_sym = '1-44770-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44770-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44770-00040', 2024, '46.71'
FROM facilities WHERE admin_sym = '1-44770-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '46.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44770-00092
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44770-00092', 2024, '64.98'
FROM facilities WHERE admin_sym = '1-44770-00092'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00219
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00219', 2024, '71.96'
FROM facilities WHERE admin_sym = '1-44200-00219'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00159
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00159', 2024, '90.85'
FROM facilities WHERE admin_sym = '1-44200-00159'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00203
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00203', 2024, '89.82'
FROM facilities WHERE admin_sym = '1-44200-00203'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00104
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00104', 2024, '75.7'
FROM facilities WHERE admin_sym = '1-44200-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00127
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00127', 2024, '95.1'
FROM facilities WHERE admin_sym = '1-44200-00127'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00221
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00221', 2024, '65.35'
FROM facilities WHERE admin_sym = '1-44200-00221'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00190
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00190', 2024, '94.85'
FROM facilities WHERE admin_sym = '1-44200-00190'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00143
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00143', 2024, '98.6'
FROM facilities WHERE admin_sym = '1-44200-00143'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00141
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00141', 2024, '95.1'
FROM facilities WHERE admin_sym = '1-44200-00141'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00155
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00155', 2024, '93.1'
FROM facilities WHERE admin_sym = '1-44200-00155'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00176
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00176', 2024, '59.72'
FROM facilities WHERE admin_sym = '1-44200-00176'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00088', 2024, '92.6'
FROM facilities WHERE admin_sym = '1-44200-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00145
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00145', 2024, '78.87'
FROM facilities WHERE admin_sym = '1-44200-00145'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.87',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00218
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00218', 2024, '91.04'
FROM facilities WHERE admin_sym = '1-44200-00218'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00035
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00035', 2024, '69.78'
FROM facilities WHERE admin_sym = '1-44200-00035'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.78',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00093
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00093', 2024, '80.22'
FROM facilities WHERE admin_sym = '1-44200-00093'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.22',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00113
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00113', 2024, '96.77'
FROM facilities WHERE admin_sym = '1-44200-00113'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00064
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00064', 2024, '94.85'
FROM facilities WHERE admin_sym = '1-44200-00064'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00105
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00105', 2024, '96.69'
FROM facilities WHERE admin_sym = '1-44200-00105'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00066
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00066', 2024, '96.85'
FROM facilities WHERE admin_sym = '1-44200-00066'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00096
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00096', 2024, '69.94'
FROM facilities WHERE admin_sym = '1-44200-00096'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00212
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00212', 2024, '68.46'
FROM facilities WHERE admin_sym = '1-44200-00212'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00010', 2024, '73.55'
FROM facilities WHERE admin_sym = '1-44200-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00144
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00144', 2024, '82.48'
FROM facilities WHERE admin_sym = '1-44200-00144'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00120
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00120', 2024, '75.06'
FROM facilities WHERE admin_sym = '1-44200-00120'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00182
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00182', 2024, '77.42'
FROM facilities WHERE admin_sym = '1-44200-00182'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00153
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00153', 2024, '70.41'
FROM facilities WHERE admin_sym = '1-44200-00153'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44200-00123
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44200-00123', 2024, '64.92'
FROM facilities WHERE admin_sym = '1-44200-00123'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.92',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44810-00121
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44810-00121', 2024, '87.6'
FROM facilities WHERE admin_sym = '1-44810-00121'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44810-00062
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44810-00062', 2024, '86.75'
FROM facilities WHERE admin_sym = '1-44810-00062'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44810-00014
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44810-00014', 2024, '88.1'
FROM facilities WHERE admin_sym = '1-44810-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44810-00111
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44810-00111', 2024, '68.22'
FROM facilities WHERE admin_sym = '1-44810-00111'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.22',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44810-00144
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44810-00144', 2024, '81.25'
FROM facilities WHERE admin_sym = '1-44810-00144'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44810-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44810-00088', 2024, '67.35'
FROM facilities WHERE admin_sym = '1-44810-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44810-00126
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44810-00126', 2024, '79.52'
FROM facilities WHERE admin_sym = '1-44810-00126'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44810-00109
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44810-00109', 2024, '87.98'
FROM facilities WHERE admin_sym = '1-44810-00109'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44810-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44810-00125', 2024, '71.31'
FROM facilities WHERE admin_sym = '1-44810-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44810-00055
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44810-00055', 2024, '88.06'
FROM facilities WHERE admin_sym = '1-44810-00055'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44810-00048
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44810-00048', 2024, '63.52'
FROM facilities WHERE admin_sym = '1-44810-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44810-00079
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44810-00079', 2024, '83.44'
FROM facilities WHERE admin_sym = '1-44810-00079'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44810-00133
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44810-00133', 2024, '39.67'
FROM facilities WHERE admin_sym = '1-44810-00133'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '39.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44810-00095
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44810-00095', 2024, '40.69'
FROM facilities WHERE admin_sym = '1-44810-00095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '40.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00338
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00338', 2024, '89.35'
FROM facilities WHERE admin_sym = '1-44130-00338'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00184
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00184', 2024, '65.5'
FROM facilities WHERE admin_sym = '1-44130-00184'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00228
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00228', 2024, '86.6'
FROM facilities WHERE admin_sym = '1-44130-00228'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00008', 2024, '91.1'
FROM facilities WHERE admin_sym = '1-44130-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00009', 2024, '91.25'
FROM facilities WHERE admin_sym = '1-44130-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00003', 2024, '53.52'
FROM facilities WHERE admin_sym = '1-44130-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00187
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00187', 2024, '80.85'
FROM facilities WHERE admin_sym = '1-44130-00187'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00007', 2024, '81.85'
FROM facilities WHERE admin_sym = '1-44130-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00456
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00456', 2024, '65.05'
FROM facilities WHERE admin_sym = '1-44130-00456'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00352
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00352', 2024, '78.6'
FROM facilities WHERE admin_sym = '1-44130-00352'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00252
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00252', 2024, '92.6'
FROM facilities WHERE admin_sym = '1-44130-00252'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00207
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00207', 2024, '86.35'
FROM facilities WHERE admin_sym = '1-44130-00207'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00461
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00461', 2024, '68.43'
FROM facilities WHERE admin_sym = '1-44130-00461'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00089
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00089', 2024, '94.85'
FROM facilities WHERE admin_sym = '1-44130-00089'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00348
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00348', 2024, '96.35'
FROM facilities WHERE admin_sym = '1-44130-00348'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00339
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00339', 2024, '69.33'
FROM facilities WHERE admin_sym = '1-44130-00339'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00293
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00293', 2024, '87.43'
FROM facilities WHERE admin_sym = '1-44130-00293'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00299
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00299', 2024, '81.15'
FROM facilities WHERE admin_sym = '1-44130-00299'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.15',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00363
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00363', 2024, '87.11'
FROM facilities WHERE admin_sym = '1-44130-00363'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.11',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00271
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00271', 2024, '93.16'
FROM facilities WHERE admin_sym = '1-44130-00271'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00488
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00488', 2024, '80.53'
FROM facilities WHERE admin_sym = '1-44130-00488'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.53',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00392
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00392', 2024, '76.15'
FROM facilities WHERE admin_sym = '1-44130-00392'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.15',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00250
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00250', 2024, '80.22'
FROM facilities WHERE admin_sym = '1-44130-00250'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.22',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00272
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00272', 2024, '96.07'
FROM facilities WHERE admin_sym = '1-44130-00272'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.07',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00379
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00379', 2024, '79.16'
FROM facilities WHERE admin_sym = '1-44130-00379'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00011', 2024, '87.67'
FROM facilities WHERE admin_sym = '1-44130-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00274
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00274', 2024, '89.45'
FROM facilities WHERE admin_sym = '1-44130-00274'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.45',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00409
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00409', 2024, '84.39'
FROM facilities WHERE admin_sym = '1-44130-00409'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.39',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00386
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00386', 2024, '66.29'
FROM facilities WHERE admin_sym = '1-44130-00386'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00298
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00298', 2024, '86.79'
FROM facilities WHERE admin_sym = '1-44130-00298'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44130-00411
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44130-00411', 2024, '82.33'
FROM facilities WHERE admin_sym = '1-44130-00411'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.33',
  last_updated = CURRENT_TIMESTAMP;

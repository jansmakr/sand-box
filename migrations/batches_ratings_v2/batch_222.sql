-- Batch 222 of 226
-- Processing 100 facilities

-- admin_sym: 1-47840-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47840-00004', 2024, '80.1'
FROM facilities WHERE admin_sym = '1-47840-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47840-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47840-00002', 2024, '79.99'
FROM facilities WHERE admin_sym = '1-47840-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47840-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47840-00003', 2024, '66.28'
FROM facilities WHERE admin_sym = '1-47840-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.28',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47840-00060
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47840-00060', 2024, '87.08'
FROM facilities WHERE admin_sym = '1-47840-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47840-00033
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47840-00033', 2024, '94.24'
FROM facilities WHERE admin_sym = '1-47840-00033'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47840-00039
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47840-00039', 2024, '82.8'
FROM facilities WHERE admin_sym = '1-47840-00039'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47840-00035
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47840-00035', 2024, '83.74'
FROM facilities WHERE admin_sym = '1-47840-00035'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47170-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47170-00006', 2024, '82.55'
FROM facilities WHERE admin_sym = '1-47170-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47170-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47170-00005', 2024, '77.35'
FROM facilities WHERE admin_sym = '1-47170-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47170-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47170-00002', 2024, '73.85'
FROM facilities WHERE admin_sym = '1-47170-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47170-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47170-00004', 2024, '72.35'
FROM facilities WHERE admin_sym = '1-47170-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47170-00073
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47170-00073', 2024, '86.8'
FROM facilities WHERE admin_sym = '1-47170-00073'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47170-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47170-00003', 2024, '83.1'
FROM facilities WHERE admin_sym = '1-47170-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47170-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47170-00001', 2024, '79.6'
FROM facilities WHERE admin_sym = '1-47170-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47170-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47170-00040', 2024, '85.05'
FROM facilities WHERE admin_sym = '1-47170-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47170-00067
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47170-00067', 2024, '85.35'
FROM facilities WHERE admin_sym = '1-47170-00067'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47170-00102
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47170-00102', 2024, '83.91'
FROM facilities WHERE admin_sym = '1-47170-00102'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47170-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47170-00044', 2024, '89.57'
FROM facilities WHERE admin_sym = '1-47170-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.57',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47170-00119
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47170-00119', 2024, '78.71'
FROM facilities WHERE admin_sym = '1-47170-00119'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47170-00060
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47170-00060', 2024, '92.38'
FROM facilities WHERE admin_sym = '1-47170-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47170-00030
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47170-00030', 2024, '84.59'
FROM facilities WHERE admin_sym = '1-47170-00030'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.59',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47170-00077
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47170-00077', 2024, '71.29'
FROM facilities WHERE admin_sym = '1-47170-00077'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47770-00056
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47770-00056', 2024, '65.91'
FROM facilities WHERE admin_sym = '1-47770-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47770-00032
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47770-00032', 2024, '74.85'
FROM facilities WHERE admin_sym = '1-47770-00032'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47770-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47770-00002', 2024, '92.6'
FROM facilities WHERE admin_sym = '1-47770-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47770-00024
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47770-00024', 2024, '81.31'
FROM facilities WHERE admin_sym = '1-47770-00024'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47760-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47760-00001', 2024, '77.84'
FROM facilities WHERE admin_sym = '1-47760-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.84',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47760-00016
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47760-00016', 2024, '72.55'
FROM facilities WHERE admin_sym = '1-47760-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47760-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47760-00018', 2024, '80.06'
FROM facilities WHERE admin_sym = '1-47760-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47760-00028
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47760-00028', 2024, '90.13'
FROM facilities WHERE admin_sym = '1-47760-00028'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47760-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47760-00022', 2024, '63.47'
FROM facilities WHERE admin_sym = '1-47760-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47210-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47210-00001', 2024, '81.85'
FROM facilities WHERE admin_sym = '1-47210-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47210-00017
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47210-00017', 2024, '75.6'
FROM facilities WHERE admin_sym = '1-47210-00017'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47210-00106
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47210-00106', 2024, '89.55'
FROM facilities WHERE admin_sym = '1-47210-00106'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47210-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47210-00004', 2024, '91.55'
FROM facilities WHERE admin_sym = '1-47210-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47210-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47210-00003', 2024, '77.58'
FROM facilities WHERE admin_sym = '1-47210-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47210-00056
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47210-00056', 2024, '85.35'
FROM facilities WHERE admin_sym = '1-47210-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47210-00149
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47210-00149', 2024, '76.25'
FROM facilities WHERE admin_sym = '1-47210-00149'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47210-00027
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47210-00027', 2024, '74.53'
FROM facilities WHERE admin_sym = '1-47210-00027'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.53',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47210-00185
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47210-00185', 2024, '71.45'
FROM facilities WHERE admin_sym = '1-47210-00185'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.45',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47210-00147
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47210-00147', 2024, '74.63'
FROM facilities WHERE admin_sym = '1-47210-00147'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47210-00174
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47210-00174', 2024, '85.37'
FROM facilities WHERE admin_sym = '1-47210-00174'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.37',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47210-00031
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47210-00031', 2024, '68.74'
FROM facilities WHERE admin_sym = '1-47210-00031'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47210-00157
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47210-00157', 2024, '71.06'
FROM facilities WHERE admin_sym = '1-47210-00157'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47210-00020
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47210-00020', 2024, '68.89'
FROM facilities WHERE admin_sym = '1-47210-00020'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47210-00108
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47210-00108', 2024, '76.61'
FROM facilities WHERE admin_sym = '1-47210-00108'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47210-00115
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47210-00115', 2024, '71.05'
FROM facilities WHERE admin_sym = '1-47210-00115'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47210-00039
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47210-00039', 2024, '94.97'
FROM facilities WHERE admin_sym = '1-47210-00039'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47210-00104
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47210-00104', 2024, '68.7'
FROM facilities WHERE admin_sym = '1-47210-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47210-00151
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47210-00151', 2024, '79.46'
FROM facilities WHERE admin_sym = '1-47210-00151'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47210-00195
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47210-00195', 2024, '84.83'
FROM facilities WHERE admin_sym = '1-47210-00195'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47230-00027
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47230-00027', 2024, '80.6'
FROM facilities WHERE admin_sym = '1-47230-00027'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47230-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47230-00010', 2024, '83.35'
FROM facilities WHERE admin_sym = '1-47230-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47230-00033
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47230-00033', 2024, '66.1'
FROM facilities WHERE admin_sym = '1-47230-00033'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47230-00209
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47230-00209', 2024, '70.02'
FROM facilities WHERE admin_sym = '1-47230-00209'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47230-00019
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47230-00019', 2024, '93.85'
FROM facilities WHERE admin_sym = '1-47230-00019'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47230-00138
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47230-00138', 2024, '81.72'
FROM facilities WHERE admin_sym = '1-47230-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47230-00176
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47230-00176', 2024, '78.77'
FROM facilities WHERE admin_sym = '1-47230-00176'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47230-00115
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47230-00115', 2024, '61.65'
FROM facilities WHERE admin_sym = '1-47230-00115'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.65',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47230-00182
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47230-00182', 2024, '88.39'
FROM facilities WHERE admin_sym = '1-47230-00182'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.39',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47230-00017
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47230-00017', 2024, '69.47'
FROM facilities WHERE admin_sym = '1-47230-00017'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47230-00127
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47230-00127', 2024, '94.68'
FROM facilities WHERE admin_sym = '1-47230-00127'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47230-00111
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47230-00111', 2024, '74.68'
FROM facilities WHERE admin_sym = '1-47230-00111'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47230-00169
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47230-00169', 2024, '71.27'
FROM facilities WHERE admin_sym = '1-47230-00169'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47230-00144
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47230-00144', 2024, '68.64'
FROM facilities WHERE admin_sym = '1-47230-00144'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47230-00197
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47230-00197', 2024, '56.88'
FROM facilities WHERE admin_sym = '1-47230-00197'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47900-00020
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47900-00020', 2024, '96.55'
FROM facilities WHERE admin_sym = '1-47900-00020'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47900-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47900-00005', 2024, '72.78'
FROM facilities WHERE admin_sym = '1-47900-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.78',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47900-00039
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47900-00039', 2024, '94.6'
FROM facilities WHERE admin_sym = '1-47900-00039'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47900-00331
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47900-00331', 2024, '69.54'
FROM facilities WHERE admin_sym = '1-47900-00331'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47900-00353
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47900-00353', 2024, '91.05'
FROM facilities WHERE admin_sym = '1-47900-00353'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47900-00343
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47900-00343', 2024, '67.18'
FROM facilities WHERE admin_sym = '1-47900-00343'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47940-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47940-00006', 2024, '69.12'
FROM facilities WHERE admin_sym = '1-47940-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47930-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47930-00001', 2024, '86.7'
FROM facilities WHERE admin_sym = '1-47930-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47930-00049
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47930-00049', 2024, '80.5'
FROM facilities WHERE admin_sym = '1-47930-00049'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47930-00057
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47930-00057', 2024, '66.6'
FROM facilities WHERE admin_sym = '1-47930-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47730-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47730-00044', 2024, '80.05'
FROM facilities WHERE admin_sym = '1-47730-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47730-00047
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47730-00047', 2024, '84.27'
FROM facilities WHERE admin_sym = '1-47730-00047'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47730-00099
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47730-00099', 2024, '64.35'
FROM facilities WHERE admin_sym = '1-47730-00099'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47730-00067
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47730-00067', 2024, '86.3'
FROM facilities WHERE admin_sym = '1-47730-00067'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47730-00097
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47730-00097', 2024, '76.95'
FROM facilities WHERE admin_sym = '1-47730-00097'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.95',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47730-00057
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47730-00057', 2024, '83.68'
FROM facilities WHERE admin_sym = '1-47730-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47730-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47730-00010', 2024, '56.35'
FROM facilities WHERE admin_sym = '1-47730-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47730-00049
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47730-00049', 2024, '79.85'
FROM facilities WHERE admin_sym = '1-47730-00049'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47730-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47730-00002', 2024, '70.06'
FROM facilities WHERE admin_sym = '1-47730-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47730-00070
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47730-00070', 2024, '73.76'
FROM facilities WHERE admin_sym = '1-47730-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.76',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47730-00080
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47730-00080', 2024, '65.47'
FROM facilities WHERE admin_sym = '1-47730-00080'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47730-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47730-00001', 2024, '83.93'
FROM facilities WHERE admin_sym = '1-47730-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47730-00065
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47730-00065', 2024, '83.27'
FROM facilities WHERE admin_sym = '1-47730-00065'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47730-00081
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47730-00081', 2024, '98.3'
FROM facilities WHERE admin_sym = '1-47730-00081'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47730-00079
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47730-00079', 2024, '63.45'
FROM facilities WHERE admin_sym = '1-47730-00079'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.45',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47730-00061
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47730-00061', 2024, '75.61'
FROM facilities WHERE admin_sym = '1-47730-00061'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47730-00103
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47730-00103', 2024, '75.47'
FROM facilities WHERE admin_sym = '1-47730-00103'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47820-00053
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47820-00053', 2024, '70.5'
FROM facilities WHERE admin_sym = '1-47820-00053'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47820-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47820-00001', 2024, '85.3'
FROM facilities WHERE admin_sym = '1-47820-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47820-00035
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47820-00035', 2024, '86.35'
FROM facilities WHERE admin_sym = '1-47820-00035'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47820-00060
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47820-00060', 2024, '70.1'
FROM facilities WHERE admin_sym = '1-47820-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47820-00058
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47820-00058', 2024, '80.99'
FROM facilities WHERE admin_sym = '1-47820-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47820-00083
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47820-00083', 2024, '82.88'
FROM facilities WHERE admin_sym = '1-47820-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-47820-00036
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-47820-00036', 2024, '77.99'
FROM facilities WHERE admin_sym = '1-47820-00036'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.99',
  last_updated = CURRENT_TIMESTAMP;

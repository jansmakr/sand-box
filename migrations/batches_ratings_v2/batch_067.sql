-- Batch 67 of 226
-- Processing 100 facilities

-- admin_sym: 2-44270-00191
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44270-00191', 2024, '84.35'
FROM facilities WHERE admin_sym = '2-44270-00191'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00091
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00091', 2024, '74.05'
FROM facilities WHERE admin_sym = '3-44270-00091'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44270-00195
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44270-00195', 2024, '78.32'
FROM facilities WHERE admin_sym = '2-44270-00195'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00167
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00167', 2024, '53.1'
FROM facilities WHERE admin_sym = '3-44270-00167'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00155
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00155', 2024, '85.96'
FROM facilities WHERE admin_sym = '3-44270-00155'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00077
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00077', 2024, '67.05'
FROM facilities WHERE admin_sym = '3-44270-00077'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44270-00197
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44270-00197', 2024, '76.04'
FROM facilities WHERE admin_sym = '2-44270-00197'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44270-00207
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44270-00207', 2024, '77.6'
FROM facilities WHERE admin_sym = '2-44270-00207'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44270-00153
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44270-00153', 2024, '86.85'
FROM facilities WHERE admin_sym = '2-44270-00153'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44830-00029
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44830-00029', 2024, '92.1'
FROM facilities WHERE admin_sym = '3-44830-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44830-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44830-00007', 2024, '77.85'
FROM facilities WHERE admin_sym = '3-44830-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00117
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00117', 2024, '75.3'
FROM facilities WHERE admin_sym = '3-44270-00117'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00125', 2024, '68.1'
FROM facilities WHERE admin_sym = '3-44270-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00169
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00169', 2024, '53.88'
FROM facilities WHERE admin_sym = '3-44270-00169'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00145
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00145', 2024, '74.8'
FROM facilities WHERE admin_sym = '3-44270-00145'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44270-00193
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44270-00193', 2024, '56.58'
FROM facilities WHERE admin_sym = '2-44270-00193'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00165
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00165', 2024, '76.69'
FROM facilities WHERE admin_sym = '3-44270-00165'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44270-00179
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44270-00179', 2024, '89.85'
FROM facilities WHERE admin_sym = '2-44270-00179'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00127
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00127', 2024, '84.6'
FROM facilities WHERE admin_sym = '3-44270-00127'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44830-00063
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44830-00063', 2024, '84.35'
FROM facilities WHERE admin_sym = '3-44830-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00107
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00107', 2024, '84.1'
FROM facilities WHERE admin_sym = '3-44270-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00101
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00101', 2024, '95.6'
FROM facilities WHERE admin_sym = '3-44270-00101'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00131
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00131', 2024, '88.05'
FROM facilities WHERE admin_sym = '3-44270-00131'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00077
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00077', 2024, '72.8'
FROM facilities WHERE admin_sym = '3-44270-00077'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00145
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00145', 2024, '71.05'
FROM facilities WHERE admin_sym = '3-44270-00145'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00127
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00127', 2024, '78.85'
FROM facilities WHERE admin_sym = '3-44270-00127'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44830-00063
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44830-00063', 2024, '84.1'
FROM facilities WHERE admin_sym = '3-44830-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00101
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00101', 2024, '85.6'
FROM facilities WHERE admin_sym = '3-44270-00101'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00085
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00085', 2024, '93.1'
FROM facilities WHERE admin_sym = '3-44270-00085'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44270-00209
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44270-00209', 2024, '62.5'
FROM facilities WHERE admin_sym = '2-44270-00209'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00155
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00155', 2024, '94.6'
FROM facilities WHERE admin_sym = '3-44270-00155'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00151
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00151', 2024, '89.1'
FROM facilities WHERE admin_sym = '3-44270-00151'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44270-00207
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44270-00207', 2024, '77.6'
FROM facilities WHERE admin_sym = '2-44270-00207'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44270-00153
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44270-00153', 2024, '86.85'
FROM facilities WHERE admin_sym = '2-44270-00153'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44830-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44830-00007', 2024, '86.35'
FROM facilities WHERE admin_sym = '3-44830-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00129
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00129', 2024, '85.6'
FROM facilities WHERE admin_sym = '3-44270-00129'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00125', 2024, '58.1'
FROM facilities WHERE admin_sym = '3-44270-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00165
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00165', 2024, '85.1'
FROM facilities WHERE admin_sym = '3-44270-00165'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44270-00179
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44270-00179', 2024, '83.35'
FROM facilities WHERE admin_sym = '2-44270-00179'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00159
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00159', 2024, '89.05'
FROM facilities WHERE admin_sym = '3-44270-00159'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00127
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00127', 2024, '93.85'
FROM facilities WHERE admin_sym = '3-44270-00127'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44830-00063
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44830-00063', 2024, '91.35'
FROM facilities WHERE admin_sym = '3-44830-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00141
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00141', 2024, '72.55'
FROM facilities WHERE admin_sym = '3-44270-00141'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00101
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00101', 2024, '94.1'
FROM facilities WHERE admin_sym = '3-44270-00101'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00131
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00131', 2024, '86.1'
FROM facilities WHERE admin_sym = '3-44270-00131'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00147
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00147', 2024, '93.05'
FROM facilities WHERE admin_sym = '3-44270-00147'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44830-00057
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44830-00057', 2024, '90.6'
FROM facilities WHERE admin_sym = '3-44830-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44270-00121
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44270-00121', 2024, '73.8'
FROM facilities WHERE admin_sym = '3-44270-00121'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00151
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00151', 2024, '93.8'
FROM facilities WHERE admin_sym = '3-44200-00151'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00179
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00179', 2024, '84.85'
FROM facilities WHERE admin_sym = '3-44200-00179'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00195
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00195', 2024, '93.43'
FROM facilities WHERE admin_sym = '3-44200-00195'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00181
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00181', 2024, '93.1'
FROM facilities WHERE admin_sym = '3-44200-00181'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00231
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00231', 2024, '76.5'
FROM facilities WHERE admin_sym = '3-44200-00231'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00263
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00263', 2024, '77.49'
FROM facilities WHERE admin_sym = '2-44200-00263'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00001', 2024, '62.85'
FROM facilities WHERE admin_sym = '3-44200-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00301
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00301', 2024, '63.55'
FROM facilities WHERE admin_sym = '2-44200-00301'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00183
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00183', 2024, '73.78'
FROM facilities WHERE admin_sym = '3-44200-00183'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.78',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00309
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00309', 2024, '73.68'
FROM facilities WHERE admin_sym = '2-44200-00309'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00225
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00225', 2024, '93.85'
FROM facilities WHERE admin_sym = '3-44200-00225'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00265
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00265', 2024, '85.6'
FROM facilities WHERE admin_sym = '2-44200-00265'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00157
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00157', 2024, '78.1'
FROM facilities WHERE admin_sym = '3-44200-00157'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00227
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00227', 2024, '76.6'
FROM facilities WHERE admin_sym = '3-44200-00227'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00295
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00295', 2024, '85.04'
FROM facilities WHERE admin_sym = '2-44200-00295'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00305
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00305', 2024, '95.74'
FROM facilities WHERE admin_sym = '2-44200-00305'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00073
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00073', 2024, '94.1'
FROM facilities WHERE admin_sym = '3-44200-00073'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00187
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00187', 2024, '97.35'
FROM facilities WHERE admin_sym = '3-44200-00187'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00271
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00271', 2024, '88.05'
FROM facilities WHERE admin_sym = '2-44200-00271'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00229
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00229', 2024, '72.85'
FROM facilities WHERE admin_sym = '3-44200-00229'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00317
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00317', 2024, '64.55'
FROM facilities WHERE admin_sym = '2-44200-00317'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00119
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00119', 2024, '94.05'
FROM facilities WHERE admin_sym = '2-44200-00119'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00217
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00217', 2024, '76.35'
FROM facilities WHERE admin_sym = '3-44200-00217'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00275
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00275', 2024, '87.6'
FROM facilities WHERE admin_sym = '2-44200-00275'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00223
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00223', 2024, '67.49'
FROM facilities WHERE admin_sym = '3-44200-00223'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00205
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00205', 2024, '90.85'
FROM facilities WHERE admin_sym = '3-44200-00205'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00071
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00071', 2024, '64.3'
FROM facilities WHERE admin_sym = '3-44200-00071'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00115
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00115', 2024, '85.6'
FROM facilities WHERE admin_sym = '2-44200-00115'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00209
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00209', 2024, '88.85'
FROM facilities WHERE admin_sym = '3-44200-00209'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00181
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00181', 2024, '95.55'
FROM facilities WHERE admin_sym = '3-44200-00181'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00187
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00187', 2024, '94.85'
FROM facilities WHERE admin_sym = '3-44200-00187'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00119
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00119', 2024, '94.1'
FROM facilities WHERE admin_sym = '2-44200-00119'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00285
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00285', 2024, '43.05'
FROM facilities WHERE admin_sym = '2-44200-00285'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '43.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00195
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00195', 2024, '94.85'
FROM facilities WHERE admin_sym = '3-44200-00195'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00231
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00231', 2024, '86.6'
FROM facilities WHERE admin_sym = '3-44200-00231'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00163
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00163', 2024, '79.1'
FROM facilities WHERE admin_sym = '2-44200-00163'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00253
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00253', 2024, '79.1'
FROM facilities WHERE admin_sym = '2-44200-00253'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00119
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00119', 2024, '83.35'
FROM facilities WHERE admin_sym = '2-44200-00119'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00299
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00299', 2024, '73.35'
FROM facilities WHERE admin_sym = '2-44200-00299'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00239
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00239', 2024, '88.8'
FROM facilities WHERE admin_sym = '3-44200-00239'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00115
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00115', 2024, '91.85'
FROM facilities WHERE admin_sym = '2-44200-00115'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00001', 2024, '63.5'
FROM facilities WHERE admin_sym = '3-44200-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00297
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00297', 2024, '82.1'
FROM facilities WHERE admin_sym = '2-44200-00297'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44800-00103
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44800-00103', 2024, '62.22'
FROM facilities WHERE admin_sym = '3-44800-00103'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.22',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44800-00101
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44800-00101', 2024, '67.6'
FROM facilities WHERE admin_sym = '3-44800-00101'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44800-00041
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44800-00041', 2024, '89.6'
FROM facilities WHERE admin_sym = '3-44800-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44800-00083
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44800-00083', 2024, '49.05'
FROM facilities WHERE admin_sym = '3-44800-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44800-00085
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44800-00085', 2024, '62.3'
FROM facilities WHERE admin_sym = '3-44800-00085'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44800-00045
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44800-00045', 2024, '73.3'
FROM facilities WHERE admin_sym = '3-44800-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44800-00019
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44800-00019', 2024, '88.6'
FROM facilities WHERE admin_sym = '3-44800-00019'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44800-00113
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44800-00113', 2024, '73.1'
FROM facilities WHERE admin_sym = '3-44800-00113'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44800-00051
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44800-00051', 2024, '76.85'
FROM facilities WHERE admin_sym = '2-44800-00051'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.85',
  last_updated = CURRENT_TIMESTAMP;

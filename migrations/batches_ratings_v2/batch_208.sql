-- Batch 208 of 226
-- Processing 100 facilities

-- admin_sym: 1-42150-00178
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00178', 2024, '63.42'
FROM facilities WHERE admin_sym = '1-42150-00178'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00234
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00234', 2024, '93.11'
FROM facilities WHERE admin_sym = '1-42150-00234'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.11',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00262
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00262', 2024, '84.1'
FROM facilities WHERE admin_sym = '1-42150-00262'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00267
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00267', 2024, '64.39'
FROM facilities WHERE admin_sym = '1-42150-00267'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.39',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00206
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00206', 2024, '88.38'
FROM facilities WHERE admin_sym = '1-42150-00206'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00090
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00090', 2024, '81.38'
FROM facilities WHERE admin_sym = '1-42150-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00239
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00239', 2024, '58.94'
FROM facilities WHERE admin_sym = '1-42150-00239'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00228
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00228', 2024, '85.86'
FROM facilities WHERE admin_sym = '1-42150-00228'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00281
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00281', 2024, '76.84'
FROM facilities WHERE admin_sym = '1-42150-00281'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.84',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00142
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00142', 2024, '64.68'
FROM facilities WHERE admin_sym = '1-42150-00142'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00189
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00189', 2024, '74.31'
FROM facilities WHERE admin_sym = '1-42150-00189'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00001', 2024, '80.46'
FROM facilities WHERE admin_sym = '1-42150-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00257
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00257', 2024, '65.31'
FROM facilities WHERE admin_sym = '1-42150-00257'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00230
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00230', 2024, '88.66'
FROM facilities WHERE admin_sym = '1-42150-00230'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.66',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00220
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00220', 2024, '68.46'
FROM facilities WHERE admin_sym = '1-42150-00220'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00203
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00203', 2024, '77.98'
FROM facilities WHERE admin_sym = '1-42150-00203'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00274
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00274', 2024, '71.46'
FROM facilities WHERE admin_sym = '1-42150-00274'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00271
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00271', 2024, '63.65'
FROM facilities WHERE admin_sym = '1-42150-00271'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.65',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00130
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00130', 2024, '96.23'
FROM facilities WHERE admin_sym = '1-42150-00130'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.23',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00225
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00225', 2024, '91.42'
FROM facilities WHERE admin_sym = '1-42150-00225'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00162
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00162', 2024, '93.96'
FROM facilities WHERE admin_sym = '1-42150-00162'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00266
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00266', 2024, '75.28'
FROM facilities WHERE admin_sym = '1-42150-00266'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.28',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00101
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00101', 2024, '83.63'
FROM facilities WHERE admin_sym = '1-42150-00101'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00213
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00213', 2024, '67.87'
FROM facilities WHERE admin_sym = '1-42150-00213'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.87',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00296
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00296', 2024, '89.44'
FROM facilities WHERE admin_sym = '1-42150-00296'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00255
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00255', 2024, '52.96'
FROM facilities WHERE admin_sym = '1-42150-00255'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '52.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00154
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00154', 2024, '74.13'
FROM facilities WHERE admin_sym = '1-42150-00154'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00253
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00253', 2024, '88.37'
FROM facilities WHERE admin_sym = '1-42150-00253'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.37',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00117
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00117', 2024, '81.89'
FROM facilities WHERE admin_sym = '1-42150-00117'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00084
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00084', 2024, '61.2'
FROM facilities WHERE admin_sym = '1-42150-00084'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.2',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00233
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00233', 2024, '87.41'
FROM facilities WHERE admin_sym = '1-42150-00233'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00187
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00187', 2024, '71.04'
FROM facilities WHERE admin_sym = '1-42150-00187'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00235
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00235', 2024, '64.78'
FROM facilities WHERE admin_sym = '1-42150-00235'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.78',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00134
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00134', 2024, '68.33'
FROM facilities WHERE admin_sym = '1-42150-00134'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00156
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00156', 2024, '63.79'
FROM facilities WHERE admin_sym = '1-42150-00156'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00183
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00183', 2024, '71.27'
FROM facilities WHERE admin_sym = '1-42150-00183'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00190
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00190', 2024, '72.84'
FROM facilities WHERE admin_sym = '1-42150-00190'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.84',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00140
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00140', 2024, '78.59'
FROM facilities WHERE admin_sym = '1-42150-00140'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.59',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00260
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00260', 2024, '70.86'
FROM facilities WHERE admin_sym = '1-42150-00260'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00241
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00241', 2024, '91.17'
FROM facilities WHERE admin_sym = '1-42150-00241'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42150-00259
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42150-00259', 2024, '98.06'
FROM facilities WHERE admin_sym = '1-42150-00259'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42820-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42820-00002', 2024, '92.1'
FROM facilities WHERE admin_sym = '1-42820-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42820-00028
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42820-00028', 2024, '83.1'
FROM facilities WHERE admin_sym = '1-42820-00028'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42820-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42820-00001', 2024, '77.6'
FROM facilities WHERE admin_sym = '1-42820-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42820-00030
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42820-00030', 2024, '86.43'
FROM facilities WHERE admin_sym = '1-42820-00030'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42170-00063
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42170-00063', 2024, '90.6'
FROM facilities WHERE admin_sym = '1-42170-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42170-00053
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42170-00053', 2024, '88.55'
FROM facilities WHERE admin_sym = '1-42170-00053'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42170-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42170-00003', 2024, '80.6'
FROM facilities WHERE admin_sym = '1-42170-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42170-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42170-00012', 2024, '93.1'
FROM facilities WHERE admin_sym = '1-42170-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42170-00055
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42170-00055', 2024, '80.93'
FROM facilities WHERE admin_sym = '1-42170-00055'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42170-00060
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42170-00060', 2024, '80.08'
FROM facilities WHERE admin_sym = '1-42170-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42230-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42230-00006', 2024, '88.61'
FROM facilities WHERE admin_sym = '1-42230-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42230-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42230-00005', 2024, '94.35'
FROM facilities WHERE admin_sym = '1-42230-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42230-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42230-00001', 2024, '98.35'
FROM facilities WHERE admin_sym = '1-42230-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42230-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42230-00007', 2024, '64.67'
FROM facilities WHERE admin_sym = '1-42230-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42230-00063
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42230-00063', 2024, '87.77'
FROM facilities WHERE admin_sym = '1-42230-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42230-00097
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42230-00097', 2024, '60.12'
FROM facilities WHERE admin_sym = '1-42230-00097'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42210-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42210-00001', 2024, '87.85'
FROM facilities WHERE admin_sym = '1-42210-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42210-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42210-00044', 2024, '69'
FROM facilities WHERE admin_sym = '1-42210-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42210-00013
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42210-00013', 2024, '86.36'
FROM facilities WHERE admin_sym = '1-42210-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.36',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42210-00033
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42210-00033', 2024, '74.62'
FROM facilities WHERE admin_sym = '1-42210-00033'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.62',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42210-00082
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42210-00082', 2024, '94.73'
FROM facilities WHERE admin_sym = '1-42210-00082'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.73',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42210-00066
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42210-00066', 2024, '80.98'
FROM facilities WHERE admin_sym = '1-42210-00066'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42210-00077
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42210-00077', 2024, '63.85'
FROM facilities WHERE admin_sym = '1-42210-00077'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42210-00091
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42210-00091', 2024, '77.4'
FROM facilities WHERE admin_sym = '1-42210-00091'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42210-00058
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42210-00058', 2024, '75.59'
FROM facilities WHERE admin_sym = '1-42210-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.59',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42210-00090
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42210-00090', 2024, '82.35'
FROM facilities WHERE admin_sym = '1-42210-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42800-00013
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42800-00013', 2024, '90.8'
FROM facilities WHERE admin_sym = '1-42800-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42800-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42800-00011', 2024, '82.3'
FROM facilities WHERE admin_sym = '1-42800-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42800-00021
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42800-00021', 2024, '62.5'
FROM facilities WHERE admin_sym = '1-42800-00021'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42800-00017
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42800-00017', 2024, '76.63'
FROM facilities WHERE admin_sym = '1-42800-00017'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42830-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42830-00001', 2024, '70.6'
FROM facilities WHERE admin_sym = '1-42830-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42830-00026
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42830-00026', 2024, '70.6'
FROM facilities WHERE admin_sym = '1-42830-00026'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42830-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42830-00004', 2024, '67.78'
FROM facilities WHERE admin_sym = '1-42830-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.78',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42830-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42830-00022', 2024, '57.33'
FROM facilities WHERE admin_sym = '1-42830-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42830-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42830-00003', 2024, '86.34'
FROM facilities WHERE admin_sym = '1-42830-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.34',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42830-00034
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42830-00034', 2024, '67.18'
FROM facilities WHERE admin_sym = '1-42830-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42750-00021
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42750-00021', 2024, '74.05'
FROM facilities WHERE admin_sym = '1-42750-00021'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42750-00027
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42750-00027', 2024, '68.1'
FROM facilities WHERE admin_sym = '1-42750-00027'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42750-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42750-00003', 2024, '60'
FROM facilities WHERE admin_sym = '1-42750-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42750-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42750-00010', 2024, '96.05'
FROM facilities WHERE admin_sym = '1-42750-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42750-00020
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42750-00020', 2024, '85.37'
FROM facilities WHERE admin_sym = '1-42750-00020'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.37',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42750-00031
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42750-00031', 2024, '96.52'
FROM facilities WHERE admin_sym = '1-42750-00031'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00022', 2024, '84.1'
FROM facilities WHERE admin_sym = '1-42130-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00119
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00119', 2024, '87.13'
FROM facilities WHERE admin_sym = '1-42130-00119'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00109
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00109', 2024, '93.6'
FROM facilities WHERE admin_sym = '1-42130-00109'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00169
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00169', 2024, '72.05'
FROM facilities WHERE admin_sym = '1-42130-00169'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00184
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00184', 2024, '79.85'
FROM facilities WHERE admin_sym = '1-42130-00184'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00190
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00190', 2024, '73.75'
FROM facilities WHERE admin_sym = '1-42130-00190'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00313
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00313', 2024, '66.3'
FROM facilities WHERE admin_sym = '1-42130-00313'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00025
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00025', 2024, '92.6'
FROM facilities WHERE admin_sym = '1-42130-00025'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00232
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00232', 2024, '78.85'
FROM facilities WHERE admin_sym = '1-42130-00232'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00266
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00266', 2024, '61.8'
FROM facilities WHERE admin_sym = '1-42130-00266'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00155
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00155', 2024, '88.25'
FROM facilities WHERE admin_sym = '1-42130-00155'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00262
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00262', 2024, '54.11'
FROM facilities WHERE admin_sym = '1-42130-00262'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.11',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00226
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00226', 2024, '81.69'
FROM facilities WHERE admin_sym = '1-42130-00226'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00054
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00054', 2024, '85.05'
FROM facilities WHERE admin_sym = '1-42130-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00183
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00183', 2024, '75.6'
FROM facilities WHERE admin_sym = '1-42130-00183'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00161
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00161', 2024, '88.3'
FROM facilities WHERE admin_sym = '1-42130-00161'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42130-00286
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42130-00286', 2024, '76.35'
FROM facilities WHERE admin_sym = '1-42130-00286'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.35',
  last_updated = CURRENT_TIMESTAMP;

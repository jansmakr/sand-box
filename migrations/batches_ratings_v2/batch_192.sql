-- Batch 192 of 226
-- Processing 100 facilities

-- admin_sym: 1-28185-00121
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28185-00121', 2024, '62.1'
FROM facilities WHERE admin_sym = '1-28185-00121'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28185-00085
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28185-00085', 2024, '92.6'
FROM facilities WHERE admin_sym = '1-28185-00085'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28185-00161
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28185-00161', 2024, '85.1'
FROM facilities WHERE admin_sym = '1-28185-00161'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28185-00077
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28185-00077', 2024, '72.67'
FROM facilities WHERE admin_sym = '1-28185-00077'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28185-00216
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28185-00216', 2024, '78.52'
FROM facilities WHERE admin_sym = '1-28185-00216'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28185-00014
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28185-00014', 2024, '43.34'
FROM facilities WHERE admin_sym = '1-28185-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '43.34',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28185-00176
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28185-00176', 2024, '67.29'
FROM facilities WHERE admin_sym = '1-28185-00176'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28185-00155
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28185-00155', 2024, '83.18'
FROM facilities WHERE admin_sym = '1-28185-00155'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28185-00105
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28185-00105', 2024, '83.84'
FROM facilities WHERE admin_sym = '1-28185-00105'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.84',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28185-00129
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28185-00129', 2024, '74.81'
FROM facilities WHERE admin_sym = '1-28185-00129'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28185-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28185-00125', 2024, '88.99'
FROM facilities WHERE admin_sym = '1-28185-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28185-00094
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28185-00094', 2024, '69.82'
FROM facilities WHERE admin_sym = '1-28185-00094'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28185-00070
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28185-00070', 2024, '79.63'
FROM facilities WHERE admin_sym = '1-28185-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28185-00027
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28185-00027', 2024, '85.82'
FROM facilities WHERE admin_sym = '1-28185-00027'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28185-00126
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28185-00126', 2024, '70.29'
FROM facilities WHERE admin_sym = '1-28185-00126'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28185-00224
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28185-00224', 2024, '81.13'
FROM facilities WHERE admin_sym = '1-28185-00224'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28185-00169
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28185-00169', 2024, '77.53'
FROM facilities WHERE admin_sym = '1-28185-00169'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.53',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28720-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28720-00012', 2024, '61'
FROM facilities WHERE admin_sym = '1-28720-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28720-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28720-00009', 2024, '67.98'
FROM facilities WHERE admin_sym = '1-28720-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28720-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28720-00008', 2024, '93.55'
FROM facilities WHERE admin_sym = '1-28720-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28110-00082
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28110-00082', 2024, '73.6'
FROM facilities WHERE admin_sym = '1-28110-00082'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28110-00112
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28110-00112', 2024, '60.1'
FROM facilities WHERE admin_sym = '1-28110-00112'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28110-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28110-00125', 2024, '68.84'
FROM facilities WHERE admin_sym = '1-28110-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.84',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28110-00130
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28110-00130', 2024, '77.85'
FROM facilities WHERE admin_sym = '1-28110-00130'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28110-00095
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28110-00095', 2024, '74.85'
FROM facilities WHERE admin_sym = '1-28110-00095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28110-00060
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28110-00060', 2024, '83.75'
FROM facilities WHERE admin_sym = '1-28110-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28110-00134
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28110-00134', 2024, '72.85'
FROM facilities WHERE admin_sym = '1-28110-00134'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28110-00121
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28110-00121', 2024, '75.85'
FROM facilities WHERE admin_sym = '1-28110-00121'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28110-00015
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28110-00015', 2024, '90.5'
FROM facilities WHERE admin_sym = '1-28110-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28110-00076
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28110-00076', 2024, '87.1'
FROM facilities WHERE admin_sym = '1-28110-00076'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28110-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28110-00009', 2024, '93.3'
FROM facilities WHERE admin_sym = '1-28110-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28110-00083
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28110-00083', 2024, '65.18'
FROM facilities WHERE admin_sym = '1-28110-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28110-00105
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28110-00105', 2024, '65.1'
FROM facilities WHERE admin_sym = '1-28110-00105'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28110-00138
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28110-00138', 2024, '83.85'
FROM facilities WHERE admin_sym = '1-28110-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28110-00029
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28110-00029', 2024, '86.74'
FROM facilities WHERE admin_sym = '1-28110-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28110-00081
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28110-00081', 2024, '64.3'
FROM facilities WHERE admin_sym = '1-28110-00081'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28110-00052
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28110-00052', 2024, '96.61'
FROM facilities WHERE admin_sym = '1-28110-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00145
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00145', 2024, '90.58'
FROM facilities WHERE admin_sym = '1-29200-00145'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00018', 2024, '78.6'
FROM facilities WHERE admin_sym = '1-29200-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00036
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00036', 2024, '84.18'
FROM facilities WHERE admin_sym = '1-29200-00036'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00003', 2024, '88.1'
FROM facilities WHERE admin_sym = '1-29200-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00043
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00043', 2024, '97.1'
FROM facilities WHERE admin_sym = '1-29200-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00257
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00257', 2024, '87.7'
FROM facilities WHERE admin_sym = '1-29200-00257'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00127
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00127', 2024, '91.1'
FROM facilities WHERE admin_sym = '1-29200-00127'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00146
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00146', 2024, '91.85'
FROM facilities WHERE admin_sym = '1-29200-00146'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00019
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00019', 2024, '72.85'
FROM facilities WHERE admin_sym = '1-29200-00019'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00122
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00122', 2024, '77.61'
FROM facilities WHERE admin_sym = '1-29200-00122'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00158
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00158', 2024, '75.83'
FROM facilities WHERE admin_sym = '1-29200-00158'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00086
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00086', 2024, '88.76'
FROM facilities WHERE admin_sym = '1-29200-00086'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.76',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00094
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00094', 2024, '90.35'
FROM facilities WHERE admin_sym = '1-29200-00094'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00187
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00187', 2024, '95.6'
FROM facilities WHERE admin_sym = '1-29200-00187'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00121
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00121', 2024, '88.13'
FROM facilities WHERE admin_sym = '1-29200-00121'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00204
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00204', 2024, '95.85'
FROM facilities WHERE admin_sym = '1-29200-00204'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00180
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00180', 2024, '91.73'
FROM facilities WHERE admin_sym = '1-29200-00180'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.73',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00194
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00194', 2024, '94.85'
FROM facilities WHERE admin_sym = '1-29200-00194'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00016
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00016', 2024, '77.51'
FROM facilities WHERE admin_sym = '1-29200-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.51',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00140
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00140', 2024, '83.99'
FROM facilities WHERE admin_sym = '1-29200-00140'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00260
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00260', 2024, '89.87'
FROM facilities WHERE admin_sym = '1-29200-00260'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.87',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00032
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00032', 2024, '89.43'
FROM facilities WHERE admin_sym = '1-29200-00032'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29200-00159
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29200-00159', 2024, '91.53'
FROM facilities WHERE admin_sym = '1-29200-00159'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.53',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29155-00024
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29155-00024', 2024, '85.03'
FROM facilities WHERE admin_sym = '1-29155-00024'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.03',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29155-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29155-00010', 2024, '82.14'
FROM facilities WHERE admin_sym = '1-29155-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29155-00177
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29155-00177', 2024, '92.52'
FROM facilities WHERE admin_sym = '1-29155-00177'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29155-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29155-00124', 2024, '98.3'
FROM facilities WHERE admin_sym = '1-29155-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29155-00272
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29155-00272', 2024, '84.35'
FROM facilities WHERE admin_sym = '1-29155-00272'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29155-00116
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29155-00116', 2024, '60.18'
FROM facilities WHERE admin_sym = '1-29155-00116'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29155-00181
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29155-00181', 2024, '73.89'
FROM facilities WHERE admin_sym = '1-29155-00181'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29155-00142
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29155-00142', 2024, '86.06'
FROM facilities WHERE admin_sym = '1-29155-00142'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29155-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29155-00008', 2024, '82.64'
FROM facilities WHERE admin_sym = '1-29155-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29155-00042
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29155-00042', 2024, '77.84'
FROM facilities WHERE admin_sym = '1-29155-00042'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.84',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29155-00209
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29155-00209', 2024, '64.33'
FROM facilities WHERE admin_sym = '1-29155-00209'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29110-00086
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29110-00086', 2024, '93.05'
FROM facilities WHERE admin_sym = '1-29110-00086'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29110-00052
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29110-00052', 2024, '91.55'
FROM facilities WHERE admin_sym = '1-29110-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29110-00256
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29110-00256', 2024, '98.05'
FROM facilities WHERE admin_sym = '1-29110-00256'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29110-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29110-00022', 2024, '95.35'
FROM facilities WHERE admin_sym = '1-29110-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29110-00294
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29110-00294', 2024, '83.38'
FROM facilities WHERE admin_sym = '1-29110-00294'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29110-00013
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29110-00013', 2024, '92.35'
FROM facilities WHERE admin_sym = '1-29110-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29110-00270
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29110-00270', 2024, '92.36'
FROM facilities WHERE admin_sym = '1-29110-00270'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.36',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29110-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29110-00006', 2024, '98.1'
FROM facilities WHERE admin_sym = '1-29110-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29110-00254
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29110-00254', 2024, '77.17'
FROM facilities WHERE admin_sym = '1-29110-00254'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00294
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00294', 2024, '91.55'
FROM facilities WHERE admin_sym = '1-29170-00294'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00178
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00178', 2024, '87.1'
FROM facilities WHERE admin_sym = '1-29170-00178'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00179
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00179', 2024, '83.22'
FROM facilities WHERE admin_sym = '1-29170-00179'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.22',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00504
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00504', 2024, '86.11'
FROM facilities WHERE admin_sym = '1-29170-00504'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.11',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00211
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00211', 2024, '85.1'
FROM facilities WHERE admin_sym = '1-29170-00211'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00375
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00375', 2024, '86.6'
FROM facilities WHERE admin_sym = '1-29170-00375'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00284
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00284', 2024, '87.61'
FROM facilities WHERE admin_sym = '1-29170-00284'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00400
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00400', 2024, '86.1'
FROM facilities WHERE admin_sym = '1-29170-00400'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00009', 2024, '99.5'
FROM facilities WHERE admin_sym = '1-29170-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '99.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00325
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00325', 2024, '95.25'
FROM facilities WHERE admin_sym = '1-29170-00325'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00199
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00199', 2024, '95.85'
FROM facilities WHERE admin_sym = '1-29170-00199'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00023', 2024, '95.53'
FROM facilities WHERE admin_sym = '1-29170-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.53',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00024
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00024', 2024, '96.35'
FROM facilities WHERE admin_sym = '1-29170-00024'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00497
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00497', 2024, '82.39'
FROM facilities WHERE admin_sym = '1-29170-00497'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.39',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00482
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00482', 2024, '83.93'
FROM facilities WHERE admin_sym = '1-29170-00482'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00453
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00453', 2024, '78.5'
FROM facilities WHERE admin_sym = '1-29170-00453'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00206
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00206', 2024, '69.76'
FROM facilities WHERE admin_sym = '1-29170-00206'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.76',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00122
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00122', 2024, '81.88'
FROM facilities WHERE admin_sym = '1-29170-00122'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00499
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00499', 2024, '97.07'
FROM facilities WHERE admin_sym = '1-29170-00499'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.07',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-29170-00299
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-29170-00299', 2024, '72.84'
FROM facilities WHERE admin_sym = '1-29170-00299'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.84',
  last_updated = CURRENT_TIMESTAMP;

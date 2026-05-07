-- Batch 98 of 226
-- Processing 100 facilities

-- admin_sym: 3-11590-00146
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11590-00146', 2024, '67.78'
FROM facilities WHERE admin_sym = '3-11590-00146'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.78',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11590-00138
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11590-00138', 2024, '89.8'
FROM facilities WHERE admin_sym = '2-11590-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11590-00188
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11590-00188', 2024, '68.02'
FROM facilities WHERE admin_sym = '3-11590-00188'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11590-00245
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11590-00245', 2024, '93.35'
FROM facilities WHERE admin_sym = '2-11590-00245'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11590-00030
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11590-00030', 2024, '93.35'
FROM facilities WHERE admin_sym = '2-11590-00030'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11590-00202
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11590-00202', 2024, '83.6'
FROM facilities WHERE admin_sym = '2-11590-00202'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11590-00143
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11590-00143', 2024, '88.35'
FROM facilities WHERE admin_sym = '2-11590-00143'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11590-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11590-00124', 2024, '88.85'
FROM facilities WHERE admin_sym = '2-11590-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11590-00029
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11590-00029', 2024, '77.35'
FROM facilities WHERE admin_sym = '2-11590-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11590-00074
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11590-00074', 2024, '73.85'
FROM facilities WHERE admin_sym = '2-11590-00074'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11590-00260
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11590-00260', 2024, '85.85'
FROM facilities WHERE admin_sym = '2-11590-00260'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11590-00096
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11590-00096', 2024, '63.55'
FROM facilities WHERE admin_sym = '2-11590-00096'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11590-00106
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11590-00106', 2024, '57.6'
FROM facilities WHERE admin_sym = '2-11590-00106'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11590-00123
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11590-00123', 2024, '58.85'
FROM facilities WHERE admin_sym = '2-11590-00123'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11590-00108
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11590-00108', 2024, '90.3'
FROM facilities WHERE admin_sym = '3-11590-00108'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11590-00026
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11590-00026', 2024, '78.8'
FROM facilities WHERE admin_sym = '3-11590-00026'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11590-00090
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11590-00090', 2024, '80.71'
FROM facilities WHERE admin_sym = '3-11590-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00110
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00110', 2024, '95.55'
FROM facilities WHERE admin_sym = '3-11440-00110'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00028
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00028', 2024, '95.75'
FROM facilities WHERE admin_sym = '3-11440-00028'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11440-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11440-00009', 2024, '94.6'
FROM facilities WHERE admin_sym = '2-11440-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00148
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00148', 2024, '97.55'
FROM facilities WHERE admin_sym = '3-11440-00148'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00050
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00050', 2024, '98.05'
FROM facilities WHERE admin_sym = '3-11440-00050'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11440-00108
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11440-00108', 2024, '96.5'
FROM facilities WHERE admin_sym = '2-11440-00108'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00158
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00158', 2024, '86.6'
FROM facilities WHERE admin_sym = '3-11440-00158'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00184
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00184', 2024, '82.1'
FROM facilities WHERE admin_sym = '3-11440-00184'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00044', 2024, '93.5'
FROM facilities WHERE admin_sym = '3-11440-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00064
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00064', 2024, '82'
FROM facilities WHERE admin_sym = '3-11440-00064'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11440-00214
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11440-00214', 2024, '86.8'
FROM facilities WHERE admin_sym = '2-11440-00214'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00096
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00096', 2024, '86.8'
FROM facilities WHERE admin_sym = '3-11440-00096'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00192
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00192', 2024, '89.1'
FROM facilities WHERE admin_sym = '3-11440-00192'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11440-00216
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11440-00216', 2024, '88.1'
FROM facilities WHERE admin_sym = '2-11440-00216'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00020
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00020', 2024, '85.85'
FROM facilities WHERE admin_sym = '3-11440-00020'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00180
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00180', 2024, '76.55'
FROM facilities WHERE admin_sym = '3-11440-00180'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00164
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00164', 2024, '74.6'
FROM facilities WHERE admin_sym = '3-11440-00164'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00166
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00166', 2024, '84.1'
FROM facilities WHERE admin_sym = '3-11440-00166'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11440-00206
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11440-00206', 2024, '74.8'
FROM facilities WHERE admin_sym = '2-11440-00206'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00168
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00168', 2024, '74.5'
FROM facilities WHERE admin_sym = '3-11440-00168'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00122
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00122', 2024, '62.55'
FROM facilities WHERE admin_sym = '3-11440-00122'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00080
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00080', 2024, '82.05'
FROM facilities WHERE admin_sym = '3-11440-00080'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00158
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00158', 2024, '83.1'
FROM facilities WHERE admin_sym = '3-11440-00158'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00158
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00158', 2024, '79.1'
FROM facilities WHERE admin_sym = '3-11440-00158'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11440-00024
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11440-00024', 2024, '94.1'
FROM facilities WHERE admin_sym = '2-11440-00024'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11440-00015
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11440-00015', 2024, '95.05'
FROM facilities WHERE admin_sym = '2-11440-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11440-00152
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11440-00152', 2024, '93.1'
FROM facilities WHERE admin_sym = '2-11440-00152'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11440-00097
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11440-00097', 2024, '95.75'
FROM facilities WHERE admin_sym = '2-11440-00097'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11440-00108
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11440-00108', 2024, '94.5'
FROM facilities WHERE admin_sym = '2-11440-00108'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11440-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11440-00006', 2024, '89.1'
FROM facilities WHERE admin_sym = '2-11440-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11440-00120
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11440-00120', 2024, '89.3'
FROM facilities WHERE admin_sym = '2-11440-00120'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11440-00174
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11440-00174', 2024, '89.6'
FROM facilities WHERE admin_sym = '2-11440-00174'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11440-00198
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11440-00198', 2024, '79.1'
FROM facilities WHERE admin_sym = '2-11440-00198'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11440-00210
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11440-00210', 2024, '70.75'
FROM facilities WHERE admin_sym = '2-11440-00210'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11440-00217
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11440-00217', 2024, '69.6'
FROM facilities WHERE admin_sym = '2-11440-00217'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11440-00204
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11440-00204', 2024, '74.6'
FROM facilities WHERE admin_sym = '2-11440-00204'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00045
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00045', 2024, '94'
FROM facilities WHERE admin_sym = '3-11440-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00028
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00028', 2024, '85.25'
FROM facilities WHERE admin_sym = '3-11440-00028'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00176
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00176', 2024, '82.05'
FROM facilities WHERE admin_sym = '3-11440-00176'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00020
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00020', 2024, '88.83'
FROM facilities WHERE admin_sym = '3-11440-00020'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11440-00162
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11440-00162', 2024, '83.8'
FROM facilities WHERE admin_sym = '3-11440-00162'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00168
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00168', 2024, '92.8'
FROM facilities WHERE admin_sym = '3-11410-00168'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00166
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00166', 2024, '94.3'
FROM facilities WHERE admin_sym = '3-11410-00166'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00100
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00100', 2024, '98.55'
FROM facilities WHERE admin_sym = '3-11410-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00252
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00252', 2024, '90.6'
FROM facilities WHERE admin_sym = '3-11410-00252'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00188
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00188', 2024, '95.1'
FROM facilities WHERE admin_sym = '3-11410-00188'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11410-00290
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11410-00290', 2024, '87.47'
FROM facilities WHERE admin_sym = '2-11410-00290'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00058
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00058', 2024, '83.55'
FROM facilities WHERE admin_sym = '3-11410-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11410-00278
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11410-00278', 2024, '81.35'
FROM facilities WHERE admin_sym = '2-11410-00278'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11410-00288
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11410-00288', 2024, '85.96'
FROM facilities WHERE admin_sym = '2-11410-00288'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11410-00282
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11410-00282', 2024, '89.3'
FROM facilities WHERE admin_sym = '2-11410-00282'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11410-00284
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11410-00284', 2024, '86.02'
FROM facilities WHERE admin_sym = '2-11410-00284'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11410-00281
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11410-00281', 2024, '89.85'
FROM facilities WHERE admin_sym = '2-11410-00281'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00272
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00272', 2024, '85.85'
FROM facilities WHERE admin_sym = '3-11410-00272'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00238
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00238', 2024, '87.1'
FROM facilities WHERE admin_sym = '3-11410-00238'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00274
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00274', 2024, '84.05'
FROM facilities WHERE admin_sym = '3-11410-00274'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00176
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00176', 2024, '83.6'
FROM facilities WHERE admin_sym = '3-11410-00176'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11410-00280
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11410-00280', 2024, '79.8'
FROM facilities WHERE admin_sym = '2-11410-00280'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00206
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00206', 2024, '83.85'
FROM facilities WHERE admin_sym = '3-11410-00206'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00242
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00242', 2024, '86.8'
FROM facilities WHERE admin_sym = '3-11410-00242'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11410-00294
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11410-00294', 2024, '74.58'
FROM facilities WHERE admin_sym = '2-11410-00294'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00128
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00128', 2024, '74.1'
FROM facilities WHERE admin_sym = '3-11410-00128'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00180
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00180', 2024, '64.3'
FROM facilities WHERE admin_sym = '3-11410-00180'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00138
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00138', 2024, '77.8'
FROM facilities WHERE admin_sym = '3-11410-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00192
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00192', 2024, '49.05'
FROM facilities WHERE admin_sym = '3-11410-00192'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00250
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00250', 2024, '70.8'
FROM facilities WHERE admin_sym = '3-11410-00250'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00020
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00020', 2024, '96.3'
FROM facilities WHERE admin_sym = '3-11410-00020'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00238
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00238', 2024, '84.6'
FROM facilities WHERE admin_sym = '3-11410-00238'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11410-00282
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11410-00282', 2024, '73.3'
FROM facilities WHERE admin_sym = '2-11410-00282'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00252
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00252', 2024, '92.8'
FROM facilities WHERE admin_sym = '3-11410-00252'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00070
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00070', 2024, '62.3'
FROM facilities WHERE admin_sym = '3-11410-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11410-00072
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11410-00072', 2024, '93.1'
FROM facilities WHERE admin_sym = '2-11410-00072'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11410-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11410-00044', 2024, '95.05'
FROM facilities WHERE admin_sym = '2-11410-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11410-00248
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11410-00248', 2024, '92.85'
FROM facilities WHERE admin_sym = '2-11410-00248'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11410-00161
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11410-00161', 2024, '97.1'
FROM facilities WHERE admin_sym = '2-11410-00161'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11410-00013
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11410-00013', 2024, '96.1'
FROM facilities WHERE admin_sym = '2-11410-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11410-00222
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11410-00222', 2024, '88.6'
FROM facilities WHERE admin_sym = '2-11410-00222'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11410-00276
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11410-00276', 2024, '81.85'
FROM facilities WHERE admin_sym = '2-11410-00276'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11410-00220
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11410-00220', 2024, '79.85'
FROM facilities WHERE admin_sym = '2-11410-00220'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00214
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00214', 2024, '85.3'
FROM facilities WHERE admin_sym = '3-11410-00214'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00064
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00064', 2024, '80.67'
FROM facilities WHERE admin_sym = '3-11410-00064'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11410-00286
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11410-00286', 2024, '67.08'
FROM facilities WHERE admin_sym = '2-11410-00286'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11410-00152
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11410-00152', 2024, '56.88'
FROM facilities WHERE admin_sym = '3-11410-00152'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.88',
  last_updated = CURRENT_TIMESTAMP;

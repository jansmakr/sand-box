-- Batch 153 of 226
-- Processing 100 facilities

-- admin_sym: 3-44760-00042
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44760-00042', 2024, '69.55'
FROM facilities WHERE admin_sym = '3-44760-00042'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44760-00136
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44760-00136', 2024, '86.35'
FROM facilities WHERE admin_sym = '2-44760-00136'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44760-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44760-00124', 2024, '44.25'
FROM facilities WHERE admin_sym = '2-44760-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '44.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44760-00128
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44760-00128', 2024, '56.6'
FROM facilities WHERE admin_sym = '2-44760-00128'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44760-00028
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44760-00028', 2024, '68.43'
FROM facilities WHERE admin_sym = '3-44760-00028'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00044', 2024, '93.6'
FROM facilities WHERE admin_sym = '3-44210-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00148
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00148', 2024, '93.1'
FROM facilities WHERE admin_sym = '3-44210-00148'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00136
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00136', 2024, '86.35'
FROM facilities WHERE admin_sym = '3-44210-00136'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00170
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00170', 2024, '87.3'
FROM facilities WHERE admin_sym = '3-44210-00170'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44210-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44210-00004', 2024, '84.1'
FROM facilities WHERE admin_sym = '2-44210-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00168
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00168', 2024, '83.6'
FROM facilities WHERE admin_sym = '3-44210-00168'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44210-00216
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44210-00216', 2024, '89.02'
FROM facilities WHERE admin_sym = '2-44210-00216'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00150
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00150', 2024, '87.3'
FROM facilities WHERE admin_sym = '3-44210-00150'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00082
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00082', 2024, '81.55'
FROM facilities WHERE admin_sym = '3-44210-00082'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44210-00210
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44210-00210', 2024, '76.85'
FROM facilities WHERE admin_sym = '2-44210-00210'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44210-00219
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44210-00219', 2024, '70.8'
FROM facilities WHERE admin_sym = '2-44210-00219'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00172
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00172', 2024, '83.1'
FROM facilities WHERE admin_sym = '3-44210-00172'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44210-00208
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44210-00208', 2024, '82.1'
FROM facilities WHERE admin_sym = '2-44210-00208'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00124', 2024, '79.1'
FROM facilities WHERE admin_sym = '3-44210-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00174
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00174', 2024, '77.85'
FROM facilities WHERE admin_sym = '3-44210-00174'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00066
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00066', 2024, '75.35'
FROM facilities WHERE admin_sym = '3-44210-00066'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00022', 2024, '74.25'
FROM facilities WHERE admin_sym = '3-44210-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00118
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00118', 2024, '77.85'
FROM facilities WHERE admin_sym = '3-44210-00118'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00158
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00158', 2024, '72.6'
FROM facilities WHERE admin_sym = '3-44210-00158'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00166
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00166', 2024, '79.22'
FROM facilities WHERE admin_sym = '3-44210-00166'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.22',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00034
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00034', 2024, '69.35'
FROM facilities WHERE admin_sym = '3-44210-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44210-00198
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44210-00198', 2024, '66.6'
FROM facilities WHERE admin_sym = '2-44210-00198'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00156
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00156', 2024, '71.35'
FROM facilities WHERE admin_sym = '3-44210-00156'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44210-00202
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44210-00202', 2024, '69.6'
FROM facilities WHERE admin_sym = '2-44210-00202'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00076
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00076', 2024, '64.1'
FROM facilities WHERE admin_sym = '3-44210-00076'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44210-00218
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44210-00218', 2024, '53.83'
FROM facilities WHERE admin_sym = '2-44210-00218'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44210-00220
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44210-00220', 2024, '57.85'
FROM facilities WHERE admin_sym = '2-44210-00220'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00116
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00116', 2024, '59.35'
FROM facilities WHERE admin_sym = '3-44210-00116'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44210-00200
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44210-00200', 2024, '44.72'
FROM facilities WHERE admin_sym = '2-44210-00200'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '44.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00136
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00136', 2024, '81.1'
FROM facilities WHERE admin_sym = '3-44210-00136'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44210-00210
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44210-00210', 2024, '84.1'
FROM facilities WHERE admin_sym = '2-44210-00210'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00044', 2024, '88.35'
FROM facilities WHERE admin_sym = '3-44210-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00150
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00150', 2024, '83.55'
FROM facilities WHERE admin_sym = '3-44210-00150'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00022', 2024, '70.5'
FROM facilities WHERE admin_sym = '3-44210-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00118
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00118', 2024, '78.85'
FROM facilities WHERE admin_sym = '3-44210-00118'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00166
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00166', 2024, '73.97'
FROM facilities WHERE admin_sym = '3-44210-00166'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00156
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00156', 2024, '73.85'
FROM facilities WHERE admin_sym = '3-44210-00156'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44210-00220
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44210-00220', 2024, '68.38'
FROM facilities WHERE admin_sym = '2-44210-00220'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00076
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00076', 2024, '65.35'
FROM facilities WHERE admin_sym = '3-44210-00076'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00166
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00166', 2024, '75.6'
FROM facilities WHERE admin_sym = '3-44210-00166'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44210-00214
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44210-00214', 2024, '86'
FROM facilities WHERE admin_sym = '2-44210-00214'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00176
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00176', 2024, '80.6'
FROM facilities WHERE admin_sym = '3-44210-00176'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44210-00048
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44210-00048', 2024, '88.85'
FROM facilities WHERE admin_sym = '2-44210-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44210-00090
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44210-00090', 2024, '89.1'
FROM facilities WHERE admin_sym = '2-44210-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44210-00220
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44210-00220', 2024, '53.1'
FROM facilities WHERE admin_sym = '2-44210-00220'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00022', 2024, '55.75'
FROM facilities WHERE admin_sym = '3-44210-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44210-00228
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44210-00228', 2024, '76.05'
FROM facilities WHERE admin_sym = '2-44210-00228'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00154
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00154', 2024, '75.42'
FROM facilities WHERE admin_sym = '3-44210-00154'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44210-00146
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44210-00146', 2024, '62.55'
FROM facilities WHERE admin_sym = '3-44210-00146'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44770-00036
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44770-00036', 2024, '95.55'
FROM facilities WHERE admin_sym = '3-44770-00036'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44770-00058
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44770-00058', 2024, '93.85'
FROM facilities WHERE admin_sym = '3-44770-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44770-00110
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44770-00110', 2024, '86.17'
FROM facilities WHERE admin_sym = '2-44770-00110'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44770-00090
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44770-00090', 2024, '83.85'
FROM facilities WHERE admin_sym = '3-44770-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44770-00028
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44770-00028', 2024, '88.05'
FROM facilities WHERE admin_sym = '3-44770-00028'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44770-00096
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44770-00096', 2024, '75.35'
FROM facilities WHERE admin_sym = '3-44770-00096'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44770-00102
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44770-00102', 2024, '72.3'
FROM facilities WHERE admin_sym = '2-44770-00102'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44770-00042
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44770-00042', 2024, '75.35'
FROM facilities WHERE admin_sym = '3-44770-00042'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44770-00052
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44770-00052', 2024, '83.55'
FROM facilities WHERE admin_sym = '2-44770-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44770-00100
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44770-00100', 2024, '70.35'
FROM facilities WHERE admin_sym = '2-44770-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44770-00084
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44770-00084', 2024, '45.5'
FROM facilities WHERE admin_sym = '3-44770-00084'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '45.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44770-00094
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44770-00094', 2024, '61.6'
FROM facilities WHERE admin_sym = '3-44770-00094'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44770-00098
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44770-00098', 2024, '73.05'
FROM facilities WHERE admin_sym = '2-44770-00098'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44770-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44770-00088', 2024, '72.05'
FROM facilities WHERE admin_sym = '3-44770-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44770-00104
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44770-00104', 2024, '78.8'
FROM facilities WHERE admin_sym = '2-44770-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44770-00052
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44770-00052', 2024, '75.6'
FROM facilities WHERE admin_sym = '2-44770-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44770-00048
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44770-00048', 2024, '88.83'
FROM facilities WHERE admin_sym = '3-44770-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00246
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00246', 2024, '91.85'
FROM facilities WHERE admin_sym = '3-44200-00246'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00236
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00236', 2024, '92.1'
FROM facilities WHERE admin_sym = '3-44200-00236'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00188
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00188', 2024, '94.1'
FROM facilities WHERE admin_sym = '3-44200-00188'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00270
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00270', 2024, '91.35'
FROM facilities WHERE admin_sym = '2-44200-00270'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00166
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00166', 2024, '97.6'
FROM facilities WHERE admin_sym = '3-44200-00166'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00220
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00220', 2024, '83.6'
FROM facilities WHERE admin_sym = '3-44200-00220'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00164
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00164', 2024, '82.25'
FROM facilities WHERE admin_sym = '3-44200-00164'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00060
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00060', 2024, '92.6'
FROM facilities WHERE admin_sym = '3-44200-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00200
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00200', 2024, '84.85'
FROM facilities WHERE admin_sym = '3-44200-00200'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00040', 2024, '89.1'
FROM facilities WHERE admin_sym = '3-44200-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00216
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00216', 2024, '81.6'
FROM facilities WHERE admin_sym = '3-44200-00216'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00252
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00252', 2024, '81.55'
FROM facilities WHERE admin_sym = '3-44200-00252'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00250
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00250', 2024, '80.91'
FROM facilities WHERE admin_sym = '3-44200-00250'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00232
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00232', 2024, '70.35'
FROM facilities WHERE admin_sym = '3-44200-00232'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00142
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00142', 2024, '79.85'
FROM facilities WHERE admin_sym = '3-44200-00142'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00234
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00234', 2024, '76.35'
FROM facilities WHERE admin_sym = '3-44200-00234'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00170
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00170', 2024, '72.55'
FROM facilities WHERE admin_sym = '3-44200-00170'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00048
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00048', 2024, '73.3'
FROM facilities WHERE admin_sym = '3-44200-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00184
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00184', 2024, '61.25'
FROM facilities WHERE admin_sym = '3-44200-00184'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00278
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00278', 2024, '74.4'
FROM facilities WHERE admin_sym = '2-44200-00278'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00284
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00284', 2024, '66.13'
FROM facilities WHERE admin_sym = '2-44200-00284'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00288
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00288', 2024, '66.99'
FROM facilities WHERE admin_sym = '2-44200-00288'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00238
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00238', 2024, '66.75'
FROM facilities WHERE admin_sym = '3-44200-00238'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00142
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00142', 2024, '77.1'
FROM facilities WHERE admin_sym = '3-44200-00142'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00060
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00060', 2024, '82.85'
FROM facilities WHERE admin_sym = '3-44200-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-44200-00048
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-44200-00048', 2024, '69.55'
FROM facilities WHERE admin_sym = '3-44200-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00192
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00192', 2024, '90.35'
FROM facilities WHERE admin_sym = '2-44200-00192'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00180
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00180', 2024, '90.1'
FROM facilities WHERE admin_sym = '2-44200-00180'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-44200-00254
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-44200-00254', 2024, '87.1'
FROM facilities WHERE admin_sym = '2-44200-00254'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

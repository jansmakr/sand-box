-- Batch 219 of 226
-- Processing 100 facilities

-- admin_sym: 1-46910-00059
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46910-00059', 2024, '69.38'
FROM facilities WHERE admin_sym = '1-46910-00059'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46910-00065
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46910-00065', 2024, '85.39'
FROM facilities WHERE admin_sym = '1-46910-00065'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.39',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46910-00054
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46910-00054', 2024, '68.54'
FROM facilities WHERE admin_sym = '1-46910-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46910-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46910-00018', 2024, '58.6'
FROM facilities WHERE admin_sym = '1-46910-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46910-00037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46910-00037', 2024, '67.14'
FROM facilities WHERE admin_sym = '1-46910-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46910-00072
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46910-00072', 2024, '74.9'
FROM facilities WHERE admin_sym = '1-46910-00072'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.9',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46910-00053
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46910-00053', 2024, '80.54'
FROM facilities WHERE admin_sym = '1-46910-00053'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46910-00056
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46910-00056', 2024, '68.62'
FROM facilities WHERE admin_sym = '1-46910-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.62',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46910-00039
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46910-00039', 2024, '57.05'
FROM facilities WHERE admin_sym = '1-46910-00039'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00004', 2024, '94.85'
FROM facilities WHERE admin_sym = '1-46130-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00221
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00221', 2024, '94.75'
FROM facilities WHERE admin_sym = '1-46130-00221'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00226
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00226', 2024, '88.35'
FROM facilities WHERE admin_sym = '1-46130-00226'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00006', 2024, '94.05'
FROM facilities WHERE admin_sym = '1-46130-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00002', 2024, '89.75'
FROM facilities WHERE admin_sym = '1-46130-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00003', 2024, '95.55'
FROM facilities WHERE admin_sym = '1-46130-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00005', 2024, '81.03'
FROM facilities WHERE admin_sym = '1-46130-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.03',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00170
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00170', 2024, '89.35'
FROM facilities WHERE admin_sym = '1-46130-00170'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00122
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00122', 2024, '93.43'
FROM facilities WHERE admin_sym = '1-46130-00122'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00248
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00248', 2024, '74.41'
FROM facilities WHERE admin_sym = '1-46130-00248'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00229
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00229', 2024, '69.54'
FROM facilities WHERE admin_sym = '1-46130-00229'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00150
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00150', 2024, '92.55'
FROM facilities WHERE admin_sym = '1-46130-00150'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00099
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00099', 2024, '70.93'
FROM facilities WHERE admin_sym = '1-46130-00099'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00027
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00027', 2024, '79.15'
FROM facilities WHERE admin_sym = '1-46130-00027'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.15',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00165
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00165', 2024, '48.33'
FROM facilities WHERE admin_sym = '1-46130-00165'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '48.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00065
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00065', 2024, '81.17'
FROM facilities WHERE admin_sym = '1-46130-00065'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00009', 2024, '68.37'
FROM facilities WHERE admin_sym = '1-46130-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.37',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00177
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00177', 2024, '81.87'
FROM facilities WHERE admin_sym = '1-46130-00177'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.87',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00244
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00244', 2024, '78.56'
FROM facilities WHERE admin_sym = '1-46130-00244'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.56',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00135
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00135', 2024, '89.73'
FROM facilities WHERE admin_sym = '1-46130-00135'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.73',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00134
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00134', 2024, '93.54'
FROM facilities WHERE admin_sym = '1-46130-00134'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00007', 2024, '77.71'
FROM facilities WHERE admin_sym = '1-46130-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00240
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00240', 2024, '76.15'
FROM facilities WHERE admin_sym = '1-46130-00240'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.15',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00154
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00154', 2024, '81.02'
FROM facilities WHERE admin_sym = '1-46130-00154'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00182
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00182', 2024, '59.27'
FROM facilities WHERE admin_sym = '1-46130-00182'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00161
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00161', 2024, '90.71'
FROM facilities WHERE admin_sym = '1-46130-00161'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00008', 2024, '86.74'
FROM facilities WHERE admin_sym = '1-46130-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00096
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00096', 2024, '67.7'
FROM facilities WHERE admin_sym = '1-46130-00096'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46130-00272
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46130-00272', 2024, '43'
FROM facilities WHERE admin_sym = '1-46130-00272'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46870-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46870-00022', 2024, '63.85'
FROM facilities WHERE admin_sym = '1-46870-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46870-00032
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46870-00032', 2024, '82.35'
FROM facilities WHERE admin_sym = '1-46870-00032'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46870-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46870-00001', 2024, '79.25'
FROM facilities WHERE admin_sym = '1-46870-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46870-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46870-00002', 2024, '89.8'
FROM facilities WHERE admin_sym = '1-46870-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46870-00025
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46870-00025', 2024, '76.37'
FROM facilities WHERE admin_sym = '1-46870-00025'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.37',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46870-00024
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46870-00024', 2024, '80.52'
FROM facilities WHERE admin_sym = '1-46870-00024'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46870-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46870-00010', 2024, '77.93'
FROM facilities WHERE admin_sym = '1-46870-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46870-00042
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46870-00042', 2024, '71.86'
FROM facilities WHERE admin_sym = '1-46870-00042'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46870-00041
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46870-00041', 2024, '63.75'
FROM facilities WHERE admin_sym = '1-46870-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46870-00027
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46870-00027', 2024, '79.16'
FROM facilities WHERE admin_sym = '1-46870-00027'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46830-00034
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46830-00034', 2024, '64.35'
FROM facilities WHERE admin_sym = '1-46830-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46830-00059
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46830-00059', 2024, '74.31'
FROM facilities WHERE admin_sym = '1-46830-00059'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46830-00042
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46830-00042', 2024, '74.85'
FROM facilities WHERE admin_sym = '1-46830-00042'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46830-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46830-00009', 2024, '75.83'
FROM facilities WHERE admin_sym = '1-46830-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46830-00073
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46830-00073', 2024, '65.26'
FROM facilities WHERE admin_sym = '1-46830-00073'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.26',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46830-00069
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46830-00069', 2024, '86.55'
FROM facilities WHERE admin_sym = '1-46830-00069'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46830-00052
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46830-00052', 2024, '60.78'
FROM facilities WHERE admin_sym = '1-46830-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.78',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46830-00068
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46830-00068', 2024, '75.69'
FROM facilities WHERE admin_sym = '1-46830-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46830-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46830-00044', 2024, '97.5'
FROM facilities WHERE admin_sym = '1-46830-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46830-00061
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46830-00061', 2024, '64.81'
FROM facilities WHERE admin_sym = '1-46830-00061'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46890-00043
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46890-00043', 2024, '60.24'
FROM facilities WHERE admin_sym = '1-46890-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46890-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46890-00003', 2024, '93.85'
FROM facilities WHERE admin_sym = '1-46890-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46890-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46890-00001', 2024, '95.85'
FROM facilities WHERE admin_sym = '1-46890-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46890-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46890-00002', 2024, '94.05'
FROM facilities WHERE admin_sym = '1-46890-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46890-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46890-00004', 2024, '89.96'
FROM facilities WHERE admin_sym = '1-46890-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46890-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46890-00040', 2024, '65.18'
FROM facilities WHERE admin_sym = '1-46890-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46890-00046
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46890-00046', 2024, '70.55'
FROM facilities WHERE admin_sym = '1-46890-00046'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46890-00052
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46890-00052', 2024, '93.54'
FROM facilities WHERE admin_sym = '1-46890-00052'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46890-00068
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46890-00068', 2024, '71.49'
FROM facilities WHERE admin_sym = '1-46890-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46890-00027
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46890-00027', 2024, '75.26'
FROM facilities WHERE admin_sym = '1-46890-00027'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.26',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46880-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46880-00009', 2024, '94.32'
FROM facilities WHERE admin_sym = '1-46880-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46880-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46880-00008', 2024, '96'
FROM facilities WHERE admin_sym = '1-46880-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46880-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46880-00010', 2024, '71.96'
FROM facilities WHERE admin_sym = '1-46880-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46880-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46880-00006', 2024, '70.52'
FROM facilities WHERE admin_sym = '1-46880-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46880-00043
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46880-00043', 2024, '82.4'
FROM facilities WHERE admin_sym = '1-46880-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46880-00074
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46880-00074', 2024, '66.88'
FROM facilities WHERE admin_sym = '1-46880-00074'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46880-00089
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46880-00089', 2024, '67.42'
FROM facilities WHERE admin_sym = '1-46880-00089'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46800-00031
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46800-00031', 2024, '92.5'
FROM facilities WHERE admin_sym = '1-46800-00031'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46800-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46800-00009', 2024, '97.5'
FROM facilities WHERE admin_sym = '1-46800-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46800-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46800-00011', 2024, '98.05'
FROM facilities WHERE admin_sym = '1-46800-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46800-00062
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46800-00062', 2024, '74.13'
FROM facilities WHERE admin_sym = '1-46800-00062'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46800-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46800-00008', 2024, '97.55'
FROM facilities WHERE admin_sym = '1-46800-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46900-00034
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46900-00034', 2024, '95.85'
FROM facilities WHERE admin_sym = '1-46900-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46900-00031
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46900-00031', 2024, '85.09'
FROM facilities WHERE admin_sym = '1-46900-00031'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.09',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46900-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46900-00023', 2024, '92.26'
FROM facilities WHERE admin_sym = '1-46900-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.26',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46860-00049
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46860-00049', 2024, '93.73'
FROM facilities WHERE admin_sym = '1-46860-00049'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.73',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46860-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46860-00007', 2024, '90.55'
FROM facilities WHERE admin_sym = '1-46860-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46860-00057
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46860-00057', 2024, '91.85'
FROM facilities WHERE admin_sym = '1-46860-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46860-00058
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46860-00058', 2024, '97.6'
FROM facilities WHERE admin_sym = '1-46860-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46860-00037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46860-00037', 2024, '95.55'
FROM facilities WHERE admin_sym = '1-46860-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46860-00032
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46860-00032', 2024, '70.4'
FROM facilities WHERE admin_sym = '1-46860-00032'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46860-00065
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46860-00065', 2024, '67.88'
FROM facilities WHERE admin_sym = '1-46860-00065'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46860-00034
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46860-00034', 2024, '97.1'
FROM facilities WHERE admin_sym = '1-46860-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46860-00056
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46860-00056', 2024, '81.18'
FROM facilities WHERE admin_sym = '1-46860-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46860-00031
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46860-00031', 2024, '87.17'
FROM facilities WHERE admin_sym = '1-46860-00031'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46820-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00001', 2024, '95.85'
FROM facilities WHERE admin_sym = '1-46820-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46820-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00004', 2024, '93.85'
FROM facilities WHERE admin_sym = '1-46820-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46820-00048
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00048', 2024, '84.71'
FROM facilities WHERE admin_sym = '1-46820-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46820-00131
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00131', 2024, '65.16'
FROM facilities WHERE admin_sym = '1-46820-00131'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46820-00084
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00084', 2024, '83.85'
FROM facilities WHERE admin_sym = '1-46820-00084'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46820-00032
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00032', 2024, '92.82'
FROM facilities WHERE admin_sym = '1-46820-00032'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-46820-00058
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-46820-00058', 2024, '83.78'
FROM facilities WHERE admin_sym = '1-46820-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.78',
  last_updated = CURRENT_TIMESTAMP;

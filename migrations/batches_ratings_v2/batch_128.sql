-- Batch 128 of 226
-- Processing 100 facilities

-- admin_sym: 3-41280-01200
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01200', 2024, '75.6'
FROM facilities WHERE admin_sym = '3-41280-01200'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01252
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01252', 2024, '75.1'
FROM facilities WHERE admin_sym = '3-41280-01252'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01384
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01384', 2024, '75.1'
FROM facilities WHERE admin_sym = '2-41280-01384'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00968
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00968', 2024, '62.6'
FROM facilities WHERE admin_sym = '3-41280-00968'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00974
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00974', 2024, '66.6'
FROM facilities WHERE admin_sym = '3-41280-00974'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01378
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01378', 2024, '66.85'
FROM facilities WHERE admin_sym = '2-41280-01378'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00716
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00716', 2024, '64.3'
FROM facilities WHERE admin_sym = '3-41280-00716'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01182
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01182', 2024, '65.35'
FROM facilities WHERE admin_sym = '3-41280-01182'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00328
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00328', 2024, '68.1'
FROM facilities WHERE admin_sym = '3-41280-00328'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01336
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01336', 2024, '65.85'
FROM facilities WHERE admin_sym = '2-41280-01336'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01132
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01132', 2024, '58.02'
FROM facilities WHERE admin_sym = '3-41280-01132'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01250
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01250', 2024, '49.6'
FROM facilities WHERE admin_sym = '3-41280-01250'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01020
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01020', 2024, '49.6'
FROM facilities WHERE admin_sym = '3-41280-01020'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00345
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00345', 2024, '85.1'
FROM facilities WHERE admin_sym = '3-41280-00345'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00974
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00974', 2024, '67.35'
FROM facilities WHERE admin_sym = '3-41280-00974'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00328
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00328', 2024, '59.21'
FROM facilities WHERE admin_sym = '3-41280-00328'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01352
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01352', 2024, '90.85'
FROM facilities WHERE admin_sym = '2-41280-01352'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01092
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01092', 2024, '90.1'
FROM facilities WHERE admin_sym = '3-41280-01092'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01312
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01312', 2024, '88.1'
FROM facilities WHERE admin_sym = '2-41280-01312'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00324
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00324', 2024, '86.8'
FROM facilities WHERE admin_sym = '3-41280-00324'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-00574
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-00574', 2024, '81.6'
FROM facilities WHERE admin_sym = '2-41280-00574'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01110
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01110', 2024, '80.85'
FROM facilities WHERE admin_sym = '3-41280-01110'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01360
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01360', 2024, '88.1'
FROM facilities WHERE admin_sym = '2-41280-01360'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-00541
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-00541', 2024, '81.1'
FROM facilities WHERE admin_sym = '2-41280-00541'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00918
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00918', 2024, '77.6'
FROM facilities WHERE admin_sym = '3-41280-00918'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01132
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01132', 2024, '79.1'
FROM facilities WHERE admin_sym = '3-41280-01132'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01328
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01328', 2024, '73.5'
FROM facilities WHERE admin_sym = '2-41280-01328'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01030
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01030', 2024, '62.85'
FROM facilities WHERE admin_sym = '3-41280-01030'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01187
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01187', 2024, '80.85'
FROM facilities WHERE admin_sym = '3-41280-01187'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00940
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00940', 2024, '83.59'
FROM facilities WHERE admin_sym = '3-41280-00940'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.59',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00048
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00048', 2024, '89.35'
FROM facilities WHERE admin_sym = '3-41280-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00440
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00440', 2024, '72.35'
FROM facilities WHERE admin_sym = '3-41280-00440'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00872
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00872', 2024, '77.8'
FROM facilities WHERE admin_sym = '3-41280-00872'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00738
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00738', 2024, '71.1'
FROM facilities WHERE admin_sym = '3-41280-00738'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00562
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00562', 2024, '70.8'
FROM facilities WHERE admin_sym = '3-41280-00562'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01102
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01102', 2024, '92.1'
FROM facilities WHERE admin_sym = '3-41280-01102'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00706
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00706', 2024, '92.6'
FROM facilities WHERE admin_sym = '3-41280-00706'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01184
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01184', 2024, '92.35'
FROM facilities WHERE admin_sym = '3-41280-01184'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00794
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00794', 2024, '92.6'
FROM facilities WHERE admin_sym = '3-41280-00794'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00122
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00122', 2024, '88.6'
FROM facilities WHERE admin_sym = '3-41280-00122'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00338
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00338', 2024, '85.8'
FROM facilities WHERE admin_sym = '3-41280-00338'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00882
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00882', 2024, '87.1'
FROM facilities WHERE admin_sym = '3-41280-00882'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00982
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00982', 2024, '83.1'
FROM facilities WHERE admin_sym = '3-41280-00982'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00316
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00316', 2024, '80.35'
FROM facilities WHERE admin_sym = '3-41280-00316'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00784
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00784', 2024, '82.1'
FROM facilities WHERE admin_sym = '3-41280-00784'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01216
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01216', 2024, '86.6'
FROM facilities WHERE admin_sym = '3-41280-01216'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00844
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00844', 2024, '83.85'
FROM facilities WHERE admin_sym = '3-41280-00844'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01140
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01140', 2024, '83.85'
FROM facilities WHERE admin_sym = '3-41280-01140'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01396
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01396', 2024, '77.52'
FROM facilities WHERE admin_sym = '2-41280-01396'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01362
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01362', 2024, '75.35'
FROM facilities WHERE admin_sym = '2-41280-01362'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00468
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00468', 2024, '76.05'
FROM facilities WHERE admin_sym = '3-41280-00468'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00888
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00888', 2024, '73.6'
FROM facilities WHERE admin_sym = '3-41280-00888'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00964
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00964', 2024, '79.85'
FROM facilities WHERE admin_sym = '3-41280-00964'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01138
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01138', 2024, '72.85'
FROM facilities WHERE admin_sym = '3-41280-01138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00308
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00308', 2024, '79.35'
FROM facilities WHERE admin_sym = '3-41280-00308'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01236
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01236', 2024, '69.1'
FROM facilities WHERE admin_sym = '3-41280-01236'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01381
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01381', 2024, '60.1'
FROM facilities WHERE admin_sym = '2-41280-01381'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00270
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00270', 2024, '69.35'
FROM facilities WHERE admin_sym = '3-41280-00270'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00796
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00796', 2024, '62.6'
FROM facilities WHERE admin_sym = '3-41280-00796'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01274
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01274', 2024, '58.91'
FROM facilities WHERE admin_sym = '2-41280-01274'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00734
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00734', 2024, '61.35'
FROM facilities WHERE admin_sym = '3-41280-00734'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01122
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01122', 2024, '53.5'
FROM facilities WHERE admin_sym = '3-41280-01122'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00796
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00796', 2024, '67.1'
FROM facilities WHERE admin_sym = '3-41280-00796'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01072
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01072', 2024, '92.85'
FROM facilities WHERE admin_sym = '3-41280-01072'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01206
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01206', 2024, '84.35'
FROM facilities WHERE admin_sym = '3-41280-01206'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00882
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00882', 2024, '83.6'
FROM facilities WHERE admin_sym = '3-41280-00882'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01108
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01108', 2024, '87.1'
FROM facilities WHERE admin_sym = '3-41280-01108'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01012', 2024, '89.85'
FROM facilities WHERE admin_sym = '3-41280-01012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00996
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00996', 2024, '88.35'
FROM facilities WHERE admin_sym = '3-41280-00996'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01394
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01394', 2024, '81.5'
FROM facilities WHERE admin_sym = '2-41280-01394'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01270
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01270', 2024, '77.6'
FROM facilities WHERE admin_sym = '2-41280-01270'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01382
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01382', 2024, '72.6'
FROM facilities WHERE admin_sym = '2-41280-01382'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01290
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01290', 2024, '83.35'
FROM facilities WHERE admin_sym = '2-41280-01290'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00668
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00668', 2024, '93.13'
FROM facilities WHERE admin_sym = '3-41280-00668'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00978
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00978', 2024, '81.93'
FROM facilities WHERE admin_sym = '3-41280-00978'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01282
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01282', 2024, '79.1'
FROM facilities WHERE admin_sym = '2-41280-01282'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00529
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00529', 2024, '81.6'
FROM facilities WHERE admin_sym = '3-41280-00529'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00990
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00990', 2024, '79.63'
FROM facilities WHERE admin_sym = '3-41280-00990'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00692
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00692', 2024, '90.35'
FROM facilities WHERE admin_sym = '3-41280-00692'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00524
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00524', 2024, '90.35'
FROM facilities WHERE admin_sym = '3-41280-00524'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00842
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00842', 2024, '94.6'
FROM facilities WHERE admin_sym = '3-41280-00842'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01412
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01412', 2024, '87.88'
FROM facilities WHERE admin_sym = '2-41280-01412'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00474
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00474', 2024, '88.6'
FROM facilities WHERE admin_sym = '3-41280-00474'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01286
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01286', 2024, '80.1'
FROM facilities WHERE admin_sym = '2-41280-01286'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00594
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00594', 2024, '80.6'
FROM facilities WHERE admin_sym = '3-41280-00594'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00126
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00126', 2024, '80.6'
FROM facilities WHERE admin_sym = '3-41280-00126'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01076
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01076', 2024, '85.35'
FROM facilities WHERE admin_sym = '3-41280-01076'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00326
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00326', 2024, '85.1'
FROM facilities WHERE admin_sym = '3-41280-00326'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-01364
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-01364', 2024, '83.1'
FROM facilities WHERE admin_sym = '2-41280-01364'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01214
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01214', 2024, '84.1'
FROM facilities WHERE admin_sym = '3-41280-01214'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01180
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01180', 2024, '89.85'
FROM facilities WHERE admin_sym = '3-41280-01180'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01176
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01176', 2024, '84.1'
FROM facilities WHERE admin_sym = '3-41280-01176'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01086
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01086', 2024, '87.1'
FROM facilities WHERE admin_sym = '3-41280-01086'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01070
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01070', 2024, '80.1'
FROM facilities WHERE admin_sym = '3-41280-01070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00050
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00050', 2024, '72.6'
FROM facilities WHERE admin_sym = '3-41280-00050'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00876
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00876', 2024, '76.6'
FROM facilities WHERE admin_sym = '3-41280-00876'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00976
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00976', 2024, '73.02'
FROM facilities WHERE admin_sym = '3-41280-00976'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-01208
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-01208', 2024, '66.6'
FROM facilities WHERE admin_sym = '3-41280-01208'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41280-00880
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41280-00880', 2024, '58.1'
FROM facilities WHERE admin_sym = '3-41280-00880'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41280-00932
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41280-00932', 2024, '57.78'
FROM facilities WHERE admin_sym = '2-41280-00932'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.78',
  last_updated = CURRENT_TIMESTAMP;

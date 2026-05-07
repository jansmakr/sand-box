-- Batch 191 of 226
-- Processing 100 facilities

-- admin_sym: 1-28177-00428
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28177-00428', 2024, '83.96'
FROM facilities WHERE admin_sym = '1-28177-00428'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28170-00300
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28170-00300', 2024, '90.35'
FROM facilities WHERE admin_sym = '1-28170-00300'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28170-00111
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28170-00111', 2024, '79.35'
FROM facilities WHERE admin_sym = '1-28170-00111'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28170-00341
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28170-00341', 2024, '86.1'
FROM facilities WHERE admin_sym = '1-28170-00341'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28170-00102
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28170-00102', 2024, '83.85'
FROM facilities WHERE admin_sym = '1-28170-00102'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28170-00305
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28170-00305', 2024, '81.85'
FROM facilities WHERE admin_sym = '1-28170-00305'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28170-00387
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28170-00387', 2024, '77.6'
FROM facilities WHERE admin_sym = '1-28170-00387'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28177-00408
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28177-00408', 2024, '75.1'
FROM facilities WHERE admin_sym = '1-28177-00408'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28170-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28170-00004', 2024, '98.8'
FROM facilities WHERE admin_sym = '1-28170-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28170-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28170-00044', 2024, '97.85'
FROM facilities WHERE admin_sym = '1-28170-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28170-00302
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28170-00302', 2024, '96.85'
FROM facilities WHERE admin_sym = '1-28170-00302'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28170-00210
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28170-00210', 2024, '98.05'
FROM facilities WHERE admin_sym = '1-28170-00210'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28170-00251
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28170-00251', 2024, '65.93'
FROM facilities WHERE admin_sym = '1-28170-00251'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28177-00434
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28177-00434', 2024, '52.98'
FROM facilities WHERE admin_sym = '1-28177-00434'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '52.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28177-00475
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28177-00475', 2024, '73.32'
FROM facilities WHERE admin_sym = '1-28177-00475'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28177-00459
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28177-00459', 2024, '65.52'
FROM facilities WHERE admin_sym = '1-28177-00459'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28170-00231
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28170-00231', 2024, '68.64'
FROM facilities WHERE admin_sym = '1-28170-00231'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28170-00348
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28170-00348', 2024, '93.53'
FROM facilities WHERE admin_sym = '1-28170-00348'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.53',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28170-00229
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28170-00229', 2024, '70.09'
FROM facilities WHERE admin_sym = '1-28170-00229'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.09',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28170-00242
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28170-00242', 2024, '69.68'
FROM facilities WHERE admin_sym = '1-28170-00242'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28170-00267
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28170-00267', 2024, '79.58'
FROM facilities WHERE admin_sym = '1-28170-00267'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28170-00268
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28170-00268', 2024, '80.29'
FROM facilities WHERE admin_sym = '1-28170-00268'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00337
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00337', 2024, '85.85'
FROM facilities WHERE admin_sym = '1-28237-00337'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00033
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00033', 2024, '92.1'
FROM facilities WHERE admin_sym = '1-28237-00033'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00556
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00556', 2024, '79.38'
FROM facilities WHERE admin_sym = '1-28237-00556'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00532
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00532', 2024, '85.35'
FROM facilities WHERE admin_sym = '1-28237-00532'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00526
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00526', 2024, '80.15'
FROM facilities WHERE admin_sym = '1-28237-00526'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.15',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00283
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00283', 2024, '68.48'
FROM facilities WHERE admin_sym = '1-28237-00283'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00228
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00228', 2024, '72.1'
FROM facilities WHERE admin_sym = '1-28237-00228'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00070
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00070', 2024, '67.55'
FROM facilities WHERE admin_sym = '1-28237-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00534
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00534', 2024, '82.55'
FROM facilities WHERE admin_sym = '1-28237-00534'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00129
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00129', 2024, '74.85'
FROM facilities WHERE admin_sym = '1-28237-00129'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00370
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00370', 2024, '85.01'
FROM facilities WHERE admin_sym = '1-28237-00370'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.01',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00279
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00279', 2024, '75.6'
FROM facilities WHERE admin_sym = '1-28237-00279'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00336
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00336', 2024, '71.1'
FROM facilities WHERE admin_sym = '1-28237-00336'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00018', 2024, '91.6'
FROM facilities WHERE admin_sym = '1-28237-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00040', 2024, '98.1'
FROM facilities WHERE admin_sym = '1-28237-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00546
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00546', 2024, '92.62'
FROM facilities WHERE admin_sym = '1-28237-00546'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.62',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00297
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00297', 2024, '96.85'
FROM facilities WHERE admin_sym = '1-28237-00297'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00379
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00379', 2024, '79.07'
FROM facilities WHERE admin_sym = '1-28237-00379'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.07',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00483
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00483', 2024, '84.11'
FROM facilities WHERE admin_sym = '1-28237-00483'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.11',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00545
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00545', 2024, '82.98'
FROM facilities WHERE admin_sym = '1-28237-00545'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00015
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00015', 2024, '73.77'
FROM facilities WHERE admin_sym = '1-28237-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00446
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00446', 2024, '75.16'
FROM facilities WHERE admin_sym = '1-28237-00446'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.16',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00536
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00536', 2024, '70.44'
FROM facilities WHERE admin_sym = '1-28237-00536'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00318
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00318', 2024, '84.22'
FROM facilities WHERE admin_sym = '1-28237-00318'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.22',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00273
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00273', 2024, '73.09'
FROM facilities WHERE admin_sym = '1-28237-00273'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.09',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00520
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00520', 2024, '77.71'
FROM facilities WHERE admin_sym = '1-28237-00520'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00614
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00614', 2024, '63.06'
FROM facilities WHERE admin_sym = '1-28237-00614'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00347
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00347', 2024, '68.71'
FROM facilities WHERE admin_sym = '1-28237-00347'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00548
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00548', 2024, '77.64'
FROM facilities WHERE admin_sym = '1-28237-00548'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00502
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00502', 2024, '77.9'
FROM facilities WHERE admin_sym = '1-28237-00502'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.9',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00241
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00241', 2024, '75.52'
FROM facilities WHERE admin_sym = '1-28237-00241'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00578
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00578', 2024, '78.48'
FROM facilities WHERE admin_sym = '1-28237-00578'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00558
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00558', 2024, '92.52'
FROM facilities WHERE admin_sym = '1-28237-00558'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00432
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00432', 2024, '98.3'
FROM facilities WHERE admin_sym = '1-28237-00432'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00550
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00550', 2024, '87.7'
FROM facilities WHERE admin_sym = '1-28237-00550'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00216
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00216', 2024, '64.09'
FROM facilities WHERE admin_sym = '1-28237-00216'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.09',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00543
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00543', 2024, '75.41'
FROM facilities WHERE admin_sym = '1-28237-00543'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00341
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00341', 2024, '66.76'
FROM facilities WHERE admin_sym = '1-28237-00341'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.76',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28237-00567
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28237-00567', 2024, '69.1'
FROM facilities WHERE admin_sym = '1-28237-00567'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00008', 2024, '92.1'
FROM facilities WHERE admin_sym = '1-28260-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00224
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00224', 2024, '81.1'
FROM facilities WHERE admin_sym = '1-28260-00224'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00442
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00442', 2024, '85.33'
FROM facilities WHERE admin_sym = '1-28260-00442'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00264
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00264', 2024, '77.3'
FROM facilities WHERE admin_sym = '1-28260-00264'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00362
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00362', 2024, '79.6'
FROM facilities WHERE admin_sym = '1-28260-00362'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00437
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00437', 2024, '94.29'
FROM facilities WHERE admin_sym = '1-28260-00437'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00055
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00055', 2024, '83.35'
FROM facilities WHERE admin_sym = '1-28260-00055'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00145
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00145', 2024, '91.6'
FROM facilities WHERE admin_sym = '1-28260-00145'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00463
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00463', 2024, '81.95'
FROM facilities WHERE admin_sym = '1-28260-00463'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.95',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00330
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00330', 2024, '76.46'
FROM facilities WHERE admin_sym = '1-28260-00330'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00083
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00083', 2024, '91.96'
FROM facilities WHERE admin_sym = '1-28260-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00439
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00439', 2024, '74.6'
FROM facilities WHERE admin_sym = '1-28260-00439'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00260
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00260', 2024, '84.1'
FROM facilities WHERE admin_sym = '1-28260-00260'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00436
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00436', 2024, '55.06'
FROM facilities WHERE admin_sym = '1-28260-00436'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00441
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00441', 2024, '86.02'
FROM facilities WHERE admin_sym = '1-28260-00441'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00238
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00238', 2024, '91.85'
FROM facilities WHERE admin_sym = '1-28260-00238'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00004', 2024, '97.6'
FROM facilities WHERE admin_sym = '1-28260-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00006', 2024, '93.1'
FROM facilities WHERE admin_sym = '1-28260-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00298
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00298', 2024, '93.85'
FROM facilities WHERE admin_sym = '1-28260-00298'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00278
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00278', 2024, '94.6'
FROM facilities WHERE admin_sym = '1-28260-00278'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00411
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00411', 2024, '73.17'
FROM facilities WHERE admin_sym = '1-28260-00411'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00234
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00234', 2024, '62.41'
FROM facilities WHERE admin_sym = '1-28260-00234'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00217
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00217', 2024, '79.79'
FROM facilities WHERE admin_sym = '1-28260-00217'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00373
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00373', 2024, '77.94'
FROM facilities WHERE admin_sym = '1-28260-00373'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00432
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00432', 2024, '49.18'
FROM facilities WHERE admin_sym = '1-28260-00432'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00268
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00268', 2024, '74.01'
FROM facilities WHERE admin_sym = '1-28260-00268'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.01',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00392
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00392', 2024, '74.33'
FROM facilities WHERE admin_sym = '1-28260-00392'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00313
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00313', 2024, '76.77'
FROM facilities WHERE admin_sym = '1-28260-00313'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00359
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00359', 2024, '67.21'
FROM facilities WHERE admin_sym = '1-28260-00359'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00355
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00355', 2024, '76.79'
FROM facilities WHERE admin_sym = '1-28260-00355'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00255
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00255', 2024, '74.02'
FROM facilities WHERE admin_sym = '1-28260-00255'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00262
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00262', 2024, '78.02'
FROM facilities WHERE admin_sym = '1-28260-00262'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00435
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00435', 2024, '89.6'
FROM facilities WHERE admin_sym = '1-28260-00435'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00328
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00328', 2024, '95.26'
FROM facilities WHERE admin_sym = '1-28260-00328'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.26',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00379
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00379', 2024, '58.23'
FROM facilities WHERE admin_sym = '1-28260-00379'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.23',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00169
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00169', 2024, '88.99'
FROM facilities WHERE admin_sym = '1-28260-00169'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28260-00196
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28260-00196', 2024, '70.58'
FROM facilities WHERE admin_sym = '1-28260-00196'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28185-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28185-00023', 2024, '76.6'
FROM facilities WHERE admin_sym = '1-28185-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-28185-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-28185-00009', 2024, '71.6'
FROM facilities WHERE admin_sym = '1-28185-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.6',
  last_updated = CURRENT_TIMESTAMP;

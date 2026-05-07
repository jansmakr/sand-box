-- Batch 200 of 226
-- Processing 100 facilities

-- admin_sym: 1-41110-00425
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00425', 2024, '94.8'
FROM facilities WHERE admin_sym = '1-41110-00425'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00024
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00024', 2024, '81.37'
FROM facilities WHERE admin_sym = '1-41110-00024'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.37',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00597
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00597', 2024, '79.55'
FROM facilities WHERE admin_sym = '1-41110-00597'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00709
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00709', 2024, '83.4'
FROM facilities WHERE admin_sym = '1-41110-00709'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00595
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00595', 2024, '90.35'
FROM facilities WHERE admin_sym = '1-41110-00595'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00690
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00690', 2024, '89.76'
FROM facilities WHERE admin_sym = '1-41110-00690'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.76',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00245
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00245', 2024, '86.05'
FROM facilities WHERE admin_sym = '1-41110-00245'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00534
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00534', 2024, '72.79'
FROM facilities WHERE admin_sym = '1-41110-00534'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00528
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00528', 2024, '74.31'
FROM facilities WHERE admin_sym = '1-41110-00528'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00371
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00371', 2024, '94.01'
FROM facilities WHERE admin_sym = '1-41110-00371'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.01',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00727
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00727', 2024, '41.06'
FROM facilities WHERE admin_sym = '1-41110-00727'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '41.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00633
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00633', 2024, '86.27'
FROM facilities WHERE admin_sym = '1-41110-00633'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00539
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00539', 2024, '90.72'
FROM facilities WHERE admin_sym = '1-41110-00539'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00409
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00409', 2024, '77.77'
FROM facilities WHERE admin_sym = '1-41110-00409'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00306
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00306', 2024, '93.49'
FROM facilities WHERE admin_sym = '1-41110-00306'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00311
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00311', 2024, '97.83'
FROM facilities WHERE admin_sym = '1-41110-00311'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00434
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00434', 2024, '91.3'
FROM facilities WHERE admin_sym = '1-41110-00434'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00349
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00349', 2024, '93.6'
FROM facilities WHERE admin_sym = '1-41110-00349'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00736
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00736', 2024, '85.06'
FROM facilities WHERE admin_sym = '1-41110-00736'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00432
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00432', 2024, '65.41'
FROM facilities WHERE admin_sym = '1-41110-00432'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00410
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00410', 2024, '83.1'
FROM facilities WHERE admin_sym = '1-41110-00410'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00386
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00386', 2024, '92.75'
FROM facilities WHERE admin_sym = '1-41110-00386'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00041
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00041', 2024, '90.85'
FROM facilities WHERE admin_sym = '1-41110-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00712
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00712', 2024, '64.34'
FROM facilities WHERE admin_sym = '1-41110-00712'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.34',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00551
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00551', 2024, '86.6'
FROM facilities WHERE admin_sym = '1-41110-00551'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00429
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00429', 2024, '90.79'
FROM facilities WHERE admin_sym = '1-41110-00429'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00023', 2024, '90.1'
FROM facilities WHERE admin_sym = '1-41110-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00435
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00435', 2024, '90.85'
FROM facilities WHERE admin_sym = '1-41110-00435'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00034
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00034', 2024, '94.85'
FROM facilities WHERE admin_sym = '1-41110-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00091
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00091', 2024, '96.35'
FROM facilities WHERE admin_sym = '1-41110-00091'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00336
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00336', 2024, '96.3'
FROM facilities WHERE admin_sym = '1-41110-00336'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00323
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00323', 2024, '79.12'
FROM facilities WHERE admin_sym = '1-41110-00323'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00375
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00375', 2024, '89.12'
FROM facilities WHERE admin_sym = '1-41110-00375'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00344
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00344', 2024, '89.56'
FROM facilities WHERE admin_sym = '1-41110-00344'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.56',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00199
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00199', 2024, '89.91'
FROM facilities WHERE admin_sym = '1-41110-00199'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00696
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00696', 2024, '72.65'
FROM facilities WHERE admin_sym = '1-41110-00696'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.65',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00382
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00382', 2024, '96.1'
FROM facilities WHERE admin_sym = '1-41110-00382'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00428
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00428', 2024, '80.67'
FROM facilities WHERE admin_sym = '1-41110-00428'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00229
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00229', 2024, '76.12'
FROM facilities WHERE admin_sym = '1-41110-00229'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00365
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00365', 2024, '72.77'
FROM facilities WHERE admin_sym = '1-41110-00365'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00037', 2024, '97.48'
FROM facilities WHERE admin_sym = '1-41110-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00032
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00032', 2024, '84.89'
FROM facilities WHERE admin_sym = '1-41110-00032'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00369
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00369', 2024, '83.03'
FROM facilities WHERE admin_sym = '1-41110-00369'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.03',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00675
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00675', 2024, '84.39'
FROM facilities WHERE admin_sym = '1-41110-00675'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.39',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00500
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00500', 2024, '89.85'
FROM facilities WHERE admin_sym = '1-41110-00500'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00130
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00130', 2024, '79.19'
FROM facilities WHERE admin_sym = '1-41110-00130'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.19',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00252
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00252', 2024, '79.55'
FROM facilities WHERE admin_sym = '1-41110-00252'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00496
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00496', 2024, '75.6'
FROM facilities WHERE admin_sym = '1-41110-00496'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00324
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00324', 2024, '93.85'
FROM facilities WHERE admin_sym = '1-41110-00324'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00368
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00368', 2024, '95.6'
FROM facilities WHERE admin_sym = '1-41110-00368'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00407
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00407', 2024, '93.1'
FROM facilities WHERE admin_sym = '1-41110-00407'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41110-00740
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41110-00740', 2024, '75.06'
FROM facilities WHERE admin_sym = '1-41110-00740'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00431
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00431', 2024, '80.93'
FROM facilities WHERE admin_sym = '1-41390-00431'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00299
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00299', 2024, '67.85'
FROM facilities WHERE admin_sym = '1-41390-00299'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00295
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00295', 2024, '83.35'
FROM facilities WHERE admin_sym = '1-41390-00295'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00404
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00404', 2024, '85.25'
FROM facilities WHERE admin_sym = '1-41390-00404'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00433
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00433', 2024, '87.42'
FROM facilities WHERE admin_sym = '1-41390-00433'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00003', 2024, '91.3'
FROM facilities WHERE admin_sym = '1-41390-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00036
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00036', 2024, '49.82'
FROM facilities WHERE admin_sym = '1-41390-00036'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00302
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00302', 2024, '86.25'
FROM facilities WHERE admin_sym = '1-41390-00302'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00014
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00014', 2024, '86.85'
FROM facilities WHERE admin_sym = '1-41390-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00284
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00284', 2024, '91.1'
FROM facilities WHERE admin_sym = '1-41390-00284'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00185
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00185', 2024, '84.5'
FROM facilities WHERE admin_sym = '1-41390-00185'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00249
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00249', 2024, '62.55'
FROM facilities WHERE admin_sym = '1-41390-00249'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00478
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00478', 2024, '82.52'
FROM facilities WHERE admin_sym = '1-41390-00478'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00312
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00312', 2024, '66.98'
FROM facilities WHERE admin_sym = '1-41390-00312'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00439
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00439', 2024, '81.5'
FROM facilities WHERE admin_sym = '1-41390-00439'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00278
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00278', 2024, '69.37'
FROM facilities WHERE admin_sym = '1-41390-00278'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.37',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00356
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00356', 2024, '82.81'
FROM facilities WHERE admin_sym = '1-41390-00356'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00235
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00235', 2024, '88.84'
FROM facilities WHERE admin_sym = '1-41390-00235'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.84',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00423
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00423', 2024, '55.23'
FROM facilities WHERE admin_sym = '1-41390-00423'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.23',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00339
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00339', 2024, '85.35'
FROM facilities WHERE admin_sym = '1-41390-00339'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00378
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00378', 2024, '61.95'
FROM facilities WHERE admin_sym = '1-41390-00378'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.95',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00323
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00323', 2024, '55.27'
FROM facilities WHERE admin_sym = '1-41390-00323'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00417
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00417', 2024, '85.63'
FROM facilities WHERE admin_sym = '1-41390-00417'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00370
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00370', 2024, '67.68'
FROM facilities WHERE admin_sym = '1-41390-00370'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00501
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00501', 2024, '72.71'
FROM facilities WHERE admin_sym = '1-41390-00501'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00377
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00377', 2024, '85.18'
FROM facilities WHERE admin_sym = '1-41390-00377'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00481
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00481', 2024, '69.55'
FROM facilities WHERE admin_sym = '1-41390-00481'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00013
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00013', 2024, '63.15'
FROM facilities WHERE admin_sym = '1-41390-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.15',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00275
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00275', 2024, '78.27'
FROM facilities WHERE admin_sym = '1-41390-00275'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00150
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00150', 2024, '78.54'
FROM facilities WHERE admin_sym = '1-41390-00150'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00334
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00334', 2024, '91.77'
FROM facilities WHERE admin_sym = '1-41390-00334'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00492
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00492', 2024, '93.57'
FROM facilities WHERE admin_sym = '1-41390-00492'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.57',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00067
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00067', 2024, '61.03'
FROM facilities WHERE admin_sym = '1-41390-00067'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.03',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00146
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00146', 2024, '72.43'
FROM facilities WHERE admin_sym = '1-41390-00146'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00286
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00286', 2024, '56.57'
FROM facilities WHERE admin_sym = '1-41390-00286'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.57',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00487
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00487', 2024, '67.72'
FROM facilities WHERE admin_sym = '1-41390-00487'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00488
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00488', 2024, '69.64'
FROM facilities WHERE admin_sym = '1-41390-00488'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00408
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00408', 2024, '55.06'
FROM facilities WHERE admin_sym = '1-41390-00408'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00345
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00345', 2024, '70.88'
FROM facilities WHERE admin_sym = '1-41390-00345'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00388
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00388', 2024, '60.8'
FROM facilities WHERE admin_sym = '1-41390-00388'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00170
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00170', 2024, '70.41'
FROM facilities WHERE admin_sym = '1-41390-00170'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00279
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00279', 2024, '65.4'
FROM facilities WHERE admin_sym = '1-41390-00279'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00434
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00434', 2024, '50.17'
FROM facilities WHERE admin_sym = '1-41390-00434'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00396
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00396', 2024, '88.35'
FROM facilities WHERE admin_sym = '1-41390-00396'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41390-00385
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41390-00385', 2024, '50.33'
FROM facilities WHERE admin_sym = '1-41390-00385'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41270-00432
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41270-00432', 2024, '76.91'
FROM facilities WHERE admin_sym = '1-41270-00432'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41270-00765
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41270-00765', 2024, '91.1'
FROM facilities WHERE admin_sym = '1-41270-00765'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-41270-00619
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-41270-00619', 2024, '85.1'
FROM facilities WHERE admin_sym = '1-41270-00619'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

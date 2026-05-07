-- Batch 134 of 226
-- Processing 100 facilities

-- admin_sym: 2-41130-00710
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00710', 2024, '86.11'
FROM facilities WHERE admin_sym = '2-41130-00710'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.11',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00318
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00318', 2024, '83.35'
FROM facilities WHERE admin_sym = '3-41130-00318'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00400
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00400', 2024, '81.1'
FROM facilities WHERE admin_sym = '3-41130-00400'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00412
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00412', 2024, '82.1'
FROM facilities WHERE admin_sym = '3-41130-00412'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00608
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00608', 2024, '81.85'
FROM facilities WHERE admin_sym = '3-41130-00608'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00662
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00662', 2024, '83.6'
FROM facilities WHERE admin_sym = '2-41130-00662'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00588
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00588', 2024, '89.35'
FROM facilities WHERE admin_sym = '2-41130-00588'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00394
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00394', 2024, '85.1'
FROM facilities WHERE admin_sym = '3-41130-00394'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00436
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00436', 2024, '80.1'
FROM facilities WHERE admin_sym = '3-41130-00436'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00612
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00612', 2024, '80.1'
FROM facilities WHERE admin_sym = '3-41130-00612'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00580
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00580', 2024, '86.1'
FROM facilities WHERE admin_sym = '3-41130-00580'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00632
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00632', 2024, '81.35'
FROM facilities WHERE admin_sym = '3-41130-00632'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00688
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00688', 2024, '75.35'
FROM facilities WHERE admin_sym = '2-41130-00688'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00698
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00698', 2024, '76.57'
FROM facilities WHERE admin_sym = '2-41130-00698'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.57',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00520
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00520', 2024, '74.8'
FROM facilities WHERE admin_sym = '3-41130-00520'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00628
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00628', 2024, '80.85'
FROM facilities WHERE admin_sym = '3-41130-00628'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00336
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00336', 2024, '74.85'
FROM facilities WHERE admin_sym = '3-41130-00336'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00706
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00706', 2024, '77.61'
FROM facilities WHERE admin_sym = '2-41130-00706'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00570
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00570', 2024, '75.6'
FROM facilities WHERE admin_sym = '3-41130-00570'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00352
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00352', 2024, '75.35'
FROM facilities WHERE admin_sym = '3-41130-00352'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00664
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00664', 2024, '69.85'
FROM facilities WHERE admin_sym = '2-41130-00664'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00426
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00426', 2024, '65.1'
FROM facilities WHERE admin_sym = '3-41130-00426'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00624
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00624', 2024, '75.35'
FROM facilities WHERE admin_sym = '3-41130-00624'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00536
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00536', 2024, '73.85'
FROM facilities WHERE admin_sym = '3-41130-00536'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00666
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00666', 2024, '48.89'
FROM facilities WHERE admin_sym = '2-41130-00666'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '48.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00708
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00708', 2024, '57.43'
FROM facilities WHERE admin_sym = '2-41130-00708'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00422
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00422', 2024, '59.1'
FROM facilities WHERE admin_sym = '3-41130-00422'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00442
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00442', 2024, '69.35'
FROM facilities WHERE admin_sym = '3-41130-00442'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00136
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00136', 2024, '59.94'
FROM facilities WHERE admin_sym = '3-41130-00136'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00638
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00638', 2024, '56.85'
FROM facilities WHERE admin_sym = '3-41130-00638'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00416
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00416', 2024, '92.6'
FROM facilities WHERE admin_sym = '3-41130-00416'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00620
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00620', 2024, '96.6'
FROM facilities WHERE admin_sym = '3-41130-00620'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00663
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00663', 2024, '95.85'
FROM facilities WHERE admin_sym = '2-41130-00663'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00250
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00250', 2024, '89.1'
FROM facilities WHERE admin_sym = '3-41130-00250'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00318
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00318', 2024, '82.85'
FROM facilities WHERE admin_sym = '3-41130-00318'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00588
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00588', 2024, '86.85'
FROM facilities WHERE admin_sym = '2-41130-00588'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00564
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00564', 2024, '77.85'
FROM facilities WHERE admin_sym = '3-41130-00564'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00588
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00588', 2024, '94.6'
FROM facilities WHERE admin_sym = '2-41130-00588'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00618
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00618', 2024, '83.1'
FROM facilities WHERE admin_sym = '2-41130-00618'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00338
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00338', 2024, '87.6'
FROM facilities WHERE admin_sym = '3-41130-00338'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00514
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00514', 2024, '81.35'
FROM facilities WHERE admin_sym = '2-41130-00514'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00538
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00538', 2024, '81.35'
FROM facilities WHERE admin_sym = '2-41130-00538'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00376
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00376', 2024, '87.85'
FROM facilities WHERE admin_sym = '2-41130-00376'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00380
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00380', 2024, '72.85'
FROM facilities WHERE admin_sym = '3-41130-00380'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00522
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00522', 2024, '78.1'
FROM facilities WHERE admin_sym = '3-41130-00522'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00516
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00516', 2024, '78.6'
FROM facilities WHERE admin_sym = '3-41130-00516'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00690
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00690', 2024, '80.35'
FROM facilities WHERE admin_sym = '2-41130-00690'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00586
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00586', 2024, '79.6'
FROM facilities WHERE admin_sym = '3-41130-00586'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00168
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00168', 2024, '64.47'
FROM facilities WHERE admin_sym = '3-41130-00168'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00488
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00488', 2024, '92.1'
FROM facilities WHERE admin_sym = '3-41130-00488'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00456
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00456', 2024, '90.1'
FROM facilities WHERE admin_sym = '3-41130-00456'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00572
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00572', 2024, '93.6'
FROM facilities WHERE admin_sym = '3-41130-00572'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00464
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00464', 2024, '95.35'
FROM facilities WHERE admin_sym = '3-41130-00464'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00148
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00148', 2024, '90.35'
FROM facilities WHERE admin_sym = '3-41130-00148'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00670
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00670', 2024, '95.1'
FROM facilities WHERE admin_sym = '2-41130-00670'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00414
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00414', 2024, '94.6'
FROM facilities WHERE admin_sym = '3-41130-00414'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00039
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00039', 2024, '96.6'
FROM facilities WHERE admin_sym = '2-41130-00039'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00398
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00398', 2024, '88.1'
FROM facilities WHERE admin_sym = '3-41130-00398'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00680
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00680', 2024, '85.49'
FROM facilities WHERE admin_sym = '2-41130-00680'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00452
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00452', 2024, '85.6'
FROM facilities WHERE admin_sym = '3-41130-00452'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00540
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00540', 2024, '79.85'
FROM facilities WHERE admin_sym = '3-41130-00540'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00674
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00674', 2024, '73.1'
FROM facilities WHERE admin_sym = '2-41130-00674'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00546
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00546', 2024, '73.3'
FROM facilities WHERE admin_sym = '3-41130-00546'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00594
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00594', 2024, '77.85'
FROM facilities WHERE admin_sym = '3-41130-00594'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00482
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00482', 2024, '71.6'
FROM facilities WHERE admin_sym = '3-41130-00482'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00534
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00534', 2024, '76.1'
FROM facilities WHERE admin_sym = '3-41130-00534'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00528
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00528', 2024, '57.35'
FROM facilities WHERE admin_sym = '3-41130-00528'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00148
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00148', 2024, '92.35'
FROM facilities WHERE admin_sym = '3-41130-00148'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00039
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00039', 2024, '95.35'
FROM facilities WHERE admin_sym = '2-41130-00039'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00410
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00410', 2024, 'B'
FROM facilities WHERE admin_sym = '3-41130-00410'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = 'B',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00546
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00546', 2024, '86.6'
FROM facilities WHERE admin_sym = '3-41130-00546'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00626
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00626', 2024, '80.85'
FROM facilities WHERE admin_sym = '2-41130-00626'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00526
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00526', 2024, '88.6'
FROM facilities WHERE admin_sym = '2-41130-00526'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00704
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00704', 2024, '76.85'
FROM facilities WHERE admin_sym = '2-41130-00704'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00544
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00544', 2024, '52.6'
FROM facilities WHERE admin_sym = '3-41130-00544'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '52.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00650
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00650', 2024, '58.05'
FROM facilities WHERE admin_sym = '2-41130-00650'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00592
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00592', 2024, '62.85'
FROM facilities WHERE admin_sym = '3-41130-00592'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00694
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00694', 2024, '70.35'
FROM facilities WHERE admin_sym = '2-41130-00694'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00572
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00572', 2024, '97.35'
FROM facilities WHERE admin_sym = '3-41130-00572'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00630
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00630', 2024, '90.8'
FROM facilities WHERE admin_sym = '3-41130-00630'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00180
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00180', 2024, '95.3'
FROM facilities WHERE admin_sym = '3-41130-00180'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00686
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00686', 2024, '91.1'
FROM facilities WHERE admin_sym = '2-41130-00686'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00584
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00584', 2024, '91.6'
FROM facilities WHERE admin_sym = '3-41130-00584'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00314
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00314', 2024, '96.55'
FROM facilities WHERE admin_sym = '3-41130-00314'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00486
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00486', 2024, '93.1'
FROM facilities WHERE admin_sym = '3-41130-00486'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00656
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00656', 2024, '86.1'
FROM facilities WHERE admin_sym = '2-41130-00656'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00104
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00104', 2024, '89.35'
FROM facilities WHERE admin_sym = '3-41130-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00362
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00362', 2024, '80.1'
FROM facilities WHERE admin_sym = '3-41130-00362'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00360
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00360', 2024, '86.85'
FROM facilities WHERE admin_sym = '3-41130-00360'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00316
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00316', 2024, '75.6'
FROM facilities WHERE admin_sym = '2-41130-00316'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00606
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00606', 2024, '75.6'
FROM facilities WHERE admin_sym = '3-41130-00606'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00264
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00264', 2024, '64.85'
FROM facilities WHERE admin_sym = '3-41130-00264'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00658
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00658', 2024, '56.8'
FROM facilities WHERE admin_sym = '2-41130-00658'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00282
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00282', 2024, '53.65'
FROM facilities WHERE admin_sym = '3-41130-00282'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '53.65',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00180
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00180', 2024, '98.6'
FROM facilities WHERE admin_sym = '3-41130-00180'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00104
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00104', 2024, '90.85'
FROM facilities WHERE admin_sym = '3-41130-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00676
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00676', 2024, '90.85'
FROM facilities WHERE admin_sym = '2-41130-00676'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00267
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00267', 2024, '93.1'
FROM facilities WHERE admin_sym = '2-41130-00267'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-41130-00042
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-41130-00042', 2024, '78.85'
FROM facilities WHERE admin_sym = '2-41130-00042'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-41130-00104
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-41130-00104', 2024, '88.3'
FROM facilities WHERE admin_sym = '3-41130-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.3',
  last_updated = CURRENT_TIMESTAMP;

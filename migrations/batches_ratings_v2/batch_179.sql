-- Batch 179 of 226
-- Processing 100 facilities

-- admin_sym: 2-48120-00676
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48120-00676', 2024, '90.25'
FROM facilities WHERE admin_sym = '2-48120-00676'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48160-00102
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48160-00102', 2024, '91.3'
FROM facilities WHERE admin_sym = '3-48160-00102'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48160-00076
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48160-00076', 2024, '92.05'
FROM facilities WHERE admin_sym = '3-48160-00076'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00328
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00328', 2024, '96.35'
FROM facilities WHERE admin_sym = '3-48120-00328'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00236
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00236', 2024, '97.75'
FROM facilities WHERE admin_sym = '3-48120-00236'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48160-00013
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48160-00013', 2024, '81.1'
FROM facilities WHERE admin_sym = '2-48160-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48160-00098
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48160-00098', 2024, '87.8'
FROM facilities WHERE admin_sym = '3-48160-00098'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00234
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00234', 2024, '86.35'
FROM facilities WHERE admin_sym = '3-48120-00234'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48120-00672
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48120-00672', 2024, '83.35'
FROM facilities WHERE admin_sym = '2-48120-00672'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48160-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48160-00088', 2024, '90.8'
FROM facilities WHERE admin_sym = '3-48160-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00226
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00226', 2024, '85.8'
FROM facilities WHERE admin_sym = '3-48120-00226'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00484
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00484', 2024, '86.3'
FROM facilities WHERE admin_sym = '3-48120-00484'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48120-00618
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48120-00618', 2024, '83.55'
FROM facilities WHERE admin_sym = '2-48120-00618'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00554
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00554', 2024, '84.55'
FROM facilities WHERE admin_sym = '3-48120-00554'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00262
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00262', 2024, '78.85'
FROM facilities WHERE admin_sym = '3-48120-00262'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00534
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00534', 2024, '75.3'
FROM facilities WHERE admin_sym = '3-48120-00534'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00410
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00410', 2024, '77.6'
FROM facilities WHERE admin_sym = '3-48120-00410'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48160-00066
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48160-00066', 2024, '76.6'
FROM facilities WHERE admin_sym = '3-48160-00066'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00428
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00428', 2024, '75.55'
FROM facilities WHERE admin_sym = '3-48120-00428'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00550
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00550', 2024, '80.55'
FROM facilities WHERE admin_sym = '3-48120-00550'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00314
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00314', 2024, '74.55'
FROM facilities WHERE admin_sym = '3-48120-00314'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00508
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00508', 2024, '67'
FROM facilities WHERE admin_sym = '3-48120-00508'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00368
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00368', 2024, '68'
FROM facilities WHERE admin_sym = '3-48120-00368'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00336
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00336', 2024, '64.55'
FROM facilities WHERE admin_sym = '3-48120-00336'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48120-00622
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48120-00622', 2024, '66.35'
FROM facilities WHERE admin_sym = '2-48120-00622'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00300
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00300', 2024, '35.17'
FROM facilities WHERE admin_sym = '3-48120-00300'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '35.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00512
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00512', 2024, '71.85'
FROM facilities WHERE admin_sym = '3-48120-00512'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00368
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00368', 2024, '71.75'
FROM facilities WHERE admin_sym = '3-48120-00368'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00328
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00328', 2024, '93.35'
FROM facilities WHERE admin_sym = '3-48120-00328'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48160-00014
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48160-00014', 2024, '86.1'
FROM facilities WHERE admin_sym = '2-48160-00014'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48120-00618
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48120-00618', 2024, '88.05'
FROM facilities WHERE admin_sym = '2-48120-00618'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48160-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48160-00088', 2024, '88.05'
FROM facilities WHERE admin_sym = '3-48160-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00499
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00499', 2024, '75.85'
FROM facilities WHERE admin_sym = '3-48120-00499'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48120-00636
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48120-00636', 2024, '95.25'
FROM facilities WHERE admin_sym = '2-48120-00636'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48110-00142
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48110-00142', 2024, '95.8'
FROM facilities WHERE admin_sym = '3-48110-00142'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00272
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00272', 2024, '92.1'
FROM facilities WHERE admin_sym = '3-48120-00272'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00542
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00542', 2024, '92.1'
FROM facilities WHERE admin_sym = '3-48120-00542'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48110-00120
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48110-00120', 2024, '88.85'
FROM facilities WHERE admin_sym = '3-48110-00120'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00434
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00434', 2024, '85.55'
FROM facilities WHERE admin_sym = '3-48120-00434'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00206
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00206', 2024, '83.75'
FROM facilities WHERE admin_sym = '3-48120-00206'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00476
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00476', 2024, '87.55'
FROM facilities WHERE admin_sym = '3-48120-00476'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00332
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00332', 2024, '87.05'
FROM facilities WHERE admin_sym = '3-48120-00332'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48120-00638
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48120-00638', 2024, '82.3'
FROM facilities WHERE admin_sym = '2-48120-00638'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48120-00658
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48120-00658', 2024, '75.8'
FROM facilities WHERE admin_sym = '2-48120-00658'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48110-00048
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48110-00048', 2024, '71.3'
FROM facilities WHERE admin_sym = '3-48110-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48120-00424
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48120-00424', 2024, '77.7'
FROM facilities WHERE admin_sym = '2-48120-00424'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48110-00110
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48110-00110', 2024, '77.05'
FROM facilities WHERE admin_sym = '3-48110-00110'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00574
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00574', 2024, '68.55'
FROM facilities WHERE admin_sym = '3-48120-00574'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48110-00142
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48110-00142', 2024, '91.55'
FROM facilities WHERE admin_sym = '3-48110-00142'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48120-00424
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48120-00424', 2024, '84.3'
FROM facilities WHERE admin_sym = '2-48120-00424'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48110-00030
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48110-00030', 2024, '84.85'
FROM facilities WHERE admin_sym = '2-48110-00030'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00344
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00344', 2024, '91.35'
FROM facilities WHERE admin_sym = '3-48120-00344'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48120-00594
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48120-00594', 2024, '90.6'
FROM facilities WHERE admin_sym = '2-48120-00594'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00447
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00447', 2024, '95.05'
FROM facilities WHERE admin_sym = '3-48120-00447'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48120-00660
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48120-00660', 2024, '91.35'
FROM facilities WHERE admin_sym = '2-48120-00660'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00442
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00442', 2024, '83.05'
FROM facilities WHERE admin_sym = '3-48120-00442'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48120-00644
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48120-00644', 2024, '81.25'
FROM facilities WHERE admin_sym = '2-48120-00644'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00538
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00538', 2024, '81.55'
FROM facilities WHERE admin_sym = '3-48120-00538'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00308
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00308', 2024, '84.85'
FROM facilities WHERE admin_sym = '3-48120-00308'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00576
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00576', 2024, '82.55'
FROM facilities WHERE admin_sym = '3-48120-00576'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00406
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00406', 2024, '87.2'
FROM facilities WHERE admin_sym = '3-48120-00406'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.2',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00400
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00400', 2024, '87.35'
FROM facilities WHERE admin_sym = '3-48120-00400'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00188
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00188', 2024, '87'
FROM facilities WHERE admin_sym = '3-48120-00188'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48120-00634
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48120-00634', 2024, '82.6'
FROM facilities WHERE admin_sym = '2-48120-00634'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48120-00590
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48120-00590', 2024, '70.25'
FROM facilities WHERE admin_sym = '2-48120-00590'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00494
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00494', 2024, '77.8'
FROM facilities WHERE admin_sym = '3-48120-00494'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00268
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00268', 2024, '75.3'
FROM facilities WHERE admin_sym = '3-48120-00268'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00366
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00366', 2024, '72'
FROM facilities WHERE admin_sym = '3-48120-00366'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00260
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00260', 2024, '73.3'
FROM facilities WHERE admin_sym = '3-48120-00260'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00418
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00418', 2024, '72.55'
FROM facilities WHERE admin_sym = '3-48120-00418'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00358
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00358', 2024, '78.25'
FROM facilities WHERE admin_sym = '3-48120-00358'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00452
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00452', 2024, '71.25'
FROM facilities WHERE admin_sym = '3-48120-00452'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00154
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00154', 2024, '62.8'
FROM facilities WHERE admin_sym = '3-48120-00154'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00516
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00516', 2024, '68.05'
FROM facilities WHERE admin_sym = '3-48120-00516'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48120-00624
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48120-00624', 2024, '66.8'
FROM facilities WHERE admin_sym = '2-48120-00624'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48110-00056
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48110-00056', 2024, '43.5'
FROM facilities WHERE admin_sym = '3-48110-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '43.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00320
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00320', 2024, '59.3'
FROM facilities WHERE admin_sym = '3-48120-00320'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00344
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00344', 2024, '87.85'
FROM facilities WHERE admin_sym = '3-48120-00344'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48120-00594
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48120-00594', 2024, '83.3'
FROM facilities WHERE admin_sym = '2-48120-00594'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00452
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00452', 2024, '62.75'
FROM facilities WHERE admin_sym = '3-48120-00452'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48120-00624
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48120-00624', 2024, '69.55'
FROM facilities WHERE admin_sym = '2-48120-00624'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48120-00624
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48120-00624', 2024, '65.8'
FROM facilities WHERE admin_sym = '2-48120-00624'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48110-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48110-00008', 2024, '91.3'
FROM facilities WHERE admin_sym = '2-48110-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00556
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00556', 2024, '86.1'
FROM facilities WHERE admin_sym = '3-48120-00556'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00416
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00416', 2024, '89.1'
FROM facilities WHERE admin_sym = '3-48120-00416'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48120-00674
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48120-00674', 2024, '82.1'
FROM facilities WHERE admin_sym = '2-48120-00674'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00260
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00260', 2024, '78.6'
FROM facilities WHERE admin_sym = '3-48120-00260'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00576
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00576', 2024, '76.8'
FROM facilities WHERE admin_sym = '3-48120-00576'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00358
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00358', 2024, '77.25'
FROM facilities WHERE admin_sym = '3-48120-00358'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48120-00640
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48120-00640', 2024, '78'
FROM facilities WHERE admin_sym = '2-48120-00640'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48110-00084
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48110-00084', 2024, '69.5'
FROM facilities WHERE admin_sym = '3-48110-00084'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00586
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00586', 2024, '93.85'
FROM facilities WHERE admin_sym = '3-48120-00586'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00522
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00522', 2024, '94.85'
FROM facilities WHERE admin_sym = '3-48120-00522'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00334
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00334', 2024, '97.85'
FROM facilities WHERE admin_sym = '3-48120-00334'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48190-00054
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48190-00054', 2024, '94.1'
FROM facilities WHERE admin_sym = '3-48190-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48190-00038
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48190-00038', 2024, '90.55'
FROM facilities WHERE admin_sym = '3-48190-00038'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48190-00016
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48190-00016', 2024, '91.1'
FROM facilities WHERE admin_sym = '3-48190-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-48120-00596
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-48120-00596', 2024, '85.05'
FROM facilities WHERE admin_sym = '2-48120-00596'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00298
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00298', 2024, '88.8'
FROM facilities WHERE admin_sym = '3-48120-00298'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-48120-00536
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-48120-00536', 2024, '88.35'
FROM facilities WHERE admin_sym = '3-48120-00536'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- Batch 96 of 226
-- Processing 100 facilities

-- admin_sym: 3-11350-00446
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00446', 2024, '80.75'
FROM facilities WHERE admin_sym = '3-11350-00446'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00413
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00413', 2024, '83.6'
FROM facilities WHERE admin_sym = '3-11350-00413'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00456
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00456', 2024, '80.1'
FROM facilities WHERE admin_sym = '3-11350-00456'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00332
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00332', 2024, '77.8'
FROM facilities WHERE admin_sym = '3-11350-00332'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00214
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00214', 2024, '78.5'
FROM facilities WHERE admin_sym = '3-11350-00214'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00150
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00150', 2024, '79.75'
FROM facilities WHERE admin_sym = '3-11350-00150'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00228
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00228', 2024, '79.85'
FROM facilities WHERE admin_sym = '3-11350-00228'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00248
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00248', 2024, '83.6'
FROM facilities WHERE admin_sym = '3-11350-00248'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00478
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00478', 2024, '69.1'
FROM facilities WHERE admin_sym = '3-11350-00478'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00394
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00394', 2024, '68.55'
FROM facilities WHERE admin_sym = '3-11350-00394'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00412
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00412', 2024, '81.35'
FROM facilities WHERE admin_sym = '3-11350-00412'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11350-00546
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11350-00546', 2024, '69.1'
FROM facilities WHERE admin_sym = '2-11350-00546'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11350-00520
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11350-00520', 2024, '60.05'
FROM facilities WHERE admin_sym = '2-11350-00520'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00380
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00380', 2024, '69.31'
FROM facilities WHERE admin_sym = '3-11350-00380'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00266
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00266', 2024, '63.55'
FROM facilities WHERE admin_sym = '3-11350-00266'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00424
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00424', 2024, '73.5'
FROM facilities WHERE admin_sym = '3-11350-00424'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00312
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00312', 2024, '90.6'
FROM facilities WHERE admin_sym = '3-11350-00312'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00084
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00084', 2024, '94.8'
FROM facilities WHERE admin_sym = '3-11350-00084'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00318
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00318', 2024, '88.35'
FROM facilities WHERE admin_sym = '3-11350-00318'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00436
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00436', 2024, '80.55'
FROM facilities WHERE admin_sym = '3-11350-00436'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00116
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00116', 2024, '93.3'
FROM facilities WHERE admin_sym = '3-11350-00116'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00092
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00092', 2024, '99.8'
FROM facilities WHERE admin_sym = '3-11350-00092'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '99.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00040', 2024, '94.05'
FROM facilities WHERE admin_sym = '3-11350-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00436
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00436', 2024, '87.55'
FROM facilities WHERE admin_sym = '3-11350-00436'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00424
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00424', 2024, '79.55'
FROM facilities WHERE admin_sym = '3-11350-00424'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00116
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00116', 2024, '92.6'
FROM facilities WHERE admin_sym = '3-11350-00116'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11350-00336
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11350-00336', 2024, '90.8'
FROM facilities WHERE admin_sym = '2-11350-00336'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11350-00397
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11350-00397', 2024, '96.85'
FROM facilities WHERE admin_sym = '2-11350-00397'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11350-00017
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11350-00017', 2024, '94.8'
FROM facilities WHERE admin_sym = '2-11350-00017'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11350-00128
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11350-00128', 2024, '94.3'
FROM facilities WHERE admin_sym = '2-11350-00128'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11350-00534
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11350-00534', 2024, '81.6'
FROM facilities WHERE admin_sym = '2-11350-00534'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11350-00291
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11350-00291', 2024, '88.35'
FROM facilities WHERE admin_sym = '2-11350-00291'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11350-00464
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11350-00464', 2024, '80.05'
FROM facilities WHERE admin_sym = '2-11350-00464'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11350-00313
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11350-00313', 2024, '85'
FROM facilities WHERE admin_sym = '2-11350-00313'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11350-00024
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11350-00024', 2024, '83.35'
FROM facilities WHERE admin_sym = '2-11350-00024'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00380
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00380', 2024, '82.35'
FROM facilities WHERE admin_sym = '3-11350-00380'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00356
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00356', 2024, '73.55'
FROM facilities WHERE admin_sym = '3-11350-00356'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11350-00350
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11350-00350', 2024, '74.6'
FROM facilities WHERE admin_sym = '2-11350-00350'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11350-00480
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11350-00480', 2024, '79.85'
FROM facilities WHERE admin_sym = '2-11350-00480'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00406
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00406', 2024, '79.8'
FROM facilities WHERE admin_sym = '3-11350-00406'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00338
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00338', 2024, '68.05'
FROM facilities WHERE admin_sym = '3-11350-00338'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11350-00390
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11350-00390', 2024, '78.55'
FROM facilities WHERE admin_sym = '2-11350-00390'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11350-00536
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11350-00536', 2024, '62.6'
FROM facilities WHERE admin_sym = '2-11350-00536'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11350-00543
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11350-00543', 2024, '91.35'
FROM facilities WHERE admin_sym = '2-11350-00543'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11350-00458
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11350-00458', 2024, '70.42'
FROM facilities WHERE admin_sym = '3-11350-00458'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00336
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00336', 2024, '93.3'
FROM facilities WHERE admin_sym = '3-11320-00336'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00209
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00209', 2024, '92.35'
FROM facilities WHERE admin_sym = '3-11320-00209'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00158
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00158', 2024, '93.3'
FROM facilities WHERE admin_sym = '3-11320-00158'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00460
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00460', 2024, '94.35'
FROM facilities WHERE admin_sym = '3-11320-00460'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00390
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00390', 2024, '95.05'
FROM facilities WHERE admin_sym = '3-11320-00390'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00514
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00514', 2024, '90.6'
FROM facilities WHERE admin_sym = '2-11320-00514'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00318
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00318', 2024, '85.75'
FROM facilities WHERE admin_sym = '3-11320-00318'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00462
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00462', 2024, '81.6'
FROM facilities WHERE admin_sym = '3-11320-00462'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00400
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00400', 2024, '93.6'
FROM facilities WHERE admin_sym = '3-11320-00400'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00444
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00444', 2024, '85.1'
FROM facilities WHERE admin_sym = '3-11320-00444'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00508
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00508', 2024, '80.6'
FROM facilities WHERE admin_sym = '2-11320-00508'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00484
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00484', 2024, '83.1'
FROM facilities WHERE admin_sym = '2-11320-00484'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00490
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00490', 2024, '83.89'
FROM facilities WHERE admin_sym = '2-11320-00490'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00350
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00350', 2024, '85.05'
FROM facilities WHERE admin_sym = '3-11320-00350'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00360
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00360', 2024, '81.3'
FROM facilities WHERE admin_sym = '3-11320-00360'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00512
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00512', 2024, '89.85'
FROM facilities WHERE admin_sym = '2-11320-00512'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00398
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00398', 2024, '92.35'
FROM facilities WHERE admin_sym = '3-11320-00398'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00436
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00436', 2024, '89.55'
FROM facilities WHERE admin_sym = '3-11320-00436'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00501
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00501', 2024, '85.1'
FROM facilities WHERE admin_sym = '2-11320-00501'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00470
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00470', 2024, '85.05'
FROM facilities WHERE admin_sym = '3-11320-00470'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00044', 2024, '89.3'
FROM facilities WHERE admin_sym = '3-11320-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00494
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00494', 2024, '80.05'
FROM facilities WHERE admin_sym = '2-11320-00494'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00452
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00452', 2024, '87.35'
FROM facilities WHERE admin_sym = '3-11320-00452'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00478
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00478', 2024, '79.25'
FROM facilities WHERE admin_sym = '3-11320-00478'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00476
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00476', 2024, '73.05'
FROM facilities WHERE admin_sym = '2-11320-00476'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00506
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00506', 2024, '74.05'
FROM facilities WHERE admin_sym = '2-11320-00506'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00502
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00502', 2024, '72.3'
FROM facilities WHERE admin_sym = '2-11320-00502'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00362
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00362', 2024, '79.05'
FROM facilities WHERE admin_sym = '3-11320-00362'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00208
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00208', 2024, '69.25'
FROM facilities WHERE admin_sym = '2-11320-00208'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00480
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00480', 2024, '79.35'
FROM facilities WHERE admin_sym = '3-11320-00480'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00302
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00302', 2024, '79.3'
FROM facilities WHERE admin_sym = '3-11320-00302'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00424
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00424', 2024, '73.3'
FROM facilities WHERE admin_sym = '3-11320-00424'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00450
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00450', 2024, '68.1'
FROM facilities WHERE admin_sym = '3-11320-00450'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00302
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00302', 2024, '82.3'
FROM facilities WHERE admin_sym = '3-11320-00302'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00484
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00484', 2024, '88.85'
FROM facilities WHERE admin_sym = '2-11320-00484'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00338
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00338', 2024, '93.85'
FROM facilities WHERE admin_sym = '3-11320-00338'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00040', 2024, '82.55'
FROM facilities WHERE admin_sym = '2-11320-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00114
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00114', 2024, '87.55'
FROM facilities WHERE admin_sym = '3-11320-00114'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00220
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00220', 2024, '91.6'
FROM facilities WHERE admin_sym = '3-11320-00220'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00421
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00421', 2024, '82.6'
FROM facilities WHERE admin_sym = '2-11320-00421'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00498
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00498', 2024, '88.35'
FROM facilities WHERE admin_sym = '2-11320-00498'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00486
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00486', 2024, '82.85'
FROM facilities WHERE admin_sym = '2-11320-00486'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00368
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00368', 2024, '86.8'
FROM facilities WHERE admin_sym = '3-11320-00368'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00342
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00342', 2024, '87.35'
FROM facilities WHERE admin_sym = '2-11320-00342'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00194
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00194', 2024, '86.3'
FROM facilities WHERE admin_sym = '2-11320-00194'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00494
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00494', 2024, '87.6'
FROM facilities WHERE admin_sym = '2-11320-00494'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00518
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00518', 2024, '86'
FROM facilities WHERE admin_sym = '2-11320-00518'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00400
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00400', 2024, '87.1'
FROM facilities WHERE admin_sym = '3-11320-00400'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00005', 2024, '84.85'
FROM facilities WHERE admin_sym = '2-11320-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00440
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00440', 2024, '73.6'
FROM facilities WHERE admin_sym = '2-11320-00440'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00430
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00430', 2024, '74.35'
FROM facilities WHERE admin_sym = '3-11320-00430'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-11320-00516
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-11320-00516', 2024, '79.1'
FROM facilities WHERE admin_sym = '2-11320-00516'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00414
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00414', 2024, '82.75'
FROM facilities WHERE admin_sym = '3-11320-00414'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00294
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00294', 2024, '81.55'
FROM facilities WHERE admin_sym = '3-11320-00294'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-11320-00320
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-11320-00320', 2024, '77.1'
FROM facilities WHERE admin_sym = '3-11320-00320'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.1',
  last_updated = CURRENT_TIMESTAMP;

-- Batch 120 of 226
-- Processing 100 facilities

-- admin_sym: 3-28110-00104
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28110-00104', 2024, '92.6'
FROM facilities WHERE admin_sym = '3-28110-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28110-00116
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28110-00116', 2024, '87.85'
FROM facilities WHERE admin_sym = '3-28110-00116'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28110-00131
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28110-00131', 2024, '81.05'
FROM facilities WHERE admin_sym = '3-28110-00131'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-28110-00150
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-28110-00150', 2024, '72.85'
FROM facilities WHERE admin_sym = '2-28110-00150'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-28110-00137
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-28110-00137', 2024, '31'
FROM facilities WHERE admin_sym = '3-28110-00137'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00356
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00356', 2024, '91.25'
FROM facilities WHERE admin_sym = '3-29200-00356'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00131
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00131', 2024, '98'
FROM facilities WHERE admin_sym = '3-29200-00131'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00268
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00268', 2024, '91.05'
FROM facilities WHERE admin_sym = '3-29200-00268'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00352
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00352', 2024, '91.35'
FROM facilities WHERE admin_sym = '3-29200-00352'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00274
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00274', 2024, '91.55'
FROM facilities WHERE admin_sym = '2-29200-00274'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00138
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00138', 2024, '93.85'
FROM facilities WHERE admin_sym = '3-29200-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00030
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00030', 2024, '93.55'
FROM facilities WHERE admin_sym = '3-29200-00030'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00252
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00252', 2024, '95.6'
FROM facilities WHERE admin_sym = '3-29200-00252'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00310
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00310', 2024, '90.6'
FROM facilities WHERE admin_sym = '3-29200-00310'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00017
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00017', 2024, '94.85'
FROM facilities WHERE admin_sym = '2-29200-00017'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00280
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00280', 2024, '91.85'
FROM facilities WHERE admin_sym = '3-29200-00280'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00210
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00210', 2024, '84.05'
FROM facilities WHERE admin_sym = '3-29200-00210'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00379
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00379', 2024, '80.6'
FROM facilities WHERE admin_sym = '3-29200-00379'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00358
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00358', 2024, '89.38'
FROM facilities WHERE admin_sym = '3-29200-00358'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00364
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00364', 2024, '86.35'
FROM facilities WHERE admin_sym = '2-29200-00364'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00250
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00250', 2024, '83.6'
FROM facilities WHERE admin_sym = '2-29200-00250'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00234
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00234', 2024, '86.55'
FROM facilities WHERE admin_sym = '3-29200-00234'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00246
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00246', 2024, '82.55'
FROM facilities WHERE admin_sym = '3-29200-00246'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00346
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00346', 2024, '88.85'
FROM facilities WHERE admin_sym = '3-29200-00346'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00340
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00340', 2024, '80.05'
FROM facilities WHERE admin_sym = '3-29200-00340'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00304
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00304', 2024, '89.3'
FROM facilities WHERE admin_sym = '3-29200-00304'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00124', 2024, '85.8'
FROM facilities WHERE admin_sym = '3-29200-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00022', 2024, '87.75'
FROM facilities WHERE admin_sym = '2-29200-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00338
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00338', 2024, '86.8'
FROM facilities WHERE admin_sym = '3-29200-00338'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00296
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00296', 2024, '88.1'
FROM facilities WHERE admin_sym = '3-29200-00296'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00254
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00254', 2024, '87.41'
FROM facilities WHERE admin_sym = '3-29200-00254'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00344
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00344', 2024, '86.1'
FROM facilities WHERE admin_sym = '2-29200-00344'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00336
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00336', 2024, '83.35'
FROM facilities WHERE admin_sym = '2-29200-00336'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00334
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00334', 2024, '88.05'
FROM facilities WHERE admin_sym = '2-29200-00334'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00350
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00350', 2024, '84.19'
FROM facilities WHERE admin_sym = '2-29200-00350'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.19',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00300
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00300', 2024, '89.8'
FROM facilities WHERE admin_sym = '2-29200-00300'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00216
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00216', 2024, '72.55'
FROM facilities WHERE admin_sym = '3-29200-00216'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00002', 2024, '86.75'
FROM facilities WHERE admin_sym = '2-29200-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00368
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00368', 2024, '80.8'
FROM facilities WHERE admin_sym = '3-29200-00368'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00372
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00372', 2024, '73.55'
FROM facilities WHERE admin_sym = '3-29200-00372'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00228
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00228', 2024, '84.25'
FROM facilities WHERE admin_sym = '3-29200-00228'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00406
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00406', 2024, '73.85'
FROM facilities WHERE admin_sym = '2-29200-00406'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00188
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00188', 2024, '72.5'
FROM facilities WHERE admin_sym = '3-29200-00188'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00186
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00186', 2024, '76.3'
FROM facilities WHERE admin_sym = '3-29200-00186'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00322
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00322', 2024, '68.86'
FROM facilities WHERE admin_sym = '2-29200-00322'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00330
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00330', 2024, '60.55'
FROM facilities WHERE admin_sym = '2-29200-00330'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00402
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00402', 2024, '59.8'
FROM facilities WHERE admin_sym = '2-29200-00402'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00022', 2024, '93.75'
FROM facilities WHERE admin_sym = '2-29200-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00356
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00356', 2024, '87'
FROM facilities WHERE admin_sym = '3-29200-00356'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00358
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00358', 2024, '86.72'
FROM facilities WHERE admin_sym = '3-29200-00358'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00368
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00368', 2024, '80.55'
FROM facilities WHERE admin_sym = '3-29200-00368'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00352
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00352', 2024, '89.35'
FROM facilities WHERE admin_sym = '3-29200-00352'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00346
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00346', 2024, '88.1'
FROM facilities WHERE admin_sym = '3-29200-00346'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00336
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00336', 2024, '82.35'
FROM facilities WHERE admin_sym = '2-29200-00336'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00379
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00379', 2024, '72.85'
FROM facilities WHERE admin_sym = '3-29200-00379'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00186
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00186', 2024, '79.55'
FROM facilities WHERE admin_sym = '3-29200-00186'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00418
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00418', 2024, '92.25'
FROM facilities WHERE admin_sym = '2-29200-00418'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00042
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00042', 2024, '92.6'
FROM facilities WHERE admin_sym = '3-29200-00042'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00384
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00384', 2024, '92.35'
FROM facilities WHERE admin_sym = '2-29200-00384'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00348
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00348', 2024, '90.6'
FROM facilities WHERE admin_sym = '2-29200-00348'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00206
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00206', 2024, '95.85'
FROM facilities WHERE admin_sym = '2-29200-00206'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00174
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00174', 2024, '94.6'
FROM facilities WHERE admin_sym = '2-29200-00174'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00022', 2024, '87.3'
FROM facilities WHERE admin_sym = '2-29200-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00228
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00228', 2024, '92.25'
FROM facilities WHERE admin_sym = '3-29200-00228'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00334
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00334', 2024, '88.35'
FROM facilities WHERE admin_sym = '2-29200-00334'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00396
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00396', 2024, '74.55'
FROM facilities WHERE admin_sym = '2-29200-00396'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00254
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00254', 2024, '79.55'
FROM facilities WHERE admin_sym = '3-29200-00254'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00360
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00360', 2024, '87.3'
FROM facilities WHERE admin_sym = '3-29200-00360'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00322
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00322', 2024, '70.35'
FROM facilities WHERE admin_sym = '2-29200-00322'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00320
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00320', 2024, '72.55'
FROM facilities WHERE admin_sym = '2-29200-00320'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00388
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00388', 2024, '64.05'
FROM facilities WHERE admin_sym = '2-29200-00388'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00374
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00374', 2024, '61.05'
FROM facilities WHERE admin_sym = '2-29200-00374'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00340
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00340', 2024, '86.05'
FROM facilities WHERE admin_sym = '3-29200-00340'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00088', 2024, '89.7'
FROM facilities WHERE admin_sym = '3-29200-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29200-00426
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29200-00426', 2024, '85.54'
FROM facilities WHERE admin_sym = '2-29200-00426'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00236
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00236', 2024, '84.83'
FROM facilities WHERE admin_sym = '3-29200-00236'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29200-00170
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29200-00170', 2024, '77.8'
FROM facilities WHERE admin_sym = '3-29200-00170'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00342
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00342', 2024, '91.8'
FROM facilities WHERE admin_sym = '2-29155-00342'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00190
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00190', 2024, '95.55'
FROM facilities WHERE admin_sym = '2-29155-00190'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00344
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00344', 2024, '92.01'
FROM facilities WHERE admin_sym = '2-29155-00344'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.01',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00320
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00320', 2024, '91.3'
FROM facilities WHERE admin_sym = '2-29155-00320'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00329
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00329', 2024, '82.8'
FROM facilities WHERE admin_sym = '2-29155-00329'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00210
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00210', 2024, '81'
FROM facilities WHERE admin_sym = '2-29155-00210'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29155-00240
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29155-00240', 2024, '87.8'
FROM facilities WHERE admin_sym = '3-29155-00240'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00146
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00146', 2024, '88.6'
FROM facilities WHERE admin_sym = '2-29155-00146'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29155-00206
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29155-00206', 2024, '84.25'
FROM facilities WHERE admin_sym = '3-29155-00206'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00158
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00158', 2024, '82.3'
FROM facilities WHERE admin_sym = '2-29155-00158'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29155-00296
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29155-00296', 2024, '87.8'
FROM facilities WHERE admin_sym = '3-29155-00296'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00336
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00336', 2024, '73.85'
FROM facilities WHERE admin_sym = '2-29155-00336'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29155-00214
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29155-00214', 2024, '76.55'
FROM facilities WHERE admin_sym = '3-29155-00214'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00334
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00334', 2024, '83.3'
FROM facilities WHERE admin_sym = '2-29155-00334'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29155-00280
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29155-00280', 2024, '77.85'
FROM facilities WHERE admin_sym = '3-29155-00280'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29155-00312
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29155-00312', 2024, '79.05'
FROM facilities WHERE admin_sym = '3-29155-00312'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00326
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00326', 2024, '79'
FROM facilities WHERE admin_sym = '2-29155-00326'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00328
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00328', 2024, '70.69'
FROM facilities WHERE admin_sym = '2-29155-00328'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00338
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00338', 2024, '75.55'
FROM facilities WHERE admin_sym = '2-29155-00338'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00048
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00048', 2024, '79.05'
FROM facilities WHERE admin_sym = '2-29155-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29155-00238
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29155-00238', 2024, '69.75'
FROM facilities WHERE admin_sym = '3-29155-00238'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00330
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00330', 2024, '66.25'
FROM facilities WHERE admin_sym = '2-29155-00330'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29155-00250
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29155-00250', 2024, '35'
FROM facilities WHERE admin_sym = '3-29155-00250'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '35',
  last_updated = CURRENT_TIMESTAMP;

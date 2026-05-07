-- Batch 212 of 226
-- Processing 100 facilities

-- admin_sym: 1-43110-00355
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00355', 2024, '90.1'
FROM facilities WHERE admin_sym = '1-43110-00355'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00240
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00240', 2024, '84.35'
FROM facilities WHERE admin_sym = '1-43110-00240'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43710-00015
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43710-00015', 2024, '98.3'
FROM facilities WHERE admin_sym = '1-43710-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00297
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00297', 2024, '92.6'
FROM facilities WHERE admin_sym = '1-43110-00297'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43710-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43710-00003', 2024, '94.35'
FROM facilities WHERE admin_sym = '1-43710-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00131
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00131', 2024, '75.64'
FROM facilities WHERE admin_sym = '1-43110-00131'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00301
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00301', 2024, '90.54'
FROM facilities WHERE admin_sym = '1-43110-00301'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00478
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00478', 2024, '76.31'
FROM facilities WHERE admin_sym = '1-43110-00478'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00577
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00577', 2024, '93.32'
FROM facilities WHERE admin_sym = '1-43110-00577'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00433
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00433', 2024, '74.26'
FROM facilities WHERE admin_sym = '1-43110-00433'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.26',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00365
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00365', 2024, '86.77'
FROM facilities WHERE admin_sym = '1-43110-00365'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00397
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00397', 2024, '73.26'
FROM facilities WHERE admin_sym = '1-43110-00397'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.26',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00634
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00634', 2024, '82.85'
FROM facilities WHERE admin_sym = '1-43110-00634'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00615
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00615', 2024, '80.46'
FROM facilities WHERE admin_sym = '1-43110-00615'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00604
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00604', 2024, '80.85'
FROM facilities WHERE admin_sym = '1-43110-00604'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43710-00090
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43710-00090', 2024, '77.6'
FROM facilities WHERE admin_sym = '1-43710-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00272
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00272', 2024, '72.35'
FROM facilities WHERE admin_sym = '1-43110-00272'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00489
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00489', 2024, '72.6'
FROM facilities WHERE admin_sym = '1-43110-00489'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00631
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00631', 2024, '87.75'
FROM facilities WHERE admin_sym = '1-43110-00631'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00029
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00029', 2024, '85.85'
FROM facilities WHERE admin_sym = '1-43110-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43710-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43710-00002', 2024, '69.6'
FROM facilities WHERE admin_sym = '1-43710-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00039
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00039', 2024, '98.1'
FROM facilities WHERE admin_sym = '1-43110-00039'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00545
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00545', 2024, '82.12'
FROM facilities WHERE admin_sym = '1-43110-00545'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00313
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00313', 2024, '77.91'
FROM facilities WHERE admin_sym = '1-43110-00313'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00563
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00563', 2024, '95.95'
FROM facilities WHERE admin_sym = '1-43110-00563'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.95',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00348
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00348', 2024, '81.96'
FROM facilities WHERE admin_sym = '1-43110-00348'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43710-00039
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43710-00039', 2024, '70.28'
FROM facilities WHERE admin_sym = '1-43710-00039'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.28',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00447
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00447', 2024, '69.73'
FROM facilities WHERE admin_sym = '1-43110-00447'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.73',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00700
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00700', 2024, '95.55'
FROM facilities WHERE admin_sym = '1-43110-00700'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43710-00089
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43710-00089', 2024, '95.35'
FROM facilities WHERE admin_sym = '1-43710-00089'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00517
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00517', 2024, '39.35'
FROM facilities WHERE admin_sym = '1-43110-00517'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '39.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00161
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00161', 2024, '86.76'
FROM facilities WHERE admin_sym = '1-43110-00161'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.76',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00431
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00431', 2024, '69.53'
FROM facilities WHERE admin_sym = '1-43110-00431'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.53',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00466
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00466', 2024, '91.55'
FROM facilities WHERE admin_sym = '1-43110-00466'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00670
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00670', 2024, '72.85'
FROM facilities WHERE admin_sym = '1-43110-00670'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00032
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00032', 2024, '91.1'
FROM facilities WHERE admin_sym = '1-43110-00032'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00059
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00059', 2024, '85.1'
FROM facilities WHERE admin_sym = '1-43110-00059'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00589
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00589', 2024, '69.85'
FROM facilities WHERE admin_sym = '1-43110-00589'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00468
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00468', 2024, '82.85'
FROM facilities WHERE admin_sym = '1-43110-00468'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00242
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00242', 2024, '98.55'
FROM facilities WHERE admin_sym = '1-43110-00242'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00061
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00061', 2024, '97.6'
FROM facilities WHERE admin_sym = '1-43110-00061'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00446
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00446', 2024, '92.85'
FROM facilities WHERE admin_sym = '1-43110-00446'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00170
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00170', 2024, '95.35'
FROM facilities WHERE admin_sym = '1-43110-00170'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00021
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00021', 2024, '90.18'
FROM facilities WHERE admin_sym = '1-43110-00021'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00340
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00340', 2024, '91.59'
FROM facilities WHERE admin_sym = '1-43110-00340'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.59',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00480
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00480', 2024, '95.26'
FROM facilities WHERE admin_sym = '1-43110-00480'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.26',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00267
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00267', 2024, '78.14'
FROM facilities WHERE admin_sym = '1-43110-00267'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43110-00338
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43110-00338', 2024, '80.48'
FROM facilities WHERE admin_sym = '1-43110-00338'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00101
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00101', 2024, '80.8'
FROM facilities WHERE admin_sym = '1-43130-00101'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00202
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00202', 2024, '93.1'
FROM facilities WHERE admin_sym = '1-43130-00202'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00111
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00111', 2024, '85.35'
FROM facilities WHERE admin_sym = '1-43130-00111'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00200
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00200', 2024, '85.1'
FROM facilities WHERE admin_sym = '1-43130-00200'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00161
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00161', 2024, '88.1'
FROM facilities WHERE admin_sym = '1-43130-00161'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00181
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00181', 2024, '79.35'
FROM facilities WHERE admin_sym = '1-43130-00181'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00046
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00046', 2024, '90.52'
FROM facilities WHERE admin_sym = '1-43130-00046'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00186
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00186', 2024, '68.47'
FROM facilities WHERE admin_sym = '1-43130-00186'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00001', 2024, '78.35'
FROM facilities WHERE admin_sym = '1-43130-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00110
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00110', 2024, '94.35'
FROM facilities WHERE admin_sym = '1-43130-00110'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00103
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00103', 2024, '96.35'
FROM facilities WHERE admin_sym = '1-43130-00103'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00126
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00126', 2024, '79.72'
FROM facilities WHERE admin_sym = '1-43130-00126'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00166
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00166', 2024, '79.92'
FROM facilities WHERE admin_sym = '1-43130-00166'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.92',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00147
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00147', 2024, '94.25'
FROM facilities WHERE admin_sym = '1-43130-00147'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00145
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00145', 2024, '82.63'
FROM facilities WHERE admin_sym = '1-43130-00145'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00162
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00162', 2024, '60.63'
FROM facilities WHERE admin_sym = '1-43130-00162'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00002', 2024, '69.06'
FROM facilities WHERE admin_sym = '1-43130-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00195
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00195', 2024, '82.9'
FROM facilities WHERE admin_sym = '1-43130-00195'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.9',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00215
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00215', 2024, '83.08'
FROM facilities WHERE admin_sym = '1-43130-00215'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00132
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00132', 2024, '75.31'
FROM facilities WHERE admin_sym = '1-43130-00132'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00226
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00226', 2024, '73.15'
FROM facilities WHERE admin_sym = '1-43130-00226'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.15',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00113
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00113', 2024, '85.62'
FROM facilities WHERE admin_sym = '1-43130-00113'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.62',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00005', 2024, '90.4'
FROM facilities WHERE admin_sym = '1-43130-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.4',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00180
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00180', 2024, '68.19'
FROM facilities WHERE admin_sym = '1-43130-00180'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.19',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00183
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00183', 2024, '66.72'
FROM facilities WHERE admin_sym = '1-43130-00183'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00223
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00223', 2024, '73.03'
FROM facilities WHERE admin_sym = '1-43130-00223'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.03',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00205
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00205', 2024, '54.88'
FROM facilities WHERE admin_sym = '1-43130-00205'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00117
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00117', 2024, '91.81'
FROM facilities WHERE admin_sym = '1-43130-00117'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00167
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00167', 2024, '90.52'
FROM facilities WHERE admin_sym = '1-43130-00167'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00232
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00232', 2024, '91.67'
FROM facilities WHERE admin_sym = '1-43130-00232'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00007', 2024, '92.02'
FROM facilities WHERE admin_sym = '1-43130-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00054
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00054', 2024, '83.12'
FROM facilities WHERE admin_sym = '1-43130-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00003', 2024, '71.58'
FROM facilities WHERE admin_sym = '1-43130-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00119
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00119', 2024, '70.54'
FROM facilities WHERE admin_sym = '1-43130-00119'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00076
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00076', 2024, '70.3'
FROM facilities WHERE admin_sym = '1-43130-00076'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00184
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00184', 2024, '70.84'
FROM facilities WHERE admin_sym = '1-43130-00184'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.84',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00176
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00176', 2024, '69.76'
FROM facilities WHERE admin_sym = '1-43130-00176'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.76',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00179
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00179', 2024, '72.01'
FROM facilities WHERE admin_sym = '1-43130-00179'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.01',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00221
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00221', 2024, '86.48'
FROM facilities WHERE admin_sym = '1-43130-00221'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00112
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00112', 2024, '71.74'
FROM facilities WHERE admin_sym = '1-43130-00112'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43130-00227
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43130-00227', 2024, '64.05'
FROM facilities WHERE admin_sym = '1-43130-00227'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44250-00055
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44250-00055', 2024, '89.1'
FROM facilities WHERE admin_sym = '1-44250-00055'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44250-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44250-00022', 2024, '97.85'
FROM facilities WHERE admin_sym = '1-44250-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44250-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44250-00010', 2024, '74.62'
FROM facilities WHERE admin_sym = '1-44250-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.62',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44250-00035
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44250-00035', 2024, '92.69'
FROM facilities WHERE admin_sym = '1-44250-00035'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44250-00059
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44250-00059', 2024, '62.97'
FROM facilities WHERE admin_sym = '1-44250-00059'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44250-00032
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44250-00032', 2024, '97.93'
FROM facilities WHERE admin_sym = '1-44250-00032'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44150-00034
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44150-00034', 2024, '55.75'
FROM facilities WHERE admin_sym = '1-44150-00034'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44150-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44150-00012', 2024, '89.6'
FROM facilities WHERE admin_sym = '1-44150-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44150-00162
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44150-00162', 2024, '94.35'
FROM facilities WHERE admin_sym = '1-44150-00162'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44150-00156
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44150-00156', 2024, '81.28'
FROM facilities WHERE admin_sym = '1-44150-00156'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.28',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44150-00129
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44150-00129', 2024, '82.35'
FROM facilities WHERE admin_sym = '1-44150-00129'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

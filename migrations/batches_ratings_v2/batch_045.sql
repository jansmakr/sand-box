-- Batch 45 of 226
-- Processing 100 facilities

-- admin_sym: 3-29155-00269
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29155-00269', 2024, '80.85'
FROM facilities WHERE admin_sym = '3-29155-00269'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00115
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00115', 2024, '91.05'
FROM facilities WHERE admin_sym = '2-29155-00115'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00371
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00371', 2024, '83.85'
FROM facilities WHERE admin_sym = '2-29155-00371'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00353
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00353', 2024, '73'
FROM facilities WHERE admin_sym = '2-29155-00353'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00135
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00135', 2024, '97.05'
FROM facilities WHERE admin_sym = '2-29155-00135'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00261
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00261', 2024, '95.1'
FROM facilities WHERE admin_sym = '2-29155-00261'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29155-00257
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29155-00257', 2024, '80.3'
FROM facilities WHERE admin_sym = '3-29155-00257'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00005', 2024, '93.3'
FROM facilities WHERE admin_sym = '2-29155-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00001', 2024, '95.8'
FROM facilities WHERE admin_sym = '2-29155-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00333
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00333', 2024, '93.6'
FROM facilities WHERE admin_sym = '2-29155-00333'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00367
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00367', 2024, '82.83'
FROM facilities WHERE admin_sym = '2-29155-00367'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29155-00049
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29155-00049', 2024, '87.5'
FROM facilities WHERE admin_sym = '3-29155-00049'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00361
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00361', 2024, '92.13'
FROM facilities WHERE admin_sym = '2-29155-00361'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-29155-00337
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-29155-00337', 2024, '77.33'
FROM facilities WHERE admin_sym = '2-29155-00337'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-29155-00271
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-29155-00271', 2024, '81.1'
FROM facilities WHERE admin_sym = '3-29155-00271'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00571
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00571', 2024, '86.1'
FROM facilities WHERE admin_sym = '3-45110-00571'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00693
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00693', 2024, '95.85'
FROM facilities WHERE admin_sym = '2-45110-00693'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00685
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00685', 2024, '86.04'
FROM facilities WHERE admin_sym = '2-45110-00685'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00547
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00547', 2024, '80.04'
FROM facilities WHERE admin_sym = '3-45110-00547'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00601
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00601', 2024, '72.25'
FROM facilities WHERE admin_sym = '3-45110-00601'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00125', 2024, '48.8'
FROM facilities WHERE admin_sym = '3-45110-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '48.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00427
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00427', 2024, '90.38'
FROM facilities WHERE admin_sym = '3-45110-00427'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00573
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00573', 2024, '93.35'
FROM facilities WHERE admin_sym = '3-45110-00573'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00479
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00479', 2024, '67.97'
FROM facilities WHERE admin_sym = '3-45110-00479'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00673
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00673', 2024, '71.1'
FROM facilities WHERE admin_sym = '2-45110-00673'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00153
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00153', 2024, '89.6'
FROM facilities WHERE admin_sym = '3-45110-00153'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00705
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00705', 2024, '75.94'
FROM facilities WHERE admin_sym = '2-45110-00705'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00297
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00297', 2024, '85.05'
FROM facilities WHERE admin_sym = '3-45110-00297'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00467
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00467', 2024, '72'
FROM facilities WHERE admin_sym = '3-45110-00467'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00367
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00367', 2024, '90.1'
FROM facilities WHERE admin_sym = '2-45110-00367'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00603
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00603', 2024, '92.1'
FROM facilities WHERE admin_sym = '3-45110-00603'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00103
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00103', 2024, '69.47'
FROM facilities WHERE admin_sym = '3-45110-00103'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00657
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00657', 2024, '84.1'
FROM facilities WHERE admin_sym = '2-45110-00657'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00675
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00675', 2024, '87.25'
FROM facilities WHERE admin_sym = '2-45110-00675'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00587
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00587', 2024, '70.11'
FROM facilities WHERE admin_sym = '3-45110-00587'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.11',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00551
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00551', 2024, '72.55'
FROM facilities WHERE admin_sym = '2-45110-00551'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00621
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00621', 2024, '87.85'
FROM facilities WHERE admin_sym = '3-45110-00621'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00081
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00081', 2024, '76.05'
FROM facilities WHERE admin_sym = '3-45110-00081'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00231
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00231', 2024, '78.02'
FROM facilities WHERE admin_sym = '3-45110-00231'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00453
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00453', 2024, '89.35'
FROM facilities WHERE admin_sym = '3-45110-00453'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00085
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00085', 2024, '89.85'
FROM facilities WHERE admin_sym = '3-45110-00085'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00733
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00733', 2024, '84.91'
FROM facilities WHERE admin_sym = '2-45110-00733'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00679
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00679', 2024, '79.55'
FROM facilities WHERE admin_sym = '2-45110-00679'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00735
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00735', 2024, '85.32'
FROM facilities WHERE admin_sym = '2-45110-00735'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00607
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00607', 2024, '77.85'
FROM facilities WHERE admin_sym = '3-45110-00607'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00639
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00639', 2024, '83.1'
FROM facilities WHERE admin_sym = '3-45110-00639'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00461
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00461', 2024, '70.89'
FROM facilities WHERE admin_sym = '3-45110-00461'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00267
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00267', 2024, '67.75'
FROM facilities WHERE admin_sym = '3-45110-00267'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00403
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00403', 2024, '72.97'
FROM facilities WHERE admin_sym = '3-45110-00403'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00583
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00583', 2024, '88.85'
FROM facilities WHERE admin_sym = '3-45110-00583'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00387
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00387', 2024, '57.31'
FROM facilities WHERE admin_sym = '3-45110-00387'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00399
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00399', 2024, '92.6'
FROM facilities WHERE admin_sym = '3-45110-00399'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00407
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00407', 2024, '98.55'
FROM facilities WHERE admin_sym = '3-45110-00407'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00545
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00545', 2024, '93.8'
FROM facilities WHERE admin_sym = '3-45110-00545'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00613
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00613', 2024, '84.35'
FROM facilities WHERE admin_sym = '3-45110-00613'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00627
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00627', 2024, '76.85'
FROM facilities WHERE admin_sym = '2-45110-00627'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00623
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00623', 2024, '95.05'
FROM facilities WHERE admin_sym = '3-45110-00623'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00725
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00725', 2024, '76.44'
FROM facilities WHERE admin_sym = '2-45110-00725'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00499
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00499', 2024, '92.1'
FROM facilities WHERE admin_sym = '3-45110-00499'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00683
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00683', 2024, '87.43'
FROM facilities WHERE admin_sym = '2-45110-00683'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00723
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00723', 2024, '86.02'
FROM facilities WHERE admin_sym = '2-45110-00723'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00127
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00127', 2024, '95.75'
FROM facilities WHERE admin_sym = '3-45110-00127'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00471
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00471', 2024, '80.55'
FROM facilities WHERE admin_sym = '3-45110-00471'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00571
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00571', 2024, '89.1'
FROM facilities WHERE admin_sym = '3-45110-00571'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00125', 2024, '60.55'
FROM facilities WHERE admin_sym = '3-45110-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00479
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00479', 2024, '65.72'
FROM facilities WHERE admin_sym = '3-45110-00479'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00153
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00153', 2024, '81.85'
FROM facilities WHERE admin_sym = '3-45110-00153'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00297
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00297', 2024, '84.8'
FROM facilities WHERE admin_sym = '3-45110-00297'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00367
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00367', 2024, '89.35'
FROM facilities WHERE admin_sym = '2-45110-00367'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00603
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00603', 2024, '93.68'
FROM facilities WHERE admin_sym = '3-45110-00603'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00103
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00103', 2024, '70.11'
FROM facilities WHERE admin_sym = '3-45110-00103'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.11',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00657
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00657', 2024, '84.85'
FROM facilities WHERE admin_sym = '2-45110-00657'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00735
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00735', 2024, '89.21'
FROM facilities WHERE admin_sym = '2-45110-00735'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00639
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00639', 2024, '79.8'
FROM facilities WHERE admin_sym = '3-45110-00639'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00583
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00583', 2024, '90.35'
FROM facilities WHERE admin_sym = '3-45110-00583'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00407
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00407', 2024, '96.85'
FROM facilities WHERE admin_sym = '3-45110-00407'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00281
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00281', 2024, '82.05'
FROM facilities WHERE admin_sym = '3-45110-00281'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00623
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00623', 2024, '89.35'
FROM facilities WHERE admin_sym = '3-45110-00623'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00725
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00725', 2024, '75.47'
FROM facilities WHERE admin_sym = '2-45110-00725'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.47',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00499
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00499', 2024, '92.85'
FROM facilities WHERE admin_sym = '3-45110-00499'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00723
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00723', 2024, '89.07'
FROM facilities WHERE admin_sym = '2-45110-00723'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.07',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00471
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00471', 2024, '84.05'
FROM facilities WHERE admin_sym = '3-45110-00471'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00415
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00415', 2024, '84.6'
FROM facilities WHERE admin_sym = '3-45110-00415'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00683
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00683', 2024, '90.6'
FROM facilities WHERE admin_sym = '2-45110-00683'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00703
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00703', 2024, '84.85'
FROM facilities WHERE admin_sym = '2-45110-00703'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00555
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00555', 2024, '91.35'
FROM facilities WHERE admin_sym = '2-45110-00555'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00605
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00605', 2024, '82.35'
FROM facilities WHERE admin_sym = '3-45110-00605'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00441
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00441', 2024, '84.6'
FROM facilities WHERE admin_sym = '3-45110-00441'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00507
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00507', 2024, '88.35'
FROM facilities WHERE admin_sym = '3-45110-00507'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00367
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00367', 2024, '87.8'
FROM facilities WHERE admin_sym = '2-45110-00367'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00587
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00587', 2024, '75.6'
FROM facilities WHERE admin_sym = '3-45110-00587'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00551
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00551', 2024, '85.05'
FROM facilities WHERE admin_sym = '2-45110-00551'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00399
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00399', 2024, '92.85'
FROM facilities WHERE admin_sym = '3-45110-00399'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00525
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00525', 2024, '89.55'
FROM facilities WHERE admin_sym = '3-45110-00525'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00377
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00377', 2024, '82.85'
FROM facilities WHERE admin_sym = '2-45110-00377'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00549
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00549', 2024, '52.6'
FROM facilities WHERE admin_sym = '3-45110-00549'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '52.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-45110-00083
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-45110-00083', 2024, '86.8'
FROM facilities WHERE admin_sym = '2-45110-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00127
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00127', 2024, '94.55'
FROM facilities WHERE admin_sym = '3-45110-00127'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00087
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00087', 2024, '51'
FROM facilities WHERE admin_sym = '3-45110-00087'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '51',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-45110-00447
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-45110-00447', 2024, '86'
FROM facilities WHERE admin_sym = '3-45110-00447'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86',
  last_updated = CURRENT_TIMESTAMP;

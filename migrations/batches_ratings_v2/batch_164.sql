-- Batch 164 of 226
-- Processing 100 facilities

-- admin_sym: 2-46110-00282
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46110-00282', 2024, '71.72'
FROM facilities WHERE admin_sym = '2-46110-00282'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46110-00280
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46110-00280', 2024, '77.25'
FROM facilities WHERE admin_sym = '2-46110-00280'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46110-00224
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46110-00224', 2024, '65.05'
FROM facilities WHERE admin_sym = '3-46110-00224'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46110-00286
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46110-00286', 2024, '68.5'
FROM facilities WHERE admin_sym = '2-46110-00286'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46110-00026
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46110-00026', 2024, '82.5'
FROM facilities WHERE admin_sym = '3-46110-00026'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46110-00132
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46110-00132', 2024, '67.8'
FROM facilities WHERE admin_sym = '3-46110-00132'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46110-00278
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46110-00278', 2024, '69.3'
FROM facilities WHERE admin_sym = '2-46110-00278'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46110-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46110-00012', 2024, '75.25'
FROM facilities WHERE admin_sym = '2-46110-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46110-00232
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46110-00232', 2024, '51.05'
FROM facilities WHERE admin_sym = '2-46110-00232'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '51.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46110-00238
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46110-00238', 2024, '93.6'
FROM facilities WHERE admin_sym = '3-46110-00238'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46110-00278
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46110-00278', 2024, '73.1'
FROM facilities WHERE admin_sym = '2-46110-00278'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46110-00266
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46110-00266', 2024, '78.05'
FROM facilities WHERE admin_sym = '2-46110-00266'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46110-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46110-00012', 2024, '80.5'
FROM facilities WHERE admin_sym = '2-46110-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46110-00260
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46110-00260', 2024, '88.05'
FROM facilities WHERE admin_sym = '2-46110-00260'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46110-00026
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46110-00026', 2024, '87.55'
FROM facilities WHERE admin_sym = '3-46110-00026'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46110-00273
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46110-00273', 2024, '86.05'
FROM facilities WHERE admin_sym = '2-46110-00273'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46110-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46110-00018', 2024, '79.35'
FROM facilities WHERE admin_sym = '2-46110-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46110-00262
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46110-00262', 2024, '85'
FROM facilities WHERE admin_sym = '2-46110-00262'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46110-00012
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46110-00012', 2024, '75.75'
FROM facilities WHERE admin_sym = '2-46110-00012'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46110-00258
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46110-00258', 2024, '89.05'
FROM facilities WHERE admin_sym = '2-46110-00258'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46110-00212
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46110-00212', 2024, '64.55'
FROM facilities WHERE admin_sym = '3-46110-00212'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46110-00092
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46110-00092', 2024, '87'
FROM facilities WHERE admin_sym = '3-46110-00092'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46110-00156
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46110-00156', 2024, '82.68'
FROM facilities WHERE admin_sym = '3-46110-00156'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46840-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46840-00010', 2024, '96.05'
FROM facilities WHERE admin_sym = '2-46840-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46840-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46840-00002', 2024, '89.05'
FROM facilities WHERE admin_sym = '2-46840-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46840-00106
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46840-00106', 2024, '88.1'
FROM facilities WHERE admin_sym = '3-46840-00106'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46840-00104
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46840-00104', 2024, '74.25'
FROM facilities WHERE admin_sym = '3-46840-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46840-00112
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46840-00112', 2024, '74.25'
FROM facilities WHERE admin_sym = '2-46840-00112'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46840-00102
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46840-00102', 2024, '75.3'
FROM facilities WHERE admin_sym = '3-46840-00102'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46840-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46840-00010', 2024, '94.55'
FROM facilities WHERE admin_sym = '2-46840-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46840-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46840-00088', 2024, '82.05'
FROM facilities WHERE admin_sym = '3-46840-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46840-00114
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46840-00114', 2024, '39.79'
FROM facilities WHERE admin_sym = '2-46840-00114'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '39.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46840-00048
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46840-00048', 2024, '73.83'
FROM facilities WHERE admin_sym = '3-46840-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46840-00096
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46840-00096', 2024, '55.33'
FROM facilities WHERE admin_sym = '3-46840-00096'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.33',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46780-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46780-00008', 2024, '95.35'
FROM facilities WHERE admin_sym = '2-46780-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46780-00020
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46780-00020', 2024, '88.8'
FROM facilities WHERE admin_sym = '2-46780-00020'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46780-00072
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46780-00072', 2024, '80.65'
FROM facilities WHERE admin_sym = '2-46780-00072'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.65',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46780-00048
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46780-00048', 2024, '77.05'
FROM facilities WHERE admin_sym = '3-46780-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46780-00066
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46780-00066', 2024, '63.5'
FROM facilities WHERE admin_sym = '2-46780-00066'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46780-00068
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46780-00068', 2024, '68.1'
FROM facilities WHERE admin_sym = '2-46780-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46780-00064
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46780-00064', 2024, '54.3'
FROM facilities WHERE admin_sym = '3-46780-00064'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46780-00038
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46780-00038', 2024, '84.8'
FROM facilities WHERE admin_sym = '3-46780-00038'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46780-00056
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46780-00056', 2024, '48.3'
FROM facilities WHERE admin_sym = '3-46780-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '48.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46780-00020
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46780-00020', 2024, '91'
FROM facilities WHERE admin_sym = '2-46780-00020'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46780-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46780-00008', 2024, '90.35'
FROM facilities WHERE admin_sym = '2-46780-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46780-00038
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46780-00038', 2024, '85.8'
FROM facilities WHERE admin_sym = '3-46780-00038'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46780-00058
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46780-00058', 2024, '87.8'
FROM facilities WHERE admin_sym = '2-46780-00058'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46780-00070
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46780-00070', 2024, '63.36'
FROM facilities WHERE admin_sym = '2-46780-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.36',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46780-00038
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46780-00038', 2024, '83.05'
FROM facilities WHERE admin_sym = '3-46780-00038'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46780-00060
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46780-00060', 2024, '69.96'
FROM facilities WHERE admin_sym = '3-46780-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.96',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46780-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46780-00018', 2024, '67.08'
FROM facilities WHERE admin_sym = '3-46780-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00124', 2024, '94.55'
FROM facilities WHERE admin_sym = '3-46150-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00108
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00108', 2024, '93.3'
FROM facilities WHERE admin_sym = '3-46150-00108'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00298
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00298', 2024, '91.85'
FROM facilities WHERE admin_sym = '3-46150-00298'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00250
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00250', 2024, '97.05'
FROM facilities WHERE admin_sym = '3-46150-00250'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46150-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46150-00008', 2024, '94'
FROM facilities WHERE admin_sym = '2-46150-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46150-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46150-00010', 2024, '90.35'
FROM facilities WHERE admin_sym = '2-46150-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00310
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00310', 2024, '98.55'
FROM facilities WHERE admin_sym = '3-46150-00310'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00306
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00306', 2024, '91.05'
FROM facilities WHERE admin_sym = '3-46150-00306'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00120
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00120', 2024, '92.55'
FROM facilities WHERE admin_sym = '3-46150-00120'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00290
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00290', 2024, '83.8'
FROM facilities WHERE admin_sym = '3-46150-00290'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00316
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00316', 2024, '80.2'
FROM facilities WHERE admin_sym = '3-46150-00316'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.2',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00236
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00236', 2024, '86.05'
FROM facilities WHERE admin_sym = '3-46150-00236'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00162
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00162', 2024, '86'
FROM facilities WHERE admin_sym = '3-46150-00162'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00244
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00244', 2024, '89.35'
FROM facilities WHERE admin_sym = '3-46150-00244'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46150-00060
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46150-00060', 2024, '81.3'
FROM facilities WHERE admin_sym = '2-46150-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00328
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00328', 2024, '84.3'
FROM facilities WHERE admin_sym = '3-46150-00328'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00168
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00168', 2024, '87.3'
FROM facilities WHERE admin_sym = '3-46150-00168'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00214
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00214', 2024, '86.8'
FROM facilities WHERE admin_sym = '3-46150-00214'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00302
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00302', 2024, '78.8'
FROM facilities WHERE admin_sym = '3-46150-00302'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00326
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00326', 2024, '75'
FROM facilities WHERE admin_sym = '3-46150-00326'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00104
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00104', 2024, '71.55'
FROM facilities WHERE admin_sym = '3-46150-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46150-00350
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46150-00350', 2024, '75.64'
FROM facilities WHERE admin_sym = '2-46150-00350'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00070
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00070', 2024, '80.8'
FROM facilities WHERE admin_sym = '3-46150-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46150-00348
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46150-00348', 2024, '73.8'
FROM facilities WHERE admin_sym = '2-46150-00348'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00288
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00288', 2024, '79.8'
FROM facilities WHERE admin_sym = '3-46150-00288'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00332
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00332', 2024, '76.5'
FROM facilities WHERE admin_sym = '3-46150-00332'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00062
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00062', 2024, '79.25'
FROM facilities WHERE admin_sym = '3-46150-00062'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46150-00366
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46150-00366', 2024, '68.3'
FROM facilities WHERE admin_sym = '2-46150-00366'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46150-00364
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46150-00364', 2024, '69.49'
FROM facilities WHERE admin_sym = '2-46150-00364'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00106
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00106', 2024, '67.3'
FROM facilities WHERE admin_sym = '3-46150-00106'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46150-00362
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46150-00362', 2024, '66.49'
FROM facilities WHERE admin_sym = '2-46150-00362'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00148
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00148', 2024, '65.25'
FROM facilities WHERE admin_sym = '3-46150-00148'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00268
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00268', 2024, '69.3'
FROM facilities WHERE admin_sym = '3-46150-00268'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00308
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00308', 2024, '44'
FROM facilities WHERE admin_sym = '3-46150-00308'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00108
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00108', 2024, '92.3'
FROM facilities WHERE admin_sym = '3-46150-00108'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00250
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00250', 2024, '94.8'
FROM facilities WHERE admin_sym = '3-46150-00250'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46150-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46150-00008', 2024, '94.5'
FROM facilities WHERE admin_sym = '2-46150-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00214
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00214', 2024, '90.6'
FROM facilities WHERE admin_sym = '3-46150-00214'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00120
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00120', 2024, '94.55'
FROM facilities WHERE admin_sym = '3-46150-00120'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00236
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00236', 2024, '81.1'
FROM facilities WHERE admin_sym = '3-46150-00236'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00288
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00288', 2024, '83.3'
FROM facilities WHERE admin_sym = '3-46150-00288'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00326
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00326', 2024, '70'
FROM facilities WHERE admin_sym = '3-46150-00326'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00070
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00070', 2024, '75.8'
FROM facilities WHERE admin_sym = '3-46150-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00061
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00061', 2024, '70.05'
FROM facilities WHERE admin_sym = '3-46150-00061'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00332
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00332', 2024, '75'
FROM facilities WHERE admin_sym = '3-46150-00332'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00062
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00062', 2024, '70.8'
FROM facilities WHERE admin_sym = '3-46150-00062'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 3-46150-00250
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '3-46150-00250', 2024, '94.05'
FROM facilities WHERE admin_sym = '3-46150-00250'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46150-00346
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46150-00346', 2024, '92.1'
FROM facilities WHERE admin_sym = '2-46150-00346'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 2-46150-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '2-46150-00008', 2024, '90.3'
FROM facilities WHERE admin_sym = '2-46150-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.3',
  last_updated = CURRENT_TIMESTAMP;

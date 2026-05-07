-- Batch 210 of 226
-- Processing 100 facilities

-- admin_sym: 1-42760-00065
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42760-00065', 2024, '81.39'
FROM facilities WHERE admin_sym = '1-42760-00065'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.39',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42720-00041
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42720-00041', 2024, '91.25'
FROM facilities WHERE admin_sym = '1-42720-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42720-00075
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42720-00075', 2024, '80.05'
FROM facilities WHERE admin_sym = '1-42720-00075'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42720-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42720-00006', 2024, '80.35'
FROM facilities WHERE admin_sym = '1-42720-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42720-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42720-00044', 2024, '95.1'
FROM facilities WHERE admin_sym = '1-42720-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42720-00038
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42720-00038', 2024, '57.43'
FROM facilities WHERE admin_sym = '1-42720-00038'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42720-00061
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42720-00061', 2024, '61.24'
FROM facilities WHERE admin_sym = '1-42720-00061'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42720-00069
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42720-00069', 2024, '81.6'
FROM facilities WHERE admin_sym = '1-42720-00069'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42720-00057
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42720-00057', 2024, '71.37'
FROM facilities WHERE admin_sym = '1-42720-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.37',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42720-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42720-00010', 2024, '88.46'
FROM facilities WHERE admin_sym = '1-42720-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42720-00033
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42720-00033', 2024, '72.08'
FROM facilities WHERE admin_sym = '1-42720-00033'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42720-00076
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42720-00076', 2024, '51.13'
FROM facilities WHERE admin_sym = '1-42720-00076'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '51.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42720-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42720-00023', 2024, '59.14'
FROM facilities WHERE admin_sym = '1-42720-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42720-00015
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42720-00015', 2024, '83.26'
FROM facilities WHERE admin_sym = '1-42720-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.26',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42720-00066
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42720-00066', 2024, '79.9'
FROM facilities WHERE admin_sym = '1-42720-00066'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.9',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42720-00024
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42720-00024', 2024, '79.94'
FROM facilities WHERE admin_sym = '1-42720-00024'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42720-00050
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42720-00050', 2024, '86.04'
FROM facilities WHERE admin_sym = '1-42720-00050'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42720-00051
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42720-00051', 2024, '92.7'
FROM facilities WHERE admin_sym = '1-42720-00051'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.7',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42720-00053
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42720-00053', 2024, '97.25'
FROM facilities WHERE admin_sym = '1-42720-00053'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42790-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42790-00002', 2024, '84.6'
FROM facilities WHERE admin_sym = '1-42790-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42790-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42790-00001', 2024, '74.71'
FROM facilities WHERE admin_sym = '1-42790-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42790-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42790-00022', 2024, '86.27'
FROM facilities WHERE admin_sym = '1-42790-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42790-00017
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42790-00017', 2024, '81.8'
FROM facilities WHERE admin_sym = '1-42790-00017'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42790-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42790-00023', 2024, '64.12'
FROM facilities WHERE admin_sym = '1-42790-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42790-00018
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42790-00018', 2024, '69.32'
FROM facilities WHERE admin_sym = '1-42790-00018'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42730-00070
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42730-00070', 2024, '78.17'
FROM facilities WHERE admin_sym = '1-42730-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42730-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42730-00003', 2024, '85.6'
FROM facilities WHERE admin_sym = '1-42730-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42730-00043
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42730-00043', 2024, '64.37'
FROM facilities WHERE admin_sym = '1-42730-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.37',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42730-00029
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42730-00029', 2024, '63.68'
FROM facilities WHERE admin_sym = '1-42730-00029'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42730-00016
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42730-00016', 2024, '56.41'
FROM facilities WHERE admin_sym = '1-42730-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42730-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42730-00004', 2024, '78.24'
FROM facilities WHERE admin_sym = '1-42730-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42730-00019
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42730-00019', 2024, '52.59'
FROM facilities WHERE admin_sym = '1-42730-00019'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '52.59',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42730-00066
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42730-00066', 2024, '65.99'
FROM facilities WHERE admin_sym = '1-42730-00066'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42730-00051
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42730-00051', 2024, '48.83'
FROM facilities WHERE admin_sym = '1-42730-00051'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '48.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42730-00024
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42730-00024', 2024, '87.72'
FROM facilities WHERE admin_sym = '1-42730-00024'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42730-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42730-00006', 2024, '69.44'
FROM facilities WHERE admin_sym = '1-42730-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42730-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42730-00044', 2024, '65.1'
FROM facilities WHERE admin_sym = '1-42730-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42730-00056
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42730-00056', 2024, '44.35'
FROM facilities WHERE admin_sym = '1-42730-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '44.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42730-00048
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42730-00048', 2024, '67.08'
FROM facilities WHERE admin_sym = '1-42730-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.08',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-42730-00074
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-42730-00074', 2024, '84.75'
FROM facilities WHERE admin_sym = '1-42730-00074'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43760-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43760-00006', 2024, '87.67'
FROM facilities WHERE admin_sym = '1-43760-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43760-00044
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43760-00044', 2024, '93.1'
FROM facilities WHERE admin_sym = '1-43760-00044'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43760-00013
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43760-00013', 2024, '83.99'
FROM facilities WHERE admin_sym = '1-43760-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43760-00062
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43760-00062', 2024, '65.27'
FROM facilities WHERE admin_sym = '1-43760-00062'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43760-00045
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43760-00045', 2024, '81.57'
FROM facilities WHERE admin_sym = '1-43760-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.57',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43760-00065
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43760-00065', 2024, '94.35'
FROM facilities WHERE admin_sym = '1-43760-00065'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43760-00061
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43760-00061', 2024, '73.62'
FROM facilities WHERE admin_sym = '1-43760-00061'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.62',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43760-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43760-00009', 2024, '72.2'
FROM facilities WHERE admin_sym = '1-43760-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.2',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43760-00046
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43760-00046', 2024, '77.41'
FROM facilities WHERE admin_sym = '1-43760-00046'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.41',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43760-00084
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43760-00084', 2024, '58.13'
FROM facilities WHERE admin_sym = '1-43760-00084'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.13',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43760-00064
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43760-00064', 2024, '76.17'
FROM facilities WHERE admin_sym = '1-43760-00064'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43800-00025
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43800-00025', 2024, '97.55'
FROM facilities WHERE admin_sym = '1-43800-00025'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43800-00015
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43800-00015', 2024, '90.45'
FROM facilities WHERE admin_sym = '1-43800-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.45',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43800-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43800-00003', 2024, '98.27'
FROM facilities WHERE admin_sym = '1-43800-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43800-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43800-00040', 2024, '56.84'
FROM facilities WHERE admin_sym = '1-43800-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.84',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43800-00039
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43800-00039', 2024, '87.56'
FROM facilities WHERE admin_sym = '1-43800-00039'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.56',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43800-00020
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43800-00020', 2024, '60.04'
FROM facilities WHERE admin_sym = '1-43800-00020'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43800-00013
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43800-00013', 2024, '71.67'
FROM facilities WHERE admin_sym = '1-43800-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43800-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43800-00008', 2024, '55.5'
FROM facilities WHERE admin_sym = '1-43800-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43720-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43720-00004', 2024, '89.6'
FROM facilities WHERE admin_sym = '1-43720-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43720-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43720-00006', 2024, '89.85'
FROM facilities WHERE admin_sym = '1-43720-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43720-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43720-00001', 2024, '91.85'
FROM facilities WHERE admin_sym = '1-43720-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43720-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43720-00007', 2024, '62.98'
FROM facilities WHERE admin_sym = '1-43720-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '62.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43720-00025
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43720-00025', 2024, '78.59'
FROM facilities WHERE admin_sym = '1-43720-00025'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.59',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43740-00082
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43740-00082', 2024, '83.85'
FROM facilities WHERE admin_sym = '1-43740-00082'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43740-00042
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43740-00042', 2024, '93.1'
FROM facilities WHERE admin_sym = '1-43740-00042'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43740-00075
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43740-00075', 2024, '74.1'
FROM facilities WHERE admin_sym = '1-43740-00075'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43740-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43740-00002', 2024, '37.93'
FROM facilities WHERE admin_sym = '1-43740-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '37.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43740-00098
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43740-00098', 2024, '76.48'
FROM facilities WHERE admin_sym = '1-43740-00098'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43740-00076
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43740-00076', 2024, '74.25'
FROM facilities WHERE admin_sym = '1-43740-00076'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43740-00099
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43740-00099', 2024, '84.94'
FROM facilities WHERE admin_sym = '1-43740-00099'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.94',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43740-00059
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43740-00059', 2024, '73.32'
FROM facilities WHERE admin_sym = '1-43740-00059'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.32',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43740-00047
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43740-00047', 2024, '85.58'
FROM facilities WHERE admin_sym = '1-43740-00047'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43740-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43740-00088', 2024, '92.36'
FROM facilities WHERE admin_sym = '1-43740-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.36',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43740-00110
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43740-00110', 2024, '49.02'
FROM facilities WHERE admin_sym = '1-43740-00110'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43740-00015
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43740-00015', 2024, '92.3'
FROM facilities WHERE admin_sym = '1-43740-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43740-00043
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43740-00043', 2024, '72.93'
FROM facilities WHERE admin_sym = '1-43740-00043'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43740-00109
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43740-00109', 2024, '54.55'
FROM facilities WHERE admin_sym = '1-43740-00109'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43740-00074
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43740-00074', 2024, '81.67'
FROM facilities WHERE admin_sym = '1-43740-00074'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.67',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43740-00016
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43740-00016', 2024, '74.36'
FROM facilities WHERE admin_sym = '1-43740-00016'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.36',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43740-00117
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43740-00117', 2024, '59.2'
FROM facilities WHERE admin_sym = '1-43740-00117'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.2',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43740-00097
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43740-00097', 2024, '76.21'
FROM facilities WHERE admin_sym = '1-43740-00097'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.21',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43740-00116
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43740-00116', 2024, '92.1'
FROM facilities WHERE admin_sym = '1-43740-00116'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43730-00094
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43730-00094', 2024, '72.1'
FROM facilities WHERE admin_sym = '1-43730-00094'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43730-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43730-00007', 2024, '95.1'
FROM facilities WHERE admin_sym = '1-43730-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43730-00048
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43730-00048', 2024, '97.85'
FROM facilities WHERE admin_sym = '1-43730-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43730-00031
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43730-00031', 2024, '76.06'
FROM facilities WHERE admin_sym = '1-43730-00031'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43730-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43730-00006', 2024, '83.56'
FROM facilities WHERE admin_sym = '1-43730-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.56',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43730-00056
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43730-00056', 2024, '70.31'
FROM facilities WHERE admin_sym = '1-43730-00056'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.31',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43730-00050
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43730-00050', 2024, '90.85'
FROM facilities WHERE admin_sym = '1-43730-00050'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43730-00046
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43730-00046', 2024, '68.68'
FROM facilities WHERE admin_sym = '1-43730-00046'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43730-00064
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43730-00064', 2024, '78.3'
FROM facilities WHERE admin_sym = '1-43730-00064'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43730-00087
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43730-00087', 2024, '65.68'
FROM facilities WHERE admin_sym = '1-43730-00087'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43730-00090
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43730-00090', 2024, '81.43'
FROM facilities WHERE admin_sym = '1-43730-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.43',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43730-00099
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43730-00099', 2024, '48.71'
FROM facilities WHERE admin_sym = '1-43730-00099'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '48.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43770-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43770-00001', 2024, '94.35'
FROM facilities WHERE admin_sym = '1-43770-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43770-00057
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43770-00057', 2024, '94.35'
FROM facilities WHERE admin_sym = '1-43770-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43770-00046
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43770-00046', 2024, '91.6'
FROM facilities WHERE admin_sym = '1-43770-00046'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43770-00054
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43770-00054', 2024, '96.6'
FROM facilities WHERE admin_sym = '1-43770-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-43770-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-43770-00002', 2024, '93.85'
FROM facilities WHERE admin_sym = '1-43770-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

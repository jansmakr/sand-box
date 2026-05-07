-- Batch 213 of 226
-- Processing 100 facilities

-- admin_sym: 1-44150-00173
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44150-00173', 2024, '90.72'
FROM facilities WHERE admin_sym = '1-44150-00173'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44150-00142
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44150-00142', 2024, '84.85'
FROM facilities WHERE admin_sym = '1-44150-00142'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44150-00079
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44150-00079', 2024, '97.6'
FROM facilities WHERE admin_sym = '1-44150-00079'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44150-00031
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44150-00031', 2024, '96.25'
FROM facilities WHERE admin_sym = '1-44150-00031'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44150-00119
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44150-00119', 2024, '58.83'
FROM facilities WHERE admin_sym = '1-44150-00119'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '58.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44150-00096
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44150-00096', 2024, '60.69'
FROM facilities WHERE admin_sym = '1-44150-00096'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44150-00107
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44150-00107', 2024, '77.93'
FROM facilities WHERE admin_sym = '1-44150-00107'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44150-00019
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44150-00019', 2024, '76.63'
FROM facilities WHERE admin_sym = '1-44150-00019'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.63',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44150-00025
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44150-00025', 2024, '81.97'
FROM facilities WHERE admin_sym = '1-44150-00025'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44150-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44150-00007', 2024, '49.68'
FROM facilities WHERE admin_sym = '1-44150-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '49.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44150-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44150-00009', 2024, '88.68'
FROM facilities WHERE admin_sym = '1-44150-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44150-00115
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44150-00115', 2024, '95.27'
FROM facilities WHERE admin_sym = '1-44150-00115'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44150-00126
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44150-00126', 2024, '76.75'
FROM facilities WHERE admin_sym = '1-44150-00126'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44150-00094
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44150-00094', 2024, '85.74'
FROM facilities WHERE admin_sym = '1-44150-00094'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44710-00055
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44710-00055', 2024, '80.85'
FROM facilities WHERE admin_sym = '1-44710-00055'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44710-00073
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44710-00073', 2024, '68.6'
FROM facilities WHERE admin_sym = '1-44710-00073'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44710-00022
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44710-00022', 2024, '86.6'
FROM facilities WHERE admin_sym = '1-44710-00022'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44710-00104
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44710-00104', 2024, '84.24'
FROM facilities WHERE admin_sym = '1-44710-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44710-00048
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44710-00048', 2024, '85.64'
FROM facilities WHERE admin_sym = '1-44710-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44710-00053
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44710-00053', 2024, '66.88'
FROM facilities WHERE admin_sym = '1-44710-00053'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.88',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44710-00060
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44710-00060', 2024, '72.92'
FROM facilities WHERE admin_sym = '1-44710-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.92',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44710-00064
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44710-00064', 2024, '77.1'
FROM facilities WHERE admin_sym = '1-44710-00064'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44710-00100
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44710-00100', 2024, '59.97'
FROM facilities WHERE admin_sym = '1-44710-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44710-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44710-00011', 2024, '80.1'
FROM facilities WHERE admin_sym = '1-44710-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44710-00112
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44710-00112', 2024, '69.01'
FROM facilities WHERE admin_sym = '1-44710-00112'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.01',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44710-00120
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44710-00120', 2024, '66.78'
FROM facilities WHERE admin_sym = '1-44710-00120'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.78',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44710-00059
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44710-00059', 2024, '67.72'
FROM facilities WHERE admin_sym = '1-44710-00059'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44710-00097
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44710-00097', 2024, '57.6'
FROM facilities WHERE admin_sym = '1-44710-00097'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44710-00117
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44710-00117', 2024, '57.06'
FROM facilities WHERE admin_sym = '1-44710-00117'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '57.06',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44710-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44710-00005', 2024, '61.72'
FROM facilities WHERE admin_sym = '1-44710-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.72',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44710-00041
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44710-00041', 2024, '97.36'
FROM facilities WHERE admin_sym = '1-44710-00041'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.36',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00216
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00216', 2024, '87.85'
FROM facilities WHERE admin_sym = '1-44230-00216'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00159
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00159', 2024, '83.05'
FROM facilities WHERE admin_sym = '1-44230-00159'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00178
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00178', 2024, '88.6'
FROM facilities WHERE admin_sym = '1-44230-00178'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00007', 2024, '96.35'
FROM facilities WHERE admin_sym = '1-44230-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00001', 2024, '98.55'
FROM facilities WHERE admin_sym = '1-44230-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00026
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00026', 2024, '96.35'
FROM facilities WHERE admin_sym = '1-44230-00026'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00212
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00212', 2024, '74.27'
FROM facilities WHERE admin_sym = '1-44230-00212'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.27',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00179
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00179', 2024, '65.29'
FROM facilities WHERE admin_sym = '1-44230-00179'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00188
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00188', 2024, '65.48'
FROM facilities WHERE admin_sym = '1-44230-00188'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00134
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00134', 2024, '84.56'
FROM facilities WHERE admin_sym = '1-44230-00134'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.56',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00028
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00028', 2024, '95.55'
FROM facilities WHERE admin_sym = '1-44230-00028'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00203
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00203', 2024, '51.73'
FROM facilities WHERE admin_sym = '1-44230-00203'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '51.73',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00100
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00100', 2024, '88.18'
FROM facilities WHERE admin_sym = '1-44230-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00146
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00146', 2024, '89.86'
FROM facilities WHERE admin_sym = '1-44230-00146'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00190
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00190', 2024, '56.93'
FROM facilities WHERE admin_sym = '1-44230-00190'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00185
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00185', 2024, '75.68'
FROM facilities WHERE admin_sym = '1-44230-00185'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00181
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00181', 2024, '95.57'
FROM facilities WHERE admin_sym = '1-44230-00181'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.57',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00124', 2024, '92.14'
FROM facilities WHERE admin_sym = '1-44230-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00110
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00110', 2024, '91.95'
FROM facilities WHERE admin_sym = '1-44230-00110'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.95',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00006', 2024, '89.66'
FROM facilities WHERE admin_sym = '1-44230-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.66',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00197
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00197', 2024, '92.99'
FROM facilities WHERE admin_sym = '1-44230-00197'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00138
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00138', 2024, '77.57'
FROM facilities WHERE admin_sym = '1-44230-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.57',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00156
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00156', 2024, '83.46'
FROM facilities WHERE admin_sym = '1-44230-00156'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.46',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00017
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00017', 2024, '75.66'
FROM facilities WHERE admin_sym = '1-44230-00017'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.66',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00122
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00122', 2024, '61.54'
FROM facilities WHERE admin_sym = '1-44230-00122'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00199
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00199', 2024, '66.8'
FROM facilities WHERE admin_sym = '1-44230-00199'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44230-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44230-00088', 2024, '90.81'
FROM facilities WHERE admin_sym = '1-44230-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.81',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44270-00106
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44270-00106', 2024, '67.25'
FROM facilities WHERE admin_sym = '1-44270-00106'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44830-00025
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44830-00025', 2024, '91.6'
FROM facilities WHERE admin_sym = '1-44830-00025'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44830-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44830-00008', 2024, '87.1'
FROM facilities WHERE admin_sym = '1-44830-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44830-00062
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44830-00062', 2024, '81.85'
FROM facilities WHERE admin_sym = '1-44830-00062'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44270-00092
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44270-00092', 2024, '88.3'
FROM facilities WHERE admin_sym = '1-44270-00092'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44830-00068
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44830-00068', 2024, '88.85'
FROM facilities WHERE admin_sym = '1-44830-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44270-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44270-00124', 2024, '97.35'
FROM facilities WHERE admin_sym = '1-44270-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44270-00104
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44270-00104', 2024, '63.23'
FROM facilities WHERE admin_sym = '1-44270-00104'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.23',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44830-00042
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44830-00042', 2024, '78.83'
FROM facilities WHERE admin_sym = '1-44830-00042'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.83',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44830-00035
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44830-00035', 2024, '54.23'
FROM facilities WHERE admin_sym = '1-44830-00035'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.23',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44270-00097
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44270-00097', 2024, '76.29'
FROM facilities WHERE admin_sym = '1-44270-00097'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.29',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44270-00098
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44270-00098', 2024, '67.18'
FROM facilities WHERE admin_sym = '1-44270-00098'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '67.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44270-00082
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44270-00082', 2024, '80.18'
FROM facilities WHERE admin_sym = '1-44270-00082'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.18',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44270-00139
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44270-00139', 2024, '72.17'
FROM facilities WHERE admin_sym = '1-44270-00139'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.17',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44270-00158
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44270-00158', 2024, '81.49'
FROM facilities WHERE admin_sym = '1-44270-00158'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.49',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44180-00064
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44180-00064', 2024, '95.55'
FROM facilities WHERE admin_sym = '1-44180-00064'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44180-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44180-00002', 2024, '83.35'
FROM facilities WHERE admin_sym = '1-44180-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44180-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44180-00007', 2024, '84.6'
FROM facilities WHERE admin_sym = '1-44180-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44180-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44180-00008', 2024, '85.85'
FROM facilities WHERE admin_sym = '1-44180-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44180-00083
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44180-00083', 2024, '94.55'
FROM facilities WHERE admin_sym = '1-44180-00083'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44180-00095
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44180-00095', 2024, '64.61'
FROM facilities WHERE admin_sym = '1-44180-00095'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44180-00131
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44180-00131', 2024, '54.93'
FROM facilities WHERE admin_sym = '1-44180-00131'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '54.93',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44180-00100
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44180-00100', 2024, '68.58'
FROM facilities WHERE admin_sym = '1-44180-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '68.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44180-00161
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44180-00161', 2024, '78.8'
FROM facilities WHERE admin_sym = '1-44180-00161'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44180-00054
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44180-00054', 2024, '65.99'
FROM facilities WHERE admin_sym = '1-44180-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.99',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44760-00027
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44760-00027', 2024, '93.35'
FROM facilities WHERE admin_sym = '1-44760-00027'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44760-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44760-00003', 2024, '78.6'
FROM facilities WHERE admin_sym = '1-44760-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44760-00079
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44760-00079', 2024, '71.05'
FROM facilities WHERE admin_sym = '1-44760-00079'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '71.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44760-00092
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44760-00092', 2024, '61.9'
FROM facilities WHERE admin_sym = '1-44760-00092'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.9',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44760-00037
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44760-00037', 2024, '76.55'
FROM facilities WHERE admin_sym = '1-44760-00037'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '76.55',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44760-00071
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44760-00071', 2024, '82.1'
FROM facilities WHERE admin_sym = '1-44760-00071'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44760-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44760-00001', 2024, '78.6'
FROM facilities WHERE admin_sym = '1-44760-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44760-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44760-00002', 2024, '86.85'
FROM facilities WHERE admin_sym = '1-44760-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44760-00080
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44760-00080', 2024, '56.9'
FROM facilities WHERE admin_sym = '1-44760-00080'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.9',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44760-00113
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44760-00113', 2024, '83.68'
FROM facilities WHERE admin_sym = '1-44760-00113'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.68',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44760-00100
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44760-00100', 2024, '78.23'
FROM facilities WHERE admin_sym = '1-44760-00100'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.23',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44760-00094
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44760-00094', 2024, '75.79'
FROM facilities WHERE admin_sym = '1-44760-00094'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44760-00096
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44760-00096', 2024, '50.59'
FROM facilities WHERE admin_sym = '1-44760-00096'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.59',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44760-00105
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44760-00105', 2024, '63.52'
FROM facilities WHERE admin_sym = '1-44760-00105'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44760-00088
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44760-00088', 2024, '69.02'
FROM facilities WHERE admin_sym = '1-44760-00088'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44210-00108
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44210-00108', 2024, '90.1'
FROM facilities WHERE admin_sym = '1-44210-00108'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-44210-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-44210-00003', 2024, '77.1'
FROM facilities WHERE admin_sym = '1-44210-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.1',
  last_updated = CURRENT_TIMESTAMP;

-- Batch 224 of 226
-- Processing 100 facilities

-- admin_sym: 1-48270-00108
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00108', 2024, '63.8'
FROM facilities WHERE admin_sym = '1-48270-00108'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48270-00102
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00102', 2024, '84.79'
FROM facilities WHERE admin_sym = '1-48270-00102'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48270-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00008', 2024, '85.85'
FROM facilities WHERE admin_sym = '1-48270-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48270-00116
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00116', 2024, '91.35'
FROM facilities WHERE admin_sym = '1-48270-00116'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48270-00165
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00165', 2024, '65.25'
FROM facilities WHERE admin_sym = '1-48270-00165'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.25',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48270-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00001', 2024, '81.85'
FROM facilities WHERE admin_sym = '1-48270-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48270-00099
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00099', 2024, '82.64'
FROM facilities WHERE admin_sym = '1-48270-00099'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48270-00090
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00090', 2024, '86.26'
FROM facilities WHERE admin_sym = '1-48270-00090'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.26',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48270-00103
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00103', 2024, '70.04'
FROM facilities WHERE admin_sym = '1-48270-00103'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '70.04',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48270-00120
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00120', 2024, '83.74'
FROM facilities WHERE admin_sym = '1-48270-00120'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48270-00145
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00145', 2024, '81.79'
FROM facilities WHERE admin_sym = '1-48270-00145'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '81.79',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48270-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00125', 2024, '77.19'
FROM facilities WHERE admin_sym = '1-48270-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '77.19',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48270-00097
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00097', 2024, '93.42'
FROM facilities WHERE admin_sym = '1-48270-00097'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.42',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48270-00023
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00023', 2024, '74.51'
FROM facilities WHERE admin_sym = '1-48270-00023'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.51',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48270-00136
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00136', 2024, '86.37'
FROM facilities WHERE admin_sym = '1-48270-00136'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.37',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48270-00138
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48270-00138', 2024, '75.23'
FROM facilities WHERE admin_sym = '1-48270-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '75.23',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48240-00047
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00047', 2024, '90.1'
FROM facilities WHERE admin_sym = '1-48240-00047'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48240-00060
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00060', 2024, '85.6'
FROM facilities WHERE admin_sym = '1-48240-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48240-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00002', 2024, '79.44'
FROM facilities WHERE admin_sym = '1-48240-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.44',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48240-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00004', 2024, '87.05'
FROM facilities WHERE admin_sym = '1-48240-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48240-00059
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00059', 2024, '94.82'
FROM facilities WHERE admin_sym = '1-48240-00059'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.82',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48240-00089
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00089', 2024, '93.64'
FROM facilities WHERE admin_sym = '1-48240-00089'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48240-00063
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00063', 2024, '95.6'
FROM facilities WHERE admin_sym = '1-48240-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48240-00087
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00087', 2024, '97.1'
FROM facilities WHERE admin_sym = '1-48240-00087'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48240-00116
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00116', 2024, '93.02'
FROM facilities WHERE admin_sym = '1-48240-00116'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48240-00068
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00068', 2024, '87.22'
FROM facilities WHERE admin_sym = '1-48240-00068'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.22',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48240-00135
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00135', 2024, '39.69'
FROM facilities WHERE admin_sym = '1-48240-00135'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '39.69',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48240-00062
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00062', 2024, '82.77'
FROM facilities WHERE admin_sym = '1-48240-00062'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48240-00082
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00082', 2024, '61.3'
FROM facilities WHERE admin_sym = '1-48240-00082'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48240-00140
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00140', 2024, '84.24'
FROM facilities WHERE admin_sym = '1-48240-00140'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.24',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48240-00091
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48240-00091', 2024, '92.6'
FROM facilities WHERE admin_sym = '1-48240-00091'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48860-00065
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48860-00065', 2024, '52.56'
FROM facilities WHERE admin_sym = '1-48860-00065'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '52.56',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48860-00030
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48860-00030', 2024, '90.35'
FROM facilities WHERE admin_sym = '1-48860-00030'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48860-00040
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48860-00040', 2024, '82.35'
FROM facilities WHERE admin_sym = '1-48860-00040'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48860-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48860-00010', 2024, '74.85'
FROM facilities WHERE admin_sym = '1-48860-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48860-00060
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48860-00060', 2024, '93.35'
FROM facilities WHERE admin_sym = '1-48860-00060'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48860-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48860-00002', 2024, '94.6'
FROM facilities WHERE admin_sym = '1-48860-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48860-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48860-00003', 2024, '95.05'
FROM facilities WHERE admin_sym = '1-48860-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48860-00070
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48860-00070', 2024, '87.3'
FROM facilities WHERE admin_sym = '1-48860-00070'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48860-00015
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48860-00015', 2024, '69.3'
FROM facilities WHERE admin_sym = '1-48860-00015'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '69.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48860-00054
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48860-00054', 2024, '88.8'
FROM facilities WHERE admin_sym = '1-48860-00054'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.8',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48330-00179
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00179', 2024, '40.05'
FROM facilities WHERE admin_sym = '1-48330-00179'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '40.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48330-00010
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00010', 2024, '88.85'
FROM facilities WHERE admin_sym = '1-48330-00010'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48330-00227
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00227', 2024, '59.38'
FROM facilities WHERE admin_sym = '1-48330-00227'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48330-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00006', 2024, '86.51'
FROM facilities WHERE admin_sym = '1-48330-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.51',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48330-00011
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00011', 2024, '88.6'
FROM facilities WHERE admin_sym = '1-48330-00011'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48330-00009
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00009', 2024, '93.85'
FROM facilities WHERE admin_sym = '1-48330-00009'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48330-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00005', 2024, '96.3'
FROM facilities WHERE admin_sym = '1-48330-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48330-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00007', 2024, '93.35'
FROM facilities WHERE admin_sym = '1-48330-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48330-00110
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00110', 2024, '79.3'
FROM facilities WHERE admin_sym = '1-48330-00110'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '79.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48330-00125
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00125', 2024, '80.58'
FROM facilities WHERE admin_sym = '1-48330-00125'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.58',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48330-00098
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00098', 2024, '73.15'
FROM facilities WHERE admin_sym = '1-48330-00098'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.15',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48330-00111
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00111', 2024, '73.05'
FROM facilities WHERE admin_sym = '1-48330-00111'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '73.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48330-00031
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00031', 2024, '96.85'
FROM facilities WHERE admin_sym = '1-48330-00031'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '96.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48330-00218
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00218', 2024, '61.74'
FROM facilities WHERE admin_sym = '1-48330-00218'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '61.74',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48330-00109
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00109', 2024, '55.02'
FROM facilities WHERE admin_sym = '1-48330-00109'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '55.02',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48330-00124
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00124', 2024, '88.98'
FROM facilities WHERE admin_sym = '1-48330-00124'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.98',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48330-00226
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00226', 2024, '59.15'
FROM facilities WHERE admin_sym = '1-48330-00226'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '59.15',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48330-00074
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48330-00074', 2024, '36.89'
FROM facilities WHERE admin_sym = '1-48330-00074'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '36.89',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48720-00001
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48720-00001', 2024, '85.35'
FROM facilities WHERE admin_sym = '1-48720-00001'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48720-00045
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48720-00045', 2024, '64.14'
FROM facilities WHERE admin_sym = '1-48720-00045'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '64.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48720-00048
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48720-00048', 2024, '60.5'
FROM facilities WHERE admin_sym = '1-48720-00048'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '60.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00281
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00281', 2024, '90.54'
FROM facilities WHERE admin_sym = '1-48170-00281'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '90.54',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00277
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00277', 2024, '65.35'
FROM facilities WHERE admin_sym = '1-48170-00277'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '65.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00152
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00152', 2024, '88.6'
FROM facilities WHERE admin_sym = '1-48170-00152'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00165
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00165', 2024, '87.35'
FROM facilities WHERE admin_sym = '1-48170-00165'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00002', 2024, '89.85'
FROM facilities WHERE admin_sym = '1-48170-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '89.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00138
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00138', 2024, '86.3'
FROM facilities WHERE admin_sym = '1-48170-00138'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '86.3',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00268
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00268', 2024, '56.22'
FROM facilities WHERE admin_sym = '1-48170-00268'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '56.22',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00005
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00005', 2024, '97.1'
FROM facilities WHERE admin_sym = '1-48170-00005'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '97.1',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00004
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00004', 2024, '92.77'
FROM facilities WHERE admin_sym = '1-48170-00004'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '92.77',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00006', 2024, '94.05'
FROM facilities WHERE admin_sym = '1-48170-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.05',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00274
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00274', 2024, '66.5'
FROM facilities WHERE admin_sym = '1-48170-00274'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '66.5',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00183
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00183', 2024, '72.97'
FROM facilities WHERE admin_sym = '1-48170-00183'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00283
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00283', 2024, '78.75'
FROM facilities WHERE admin_sym = '1-48170-00283'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '78.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00294
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00294', 2024, '84.52'
FROM facilities WHERE admin_sym = '1-48170-00294'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '84.52',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00270
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00270', 2024, '50.97'
FROM facilities WHERE admin_sym = '1-48170-00270'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '50.97',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00253
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00253', 2024, '63.2'
FROM facilities WHERE admin_sym = '1-48170-00253'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '63.2',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00178
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00178', 2024, '93.71'
FROM facilities WHERE admin_sym = '1-48170-00178'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.71',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00013
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00013', 2024, '98.48'
FROM facilities WHERE admin_sym = '1-48170-00013'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '98.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00135
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00135', 2024, '95.95'
FROM facilities WHERE admin_sym = '1-48170-00135'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '95.95',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00147
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00147', 2024, '74.61'
FROM facilities WHERE admin_sym = '1-48170-00147'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '74.61',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00264
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00264', 2024, '94.86'
FROM facilities WHERE admin_sym = '1-48170-00264'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '94.86',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00180
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00180', 2024, '85.19'
FROM facilities WHERE admin_sym = '1-48170-00180'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '85.19',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00162
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00162', 2024, '88.35'
FROM facilities WHERE admin_sym = '1-48170-00162'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48170-00233
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48170-00233', 2024, '80.48'
FROM facilities WHERE admin_sym = '1-48170-00233'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.48',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48740-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48740-00003', 2024, '80.64'
FROM facilities WHERE admin_sym = '1-48740-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.64',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48740-00063
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48740-00063', 2024, '93.75'
FROM facilities WHERE admin_sym = '1-48740-00063'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '93.75',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48740-00057
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48740-00057', 2024, '80.15'
FROM facilities WHERE admin_sym = '1-48740-00057'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.15',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48740-00055
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48740-00055', 2024, '83.01'
FROM facilities WHERE admin_sym = '1-48740-00055'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '83.01',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48740-00053
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48740-00053', 2024, '80.38'
FROM facilities WHERE admin_sym = '1-48740-00053'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.38',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48740-00006
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48740-00006', 2024, '72.14'
FROM facilities WHERE admin_sym = '1-48740-00006'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '72.14',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48740-00096
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48740-00096', 2024, '30.28'
FROM facilities WHERE admin_sym = '1-48740-00096'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '30.28',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48160-00140
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48160-00140', 2024, '87.78'
FROM facilities WHERE admin_sym = '1-48160-00140'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '87.78',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48120-00199
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00199', 2024, '82.6'
FROM facilities WHERE admin_sym = '1-48120-00199'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '82.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48160-00008
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48160-00008', 2024, '88.35'
FROM facilities WHERE admin_sym = '1-48160-00008'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '88.35',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48160-00002
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48160-00002', 2024, '91.85'
FROM facilities WHERE admin_sym = '1-48160-00002'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.85',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48160-00003
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48160-00003', 2024, '91.6'
FROM facilities WHERE admin_sym = '1-48160-00003'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '91.6',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48120-00425
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48120-00425', 2024, '80.12'
FROM facilities WHERE admin_sym = '1-48120-00425'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '80.12',
  last_updated = CURRENT_TIMESTAMP;

-- admin_sym: 1-48160-00007
INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)
SELECT id, '1-48160-00007', 2024, '99.35'
FROM facilities WHERE admin_sym = '1-48160-00007'
ON CONFLICT(facility_id) DO UPDATE SET
  grade_year = 2024,
  grade_value = '99.35',
  last_updated = CURRENT_TIMESTAMP;

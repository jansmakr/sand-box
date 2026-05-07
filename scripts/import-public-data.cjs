// CSV 파일을 파싱하여 DB에 저장하는 스크립트
const fs = require('fs');
const path = require('path');

/**
 * 사용 방법:
 * 1. 공공데이터포털에서 CSV 파일 다운로드
 * 2. 파일을 /home/user/webapp/public-data.csv 로 저장
 * 3. node scripts/import-public-data.cjs 실행
 */

console.log('📊 공공데이터 CSV 파일 임포트 시작...\n');

// CSV 파일 경로
const csvPath = path.join(__dirname, '../public-data.csv');

if (!fs.existsSync(csvPath)) {
  console.error('❌ 파일을 찾을 수 없습니다: public-data.csv');
  console.log('\n사용 방법:');
  console.log('1. 공공데이터포털에서 "국민건강보험공단_장기요양기관" CSV 다운로드');
  console.log('2. 파일명을 "public-data.csv"로 변경');
  console.log('3. /home/user/webapp/ 폴더에 복사');
  console.log('4. node scripts/import-public-data.cjs 실행\n');
  process.exit(1);
}

// CSV 파일 읽기
const csvContent = fs.readFileSync(csvPath, 'utf-8');
const lines = csvContent.split('\n');

console.log(`📄 총 ${lines.length}개 라인 발견\n`);

// 헤더 라인 (첫 번째 줄)
const headers = lines[0].split(',').map(h => h.trim().replace(/"/g, ''));
console.log('📋 CSV 헤더:', headers.slice(0, 10).join(', '), '...\n');

// SQL 문 생성
const sqlStatements = [];
let processedCount = 0;

// 데이터 라인 처리 (헤더 제외)
for (let i = 1; i < lines.length && i < 1001; i++) { // 최대 1000개
  const line = lines[i].trim();
  if (!line) continue;

  const columns = line.split(',').map(c => c.trim().replace(/"/g, ''));
  
  // CSV 파일 형식에 맞게 인덱스 조정 필요
  // 예시: 0=기관명, 1=시설구분, 2=주소, 3=시도, 4=시군구, 5=정원, 6=현원, 7=평가등급 등
  
  const facilityName = (columns[0] || '').replace(/'/g, "''");
  const facilityType = (columns[1] || '요양원').replace(/'/g, "''");
  const address = (columns[2] || '').replace(/'/g, "''");
  const sido = (columns[3] || '').replace(/'/g, "''");
  const sigungu = (columns[4] || '').replace(/'/g, "''");
  const totalCapacity = parseInt(columns[5] || '0') || 0;
  const currentOccupancy = parseInt(columns[6] || '0') || 0;
  const gradeValue = (columns[7] || '').replace(/'/g, "''");
  
  if (!facilityName) continue;

  const availableBeds = totalCapacity - currentOccupancy;

  // facilities 테이블 INSERT
  const facilitySql = `
-- ${facilityName}
INSERT OR IGNORE INTO facilities (
  name, facility_type, address, sido, sigungu,
  latitude, longitude, phone
) VALUES (
  '${facilityName}',
  '${facilityType}',
  '${address}',
  '${sido}',
  '${sigungu}',
  37.5665,
  126.9780,
  ''
);`;

  sqlStatements.push(facilitySql);

  // facility_capacity 테이블 INSERT
  const capacitySql = `
INSERT OR IGNORE INTO facility_capacity (
  facility_id,
  total_capacity,
  current_occupancy,
  available_beds,
  data_source
) SELECT 
  id,
  ${totalCapacity},
  ${currentOccupancy},
  ${availableBeds},
  'csv_import'
FROM facilities 
WHERE name = '${facilityName}' 
  AND sido = '${sido}';`;

  sqlStatements.push(capacitySql);

  // facility_public_data 테이블 INSERT (평가등급 있을 경우)
  if (gradeValue && ['A', 'B', 'C', 'D', 'E'].includes(gradeValue.toUpperCase())) {
    const publicDataSql = `
INSERT OR IGNORE INTO facility_public_data (
  facility_id,
  grade_year,
  grade_value
) SELECT 
  id,
  2023,
  '${gradeValue.toUpperCase()}'
FROM facilities 
WHERE name = '${facilityName}' 
  AND sido = '${sido}';`;
    
    sqlStatements.push(publicDataSql);
  }

  processedCount++;
  
  if (processedCount % 100 === 0) {
    console.log(`  ⏳ ${processedCount}개 처리 중...`);
  }
}

// SQL 파일 저장
const outputPath = path.join(__dirname, '../import-public-data.sql');
fs.writeFileSync(outputPath, sqlStatements.join('\n\n'), 'utf-8');

console.log(`\n✅ SQL 파일 생성 완료: ${outputPath}`);
console.log(`📦 총 ${processedCount}개의 시설 데이터 변환 완료\n`);
console.log('실행 방법:');
console.log('  npx wrangler d1 execute carejoa-production --local --file=./import-public-data.sql\n');

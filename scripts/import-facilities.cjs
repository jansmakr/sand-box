// JSON 파일에서 시설 데이터를 D1 DB로 임포트하는 스크립트
const fs = require('fs');
const path = require('path');

// facilities.json 로드
const facilitiesPath = path.join(__dirname, '../public/static/facilities.json');
const facilities = JSON.parse(fs.readFileSync(facilitiesPath, 'utf-8'));

console.log(`📊 총 시설 수: ${facilities.length}개`);

// SQL 파일 생성
const sqlStatements = [];

// 샘플 데이터만 사용 (처음 1000개)
const sampleFacilities = facilities.slice(0, 1000);

sampleFacilities.forEach((facility, index) => {
  const name = (facility.name || '').replace(/'/g, "''");
  const address = (facility.address || '').replace(/'/g, "''");
  const sido = (facility.city || facility.sido || '서울').replace(/'/g, "''");
  const sigungu = (facility.district || facility.sigungu || '강남구').replace(/'/g, "''");
  const facilityType = (facility.facility_type || '요양원').replace(/'/g, "''");
  
  const sql = `INSERT OR IGNORE INTO facilities (
    name, address, sido, sigungu, facility_type,
    latitude, longitude, phone
  ) VALUES (
    '${name}',
    '${address}',
    '${sido}',
    '${sigungu}',
    '${facilityType}',
    ${facility.latitude || 37.5665},
    ${facility.longitude || 126.9780},
    '${(facility.phone || '').replace(/'/g, "''")}'
  );`;
  
  sqlStatements.push(sql);
  
  if ((index + 1) % 100 === 0) {
    console.log(`  ⏳ ${index + 1}/${sampleFacilities.length} 처리 중...`);
  }
});

// SQL 파일 저장
const outputPath = path.join(__dirname, '../seed-facilities.sql');
fs.writeFileSync(outputPath, sqlStatements.join('\n'), 'utf-8');

console.log(`✅ SQL 파일 생성 완료: ${outputPath}`);
console.log(`📦 총 ${sampleFacilities.length}개의 INSERT 문 생성`);
console.log(`\n실행 방법:`);
console.log(`  npx wrangler d1 execute carejoa-production --local --file=./seed-facilities.sql`);

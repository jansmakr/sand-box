/**
 * Excel 파일에서 시설 정보를 읽어서 프로덕션 DB의 NULL 필드 채우기
 * - admin_sym 설정
 * - phone, address, latitude, longitude 등 NULL 필드 업데이트
 */

const XLSX = require('xlsx');
const fs = require('fs');

// 파일 경로 설정 (로컬 PC 기준)
const excelPath = 'C:\\Users\\jansm\\Downloads\\국민건강보험공단_장기요양기관 시설별 현황_20250401.xlsx';

console.log('📊 Excel 파일 읽기 시작...');

// Excel 파일 읽기
let workbook;
try {
  workbook = XLSX.readFile(excelPath);
} catch (error) {
  console.error('❌ Excel 파일을 찾을 수 없습니다:', excelPath);
  console.error('💡 로컬 PC에서 실행해주세요.');
  process.exit(1);
}

const sheetName = workbook.SheetNames[0];
const worksheet = workbook.Sheets[sheetName];
const data = XLSX.utils.sheet_to_json(worksheet);

console.log(`✅ ${data.length}개 레코드 로드됨`);
console.log(`📋 컬럼 목록: ${Object.keys(data[0]).join(', ')}`);

// 컬럼명 자동 감지
let adminSymCol, nameCol, phoneCol, addressCol, latCol, lonCol;

const firstRow = data[0];
for (const key of Object.keys(firstRow)) {
  const keyLower = key.toLowerCase();
  
  if (key.includes('기호') || keyLower.includes('code') || key.includes('식별')) {
    adminSymCol = key;
  }
  if (key.includes('시설') && key.includes('명')) {
    nameCol = key;
  }
  if (key.includes('전화') || keyLower.includes('phone') || key.includes('연락처')) {
    phoneCol = key;
  }
  if (key.includes('주소') || keyLower.includes('address') || key.includes('소재지')) {
    addressCol = key;
  }
  if (key.includes('위도') || keyLower.includes('lat')) {
    latCol = key;
  }
  if (key.includes('경도') || keyLower.includes('lon')) {
    lonCol = key;
  }
}

console.log('\n📍 감지된 컬럼:');
console.log(`  - admin_sym: ${adminSymCol}`);
console.log(`  - name: ${nameCol}`);
console.log(`  - phone: ${phoneCol}`);
console.log(`  - address: ${addressCol}`);
console.log(`  - latitude: ${latCol}`);
console.log(`  - longitude: ${lonCol}`);

if (!adminSymCol || !nameCol) {
  console.error('❌ 필수 컬럼(기호, 시설명)을 찾을 수 없습니다.');
  process.exit(1);
}

// UPDATE SQL 생성
const updateStatements = [];
const adminSymStatements = [];

for (const row of data) {
  const adminSym = String(row[adminSymCol] || '').trim();
  const name = String(row[nameCol] || '').trim();
  const phone = phoneCol ? String(row[phoneCol] || '').trim() : '';
  const address = addressCol ? String(row[addressCol] || '').trim() : '';
  const lat = latCol ? parseFloat(row[latCol]) : null;
  const lon = lonCol ? parseFloat(row[lonCol]) : null;
  
  if (!adminSym || !name) continue;
  
  // 1. admin_sym 설정 (이름으로 매칭)
  const namePattern = name.substring(0, Math.min(name.length, 10));
  adminSymStatements.push(
    `UPDATE facilities SET admin_sym = '${adminSym}' WHERE admin_sym IS NULL AND name LIKE '%${namePattern}%';`
  );
  
  // 2. NULL 필드 채우기 (admin_sym 기준)
  const updates = [];
  if (phone) updates.push(`phone = '${phone}'`);
  if (address) updates.push(`address = '${address}'`);
  if (lat && !isNaN(lat)) updates.push(`latitude = ${lat}`);
  if (lon && !isNaN(lon)) updates.push(`longitude = ${lon}`);
  
  if (updates.length > 0) {
    updateStatements.push(
      `UPDATE facilities SET ${updates.join(', ')} WHERE admin_sym = '${adminSym}' AND (phone IS NULL OR address IS NULL OR latitude IS NULL OR longitude IS NULL);`
    );
  }
}

console.log(`\n✅ ${adminSymStatements.length}개 admin_sym UPDATE 쿼리 생성`);
console.log(`✅ ${updateStatements.length}개 NULL 필드 UPDATE 쿼리 생성`);

// 파일로 저장 (1000개씩 분할)
const outputDir = 'migrations/batches_fill_nulls';
if (!fs.existsSync(outputDir)) {
  fs.mkdirSync(outputDir, { recursive: true });
}

// admin_sym 업데이트 배치
const chunkSize = 500;
let fileCount = 0;

for (let i = 0; i < adminSymStatements.length; i += chunkSize) {
  fileCount++;
  const chunk = adminSymStatements.slice(i, i + chunkSize);
  const filename = `${outputDir}/step1_admin_sym_${String(fileCount).padStart(3, '0')}.sql`;
  
  fs.writeFileSync(filename, [
    `-- Step 1: admin_sym 설정 (Part ${fileCount})`,
    `-- Generated: ${new Date().toISOString()}`,
    '',
    ...chunk
  ].join('\n'));
  
  console.log(`📄 ${filename} 생성 (${chunk.length}개 쿼리)`);
}

// NULL 필드 채우기 배치
fileCount = 0;
for (let i = 0; i < updateStatements.length; i += chunkSize) {
  fileCount++;
  const chunk = updateStatements.slice(i, i + chunkSize);
  const filename = `${outputDir}/step2_fill_nulls_${String(fileCount).padStart(3, '0')}.sql`;
  
  fs.writeFileSync(filename, [
    `-- Step 2: NULL 필드 채우기 (Part ${fileCount})`,
    `-- Generated: ${new Date().toISOString()}`,
    '',
    ...chunk
  ].join('\n'));
  
  console.log(`📄 ${filename} 생성 (${chunk.length}개 쿼리)`);
}

console.log('\n🎉 배치 파일 생성 완료!');
console.log('\n📌 실행 순서:');
console.log('1. Step 1 파일들 먼저 실행 (admin_sym 설정)');
console.log('2. Step 2 파일들 실행 (NULL 필드 채우기)');
console.log('3. 평가등급 배치 실행 (기존 v2 배치)');


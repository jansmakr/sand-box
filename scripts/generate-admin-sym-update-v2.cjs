const fs = require('fs');
const path = require('path');
const { execSync } = require('child_process');

console.log('🚀 프로덕션 DB admin_sym 업데이트 스크립트 시작 (배치 처리)...\n');

// 1. 공공데이터 JSON 로드
const jsonPath = path.join(__dirname, '../public-data-facilities.json');
const publicData = JSON.parse(fs.readFileSync(jsonPath, 'utf-8'));
console.log(`📊 공공데이터: ${publicData.length}개 레코드`);

// 2. 정규화 함수
function normalize(text) {
  if (!text) return '';
  return String(text).replace(/[\s\(\)\[\]\-\_\,\.\ᆞ·]/g, '').trim();
}

// 3. admin_sym 매핑 딕셔너리 생성
const adminSymMap = {};
for (const item of publicData) {
  const { adminSym, facilityName } = item;
  if (adminSym && facilityName) {
    const normName = normalize(facilityName);
    if (normName) {
      adminSymMap[normName] = adminSym;
    }
  }
}
console.log(`✅ 매핑 딕셔너리: ${Object.keys(adminSymMap).length}개\n`);

// 4. 프로덕션 DB에서 시설 목록 가져오기 (2000개씩 배치)
console.log('📡 프로덕션 DB 시설 목록 가져오는 중 (배치 처리)...');

const batchSize = 2000;
let offset = 0;
let allFacilities = [];
let hasMore = true;

while (hasMore) {
  try {
    console.log(`  - ${offset} ~ ${offset + batchSize} 가져오는 중...`);
    const result = execSync(
      `npx wrangler d1 execute carejoa-production --remote --command="SELECT id, name FROM facilities LIMIT ${batchSize} OFFSET ${offset}" --json`,
      { encoding: 'utf-8', maxBuffer: 50 * 1024 * 1024, timeout: 120000 }
    );
    
    const data = JSON.parse(result);
    const facilities = data[0]?.results || data.results || data;
    
    if (facilities.length === 0) {
      hasMore = false;
    } else {
      allFacilities = allFacilities.concat(facilities);
      offset += batchSize;
      
      if (facilities.length < batchSize) {
        hasMore = false;
      }
    }
  } catch (error) {
    console.error(`❌ 오류 발생 (offset ${offset}):`, error.message);
    hasMore = false;
  }
}

console.log(`✅ 총 ${allFacilities.length}개 시설 로드 완료\n`);

// 5. 매칭 및 UPDATE SQL 생성
const sqlStatements = [];
let matchedCount = 0;
const unmatched = [];

for (const facility of allFacilities) {
  const { id, name } = facility;
  const normName = normalize(name);
  
  if (normName && adminSymMap[normName]) {
    const adminSym = adminSymMap[normName];
    const safeSym = adminSym.replace(/'/g, "''");
    sqlStatements.push(`UPDATE facilities SET admin_sym = '${safeSym}' WHERE id = ${id};`);
    matchedCount++;
  } else {
    unmatched.push(name);
  }
}

console.log(`✅ 매칭 완료:`);
console.log(`  - 성공: ${matchedCount}개 (${(matchedCount/allFacilities.length*100).toFixed(2)}%)`);
console.log(`  - 실패: ${unmatched.length}개\n`);

// 6. SQL 파일 분할 저장
const outputDir = path.join(__dirname, '../migrations/update_admin_sym_prod');
if (!fs.existsSync(outputDir)) {
  fs.mkdirSync(outputDir, { recursive: true });
}

const chunkSize = 1000;
const totalChunks = Math.ceil(sqlStatements.length / chunkSize);

for (let i = 0; i < sqlStatements.length; i += chunkSize) {
  const chunk = sqlStatements.slice(i, i + chunkSize);
  const fileNum = Math.floor(i / chunkSize) + 1;
  const fileName = `update_part${String(fileNum).padStart(3, '0')}.sql`;
  const filePath = path.join(outputDir, fileName);
  
  const content = [
    `-- Admin_sym Update Batch ${fileNum}/${totalChunks}`,
    `-- Generated: ${new Date().toISOString()}`,
    `-- Updates: ${chunk.length} facilities\n`,
    ...chunk
  ].join('\n');
  
  fs.writeFileSync(filePath, content, 'utf-8');
  
  if (fileNum % 5 === 0 || fileNum === totalChunks) {
    console.log(`✅ 생성: ${fileNum}/${totalChunks} 파일`);
  }
}

console.log(`\n🎉 완료! 총 ${totalChunks}개 SQL 파일 생성`);
console.log(`📂 출력: migrations/update_admin_sym_prod/`);

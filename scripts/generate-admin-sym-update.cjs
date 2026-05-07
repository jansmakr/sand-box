const fs = require('fs');
const path = require('path');

console.log('🚀 프로덕션 DB admin_sym 업데이트 스크립트 시작...\n');

// 1. 공공데이터 JSON 로드 (엑셀에서 이미 파싱된 데이터)
const jsonPath = path.join(__dirname, '../public-data-facilities.json');
const publicData = JSON.parse(fs.readFileSync(jsonPath, 'utf-8'));

console.log(`📊 공공데이터: ${publicData.length}개 레코드`);

// 2. 정규화 함수 (공백, 괄호 제거)
function normalize(text) {
  if (!text) return '';
  return String(text)
    .replace(/[\s\(\)\[\]\-\_\,\.\ᆞ·]/g, '')
    .trim();
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

console.log(`✅ 매핑 딕셔너리 생성 완료: ${Object.keys(adminSymMap).length}개\n`);

// 4. Wrangler로 프로덕션 DB에서 시설 목록 가져오기
const { execSync } = require('child_process');

console.log('📡 프로덕션 DB 시설 목록 가져오는 중...');
const facilitiesJson = execSync(
  'npx wrangler d1 execute carejoa-production --remote --command="SELECT id, name FROM facilities" --json',
  { encoding: 'utf-8', maxBuffer: 50 * 1024 * 1024 }
);

const facilitiesData = JSON.parse(facilitiesJson);
const facilities = facilitiesData[0]?.results || facilitiesData.results || facilitiesData;

console.log(`✅ 프로덕션 시설 데이터: ${facilities.length}개\n`);

// 5. 매칭 및 UPDATE SQL 생성
const sqlStatements = [];
let matchedCount = 0;
const unmatched = [];

for (const facility of facilities) {
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
console.log(`  - 성공: ${matchedCount}개 (${(matchedCount/facilities.length*100).toFixed(2)}%)`);
console.log(`  - 실패: ${unmatched.length}개\n`);

// 6. SQL 파일 분할 저장 (1000개씩)
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
  console.log(`✅ 생성: ${fileName} (${chunk.length}개 쿼리)`);
}

// 7. 매칭 실패 목록 저장
if (unmatched.length > 0) {
  const unmatchedPath = path.join(outputDir, 'unmatched_facilities.txt');
  fs.writeFileSync(unmatchedPath, unmatched.slice(0, 500).join('\n'), 'utf-8');
  console.log(`\n⚠️ 매칭 실패 목록 저장: unmatched_facilities.txt (최대 500개)`);
}

// 8. 실행 가이드 생성
const guidePath = path.join(outputDir, 'EXECUTE_GUIDE.md');
const guide = `# Admin_sym 업데이트 실행 가이드

## 생성 정보
- 생성 시각: ${new Date().toISOString()}
- 총 배치 파일: ${totalChunks}개
- 업데이트 대상: ${matchedCount}개 시설
- 매칭률: ${(matchedCount/facilities.length*100).toFixed(2)}%

## 실행 방법

### 1단계: 백업 (필수)
\`\`\`bash
npx wrangler d1 execute carejoa-production --remote --command="CREATE TABLE facilities_backup_$(date +%Y%m%d) AS SELECT * FROM facilities WHERE admin_sym IS NOT NULL"
\`\`\`

### 2단계: 배치 실행 (로컬 PC에서)
\`\`\`bash
cd C:\\Users\\jansm\\sand-box
git pull origin main

# 모든 배치 파일 실행
${Array.from({ length: totalChunks }, (_, i) => {
  const num = String(i + 1).padStart(3, '0');
  return `npx wrangler d1 execute carejoa-production --remote --file="migrations/update_admin_sym_prod/update_part${num}.sql"`;
}).join('\n')}
\`\`\`

### 3단계: 검증
\`\`\`bash
npx wrangler d1 execute carejoa-production --remote --command="SELECT COUNT(*) FROM facilities WHERE admin_sym IS NOT NULL"
# 예상: ${matchedCount}개
\`\`\`

### 4단계: 평가등급 INSERT 배치 재실행
admin_sym 업데이트 후 평가등급 데이터 삽입:
\`\`\`bash
# v2 배치 파일 재실행
# (이전에 실행한 스크립트 사용)
\`\`\`
`;

fs.writeFileSync(guidePath, guide, 'utf-8');
console.log(`\n📖 실행 가이드 생성: EXECUTE_GUIDE.md`);

console.log(`\n🎉 완료! 다음 단계:`);
console.log(`1. GitHub에 푸시: cd /home/user/webapp && git add . && git commit -m "feat: admin_sym 업데이트 배치 생성" && git push`);
console.log(`2. 로컬 PC에서 git pull`);
console.log(`3. EXECUTE_GUIDE.md 참조하여 배치 실행`);

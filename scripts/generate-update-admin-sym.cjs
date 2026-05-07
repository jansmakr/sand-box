const fs = require('fs');
const path = require('path');

console.log('🚀 시설명 기반 admin_sym 업데이트 배치 생성...\n');

// Read JSON data
const jsonPath = path.join(__dirname, '../public-data-facilities.json');
const data = JSON.parse(fs.readFileSync(jsonPath, 'utf-8'));

console.log(`📊 Total records: ${data.length}`);

// Create output directory
const outputDir = path.join(__dirname, '../migrations/batches_update_admin_sym');
if (!fs.existsSync(outputDir)) {
  fs.mkdirSync(outputDir, { recursive: true });
}

// Generate batches (500 records per batch for UPDATE)
const batchSize = 500;
const totalBatches = Math.ceil(data.length / batchSize);

console.log(`📦 Generating ${totalBatches} UPDATE batches...\n`);

for (let i = 0; i < totalBatches; i++) {
  const start = i * batchSize;
  const end = Math.min(start + batchSize, data.length);
  const batch = data.slice(start, end);
  
  const batchNum = String(i + 1).padStart(3, '0');
  const sqlStatements = [];
  
  sqlStatements.push(`-- Update Batch ${i + 1} of ${totalBatches}`);
  sqlStatements.push(`-- Updating admin_sym for ${batch.length} facilities\n`);
  
  for (const facility of batch) {
    const { adminSym, facilityName, sido, sigungu } = facility;
    
    if (!adminSym || !facilityName) continue;
    
    // Escape single quotes in facility name
    const safeName = facilityName.replace(/'/g, "''");
    const safeSido = sido ? sido.replace(/'/g, "''") : '';
    const safeSigungu = sigungu ? sigungu.replace(/'/g, "''") : '';
    
    // UPDATE by name and location
    sqlStatements.push(`-- ${facilityName} (${sido} ${sigungu})`);
    sqlStatements.push(`UPDATE facilities SET admin_sym = '${adminSym}'`);
    sqlStatements.push(`WHERE name = '${safeName}'`);
    if (safeSido) {
      sqlStatements.push(`  AND sido = '${safeSido}'`);
    }
    if (safeSigungu) {
      sqlStatements.push(`  AND sigungu = '${safeSigungu}'`);
    }
    sqlStatements.push(`  AND admin_sym IS NULL;\n`);
  }
  
  const fileName = `update_${batchNum}.sql`;
  const filePath = path.join(outputDir, fileName);
  fs.writeFileSync(filePath, sqlStatements.join('\n'));
  
  if ((i + 1) % 10 === 0 || i === totalBatches - 1) {
    console.log(`✅ Generated ${i + 1}/${totalBatches} batches`);
  }
}

console.log(`\n✅ UPDATE 배치 파일 생성 완료!`);
console.log(`📂 출력 디렉토리: ${outputDir}`);
console.log(`📊 총 ${totalBatches}개 파일 생성`);
console.log(`\n💡 다음 단계:`);
console.log(`1. UPDATE 배치 실행하여 admin_sym 설정`);
console.log(`2. 평가등급 INSERT 배치 재실행`);

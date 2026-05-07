const fs = require('fs');
const path = require('path');

console.log('🚀 평가등급 데이터 간단 배치 생성 시작...\n');

// Read JSON data
const jsonPath = path.join(__dirname, '../public-data-facilities.json');
const data = JSON.parse(fs.readFileSync(jsonPath, 'utf-8'));

console.log(`📊 Total records: ${data.length}`);

// Create output directory
const outputDir = path.join(__dirname, '../migrations/batches_ratings_v2');
if (!fs.existsSync(outputDir)) {
  fs.mkdirSync(outputDir, { recursive: true });
}

// Generate batches (100 records per batch)
const batchSize = 100;
const totalBatches = Math.ceil(data.length / batchSize);

console.log(`📦 Generating ${totalBatches} batches...\n`);

for (let i = 0; i < totalBatches; i++) {
  const start = i * batchSize;
  const end = Math.min(start + batchSize, data.length);
  const batch = data.slice(start, end);
  
  const batchNum = String(i + 1).padStart(3, '0');
  const sqlStatements = [];
  
  sqlStatements.push(`-- Batch ${i + 1} of ${totalBatches}`);
  sqlStatements.push(`-- Processing ${batch.length} facilities\n`);
  
  for (const facility of batch) {
    const { adminSym, gradeValue } = facility;
    
    if (!adminSym || !gradeValue) continue;
    
    // Simple INSERT using admin_sym
    // No UPDATE, no name matching - just insert ratings
    sqlStatements.push(`-- admin_sym: ${adminSym}`);
    sqlStatements.push(`INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)`);
    sqlStatements.push(`SELECT id, '${adminSym}', 2024, '${gradeValue}'`);
    sqlStatements.push(`FROM facilities WHERE admin_sym = '${adminSym}'`);
    sqlStatements.push(`ON CONFLICT(facility_id) DO UPDATE SET`);
    sqlStatements.push(`  grade_year = 2024,`);
    sqlStatements.push(`  grade_value = '${gradeValue}',`);
    sqlStatements.push(`  last_updated = CURRENT_TIMESTAMP;\n`);
  }
  
  const fileName = `batch_${batchNum}.sql`;
  const filePath = path.join(outputDir, fileName);
  fs.writeFileSync(filePath, sqlStatements.join('\n'));
  
  if ((i + 1) % 50 === 0 || i === totalBatches - 1) {
    console.log(`✅ Generated ${i + 1}/${totalBatches} batches`);
  }
}

console.log(`\n✅ 모든 배치 파일 생성 완료!`);
console.log(`📂 출력 디렉토리: ${outputDir}`);
console.log(`📊 총 ${totalBatches}개 파일 생성`);

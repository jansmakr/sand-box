const fs = require('fs');

async function main() {
  console.log('🚀 Starting DB sync...\n');
  
  // Load parsed data
  const facilities = JSON.parse(fs.readFileSync('public-data-facilities.json', 'utf-8'));
  console.log(`📊 Loaded ${facilities.length} facilities with ratings\n`);
  
  // Generate SQL statements
  const sqlStatements = [];
  let matchCount = 0;
  let newCount = 0;
  
  // Split into batches
  const batchSize = 100;
  const batches = [];
  
  for (let i = 0; i < facilities.length; i += batchSize) {
    batches.push(facilities.slice(i, i + batchSize));
  }
  
  console.log(`📦 Split into ${batches.length} batches (${batchSize} per batch)\n`);
  
  // Generate batch SQL files
  for (let batchIdx = 0; batchIdx < batches.length; batchIdx++) {
    const batch = batches[batchIdx];
    const sqlLines = [];
    
    sqlLines.push('-- Batch ' + (batchIdx + 1) + ' of ' + batches.length);
    sqlLines.push('-- Processing ' + batch.length + ' facilities\n');
    
    for (const fac of batch) {
      const { adminSym, facilityName, gradeValue, gradeScore, sido, sigungu } = fac;
      
      // Escape single quotes
      const safeName = facilityName.replace(/'/g, "''");
      const safeSido = sido.replace(/'/g, "''");
      const safeSigungu = sigungu.replace(/'/g, "''");
      
      // 1. Try to update existing facility
      sqlLines.push(`-- Update existing: ${safeName}`);
      sqlLines.push(`UPDATE facilities SET admin_sym = '${adminSym}' WHERE name LIKE '%${safeName.substring(0, 10)}%' AND sido = '${safeSido}';`);
      
      // 2. Insert/Update public data
      sqlLines.push(`INSERT INTO facility_public_data (facility_id, admin_sym, grade_year, grade_value)`);
      sqlLines.push(`SELECT id, '${adminSym}', 2024, '${gradeValue}'`);
      sqlLines.push(`FROM facilities WHERE admin_sym = '${adminSym}'`);
      sqlLines.push(`ON CONFLICT(facility_id) DO UPDATE SET`);
      sqlLines.push(`  grade_year = 2024,`);
      sqlLines.push(`  grade_value = '${gradeValue}',`);
      sqlLines.push(`  last_updated = CURRENT_TIMESTAMP;`);
      sqlLines.push('');
      
      // 3. If no match, insert new facility
      sqlLines.push(`-- Insert new facility if not exists`);
      sqlLines.push(`INSERT INTO facilities (facility_type, name, address, sido, sigungu, admin_sym, created_at)`);
      sqlLines.push(`SELECT '노인요양시설', '${safeName}', '${safeSido} ${safeSigungu}', '${safeSido}', '${safeSigungu}', '${adminSym}', CURRENT_TIMESTAMP`);
      sqlLines.push(`WHERE NOT EXISTS (SELECT 1 FROM facilities WHERE admin_sym = '${adminSym}');`);
      sqlLines.push('');
    }
    
    // Save batch SQL file
    const batchFile = `migrations/batches_ratings/batch_${String(batchIdx + 1).padStart(3, '0')}.sql`;
    fs.mkdirSync('migrations/batches_ratings', { recursive: true });
    fs.writeFileSync(batchFile, sqlLines.join('\n'));
    
    if (batchIdx < 3 || batchIdx === batches.length - 1) {
      console.log(`✅ Generated: ${batchFile}`);
    } else if (batchIdx === 3) {
      console.log(`   ... (${batches.length - 4} more batches)`);
    }
  }
  
  console.log(`\n💾 Generated ${batches.length} SQL batch files`);
  console.log(`📁 Location: migrations/batches_ratings/\n`);
  
  // Create execution script
  const execScript = `#!/bin/bash
# Execute all rating batch files
echo "🚀 Starting ratings import..."
BATCH_DIR="migrations/batches_ratings"
TOTAL=$(ls $BATCH_DIR/batch_*.sql | wc -l)
CURRENT=0

for file in $BATCH_DIR/batch_*.sql; do
  CURRENT=$((CURRENT + 1))
  echo "[$CURRENT/$TOTAL] Processing $(basename $file)..."
  npx wrangler d1 execute carejoa-production --local --file="$file" > /dev/null 2>&1
  if [ $? -eq 0 ]; then
    echo "  ✅ Success"
  else
    echo "  ⚠️  Some errors (continuing...)"
  fi
done

echo ""
echo "✅ Import complete!"
echo "📊 Checking results..."
npx wrangler d1 execute carejoa-production --local --command="SELECT COUNT(*) as total_facilities FROM facilities WHERE admin_sym IS NOT NULL"
npx wrangler d1 execute carejoa-production --local --command="SELECT COUNT(*) as total_ratings FROM facility_public_data"
npx wrangler d1 execute carejoa-production --local --command="SELECT grade_value, COUNT(*) as count FROM facility_public_data GROUP BY grade_value ORDER BY grade_value"
`;
  
  fs.writeFileSync('scripts/import-ratings-batch.sh', execScript);
  fs.chmodSync('scripts/import-ratings-batch.sh', '0755');
  console.log('📝 Created execution script: scripts/import-ratings-batch.sh\n');
  
  console.log('🎯 Next steps:');
  console.log('   1. Run: bash scripts/import-ratings-batch.sh');
  console.log('   2. This will import all 22,541 facilities with ratings');
  console.log('   3. New facilities will be added automatically');
  console.log('   4. Existing facilities will be updated with ratings\n');
}

main().catch(err => {
  console.error('❌ Error:', err.message);
  process.exit(1);
});

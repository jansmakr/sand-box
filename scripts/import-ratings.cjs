const fs = require('fs');
const path = require('path');

// Read CSV file with proper encoding handling
function readCSV(filePath) {
  const content = fs.readFileSync(filePath);
  
  // Try to decode as UTF-8 first, fallback to latin1 (binary safe)
  let text;
  try {
    text = content.toString('utf-8');
    // Check if it contains replacement characters
    if (text.includes('�')) {
      throw new Error('Invalid UTF-8');
    }
  } catch {
    // Use latin1 for binary-safe reading, then convert known patterns
    text = content.toString('latin1');
  }
  
  const lines = text.split('\n').filter(line => line.trim());
  const headers = lines[0].split(',').map(h => h.trim());
  
  console.log(`📊 Found ${headers.length} columns, ${lines.length - 1} data rows`);
  
  const data = [];
  for (let i = 1; i < lines.length; i++) {
    const values = lines[i].split(',');
    if (values.length >= headers.length) {
      const row = {};
      headers.forEach((header, idx) => {
        row[header] = values[idx] ? values[idx].trim() : '';
      });
      data.push(row);
    }
  }
  
  return { headers, data };
}

// Read XLSX file
function readXLSX(filePath) {
  console.log(`📂 Reading XLSX file: ${filePath}`);
  // For now, we'll focus on CSV processing
  // XLSX will be processed in next step if needed
  return null;
}

// Main processing
async function main() {
  const csvPath = '/home/user/uploaded_files/국민건강보험공단_장기요양기관 평가 결과_20241231.csv';
  const xlsxPath = '/home/user/uploaded_files/국민건강보험공단_장기요양기관 시설별 현황_20250401.xlsx';
  
  console.log('🚀 Starting data import...\n');
  
  // Read CSV ratings data
  console.log('📖 Reading CSV file...');
  const { headers, data } = readCSV(csvPath);
  
  console.log(`\n✅ Loaded ${data.length} ratings records`);
  console.log(`\nColumn headers:`);
  headers.forEach((h, i) => console.log(`  ${i + 1}. ${h}`));
  
  console.log(`\n📋 Sample data (first 3 rows):`);
  data.slice(0, 3).forEach((row, i) => {
    console.log(`\nRow ${i + 1}:`);
    Object.entries(row).slice(0, 8).forEach(([key, value]) => {
      console.log(`  ${key}: ${value}`);
    });
  });
  
  // Generate SQL for import
  console.log(`\n📝 Generating SQL insert statements...`);
  
  const sqlStatements = [];
  let processedCount = 0;
  let newFacilities = [];
  let updates = [];
  
  for (const row of data) {
    // Extract data (column positions based on observed structure)
    const adminSym = row[Object.keys(row)[2]] || ''; // Column 3: 장기요양기관기호
    const facilityName = row[Object.keys(row)[3]] || ''; // Column 4: 장기요양기관명
    const gradeValue = row[Object.keys(row)[8]] || ''; // Column 9: 평가등급
    const gradeScore = row[Object.keys(row)[9]] || '0'; // Column 10: 평가총점
    const sido = row[Object.keys(row)[5]] || ''; // Column 6: 관할시도명
    const sigungu = row[Object.keys(row)[6]] || ''; // Column 7: 관할시군구명
    
    if (adminSym && facilityName && gradeValue) {
      processedCount++;
      
      // Store for batch processing
      newFacilities.push({
        adminSym,
        facilityName,
        gradeValue,
        gradeScore: parseFloat(gradeScore) || 0,
        sido,
        sigungu
      });
    }
  }
  
  console.log(`\n✅ Processed ${processedCount} valid records`);
  console.log(`📊 Ready to import ${newFacilities.length} facilities with ratings`);
  
  // Write data to JSON for SQL import script
  const outputPath = '/home/user/webapp/public-data-facilities.json';
  fs.writeFileSync(outputPath, JSON.stringify(newFacilities, null, 2));
  console.log(`\n💾 Saved data to: ${outputPath}`);
  
  return {
    total: data.length,
    processed: processedCount,
    facilities: newFacilities.length
  };
}

main()
  .then(result => {
    console.log('\n🎉 Import preparation complete!');
    console.log(`   Total records: ${result.total}`);
    console.log(`   Processed: ${result.processed}`);
    console.log(`   Ready for DB: ${result.facilities}`);
  })
  .catch(err => {
    console.error('❌ Error:', err.message);
    process.exit(1);
  });

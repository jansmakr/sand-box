const XLSX = require('xlsx');

const workbook = XLSX.readFile('hospital_list.xlsx');

console.log('=== 전체 시트 목록 ===');
console.log('총 시트 수:', workbook.SheetNames.length);
console.log('시트 이름들:', workbook.SheetNames);
console.log('');

let totalRecords = 0;

workbook.SheetNames.forEach((sheetName, index) => {
  const sheet = workbook.Sheets[sheetName];
  const data = XLSX.utils.sheet_to_json(sheet);
  
  console.log(`\n[${index + 1}] 시트명: "${sheetName}"`);
  console.log(`    행 수: ${data.length}개`);
  
  if (data.length > 0) {
    console.log(`    컬럼: ${Object.keys(data[0]).join(', ')}`);
    console.log(`    샘플 데이터:`, data[0]);
  }
  
  totalRecords += data.length;
});

console.log(`\n=== 총합 ===`);
console.log(`전체 요양병원 수: ${totalRecords}개`);

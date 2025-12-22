const XLSX = require('xlsx');

const workbook = XLSX.readFile('hospital_list.xlsx');
const sheetName = workbook.SheetNames[0];
const sheet = workbook.Sheets[sheetName];
const data = XLSX.utils.sheet_to_json(sheet);

console.log('총 행 수:', data.length);
console.log('\n첫 5개 행:');
console.log(JSON.stringify(data.slice(0, 5), null, 2));

console.log('\n컬럼 이름:');
if (data.length > 0) {
  console.log(Object.keys(data[0]));
}

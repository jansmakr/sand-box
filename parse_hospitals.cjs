const XLSX = require('xlsx');
const fs = require('fs');

const workbook = XLSX.readFile('hospital_list.xlsx');

// 지역명 매핑 (시트명 -> 표준 시도명)
const regionMapping = {
  '서울': '서울특별시',
  '경기도': '경기도',
  '인천광역시': '인천광역시',
  '세종': '세종특별자치시',
  '대전시': '대전광역시',
  '충청북도': '충청북도',
  '충청남도': '충청남도',
  '전라도광주': '광주광역시',
  '전라북도': '전북특별자치도',
  '전라남도': '전라남도',
  '부산': '부산광역시',
  '대구광역시': '대구광역시',
  '경상북도': '경상북도',
  '경상남도': '경상남도',
  '강원도': '강원특별자치도',
  '울산': '울산광역시',
  '제주': '제주특별자치도'
};

// 주소에서 시군구 추출
function extractSigungu(address, sido) {
  if (!address) return '';
  
  // 주소 정규화
  const addr = address.trim();
  
  // 구/군/시 추출 패턴
  const patterns = [
    /^([가-힣]+구)\s/,  // "강남구 ..."
    /^([가-힣]+군)\s/,  // "가평군 ..."
    /^([가-힣]+시)\s/,  // "수원시 ..."
  ];
  
  for (const pattern of patterns) {
    const match = addr.match(pattern);
    if (match) {
      return match[1];
    }
  }
  
  return '';
}

const allHospitals = [];
let skippedCount = 0;

workbook.SheetNames.forEach((sheetName) => {
  const sheet = workbook.Sheets[sheetName];
  let data = XLSX.utils.sheet_to_json(sheet);
  
  const sido = regionMapping[sheetName] || sheetName;
  
  console.log(`\n처리 중: ${sheetName} (${sido}) - ${data.length}개`);
  
  // 부산 시트는 첫 행이 헤더이므로 제거
  if (sheetName === '부산' && data.length > 0) {
    const firstRow = data[0];
    if (firstRow['부산'] === '번호' || firstRow['부산'] === '번호') {
      data = data.slice(1);
      console.log(`  첫 행 헤더 제거됨, 남은 데이터: ${data.length}개`);
    }
  }
  
  data.forEach((row, index) => {
    try {
      // 컬럼명 정규화 (시트마다 다름)
      const hospitalName = row['병원'] || row['병원명'] || row['병원명 '] || row['상호'] || row['__EMPTY'];
      const phone = row['전화번호'] || row['__EMPTY'] || row['__EMPTY_1'] || '';
      const address = row['주소'] || row['주소 '] || row['__EMPTY_2'] || '';
      const notes = row['비고'] || row['특화'] || row['기타'] || row['__EMPTY_3'] || '';
      
      // 유효성 검사
      if (!hospitalName || hospitalName === '상호' || hospitalName === '병원명') {
        skippedCount++;
        return;
      }
      
      if (!address || address === '주소' || address === '주소 ') {
        console.log(`  [건너뜀] ${hospitalName}: 주소 없음`);
        skippedCount++;
        return;
      }
      
      const sigungu = extractSigungu(address, sido);
      const fullAddress = `${sido} ${address}`;
      
      allHospitals.push({
        name: hospitalName.trim(),
        phone: phone ? String(phone).trim() : '',
        address: fullAddress.trim(),
        notes: notes ? String(notes).trim() : '',
        sido: sido,
        sigungu: sigungu || sido
      });
      
    } catch (err) {
      console.error(`  [오류] ${sheetName} 행 ${index + 1}:`, err.message);
      skippedCount++;
    }
  });
});

console.log(`\n=== 파싱 완료 ===`);
console.log(`총 병원 수: ${allHospitals.length}개`);
console.log(`건너뛴 행: ${skippedCount}개`);

// JSON 파일로 저장
fs.writeFileSync('hospitals_parsed.json', JSON.stringify(allHospitals, null, 2));
console.log(`\nJSON 파일 저장: hospitals_parsed.json`);

// 샘플 데이터 출력
console.log(`\n샘플 데이터 (첫 3개):`);
allHospitals.slice(0, 3).forEach((h, i) => {
  console.log(`\n[${i + 1}] ${h.name}`);
  console.log(`    전화: ${h.phone}`);
  console.log(`    주소: ${h.address}`);
  console.log(`    비고: ${h.notes}`);
  console.log(`    시도: ${h.sido}`);
  console.log(`    시군구: ${h.sigungu}`);
});

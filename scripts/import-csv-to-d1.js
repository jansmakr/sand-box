/**
 * CSV 데이터를 D1 데이터베이스로 임포트하는 스크립트
 * 
 * 사용법:
 * node scripts/import-csv-to-d1.js
 */

import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// CSV 파싱 함수 (따옴표 처리)
function parseCSVLine(line) {
  const result = [];
  let current = '';
  let inQuotes = false;
  
  for (let i = 0; i < line.length; i++) {
    const char = line[i];
    
    if (char === '"') {
      inQuotes = !inQuotes;
    } else if (char === ',' && !inQuotes) {
      result.push(current.trim());
      current = '';
    } else {
      current += char;
    }
  }
  
  result.push(current.trim());
  return result;
}

// CSV 파일 읽기 및 SQL 생성
function generateInsertSQL() {
  const csvPath = path.join(__dirname, '../public/static/facilities_data.csv');
  const csvContent = fs.readFileSync(csvPath, 'utf-8');
  const lines = csvContent.split('\n').filter(line => line.trim());
  
  // 헤더 제거 (BOM 제거 포함)
  const header = lines[0].replace(/^\uFEFF/, '');
  console.log('📋 CSV 헤더:', header);
  
  const facilities = [];
  
  // 각 라인 파싱
  for (let i = 1; i < lines.length; i++) {
    const columns = parseCSVLine(lines[i]);
    
    if (columns.length < 9) {
      console.warn(`⚠️  Line ${i + 1} 스킵 (컬럼 수 부족):`, columns.length);
      continue;
    }
    
    const [facilityType, name, postalCode, address, lat, lng, , sido, sigungu] = columns;
    
    // 위도/경도 검증
    const latitude = parseFloat(lat);
    const longitude = parseFloat(lng);
    
    if (isNaN(latitude) || isNaN(longitude)) {
      console.warn(`⚠️  Line ${i + 1} 스킵 (잘못된 좌표):`, { lat, lng });
      continue;
    }
    
    facilities.push({
      facilityType: facilityType.replace(/^"|"$/g, ''),
      name: name.replace(/^"|"$/g, ''),
      postalCode: postalCode.replace(/^"|"$/g, ''),
      address: address.replace(/^"|"$/g, ''),
      phone: '',  // 기본값 빈 문자열
      latitude,
      longitude,
      sido: sido.replace(/^"|"$/g, ''),
      sigungu: sigungu.replace(/^"|"$/g, '')
    });
  }
  
  console.log(`✅ 파싱 완료: ${facilities.length}개 시설`);
  
  // SQL INSERT 문 생성 (배치 처리)
  const sqlStatements = [];
  const batchSize = 100;
  
  for (let i = 0; i < facilities.length; i += batchSize) {
    const batch = facilities.slice(i, i + batchSize);
    const values = batch.map(f => 
      `('${f.facilityType.replace(/'/g, "''")}', '${f.name.replace(/'/g, "''")}', '${f.postalCode}', '${f.address.replace(/'/g, "''")}', '${f.phone}', ${f.latitude}, ${f.longitude}, '${f.sido}', '${f.sigungu}')`
    ).join(',\n  ');
    
    sqlStatements.push(`INSERT INTO facilities (facility_type, name, postal_code, address, phone, latitude, longitude, sido, sigungu) VALUES\n  ${values};`);
  }
  
  return sqlStatements.join('\n\n');
}

// SQL 파일 생성
try {
  console.log('🚀 CSV 데이터 임포트 시작...');
  
  const sql = generateInsertSQL();
  const outputPath = path.join(__dirname, '../migrations/0002_import_facilities_data.sql');
  
  fs.writeFileSync(outputPath, sql);
  
  console.log('✅ SQL 파일 생성 완료:', outputPath);
  console.log('\n📝 다음 명령어로 데이터베이스에 적용하세요:');
  console.log('npm run db:migrate:local');
  
} catch (error) {
  console.error('❌ 오류 발생:', error);
  process.exit(1);
}

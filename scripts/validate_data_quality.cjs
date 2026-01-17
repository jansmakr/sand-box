#!/usr/bin/env node
/**
 * 데이터 품질 개선 스크립트
 * - 좌표 누락 시설 검출
 * - 전화번호 형식 검증
 * - 중복 시설 검출
 */

const https = require('https');
const fs = require('fs');

// 설정
const API_BASE = process.env.API_BASE || 'https://carejoa.kr';
const OUTPUT_DIR = './data_quality_reports';

// 출력 디렉토리 생성
if (!fs.existsSync(OUTPUT_DIR)) {
  fs.mkdirSync(OUTPUT_DIR, { recursive: true });
}

console.log('🔍 데이터 품질 분석 시작...\n');

// 1. 좌표 누락 시설 검출
async function checkMissingCoordinates() {
  console.log('📍 좌표 누락 시설 검출 중...');
  
  const facilities = JSON.parse(fs.readFileSync('./public/static/facilities.json', 'utf8'));
  
  const missingCoords = facilities.filter(f => 
    !f.latitude || !f.longitude || 
    f.latitude === 0 || f.longitude === 0 ||
    f.lat === 0 || f.lng === 0
  );
  
  console.log(`   발견: ${missingCoords.length}개 시설`);
  
  const report = {
    timestamp: new Date().toISOString(),
    total_facilities: facilities.length,
    missing_count: missingCoords.length,
    percentage: ((missingCoords.length / facilities.length) * 100).toFixed(2),
    facilities: missingCoords.map(f => ({
      id: f.id,
      name: f.name,
      address: f.address,
      sido: f.sido,
      sigungu: f.sigungu
    }))
  };
  
  fs.writeFileSync(
    `${OUTPUT_DIR}/missing_coordinates_${Date.now()}.json`,
    JSON.stringify(report, null, 2)
  );
  
  return report;
}

// 2. 전화번호 형식 검증
async function validatePhoneNumbers() {
  console.log('📞 전화번호 형식 검증 중...');
  
  const facilities = JSON.parse(fs.readFileSync('./public/static/facilities.json', 'utf8'));
  
  const phoneRegex = /^0\d{1,2}-?\d{3,4}-?\d{4}$/;
  
  const invalidPhones = facilities.filter(f => 
    f.phone && !phoneRegex.test(f.phone.replace(/\s/g, ''))
  );
  
  const missingPhones = facilities.filter(f => !f.phone);
  
  console.log(`   잘못된 형식: ${invalidPhones.length}개`);
  console.log(`   전화번호 없음: ${missingPhones.length}개`);
  
  const report = {
    timestamp: new Date().toISOString(),
    total_facilities: facilities.length,
    invalid_count: invalidPhones.length,
    missing_count: missingPhones.length,
    invalid_facilities: invalidPhones.map(f => ({
      id: f.id,
      name: f.name,
      phone: f.phone
    })),
    missing_facilities: missingPhones.slice(0, 100).map(f => ({
      id: f.id,
      name: f.name,
      address: f.address
    }))
  };
  
  fs.writeFileSync(
    `${OUTPUT_DIR}/phone_validation_${Date.now()}.json`,
    JSON.stringify(report, null, 2)
  );
  
  return report;
}

// 3. 중복 시설 검출
async function detectDuplicates() {
  console.log('🔄 중복 시설 검출 중...');
  
  const facilities = JSON.parse(fs.readFileSync('./public/static/facilities.json', 'utf8'));
  
  const nameMap = new Map();
  const duplicates = [];
  
  facilities.forEach(f => {
    const key = `${f.name}_${f.sido}_${f.sigungu}`;
    if (nameMap.has(key)) {
      duplicates.push({
        name: f.name,
        sido: f.sido,
        sigungu: f.sigungu,
        ids: [nameMap.get(key), f.id]
      });
    } else {
      nameMap.set(key, f.id);
    }
  });
  
  console.log(`   발견: ${duplicates.length}개 중복 그룹`);
  
  const report = {
    timestamp: new Date().toISOString(),
    total_facilities: facilities.length,
    duplicate_groups: duplicates.length,
    duplicates: duplicates
  };
  
  fs.writeFileSync(
    `${OUTPUT_DIR}/duplicates_${Date.now()}.json`,
    JSON.stringify(report, null, 2)
  );
  
  return report;
}

// 4. 전문분야 분포 분석
async function analyzeSpecialties() {
  console.log('🏥 전문분야 분포 분석 중...');
  
  const facilities = JSON.parse(fs.readFileSync('./public/static/facilities.json', 'utf8'));
  
  const specialtyCount = {
    '재활': 0,
    '치매': 0,
    '중풍': 0,
    '암환자': 0,
    '와상환자': 0,
    '없음': 0
  };
  
  // 시설 이름 기반 추정
  facilities.forEach(f => {
    let hasSpecialty = false;
    
    if (f.name.includes('재활')) {
      specialtyCount['재활']++;
      hasSpecialty = true;
    }
    if (f.name.includes('치매')) {
      specialtyCount['치매']++;
      hasSpecialty = true;
    }
    if (f.name.includes('중풍') || f.name.includes('뇌졸중')) {
      specialtyCount['중풍']++;
      hasSpecialty = true;
    }
    
    if (!hasSpecialty) {
      specialtyCount['없음']++;
    }
  });
  
  console.log(`   재활: ${specialtyCount['재활']}개`);
  console.log(`   치매: ${specialtyCount['치매']}개`);
  console.log(`   전문분야 없음: ${specialtyCount['없음']}개`);
  
  return specialtyCount;
}

// 실행
async function main() {
  try {
    const coordsReport = await checkMissingCoordinates();
    const phoneReport = await validatePhoneNumbers();
    const duplicatesReport = await detectDuplicates();
    const specialtiesReport = await analyzeSpecialties();
    
    console.log('\n✅ 분석 완료!');
    console.log(`\n📊 요약:`);
    console.log(`   - 좌표 누락: ${coordsReport.missing_count}개 (${coordsReport.percentage}%)`);
    console.log(`   - 잘못된 전화번호: ${phoneReport.invalid_count}개`);
    console.log(`   - 전화번호 없음: ${phoneReport.missing_count}개`);
    console.log(`   - 중복 시설: ${duplicatesReport.duplicate_groups}개 그룹`);
    console.log(`\n📁 보고서 저장 위치: ${OUTPUT_DIR}/`);
    
  } catch (error) {
    console.error('❌ 에러 발생:', error);
    process.exit(1);
  }
}

main();

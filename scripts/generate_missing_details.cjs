#!/usr/bin/env node

const fs = require('fs');
const path = require('path');

// Load facilities data
const facilitiesPath = path.join(__dirname, '../public/static/facilities.json');
const facilities = JSON.parse(fs.readFileSync(facilitiesPath, 'utf-8'));

console.log(`📦 총 ${facilities.length}개 시설 로드 완료`);

// Filter facilities with string IDs
const missingFacilities = facilities.filter(f => typeof f.id === 'string');
console.log(`🔍 누락된 시설 수: ${missingFacilities.length}개 (문자열 ID)`);

// Generate details for missing facilities
const generateDetails = (facility) => {
  const name = facility.name || '';
  const type = facility.type || '';
  const sido = facility.sido || '';
  
  // Determine specialties based on name
  const specialties = [];
  if (name.includes('재활') || name.includes('회복')) specialties.push('재활');
  if (name.includes('치매') || name.includes('알츠하이머')) specialties.push('치매');
  if (name.includes('암') || name.includes('호스피스')) specialties.push('암환자');
  if (name.includes('중풍') || name.includes('뇌졸중')) specialties.push('중풍');
  
  // Determine admission types based on facility type
  const admissionTypes = [];
  if (type === '요양병원') {
    admissionTypes.push('정규입소', '응급입소');
  } else if (type === '요양원') {
    admissionTypes.push('정규입소', '단기입소');
  } else if (type === '재가복지센터') {
    admissionTypes.push('방문요양');
  } else if (type === '주야간보호') {
    admissionTypes.push('주간보호', '야간보호');
  }
  
  // Estimate costs based on region and type
  let monthlyCost = 2000000;
  let deposit = 3000000;
  
  if (type === '요양병원') {
    if (sido === '서울특별시') {
      monthlyCost = 3250000;
      deposit = 3250000;
    } else if (sido.includes('광역시') || sido === '경기도') {
      monthlyCost = 2800000;
      deposit = 2800000;
    } else {
      monthlyCost = 2500000;
      deposit = 2500000;
    }
  } else if (type === '요양원') {
    if (sido === '서울특별시') {
      monthlyCost = 2600000;
      deposit = 3900000;
    } else if (sido.includes('광역시') || sido === '경기도') {
      monthlyCost = 2200000;
      deposit = 3300000;
    } else {
      monthlyCost = 1800000;
      deposit = 2700000;
    }
  } else if (type === '재가복지센터') {
    monthlyCost = 800000;
    deposit = 0;
  } else if (type === '주야간보호') {
    monthlyCost = 1200000;
    deposit = 1200000;
  }
  
  return {
    facility_id: facility.id, // Keep as string for now
    specialties: JSON.stringify(specialties),
    admission_types: JSON.stringify(admissionTypes),
    monthly_cost: monthlyCost,
    deposit: deposit,
    notes: `자동 생성 - 문자열 ID (${new Date().toISOString().split('T')[0]})`,
    updated_by: 'auto_generator_string_id'
  };
};

// Generate details for all missing facilities
const detailsData = missingFacilities.map(generateDetails);

console.log('\n📊 생성 통계:');
console.log(`- 총 시설 수: ${detailsData.length}개`);
console.log(`- 전문분야 설정: ${detailsData.filter(d => d.specialties !== '[]').length}개`);

// Group by facility type
const typeGroups = {};
missingFacilities.forEach(f => {
  const type = f.facility_type || '기타';
  typeGroups[type] = (typeGroups[type] || 0) + 1;
});

console.log('\n시설 타입별 분포:');
Object.entries(typeGroups).forEach(([type, count]) => {
  console.log(`- ${type}: ${count}개`);
});

// Display first 3 samples
console.log('\n샘플 (상위 3개):');
detailsData.slice(0, 3).forEach((detail, idx) => {
  const facility = missingFacilities[idx];
  console.log(`\n${idx + 1}) ${facility.name} (ID: ${facility.id}, ${facility.type})`);
  console.log(`   - 전문분야: ${detail.specialties}`);
  console.log(`   - 입소유형: ${detail.admission_types}`);
  console.log(`   - 월비용: ${(detail.monthly_cost / 10000).toFixed(0)}만원`);
  console.log(`   - 보증금: ${(detail.deposit / 10000).toFixed(0)}만원`);
});

// Generate SQL file
const generateSQL = (data) => {
  const batchSize = 50;
  const batches = [];
  
  for (let i = 0; i < data.length; i += batchSize) {
    const batch = data.slice(i, i + batchSize);
    const values = batch.map(d => 
      `(${d.facility_id}, ${d.specialties}, ${d.admission_types}, ${d.monthly_cost}, ${d.deposit}, '${d.notes}', '${d.updated_by}', datetime('now'))`
    ).join(',\n  ');
    
    batches.push(`-- Batch ${Math.floor(i / batchSize) + 1} (IDs ${batch[0].facility_id} - ${batch[batch.length - 1].facility_id})
INSERT OR REPLACE INTO facility_details 
  (facility_id, specialties, admission_types, monthly_cost, deposit, notes, updated_by, updated_at)
VALUES
  ${values};
`);
  }
  
  return `-- Auto-generated facility details for missing facilities (string IDs)
-- Generated at: ${new Date().toISOString()}
-- Total facilities: ${data.length}

${batches.join('\n')}`;
};

// Save SQL file
const sql = generateSQL(detailsData);
const sqlPath = path.join(__dirname, '../migrations/9999_missing_facility_details.sql');
fs.writeFileSync(sqlPath, sql);

const stats = fs.statSync(sqlPath);
console.log(`\n✅ SQL 파일 생성 완료:`);
console.log(`   경로: ${sqlPath}`);
console.log(`   크기: ${(stats.size / 1024).toFixed(2)} KB`);

console.log('\n📝 다음 단계:');
console.log('1. SQL 파일 검토');
console.log('2. 로컬 테스트: npx wrangler d1 execute carejoa-production --local --file=migrations/9999_missing_facility_details.sql');
console.log('3. 프로덕션 적용: npx wrangler d1 execute carejoa-production --remote --file=migrations/9999_missing_facility_details.sql');

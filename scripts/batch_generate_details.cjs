#!/usr/bin/env node

/**
 * 배치 처리: 15,751개 시설 상세정보 자동 생성
 * 
 * 실행 방법:
 *   node scripts/batch_generate_details.js
 * 
 * 출력:
 *   migrations/9999_auto_generated_facility_details.sql
 */

const fs = require('fs')
const path = require('path')

// ========== 데이터 생성 함수 ==========

function estimateSpecialties(facility) {
  const name = facility.name.toLowerCase()
  const specialties = []

  // 이름 기반 키워드 매칭
  if (name.includes('재활') || name.includes('rehabilitation')) {
    specialties.push('재활')
  }
  if (name.includes('치매') || name.includes('dementia') || name.includes('알츠하이머')) {
    specialties.push('치매')
  }
  if (name.includes('중풍') || name.includes('뇌졸중') || name.includes('stroke')) {
    specialties.push('중풍')
  }
  if (name.includes('암') || name.includes('cancer') || name.includes('종양') || name.includes('oncology')) {
    specialties.push('암')
  }
  if (name.includes('투석') || name.includes('신장') || name.includes('kidney')) {
    specialties.push('신장투석')
  }
  if (name.includes('감염') || name.includes('격리') || name.includes('코로나')) {
    specialties.push('감염관리')
  }
  if (name.includes('호스피스') || name.includes('hospice') || name.includes('완화')) {
    specialties.push('호스피스')
  }
  if (name.includes('당뇨') || name.includes('diabetes')) {
    specialties.push('당뇨')
  }

  // 시설 타입별 기본 전문분야
  if (specialties.length === 0) {
    switch (facility.type) {
      case '요양병원':
        specialties.push('재활', '치매')
        break
      case '요양원':
        specialties.push('치매')
        break
      case '주야간보호':
        specialties.push('치매')
        break
    }
  }

  return [...new Set(specialties)]
}

function estimateAdmissionTypes(facility) {
  const name = facility.name.toLowerCase()
  const types = []

  // 이름 기반 키워드
  if (name.includes('단기') || name.includes('short')) {
    types.push('단기입소')
  }
  if (name.includes('야간') || name.includes('night')) {
    types.push('야간입소')
  }
  if (name.includes('주말')) {
    types.push('주말입소')
  }
  if (name.includes('응급') || name.includes('emergency')) {
    types.push('응급입소')
  }

  // 시설 타입별 기본 입소유형
  switch (facility.type) {
    case '요양병원':
      types.push('정규입소', '응급입소')
      break
    case '요양원':
      types.push('정규입소', '단기입소')
      break
    case '주야간보호':
      types.push('야간입소', '주말입소')
      break
    case '재가복지센터':
      types.push('정규입소')
      break
  }

  return [...new Set(types)]
}

function estimateCost(facility) {
  let baseCost = 0
  let depositMultiplier = 2

  // 시설 타입별 기본 비용
  switch (facility.type) {
    case '요양병원':
      baseCost = 2500000
      depositMultiplier = 1
      break
    case '요양원':
      baseCost = 2000000
      depositMultiplier = 2
      break
    case '주야간보호':
      baseCost = 1500000
      depositMultiplier = 1.5
      break
    case '재가복지센터':
      baseCost = 1200000
      depositMultiplier = 1
      break
    default:
      baseCost = 2000000
  }

  // 지역별 가격 조정
  if (facility.sido === '서울특별시') {
    baseCost *= 1.3
  } else if (facility.sido === '경기도') {
    baseCost *= 1.2
  } else if (['인천광역시', '대전광역시', '부산광역시', '대구광역시'].includes(facility.sido)) {
    baseCost *= 1.1
  } else if (facility.sido === '제주특별자치도') {
    baseCost *= 1.15
  }

  // 시군구별 추가 조정
  if (facility.sido === '서울특별시') {
    const highEndAreas = ['강남구', '서초구', '송파구', '용산구', '마포구', '강서구']
    if (highEndAreas.includes(facility.sigungu)) {
      baseCost *= 1.2
    }
  }

  if (facility.sido === '경기도') {
    const highEndAreas = ['성남시', '용인시', '고양시', '과천시', '수원시']
    if (highEndAreas.some(area => facility.sigungu && facility.sigungu.includes(area))) {
      baseCost *= 1.15
    }
  }

  return {
    monthly: Math.round(baseCost / 10000) * 10000,
    deposit: Math.round((baseCost * depositMultiplier) / 10000) * 10000
  }
}

function generateFacilityDetails(facility) {
  const specialties = estimateSpecialties(facility)
  const admissionTypes = estimateAdmissionTypes(facility)
  const costs = estimateCost(facility)

  return {
    facility_id: facility.id,
    specialties: JSON.stringify(specialties),
    admission_types: JSON.stringify(admissionTypes),
    monthly_cost: costs.monthly,
    deposit: costs.deposit,
    notes: `자동 생성 (${new Date().toISOString().split('T')[0]})`,
    updated_by: 'auto_generator'
  }
}

function generateInsertSQL(details) {
  const escape = (str) => String(str).replace(/'/g, "''")
  
  return `INSERT OR REPLACE INTO facility_details (facility_id, specialties, admission_types, monthly_cost, deposit, notes, updated_by, updated_at) 
VALUES (${details.facility_id}, '${escape(details.specialties)}', '${escape(details.admission_types)}', ${details.monthly_cost}, ${details.deposit}, '${escape(details.notes)}', '${escape(details.updated_by)}', datetime('now'));`
}

// ========== 메인 프로세스 ==========

async function main() {
  console.log('🚀 시설 상세정보 자동 생성 시작...\n')

  // 1. facilities.json 로드
  const facilitiesPath = path.join(__dirname, '../public/static/facilities.json')
  
  if (!fs.existsSync(facilitiesPath)) {
    console.error('❌ facilities.json 파일을 찾을 수 없습니다:', facilitiesPath)
    process.exit(1)
  }

  console.log('📂 파일 로드:', facilitiesPath)
  const facilitiesData = JSON.parse(fs.readFileSync(facilitiesPath, 'utf8'))
  const facilities = facilitiesData.facilities || facilitiesData
  
  console.log(`✅ 총 ${facilities.length}개 시설 로드 완료\n`)

  // 2. 상세정보 생성
  console.log('🔄 상세정보 생성 중...')
  const allDetails = []
  const stats = {
    total: facilities.length,
    withSpecialties: 0,
    withAdmissionTypes: 0,
    byType: {}
  }

  for (const facility of facilities) {
    const details = generateFacilityDetails(facility)
    allDetails.push(details)

    // 통계
    const specialties = JSON.parse(details.specialties)
    const admissionTypes = JSON.parse(details.admission_types)
    
    if (specialties.length > 0) stats.withSpecialties++
    if (admissionTypes.length > 0) stats.withAdmissionTypes++
    
    const type = facility.type || 'unknown'
    stats.byType[type] = (stats.byType[type] || 0) + 1
  }

  console.log('✅ 상세정보 생성 완료\n')

  // 3. SQL 파일 생성
  console.log('📝 SQL 파일 생성 중...')
  const outputPath = path.join(__dirname, '../migrations/9999_auto_generated_facility_details.sql')
  
  const sqlLines = [
    '-- 자동 생성된 시설 상세정보',
    `-- 생성 일시: ${new Date().toISOString()}`,
    `-- 총 시설 수: ${facilities.length}`,
    `-- 전문분야 설정: ${stats.withSpecialties}개`,
    `-- 입소유형 설정: ${stats.withAdmissionTypes}개`,
    '',
    '-- 시설 타입별 분포:',
    ...Object.entries(stats.byType).map(([type, count]) => `--   ${type}: ${count}개`),
    '',
    '-- ========== 데이터 삽입 시작 ==========',
    ''
  ]

  // 배치 처리 (500개씩)
  const batchSize = 500
  for (let i = 0; i < allDetails.length; i += batchSize) {
    const batch = allDetails.slice(i, i + batchSize)
    sqlLines.push(`-- 배치 ${Math.floor(i / batchSize) + 1} (${i + 1} ~ ${Math.min(i + batchSize, allDetails.length)})`)
    sqlLines.push(...batch.map(generateInsertSQL))
    sqlLines.push('')
  }

  sqlLines.push('-- ========== 완료 ==========')

  fs.writeFileSync(outputPath, sqlLines.join('\n'), 'utf8')
  console.log('✅ SQL 파일 생성 완료:', outputPath)
  console.log(`   파일 크기: ${(fs.statSync(outputPath).size / 1024 / 1024).toFixed(2)} MB\n`)

  // 4. 통계 출력
  console.log('📊 생성 통계:')
  console.log(`   총 시설 수: ${stats.total}`)
  console.log(`   전문분야 설정: ${stats.withSpecialties}개 (${(stats.withSpecialties / stats.total * 100).toFixed(1)}%)`)
  console.log(`   입소유형 설정: ${stats.withAdmissionTypes}개 (${(stats.withAdmissionTypes / stats.total * 100).toFixed(1)}%)`)
  console.log('\n   시설 타입별:')
  Object.entries(stats.byType).forEach(([type, count]) => {
    console.log(`     ${type}: ${count}개 (${(count / stats.total * 100).toFixed(1)}%)`)
  })

  // 5. 샘플 출력
  console.log('\n📝 샘플 (첫 3개):')
  for (let i = 0; i < Math.min(3, allDetails.length); i++) {
    const detail = allDetails[i]
    const facility = facilities[i]
    console.log(`\n   ${i + 1}. ${facility.name} (${facility.type})`)
    console.log(`      전문분야: ${detail.specialties}`)
    console.log(`      입소유형: ${detail.admission_types}`)
    console.log(`      월비용: ${(detail.monthly_cost / 10000).toFixed(0)}만원`)
    console.log(`      보증금: ${(detail.deposit / 10000).toFixed(0)}만원`)
  }

  console.log('\n✅ 모든 작업 완료!')
  console.log('\n📌 다음 단계:')
  console.log('   1. SQL 파일 검토')
  console.log('   2. 로컬 테스트: npx wrangler d1 execute carejoa-production --local --file=migrations/9999_auto_generated_facility_details.sql')
  console.log('   3. 프로덕션 적용: npx wrangler d1 execute carejoa-production --remote --file=migrations/9999_auto_generated_facility_details.sql')
}

main().catch(console.error)

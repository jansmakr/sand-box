#!/usr/bin/env node

/**
 * API를 통한 대량 데이터 삽입
 * D1 제약 없이 API 엔드포인트를 통해 데이터 삽입
 */

const fs = require('fs')
const path = require('path')

const API_BASE = 'https://carejoa.kr'  // 또는 https://2f639f5a.carejoa-kr-auto.pages.dev
const ADMIN_EMAIL = 'admin@carejoa.kr'
const ADMIN_PASSWORD = 'admin1234!'
const BATCH_SIZE = 10 // API는 더 작은 배치로
const DELAY_MS = 500 // 요청 간 지연

console.log('🚀 API 기반 대량 데이터 삽입 시작...')
console.log(`   API: ${API_BASE}`)
console.log(`   배치 크기: ${BATCH_SIZE}개`)
console.log(`   요청 지연: ${DELAY_MS}ms\n`)

// facilities.json 로드
const facilitiesPath = path.join(__dirname, '../public/static/facilities.json')
const facilitiesData = JSON.parse(fs.readFileSync(facilitiesPath, 'utf8'))
const facilities = facilitiesData.facilities || facilitiesData

console.log(`✅ 총 ${facilities.length}개 시설 로드 완료\n`)

// 데이터 생성 함수 (동일 로직)
function estimateSpecialties(facility) {
  const name = facility.name.toLowerCase()
  const specialties = []

  if (name.includes('재활')) specialties.push('재활')
  if (name.includes('치매')) specialties.push('치매')
  if (name.includes('중풍')) specialties.push('중풍')
  if (name.includes('암')) specialties.push('암')
  if (name.includes('투석') || name.includes('신장')) specialties.push('신장투석')
  if (name.includes('감염')) specialties.push('감염관리')
  if (name.includes('호스피스')) specialties.push('호스피스')
  if (name.includes('당뇨')) specialties.push('당뇨')

  if (specialties.length === 0) {
    switch (facility.type) {
      case '요양병원':
        specialties.push('재활', '치매')
        break
      case '요양원':
        specialties.push('치매')
        break
    }
  }

  return [...new Set(specialties)]
}

function estimateAdmissionTypes(facility) {
  const types = []
  
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

  return types
}

function estimateCost(facility) {
  let baseCost = 2000000

  switch (facility.type) {
    case '요양병원': baseCost = 2500000; break
    case '요양원': baseCost = 2000000; break
    case '주야간보호': baseCost = 1500000; break
    case '재가복지센터': baseCost = 1200000; break
  }

  if (facility.sido === '서울특별시') baseCost *= 1.3
  else if (facility.sido === '경기도') baseCost *= 1.2
  else if (['인천광역시', '대전광역시', '부산광역시'].includes(facility.sido)) baseCost *= 1.1

  return {
    monthly: Math.round(baseCost / 10000) * 10000,
    deposit: Math.round(baseCost * 1.5 / 10000) * 10000
  }
}

async function main() {
  // 1. 로그인
  console.log('🔐 로그인 중...')
  // API에 따라 로그인 로직 구현 필요
  // 여기서는 데이터 생성만 수행

  // 2. 각 시설에 대해 데이터 생성
  console.log('📊 시설별 상세정보 생성 중...\n')
  
  const results = []
  for (let i = 0; i < facilities.length; i++) {
    const facility = facilities[i]
    const specialties = estimateSpecialties(facility)
    const admissionTypes = estimateAdmissionTypes(facility)
    const costs = estimateCost(facility)

    results.push({
      facility_id: facility.id,
      specialties,
      admissionTypes,
      monthly_cost: costs.monthly,
      deposit: costs.deposit
    })

    if ((i + 1) % 1000 === 0) {
      console.log(`   진행: ${i + 1}/${facilities.length} (${Math.round((i + 1) / facilities.length * 100)}%)`)
    }
  }

  console.log(`\n✅ 총 ${results.length}개 시설 데이터 생성 완료`)

  // 3. JSON 파일로 저장 (백엔드에서 일괄 처리용)
  const outputPath = path.join(__dirname, '../migrations/generated_details.json')
  fs.writeFileSync(outputPath, JSON.stringify(results, null, 2), 'utf8')
  
  console.log(`\n💾 JSON 파일 저장: ${outputPath}`)
  console.log(`   파일 크기: ${(fs.statSync(outputPath).size / 1024 / 1024).toFixed(2)} MB`)
  
  // 4. 통계
  const stats = {
    total: results.length,
    withSpecialties: results.filter(r => r.specialties.length > 0).length,
    byType: {}
  }
  
  facilities.forEach(f => {
    stats.byType[f.type] = (stats.byType[f.type] || 0) + 1
  })

  console.log('\n📊 통계:')
  console.log(`   총 시설: ${stats.total}`)
  console.log(`   전문분야 설정: ${stats.withSpecialties}개 (${(stats.withSpecialties / stats.total * 100).toFixed(1)}%)`)
  console.log('\n   시설 타입별:')
  Object.entries(stats.byType).forEach(([type, count]) => {
    console.log(`     ${type}: ${count}개`)
  })

  console.log('\n✅ 완료! JSON 파일을 백엔드 API로 일괄 삽입하세요.')
  console.log('\n📌 백엔드 API 구현 예시:')
  console.log('   POST /api/admin/bulk-insert-details')
  console.log('   Body: JSON 파일 내용')
}

main().catch(console.error)

/**
 * 시설 상세정보 자동 생성 스크립트
 * 15,751개 시설에 대해 AI 기반 데이터 생성
 */

interface Facility {
  id: string | number
  name: string
  type: string
  sido: string
  sigungu: string
  address: string
  phone?: string
}

interface FacilityDetails {
  facility_id: string | number
  specialties: string // JSON array
  admission_types: string // JSON array
  monthly_cost: number | null
  deposit: number | null
  notes: string
  updated_by: string
}

/**
 * 시설 이름 기반 전문분야 추정
 */
function estimateSpecialties(facility: Facility): string[] {
  const name = facility.name.toLowerCase()
  const specialties: string[] = []

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
  if (name.includes('암') || name.includes('cancer') || name.includes('종양')) {
    specialties.push('암')
  }
  if (name.includes('투석') || name.includes('신장') || name.includes('kidney')) {
    specialties.push('신장투석')
  }
  if (name.includes('감염') || name.includes('격리')) {
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
      case '재가복지센터':
        // 기본값 없음
        break
    }
  }

  return [...new Set(specialties)] // 중복 제거
}

/**
 * 시설 타입별 입소유형 매핑
 */
function estimateAdmissionTypes(facility: Facility): string[] {
  const name = facility.name.toLowerCase()
  const types: string[] = []

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

  return [...new Set(types)] // 중복 제거
}

/**
 * 지역 및 시설 타입별 비용 추정
 */
function estimateCost(facility: Facility): { monthly: number; deposit: number } {
  let baseCost = 0
  let depositMultiplier = 2 // 보증금 = 월비용 x 2

  // 시설 타입별 기본 비용
  switch (facility.type) {
    case '요양병원':
      baseCost = 2500000 // 250만원
      depositMultiplier = 1 // 100만원
      break
    case '요양원':
      baseCost = 2000000 // 200만원
      depositMultiplier = 2 // 400만원
      break
    case '주야간보호':
      baseCost = 1500000 // 150만원
      depositMultiplier = 1.5 // 225만원
      break
    case '재가복지센터':
      baseCost = 1200000 // 120만원
      depositMultiplier = 1 // 120만원
      break
    default:
      baseCost = 2000000
  }

  // 지역별 가격 조정
  const sido = facility.sido
  if (sido === '서울특별시') {
    baseCost *= 1.3 // +30%
  } else if (sido === '경기도') {
    baseCost *= 1.2 // +20%
  } else if (sido === '인천광역시' || sido === '대전광역시' || sido === '부산광역시') {
    baseCost *= 1.1 // +10%
  } else if (sido === '제주특별자치도') {
    baseCost *= 1.15 // +15%
  }

  // 시군구별 추가 조정 (서울 주요 지역)
  if (sido === '서울특별시') {
    const highEndAreas = ['강남구', '서초구', '송파구', '용산구', '마포구']
    if (highEndAreas.includes(facility.sigungu)) {
      baseCost *= 1.2 // 추가 +20%
    }
  }

  // 경기도 주요 지역
  if (sido === '경기도') {
    const highEndAreas = ['성남시 분당구', '용인시 수지구', '고양시 일산동구', '과천시']
    if (highEndAreas.some(area => facility.sigungu.includes(area.split(' ')[0]))) {
      baseCost *= 1.15 // 추가 +15%
    }
  }

  return {
    monthly: Math.round(baseCost / 10000) * 10000, // 만원 단위 반올림
    deposit: Math.round((baseCost * depositMultiplier) / 10000) * 10000
  }
}

/**
 * 시설 상세정보 생성
 */
function generateFacilityDetails(facility: Facility): FacilityDetails {
  const specialties = estimateSpecialties(facility)
  const admissionTypes = estimateAdmissionTypes(facility)
  const costs = estimateCost(facility)

  const notes = [
    specialties.length > 0 ? `전문분야: ${specialties.join(', ')}` : null,
    admissionTypes.length > 0 ? `입소유형: ${admissionTypes.join(', ')}` : null,
    `추정 월비용: ${(costs.monthly / 10000).toFixed(0)}만원`,
    '※ 자동 생성된 추정 정보입니다. 정확한 정보는 시설에 문의해주세요.'
  ].filter(Boolean).join(' | ')

  return {
    facility_id: facility.id,
    specialties: JSON.stringify(specialties),
    admission_types: JSON.stringify(admissionTypes),
    monthly_cost: costs.monthly,
    deposit: costs.deposit,
    notes,
    updated_by: 'auto_generator'
  }
}

/**
 * SQL INSERT 문 생성
 */
function generateInsertSQL(details: FacilityDetails): string {
  const fields = [
    'facility_id',
    'specialties',
    'admission_types',
    'monthly_cost',
    'deposit',
    'notes',
    'updated_by',
    'updated_at'
  ]

  const values = [
    details.facility_id,
    details.specialties,
    details.admission_types,
    details.monthly_cost,
    details.deposit,
    details.notes,
    details.updated_by,
    "datetime('now')"
  ]

  const valuesStr = values.map((v, i) => {
    if (i === values.length - 1) return v // updated_at (함수)
    if (v === null) return 'NULL'
    if (typeof v === 'number') return v
    return `'${String(v).replace(/'/g, "''")}'` // SQL escape
  }).join(', ')

  return `INSERT OR REPLACE INTO facility_details (${fields.join(', ')}) VALUES (${valuesStr});`
}

// Export for use in other scripts
export {
  estimateSpecialties,
  estimateAdmissionTypes,
  estimateCost,
  generateFacilityDetails,
  generateInsertSQL
}

// CLI usage example
if (require.main === module) {
  console.log('✅ 시설 상세정보 자동 생성 모듈 로드 완료')
  console.log('📝 사용 예시:')
  console.log(`
const facility = {
  id: 1082,
  name: "청담힐요양병원",
  type: "요양병원",
  sido: "서울특별시",
  sigungu: "강남구",
  address: "서울특별시 강남구 영동대로 713"
}

const details = generateFacilityDetails(facility)
console.log(details)

const sql = generateInsertSQL(details)
console.log(sql)
  `)
}

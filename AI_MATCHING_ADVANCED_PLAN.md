# AI 매칭 알고리즘 구현 현황 및 계획서

## 🎯 목표
실제 사용 가능하고 도움이 되는 고급 AI 매칭 시스템 구현

---

## ✅ 완료된 작업 (2026-01-13)

### 1. D1 Database 테이블 생성 ✅
- `facility_details`: 시설 상세 정보 (서비스, 전문분야, 시설등급, 비용)
- `facility_reviews`: 리뷰 및 평점 (전체/세부 평점, 장단점)
- `facility_rating_stats`: 평점 통계 (집계 테이블)
- `user_matching_feedback`: 사용자 피드백 및 매칭 이력
- `facility_click_stats`: 클릭률/전환율 통계
- `facility_availability`: 입소 가능 여부 및 대기 정보

### 2. Phase 1 기본 알고리즘 ✅
- 다중 조건 가중치 매칭 (100점 만점)
- Haversine 거리 계산
- 지능형 필터링 (4단계)
- 매칭 이유 자동 생성

---

## 🚀 구현할 고급 기능

### Phase 1.5: 예산 최적화 매칭
```typescript
// 예산 범위 매칭 점수 계산
function calculateBudgetScore(facilityCost, userBudget) {
  const { min, max } = userBudget
  
  // 예산 범위 내
  if (cost >= min && cost <= max) {
    // 예산 중간값에 가까울수록 높은 점수
    const midPoint = (min + max) / 2
    const deviation = Math.abs(cost - midPoint)
    const maxDeviation = (max - min) / 2
    return 20 * (1 - (deviation / maxDeviation) * 0.3)  // 14-20점
  }
  
  // 예산 약간 초과 (10% 이내)
  if (cost > max && cost <= max * 1.1) {
    return 10  // 10점
  }
  
  // 예산 많이 초과
  if (cost > max) {
    const overRatio = (cost - max) / max
    return Math.max(0, 5 - overRatio * 10)  // 0-5점
  }
  
  // 예산 미달 (의심스러울 수 있음)
  if (cost < min) {
    const ratio = cost / min
    return 12 * ratio  // 0-12점
  }
}
```

### Phase 2.1: 환자 상태 키워드 자동 분석
```typescript
// 키워드 데이터베이스
const conditionKeywords = {
  '치매': {
    keywords: ['치매', '알츠하이머', '인지저하', '기억력감퇴', '인지장애'],
    recommendedFacilities: ['치매전문', '인지치료'],
    careLevel: 'high',
    weight: 0.25
  },
  '중풍': {
    keywords: ['중풍', '뇌졸중', '편마비', '언어장애', '마비'],
    recommendedFacilities: ['물리치료', '재활치료'],
    careLevel: 'high',
    weight: 0.25
  },
  '와상': {
    keywords: ['와상', '침상', '욕창', '기저귀', '누워계심'],
    recommendedFacilities: ['욕창관리', '침상케어'],
    careLevel: 'very_high',
    weight: 0.30
  },
  '당뇨': {
    keywords: ['당뇨', '혈당', '인슐린', '당뇨병'],
    recommendedFacilities: ['당뇨관리', '식이관리'],
    careLevel: 'medium',
    weight: 0.15
  },
  '암': {
    keywords: ['암', '항암', '방사선', '화학요법', '암환자'],
    recommendedFacilities: ['암환자전문', '의료케어'],
    careLevel: 'very_high',
    weight: 0.30
  }
}

// 텍스트에서 질병 키워드 추출
function extractConditions(patientDescription: string): string[] {
  const detected = []
  const lowerText = patientDescription.toLowerCase()
  
  for (const [condition, data] of Object.entries(conditionKeywords)) {
    if (data.keywords.some(keyword => lowerText.includes(keyword))) {
      detected.push(condition)
    }
  }
  
  return detected
}

// 질병에 맞는 시설 매칭 점수
function matchConditionToFacility(conditions: string[], facilityServices: string[]) {
  let score = 0
  let reasons = []
  
  conditions.forEach(condition => {
    const conditionData = conditionKeywords[condition]
    const matchingServices = conditionData.recommendedFacilities.filter(service =>
      facilityServices.includes(service)
    )
    
    if (matchingServices.length > 0) {
      score += conditionData.weight * 20  // 최대 20점
      reasons.push(`${condition} 전문 케어 가능`)
    }
  })
  
  return { score, reasons }
}
```

### Phase 2.2: 평점 및 리뷰 시스템 통합
```typescript
// D1에서 평점 정보 가져오기
async function getFacilityRating(facilityId: number, db: any) {
  const stats = await db.prepare(`
    SELECT 
      average_rating,
      total_reviews,
      avg_cleanliness,
      avg_staff,
      avg_food,
      avg_facility,
      avg_care,
      avg_cost
    FROM facility_rating_stats
    WHERE facility_id = ?
  `).bind(facilityId).first()
  
  if (!stats) return { score: 0, rating: 0, reviewCount: 0 }
  
  // 평점 점수 계산 (최대 15점)
  const rating = stats.average_rating || 0
  const reviewCount = stats.total_reviews || 0
  
  // 기본 평점 점수 (0-10점)
  let score = (rating / 5) * 10
  
  // 리뷰 개수 보너스 (0-5점)
  if (reviewCount > 50) score += 5
  else if (reviewCount > 20) score += 4
  else if (reviewCount > 10) score += 3
  else if (reviewCount > 5) score += 2
  else if (reviewCount > 0) score += 1
  
  return {
    score,
    rating,
    reviewCount,
    detailRatings: {
      cleanliness: stats.avg_cleanliness,
      staff: stats.avg_staff,
      food: stats.avg_food,
      facility: stats.avg_facility,
      care: stats.avg_care,
      cost: stats.avg_cost
    }
  }
}
```

### Phase 2.3: 입소 가능 여부 실시간 반영
```typescript
// 입소 가능 여부 점수
async function getAvailabilityScore(facilityId: number, db: any) {
  const availability = await db.prepare(`
    SELECT 
      total_beds,
      occupied_beds,
      available_beds,
      waiting_list_count,
      estimated_wait_days,
      accepts_new_patients
    FROM facility_availability
    WHERE facility_id = ?
  `).bind(facilityId).first()
  
  if (!availability || !availability.accepts_new_patients) {
    return { score: 0, status: 'not_accepting', waitDays: 999 }
  }
  
  const availableBeds = availability.available_beds || 0
  const waitDays = availability.estimated_wait_days || 0
  
  // 즉시 입소 가능
  if (availableBeds > 5 && waitDays === 0) {
    return { score: 10, status: 'immediate', waitDays: 0 }
  }
  
  // 조금 대기
  if (availableBeds > 0 && waitDays < 7) {
    return { score: 7, status: 'soon', waitDays }
  }
  
  // 대기 필요
  if (waitDays < 30) {
    return { score: 4, status: 'waiting', waitDays }
  }
  
  // 장기 대기
  return { score: 1, status: 'long_wait', waitDays }
}
```

### Phase 3: 협업 필터링
```typescript
// 유사 사용자 찾기
async function findSimilarUserPreferences(criteria: any, db: any) {
  // 비슷한 조건으로 검색한 사용자들이 최종 선택한 시설들
  const { results } = await db.prepare(`
    SELECT 
      final_selected_facility_id,
      COUNT(*) as selection_count
    FROM user_matching_feedback
    WHERE sido = ? 
      AND sigungu = ?
      AND facility_type = ?
      AND ABS(budget_min - ?) < 500000
      AND final_selected_facility_id IS NOT NULL
    GROUP BY final_selected_facility_id
    ORDER BY selection_count DESC
    LIMIT 5
  `).bind(
    criteria.sido,
    criteria.sigungu,
    criteria.facilityType,
    criteria.budgetMin || 2000000
  ).all()
  
  return results || []
}

// 협업 필터링 점수
function calculateCollaborativeScore(
  facilityId: number,
  similarSelections: any[]
) {
  const selection = similarSelections.find(s => s.final_selected_facility_id === facilityId)
  
  if (!selection) return { score: 0, reason: null }
  
  const count = selection.selection_count
  const maxCount = similarSelections[0]?.selection_count || 1
  
  // 최대 10점
  const score = (count / maxCount) * 10
  
  return {
    score,
    reason: `${count}명이 선택한 인기 시설`
  }
}
```

### Phase 4: 사용자 피드백 학습
```typescript
// 클릭률 기반 가중치
async function getCTRScore(facilityId: number, db: any) {
  const stats = await db.prepare(`
    SELECT 
      shown_count,
      clicked_count,
      quote_request_count,
      click_through_rate,
      conversion_rate
    FROM facility_click_stats
    WHERE facility_id = ?
  `).bind(facilityId).first()
  
  if (!stats || stats.shown_count < 10) {
    return { score: 5, ctr: 0, cvr: 0 }  // 중립 점수
  }
  
  const ctr = stats.click_through_rate || 0
  const cvr = stats.conversion_rate || 0
  
  // CTR 점수 (0-5점)
  let score = ctr * 5
  
  // CVR 보너스 (0-5점)
  score += cvr * 5
  
  return {
    score: Math.min(10, score),
    ctr,
    cvr,
    shownCount: stats.shown_count
  }
}
```

---

## 📊 새로운 가중치 구조 (총 130점 → 100점으로 정규화)

```
기본 점수: 10점
지역 일치: 20점
거리: 15점
시설 타입: 10점
예산 매칭: 15점
환자 상태 매칭: 15점
평점: 10점
입소 가능: 8점
협업 필터링: 7점
CTR/CVR: 5점
대표시설: 5점
전화번호: 3점
좌표 정보: 2점
------------------------
총점: 125점 → 100점으로 정규화
```

---

## 🎯 최종 매칭 알고리즘 흐름

```
1. 기본 필터링 (필수 조건)
   └─> 지역, 시설 타입

2. 거리 계산 (선택)
   └─> 사용자 위치 제공 시

3. 환자 상태 분석
   └─> 키워드 추출 → 전문 시설 매칭

4. 예산 최적화
   └─> 예산 범위 내 최적 시설

5. D1 데이터 통합
   ├─> 평점 및 리뷰
   ├─> 입소 가능 여부
   ├─> 협업 필터링
   └─> CTR/CVR 통계

6. 스코어 계산 및 정규화
   └─> 총점 → 100점 변환

7. 정렬 및 추천
   └─> 상위 10-20개 선택

8. 추천 이유 생성
   └─> 상세한 매칭 근거 제시

9. 피드백 저장
   └─> 매칭 이력 D1 저장
```

---

## 📝 다음 구현 단계

1. ✅ D1 테이블 생성 완료
2. 🔄 고급 알고리즘 코드 구현 (진행 중)
3. ⏳ API 통합 및 테스트
4. ⏳ 프론트엔드 UI 개선
5. ⏳ 실제 데이터 수집 시작

---

**작성일**: 2026-01-13
**상태**: 진행 중
**다음**: 고급 알고리즘 코드 구현

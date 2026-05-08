# 🧮 요양비용 계산기 백엔드 API 설계

## 📍 API 엔드포인트 목록

### 1️⃣ 기본 데이터 조회 API

#### `GET /api/calculator/grades`
**장기요양등급 목록 조회**
```json
{
  "success": true,
  "data": [
    {
      "grade_level": "1등급",
      "grade_number": 1,
      "copayment_rate": 15.0,
      "description": "일상생활 전반에 타인의 도움이 필요한 상태",
      "max_monthly_limit": 1893100
    },
    ...
  ]
}
```

#### `GET /api/calculator/facility-types`
**시설 유형 목록 조회**
```json
{
  "success": true,
  "data": ["요양병원", "요양원", "주야간보호", "재가복지센터"]
}
```

#### `GET /api/calculator/additional-items`
**추가 비용 항목 조회**
```json
{
  "success": true,
  "data": [
    {
      "id": 1,
      "item_name": "간병비",
      "item_category": "의료서비스",
      "monthly_cost": 500000,
      "description": "24시간 간병 서비스"
    },
    ...
  ]
}
```

---

### 2️⃣ 비용 계산 API (핵심)

#### `POST /api/calculator/calculate`
**요양비용 자동 계산**

**Request Body:**
```json
{
  "grade_level": "1등급",
  "facility_type": "요양병원",
  "additional_items": [1, 4]  // 추가 항목 ID 배열 (선택)
}
```

**Response:**
```json
{
  "success": true,
  "calculation": {
    "grade_info": {
      "grade_level": "1등급",
      "copayment_rate": 15.0,
      "max_monthly_limit": 1893100
    },
    "facility_info": {
      "facility_type": "요양병원",
      "base_cost": 2500000,
      "meal_cost": 300000,
      "management_cost": 100000,
      "total_cost": 2900000
    },
    "voucher_info": {
      "voucher_type": "장기요양급여",
      "monthly_amount": 1893100,
      "description": "월 한도액 내 급여 지원"
    },
    "additional_costs": [
      {
        "item_name": "간병비",
        "monthly_cost": 500000
      }
    ],
    "breakdown": {
      "total_facility_cost": 2900000,      // 시설 총 비용
      "additional_items_cost": 500000,     // 추가 항목 비용
      "subtotal": 3400000,                 // 소계
      "voucher_coverage": 1893100,         // 바우처 지원금
      "copayment_15percent": 435000,       // 본인부담금 (15%)
      "final_monthly_cost": 2328100        // 최종 월 예상 비용
    },
    "cost_structure": {
      "본인부담금": 435000,
      "바우처지원금": 1893100,
      "추가비용": 500000,
      "총합계": 2328100
    }
  }
}
```

---

### 3️⃣ 계산 히스토리 저장 API

#### `POST /api/calculator/save-history`
**계산 결과 저장 (익명 또는 회원)**

**Request Body:**
```json
{
  "grade_level": "1등급",
  "facility_type": "요양병원",
  "base_cost": 2900000,
  "copayment_rate": 15.0,
  "copayment_amount": 435000,
  "voucher_amount": 1893100,
  "final_cost": 2328100,
  "additional_options": "{\"items\": [1, 4]}"
}
```

**Response:**
```json
{
  "success": true,
  "history_id": 123
}
```

---

## 🧮 계산 로직 (핵심 알고리즘)

```typescript
// 요양비용 계산 함수
function calculateCareCost(gradeLevel, facilityType, additionalItems = []) {
  // 1. 기본 데이터 조회
  const gradeInfo = getGradeInfo(gradeLevel)
  const facilityInfo = getFacilityCost(facilityType, gradeLevel)
  const voucherInfo = getVoucherAmount(gradeLevel)
  
  // 2. 추가 비용 계산
  const additionalCost = additionalItems.reduce((sum, itemId) => {
    const item = getAdditionalItem(itemId)
    return sum + item.monthly_cost
  }, 0)
  
  // 3. 총 비용 계산
  const totalFacilityCost = facilityInfo.total_cost
  const subtotal = totalFacilityCost + additionalCost
  
  // 4. 바우처 적용 및 본인부담금 계산
  const voucherCoverage = Math.min(voucherInfo.monthly_amount, totalFacilityCost)
  const remainingCost = totalFacilityCost - voucherCoverage
  const copaymentAmount = Math.round(remainingCost * (gradeInfo.copayment_rate / 100))
  
  // 5. 최종 월 비용 = 본인부담금 + 추가비용
  const finalMonthlyCost = copaymentAmount + additionalCost
  
  return {
    gradeInfo,
    facilityInfo,
    voucherInfo,
    additionalCost,
    breakdown: {
      totalFacilityCost,
      additionalItemsCost: additionalCost,
      subtotal,
      voucherCoverage,
      copayment15percent: copaymentAmount,
      finalMonthlyCost
    }
  }
}
```

---

## 📊 계산 예시

**입력:**
- 장기요양등급: 1등급
- 시설 유형: 요양병원
- 추가 항목: 간병비(500,000원)

**계산 과정:**
1. 시설 총 비용: 2,900,000원
2. 바우처 지원: 1,893,100원
3. 본인부담 대상: 1,006,900원
4. 본인부담금 (15%): 151,035원
5. 추가 비용: 500,000원
6. **최종 월 예상 비용: 651,035원**

---

## 🎯 다음 단계

1. ✅ DB 스키마 완성
2. 🔄 API 엔드포인트 구현 (TypeScript)
3. ⏳ 프론트엔드 UI 개발
4. ⏳ 프로덕션 배포


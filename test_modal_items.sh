#!/bin/bash

BASE_URL="http://localhost:3000"

echo "========================================"
echo "견적서 작성 모달 항목 개수 테스트"
echo "========================================"
echo ""

# 1. 고객 로그인
echo "1️⃣ 고객 로그인..."
LOGIN_RESPONSE=$(curl -s -X POST "${BASE_URL}/api/auth/login" \
  -H "Content-Type: application/json" \
  -c /tmp/customer_cookies.txt \
  -d '{
    "email": "customer@test.com",
    "password": "1234",
    "type": "customer"
  }')

echo "로그인 성공: $(echo $LOGIN_RESPONSE | grep -o '"success":true' | wc -l)"
echo ""

# 2. 상세 견적 생성 (23개 항목 전송)
echo "2️⃣ 상세 견적 생성 (23개 항목)..."
QUOTE_RESPONSE=$(curl -s -X POST "${BASE_URL}/api/quote/submit-new" \
  -H "Content-Type: application/json" \
  -b /tmp/customer_cookies.txt \
  -d '{
    "applicantName": "테스트신청자",
    "applicantPhone": "010-9999-8888",
    "applicantEmail": "test@example.com",
    "patientName": "테스트환자",
    "patientAge": 88,
    "patientGender": "female",
    "sido": "서울특별시",
    "sigungu": "강남구",
    "facilityType": "요양병원",
    "insuranceType": "장기요양보험",
    "careGrade": "1등급",
    "facilitySize": "대형(100병상 이상)",
    "careCost": "400-500만원",
    "carePrograms": "물리치료, 작업치료, 인지재활, 언어치료",
    "religion": "불교",
    "mainSymptoms": "중증 치매, 파킨슨병, 고혈압, 당뇨병",
    "communication": "매우 어려움",
    "eating": "전적 도움 필요",
    "dietType": "저염식, 당뇨식, 연식",
    "mobility": "침대생활",
    "toiletUse": "기저귀 사용",
    "additionalCare": "욕창 관리, 기관지 흡인, 투약 관리, 체위 변경",
    "otherSymptoms": "야간 섬망, 불면증, 폭력성",
    "birthYear": "1935",
    "birthMonth": "06",
    "birthDay": "25",
    "diagnosis": "파킨슨병, 알츠하이머 치매, 고혈압, 당뇨병, 골다공증",
    "adl": "완전 의존",
    "dementia": "최중증",
    "serviceType": "장기입원",
    "guardianAge": "65",
    "spouseAge": "86",
    "housingType": "단독주택",
    "diseases": "파킨슨병, 치매, 고혈압, 당뇨병, 골다공증, 관절염",
    "personalities": "온순하나 가끔 화를 냄",
    "specialNotes": "⚠️ 특별 주의사항: 낙상 위험 극히 높음. 24시간 1:1 모니터링 필수. 2시간마다 체위 변경 필요. 야간 섬망으로 안전 관리 중요."
  }')

QUOTE_ID=$(echo $QUOTE_RESPONSE | grep -o '"quoteId":"[^"]*"' | cut -d'"' -f4)
echo "견적 ID: ${QUOTE_ID}"
echo ""

# 3. 시설 로그인
echo "3️⃣ 시설 로그인..."
FACILITY_LOGIN=$(curl -s -X POST "${BASE_URL}/api/auth/login" \
  -H "Content-Type: application/json" \
  -c /tmp/facility_cookies.txt \
  -d '{
    "email": "hospital@test.com",
    "password": "1234",
    "type": "facility"
  }')

echo "시설 로그인 성공: $(echo $FACILITY_LOGIN | grep -o '"success":true' | wc -l)"
echo ""

# 4. 대시보드에서 견적 요청 조회
echo "4️⃣ 시설 대시보드 조회..."
DASHBOARD=$(curl -s -X GET "${BASE_URL}/api/facility/dashboard" \
  -H "Content-Type: application/json" \
  -b /tmp/facility_cookies.txt)

# 견적 요청 찾기
REQUEST=$(echo $DASHBOARD | python3 -c "
import sys, json
try:
    data = json.load(sys.stdin)
    if data.get('success') and data.get('data', {}).get('newRequests'):
        for req in data['data']['newRequests']:
            if req['quote_id'] == '${QUOTE_ID}':
                print(json.dumps(req, indent=2, ensure_ascii=False))
                break
except Exception as e:
    print(f'Error: {e}')
" 2>/dev/null)

echo "견적 요청 발견: $(echo $REQUEST | wc -c) bytes"
echo ""

# 5. additional_notes 항목 개수 세기
echo "5️⃣ additional_notes 항목 개수 확인..."
ITEM_COUNT=$(echo $REQUEST | python3 -c "
import sys, json
try:
    req = json.load(sys.stdin)
    notes_str = req.get('additional_notes', '{}')
    notes = json.loads(notes_str)
    
    # 비어있지 않은 항목만 카운트
    non_empty = {k: v for k, v in notes.items() if v and v.strip()}
    
    print(f'전체 항목 수: {len(notes)}')
    print(f'값이 있는 항목 수: {len(non_empty)}')
    print()
    print('항목 목록:')
    for i, (key, value) in enumerate(non_empty.items(), 1):
        value_preview = str(value)[:50] + '...' if len(str(value)) > 50 else str(value)
        print(f'{i}. {key}: {value_preview}')
except Exception as e:
    print(f'Error: {e}')
" 2>/dev/null)

echo "${ITEM_COUNT}"
echo ""

# 정리
rm -f /tmp/customer_cookies.txt /tmp/facility_cookies.txt

echo "========================================"
echo "✅ 테스트 완료!"
echo "========================================"
echo ""
echo "📌 브라우저에서 확인:"
echo "  URL: ${BASE_URL}/dashboard/facility"
echo "  로그인: hospital@test.com / 1234"
echo "  견적 ID: ${QUOTE_ID}"
echo "  → 견적서 작성 모달에서 항목 개수 확인"

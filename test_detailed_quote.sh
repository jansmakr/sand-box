#!/bin/bash

BASE_URL="http://localhost:3000"

echo "==================================="
echo "상세 견적 테스트 (20개 항목 전송)"
echo "==================================="
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

echo "로그인 응답: ${LOGIN_RESPONSE}"
echo ""

# 2. 상세 견적 요청 생성 (거의 20개 항목)
echo "2️⃣ 상세 견적 요청 생성 (20개 항목)..."
QUOTE_RESPONSE=$(curl -s -X POST "${BASE_URL}/api/quote/submit-new" \
  -H "Content-Type: application/json" \
  -b /tmp/customer_cookies.txt \
  -d '{
    "applicantName": "김상담",
    "applicantPhone": "010-1234-5678",
    "applicantEmail": "kim@example.com",
    "patientName": "김어머니",
    "patientAge": 85,
    "patientGender": "female",
    "sido": "서울특별시",
    "sigungu": "강남구",
    "facilityType": "요양병원",
    "insuranceType": "장기요양보험",
    "careGrade": "1등급",
    "facilitySize": "대형(100병상 이상)",
    "careCost": "300-400만원",
    "carePrograms": "물리치료, 작업치료, 인지재활",
    "religion": "기독교",
    "mainSymptoms": "중증 치매, 고혈압, 당뇨병, 관절염",
    "communication": "어려움(언어장애)",
    "eating": "부분도움필요",
    "dietType": "저염식, 당뇨식",
    "mobility": "휠체어 사용",
    "toiletUse": "전적 도움 필요",
    "additionalCare": "욕창 관리, 기저귀 교체, 투약 관리",
    "otherSymptoms": "야간 배회, 수면장애, 공격성",
    "birthYear": "1938",
    "birthMonth": "03",
    "birthDay": "15",
    "diagnosis": "알츠하이머 치매, 고혈압, 당뇨병",
    "adl": "전적 도움 필요",
    "dementia": "중증",
    "serviceType": "입소",
    "guardianAge": "62",
    "spouseAge": "83",
    "housingType": "아파트",
    "diseases": "치매, 고혈압, 당뇨병, 관절염, 골다공증",
    "personalities": "온순함, 가끔 화를 냄",
    "specialNotes": "특별한 주의사항: 낙상 위험이 높으므로 24시간 모니터링 필요. 인슐린 주사 필요. 야간에 배회하는 습관이 있어 안전 관리 필수."
  }')

echo "견적 요청 응답: ${QUOTE_RESPONSE}"
QUOTE_ID=$(echo $QUOTE_RESPONSE | grep -o '"quoteId":"[^"]*"' | cut -d'"' -f4)
echo "생성된 견적 ID: ${QUOTE_ID}"
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

echo "시설 로그인 응답: ${FACILITY_LOGIN}"
echo ""

# 4. 시설 대시보드에서 견적 요청 확인
echo "4️⃣ 시설 대시보드에서 견적 요청 확인..."
DASHBOARD_RESPONSE=$(curl -s -X GET "${BASE_URL}/api/facility/dashboard" \
  -H "Content-Type: application/json" \
  -b /tmp/facility_cookies.txt)

echo "대시보드 응답:"
echo "${DASHBOARD_RESPONSE}" | python3 -m json.tool 2>/dev/null || echo "${DASHBOARD_RESPONSE}"
echo ""

# 새 견적 요청 개수 확인
NEW_REQUESTS_COUNT=$(echo $DASHBOARD_RESPONSE | grep -o '"newRequests":\[[^]]*\]' | grep -o '{' | wc -l)
echo "✅ 새 견적 요청 개수: ${NEW_REQUESTS_COUNT}"
echo ""

# 5. 첫 번째 견적 요청의 상세 정보 출력
echo "5️⃣ 첫 번째 견적 요청 상세 정보..."
FIRST_REQUEST=$(echo $DASHBOARD_RESPONSE | python3 -c "
import sys, json
try:
    data = json.load(sys.stdin)
    if data.get('success') and data.get('data', {}).get('newRequests'):
        request = data['data']['newRequests'][0]
        print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━')
        print('📋 기본 정보')
        print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━')
        print(f\"견적 ID: {request.get('quote_id', 'N/A')}\")
        print(f\"신청자: {request.get('applicant_name', 'N/A')}\")
        print(f\"연락처: {request.get('applicant_phone', 'N/A')}\")
        print(f\"환자명: {request.get('patient_name', 'N/A')}\")
        print(f\"환자 나이: {request.get('patient_age', 'N/A')}세\")
        print(f\"환자 성별: {request.get('patient_gender', 'N/A')}\")
        print(f\"지역: {request.get('sido', 'N/A')} {request.get('sigungu', 'N/A')}\")
        print(f\"시설 유형: {request.get('facility_type', 'N/A')}\")
        print(f\"요양등급: {request.get('care_grade', 'N/A')}\")
        print()
        
        # additional_notes 파싱
        notes_str = request.get('additional_notes', '{}')
        if notes_str and notes_str != 'null':
            try:
                notes = json.loads(notes_str)
                print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━')
                print('📝 상세 정보 (additional_notes)')
                print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━')
                for key, value in notes.items():
                    if value and value != 'null':
                        print(f\"{key}: {value}\")
            except:
                print('⚠️ additional_notes 파싱 실패')
        else:
            print('⚠️ additional_notes가 비어있습니다')
        print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━')
except Exception as e:
    print(f'오류: {str(e)}')
" 2>/dev/null) || echo "JSON 파싱 실패"

echo "${FIRST_REQUEST}"
echo ""

# 6. 견적서 전송 테스트
echo "6️⃣ 견적서 전송 테스트..."
SEND_QUOTE_RESPONSE=$(curl -s -X POST "${BASE_URL}/api/facility/send-quote" \
  -H "Content-Type: application/json" \
  -b /tmp/facility_cookies.txt \
  -d "{
    \"quoteId\": \"${QUOTE_ID}\",
    \"estimatedPrice\": 3500000,
    \"serviceDetails\": \"24시간 전문 간호 케어, 물리치료, 작업치료, 인지재활 프로그램 포함\",
    \"availableRooms\": \"2인실 1개, 4인실 2개 입소 가능\",
    \"specialServices\": \"치매 전문 케어, 욕창 관리, 투약 관리, 야간 모니터링\",
    \"responseMessage\": \"중증 치매 환자 전문 케어 경험이 풍부합니다. 낙상 예방 시스템과 24시간 모니터링 체계를 갖추고 있습니다.\"
  }")

echo "견적서 전송 응답: ${SEND_QUOTE_RESPONSE}"
echo ""

# 7. 고객이 받은 견적서 확인
echo "7️⃣ 고객이 받은 견적서 확인..."
CUSTOMER_QUOTES=$(curl -s -X GET "${BASE_URL}/api/customer/quote-responses/${QUOTE_ID}" \
  -H "Content-Type: application/json" \
  -b /tmp/customer_cookies.txt)

echo "고객 견적서 조회 응답:"
echo "${CUSTOMER_QUOTES}" | python3 -m json.tool 2>/dev/null || echo "${CUSTOMER_QUOTES}"
echo ""

# 정리
rm -f /tmp/customer_cookies.txt /tmp/facility_cookies.txt

echo "==================================="
echo "✅ 상세 견적 테스트 완료!"
echo "==================================="
echo ""
echo "📌 요약:"
echo "  - 생성된 견적 ID: ${QUOTE_ID}"
echo "  - 새 견적 요청 개수: ${NEW_REQUESTS_COUNT}"
echo "  - 상세 항목: 약 20개 (기본 정보 + additional_notes)"
echo ""
echo "🌐 브라우저에서 확인:"
echo "  시설 대시보드: ${BASE_URL}/dashboard/facility"
echo "  로그인: hospital@test.com / 1234"

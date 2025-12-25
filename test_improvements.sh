#!/bin/bash

BASE_URL="http://localhost:3000"

echo "=========================================="
echo "1. 관리자 로그인 테스트"
echo "=========================================="
echo ""

# 관리자 로그인 테스트
echo "비밀번호 5874로 로그인..."
ADMIN_LOGIN=$(curl -s -X POST "${BASE_URL}/api/admin/login" \
  -H "Content-Type: application/json" \
  -c /tmp/admin_cookies.txt \
  -d '{"password": "5874"}')

echo "응답: ${ADMIN_LOGIN}"

if echo "${ADMIN_LOGIN}" | grep -q '"success":true'; then
  echo "✅ 관리자 로그인 성공!"
else
  echo "❌ 관리자 로그인 실패"
fi

echo ""
echo "=========================================="
echo "2. 견적서 작성 양식 테스트"
echo "=========================================="
echo ""

# 고객 로그인
echo "고객 로그인..."
curl -s -X POST "${BASE_URL}/api/auth/login" \
  -H "Content-Type: application/json" \
  -c /tmp/customer_cookies.txt \
  -d '{
    "email": "customer@test.com",
    "password": "1234",
    "type": "customer"
  }' > /dev/null

# 상세 견적 생성
echo "상세 견적 생성..."
QUOTE_RESPONSE=$(curl -s -X POST "${BASE_URL}/api/quote/submit-new" \
  -H "Content-Type: application/json" \
  -b /tmp/customer_cookies.txt \
  -d '{
    "applicantName": "견적테스터",
    "applicantPhone": "010-7777-8888",
    "applicantEmail": "quoter@example.com",
    "patientName": "견적환자",
    "patientAge": 80,
    "patientGender": "male",
    "sido": "서울특별시",
    "sigungu": "강남구",
    "facilityType": "요양병원",
    "insuranceType": "장기요양보험",
    "careGrade": "2등급",
    "facilitySize": "중형",
    "careCost": "300만원대",
    "mainSymptoms": "치매, 고혈압",
    "communication": "보통",
    "mobility": "보행기 사용"
  }')

QUOTE_ID=$(echo $QUOTE_RESPONSE | grep -o '"quoteId":"[^"]*"' | cut -d'"' -f4)
echo "견적 ID: ${QUOTE_ID}"

# 시설 로그인
echo ""
echo "시설 로그인..."
curl -s -X POST "${BASE_URL}/api/auth/login" \
  -H "Content-Type: application/json" \
  -c /tmp/facility_cookies.txt \
  -d '{
    "email": "hospital@test.com",
    "password": "1234",
    "type": "facility"
  }' > /dev/null

# 견적서 전송 (개선된 양식)
echo "견적서 전송..."
SEND_RESPONSE=$(curl -s -X POST "${BASE_URL}/api/facility/send-quote" \
  -H "Content-Type: application/json" \
  -b /tmp/facility_cookies.txt \
  -d "{
    \"quoteId\": \"${QUOTE_ID}\",
    \"estimatedPrice\": 3200000,
    \"serviceDetails\": \"• 24시간 전문 간호 서비스\n• 전문의 주 2회 정기 회진\n• 물리치료 주 3회 제공\n• 작업치료 및 인지재활 프로그램\n• 영양사 식단 관리\",
    \"availableRooms\": \"1인실 1개, 2인실 2개, 4인실 1개 입소 가능\",
    \"specialServices\": \"• 치매 전문 케어 프로그램\n• 욕창 예방 및 관리\n• 투약 관리 시스템\n• 24시간 CCTV 모니터링\n• 정기적인 건강 상태 리포트\",
    \"responseMessage\": \"안녕하세요, 저희 시설은 20년 경력의 전문 의료진이 상주하며, 환자분의 상태에 최적화된 케어를 제공하고 있습니다.\n\n특히 치매 환자 케어 경험이 풍부하며, 낙상 예방 시스템과 24시간 모니터링 체계를 갖추고 있습니다.\n\n방문 상담 가능하오니 언제든 연락주시기 바랍니다.\"
  }")

echo "전송 결과: ${SEND_RESPONSE}"

if echo "${SEND_RESPONSE}" | grep -q '"success":true'; then
  echo "✅ 견적서 전송 성공!"
else
  echo "❌ 견적서 전송 실패"
fi

# 정리
rm -f /tmp/admin_cookies.txt /tmp/customer_cookies.txt /tmp/facility_cookies.txt

echo ""
echo "=========================================="
echo "✅ 테스트 완료!"
echo "=========================================="
echo ""
echo "📌 브라우저 테스트:"
echo "  1. 관리자 로그인: ${BASE_URL}/admin"
echo "     비밀번호: 5874"
echo ""
echo "  2. 시설 대시보드: ${BASE_URL}/dashboard/facility"
echo "     로그인: hospital@test.com / 1234"
echo "     견적 ID: ${QUOTE_ID}"
echo "     → 견적서 작성 버튼 클릭하여 개선된 양식 확인"

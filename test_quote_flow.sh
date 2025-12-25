#!/bin/bash

echo "========================================="
echo "견적 수발신 기능 통합 테스트"
echo "========================================="
echo ""

BASE_URL="http://localhost:3000"

# 1. 고객으로 로그인
echo "1️⃣ 고객 로그인 테스트..."
CUSTOMER_LOGIN=$(curl -s -c cookies_customer.txt -X POST "$BASE_URL/api/auth/login" \
  -H "Content-Type: application/json" \
  -d '{"email":"customer@test.com","password":"1234"}')
echo "결과: $CUSTOMER_LOGIN"
echo ""

# 2. 고객이 견적 요청 생성
echo "2️⃣ 견적 요청 생성 테스트..."
QUOTE_REQUEST=$(curl -s -b cookies_customer.txt -X POST "$BASE_URL/api/quote-request" \
  -H "Content-Type: application/json" \
  -d '{
    "quoteType": "simple",
    "applicantName": "김철수",
    "applicantPhone": "010-1234-5678",
    "patientName": "김영희",
    "patientAge": "75",
    "sido": "서울특별시",
    "sigungu": "강남구",
    "facilityType": "요양병원",
    "careGrade": "1등급"
  }')
QUOTE_ID=$(echo $QUOTE_REQUEST | grep -o '"quoteId":"[^"]*"' | cut -d'"' -f4)
echo "결과: $QUOTE_REQUEST"
echo "생성된 견적 ID: $QUOTE_ID"
echo ""

# 3. 고객 대시보드 데이터 조회
echo "3️⃣ 고객 대시보드 데이터 조회..."
CUSTOMER_DASHBOARD=$(curl -s -b cookies_customer.txt "$BASE_URL/api/customer/dashboard")
echo "결과: $CUSTOMER_DASHBOARD"
echo ""

# 4. 시설(요양병원)로 로그인
echo "4️⃣ 시설(요양병원) 로그인 테스트..."
FACILITY_LOGIN=$(curl -s -c cookies_facility.txt -X POST "$BASE_URL/api/auth/login" \
  -H "Content-Type: application/json" \
  -d '{"email":"hospital@test.com","password":"1234"}')
echo "결과: $FACILITY_LOGIN"
echo ""

# 5. 시설 대시보드에서 새로운 견적 요청 확인
echo "5️⃣ 시설 대시보드 - 새로운 견적 요청 조회..."
FACILITY_DASHBOARD=$(curl -s -b cookies_facility.txt "$BASE_URL/api/facility/dashboard")
echo "결과: $FACILITY_DASHBOARD"
NEW_REQUESTS=$(echo $FACILITY_DASHBOARD | grep -o '"newRequests":\[[^]]*\]' | grep -o '"quote_id":"[^"]*"' | head -1 | cut -d'"' -f4)
echo "받은 견적 요청 ID: $NEW_REQUESTS"
echo ""

# 6. 시설이 견적서 작성 및 전송
if [ ! -z "$QUOTE_ID" ]; then
  echo "6️⃣ 시설이 견적서 작성 및 전송..."
  SEND_QUOTE=$(curl -s -b cookies_facility.txt -X POST "$BASE_URL/api/facility/send-quote" \
    -H "Content-Type: application/json" \
    -d "{
      \"quoteId\": \"$QUOTE_ID\",
      \"estimatedPrice\": 2500000,
      \"serviceDetails\": \"24시간 전문 간호사 상주, 물리치료 주 3회 제공\",
      \"availableRooms\": \"1인실 2개, 2인실 1개 가능\",
      \"specialServices\": \"물리치료, 작업치료, 언어치료\",
      \"responseMessage\": \"저희 시설은 최신 시설과 전문 의료진으로 최상의 케어를 제공합니다.\"
    }")
  echo "결과: $SEND_QUOTE"
  echo ""
fi

# 7. 다시 시설 대시보드 확인 (보낸 견적서 목록)
echo "7️⃣ 시설 대시보드 - 보낸 견적서 확인..."
FACILITY_DASHBOARD_AFTER=$(curl -s -b cookies_facility.txt "$BASE_URL/api/facility/dashboard")
echo "결과: $FACILITY_DASHBOARD_AFTER"
echo ""

# 8. 고객이 받은 견적서 조회
if [ ! -z "$QUOTE_ID" ]; then
  echo "8️⃣ 고객이 받은 견적서 조회..."
  CUSTOMER_RESPONSES=$(curl -s -b cookies_customer.txt "$BASE_URL/api/customer/quote-responses/$QUOTE_ID")
  echo "결과: $CUSTOMER_RESPONSES"
  echo ""
fi

# 9. 고객 대시보드 재조회 (통계 업데이트 확인)
echo "9️⃣ 고객 대시보드 재조회 (통계 업데이트 확인)..."
CUSTOMER_DASHBOARD_AFTER=$(curl -s -b cookies_customer.txt "$BASE_URL/api/customer/dashboard")
echo "결과: $CUSTOMER_DASHBOARD_AFTER"
echo ""

# 정리
rm -f cookies_customer.txt cookies_facility.txt

echo "========================================="
echo "✅ 견적 수발신 기능 통합 테스트 완료!"
echo "========================================="

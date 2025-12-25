#!/bin/bash

echo "========================================="
echo "전체 API 엔드포인트 테스트"
echo "========================================="
echo ""

BASE_URL="http://localhost:3000"

# 로그인
CUSTOMER_LOGIN=$(curl -s -c cookies.txt -X POST "$BASE_URL/api/auth/login" \
  -H "Content-Type: application/json" \
  -d '{"email":"customer@test.com","password":"1234","type":"customer"}')
echo "1️⃣  고객 로그인: $(echo $CUSTOMER_LOGIN | jq -r '.success') - $(echo $CUSTOMER_LOGIN | jq -r '.message')"

FACILITY_LOGIN=$(curl -s -c cookies_facility.txt -X POST "$BASE_URL/api/auth/login" \
  -H "Content-Type: application/json" \
  -d '{"email":"hospital@test.com","password":"1234","type":"facility"}')
echo "2️⃣  시설 로그인: $(echo $FACILITY_LOGIN | jq -r '.success') - $(echo $FACILITY_LOGIN | jq -r '.message')"

# 견적 요청 API
QUOTE=$(curl -s -b cookies.txt -X POST "$BASE_URL/api/quote-request" \
  -H "Content-Type: application/json" \
  -d '{"quoteType":"simple","applicantName":"테스터","applicantPhone":"010-9999-9999","patientName":"환자","patientAge":"80","sido":"서울특별시","sigungu":"강남구","facilityType":"요양병원"}')
QUOTE_ID=$(echo $QUOTE | jq -r '.quoteId')
echo "3️⃣  견적 요청 생성: $(echo $QUOTE | jq -r '.success') - $QUOTE_ID"

# 고객 대시보드 API
CUSTOMER_DASH=$(curl -s -b cookies.txt "$BASE_URL/api/customer/dashboard")
TOTAL_REQUESTS=$(echo $CUSTOMER_DASH | jq -r '.data.stats.totalRequests')
echo "4️⃣  고객 대시보드: $(echo $CUSTOMER_DASH | jq -r '.success') - 견적요청 ${TOTAL_REQUESTS}건"

# 시설 대시보드 API  
FACILITY_DASH=$(curl -s -b cookies_facility.txt "$BASE_URL/api/facility/dashboard")
NEW_REQUESTS=$(echo $FACILITY_DASH | jq -r '.data.stats.newRequests')
echo "5️⃣  시설 대시보드: $(echo $FACILITY_DASH | jq -r '.success') - 신규요청 ${NEW_REQUESTS}건"

# 견적서 전송 API
SEND_QUOTE=$(curl -s -b cookies_facility.txt -X POST "$BASE_URL/api/facility/send-quote" \
  -H "Content-Type: application/json" \
  -d "{\"quoteId\":\"$QUOTE_ID\",\"estimatedPrice\":3000000,\"serviceDetails\":\"테스트\",\"availableRooms\":\"1인실\",\"specialServices\":\"물리치료\",\"responseMessage\":\"테스트 메시지\"}")
echo "6️⃣  견적서 전송: $(echo $SEND_QUOTE | jq -r '.success') - $(echo $SEND_QUOTE | jq -r '.message')"

# 고객 견적서 조회 API
RESPONSES=$(curl -s -b cookies.txt "$BASE_URL/api/customer/quote-responses/$QUOTE_ID")
RESPONSES_COUNT=$(echo $RESPONSES | jq -r '.data.responses | length')
echo "7️⃣  고객 견적서 조회: $(echo $RESPONSES | jq -r '.success') - 응답 ${RESPONSES_COUNT}건"

# 로그아웃 API
LOGOUT=$(curl -s -b cookies.txt -X POST "$BASE_URL/api/auth/logout")
echo "8️⃣  로그아웃: $(echo $LOGOUT | jq -r '.success') - $(echo $LOGOUT | jq -r '.message')"

rm -f cookies.txt cookies_facility.txt

echo ""
echo "========================================="
echo "✅ 전체 API 테스트 완료!"
echo "========================================="

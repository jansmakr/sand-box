#!/bin/bash

echo "======================================"
echo "메시지 교환 기능 테스트"
echo "======================================"
echo ""

# 1. 고객 로그인
echo "1. 고객 로그인..."
CUSTOMER_LOGIN=$(curl -s -X POST http://localhost:3000/api/login \
  -H "Content-Type: application/json" \
  -d '{"email":"customer@test.com","password":"1234"}')

echo "로그인 응답: $CUSTOMER_LOGIN"
CUSTOMER_ID=$(echo $CUSTOMER_LOGIN | grep -o '"id":[0-9]*' | cut -d':' -f2)
echo "✅ 고객 ID: $CUSTOMER_ID"
echo ""

# 2. 견적 생성
echo "2. 새 견적 요청 생성..."
QUOTE_ID="Q$(date +%s)"
curl -s -X POST http://localhost:3000/api/quote/submit-new \
  -H "Content-Type: application/json" \
  -b "user_session=customer@test.com" \
  -d "{
    \"facilityType\": \"요양병원\",
    \"patientName\": \"메시지테스트\",
    \"patientAge\": \"75\",
    \"patientGender\": \"여성\",
    \"sido\": \"서울특별시\",
    \"sigungu\": \"강남구\",
    \"careGrade\": \"3등급\",
    \"applicantName\": \"홍길동\",
    \"applicantPhone\": \"010-9999-8888\",
    \"applicantEmail\": \"test@message.com\"
  }" > /dev/null

echo "✅ 견적 생성 완료"
echo ""

# 3. 시설 로그인
echo "3. 시설 로그인..."
FACILITY_LOGIN=$(curl -s -X POST http://localhost:3000/api/login \
  -H "Content-Type: application/json" \
  -d '{"email":"hospital@test.com","password":"1234"}')

echo "✅ 시설 로그인 완료"
echo ""

# 4. 시설 대시보드에서 견적 확인
echo "4. 시설 대시보드에서 새 견적 확인..."
DASHBOARD=$(curl -s http://localhost:3000/api/facility/dashboard \
  -H "Cookie: user_session=hospital@test.com")

LATEST_QUOTE=$(echo $DASHBOARD | grep -o '"quote_id":"Q[0-9]*"' | head -1 | cut -d'"' -f4)
echo "✅ 최신 견적 ID: $LATEST_QUOTE"
echo ""

# 5. 견적서 전송
echo "5. 견적서 전송..."
SEND_QUOTE=$(curl -s -X POST http://localhost:3000/api/facility/send-quote \
  -H "Content-Type: application/json" \
  -H "Cookie: user_session=hospital@test.com" \
  -d "{
    \"quoteId\": \"$LATEST_QUOTE\",
    \"estimatedPrice\": 2800000,
    \"serviceDetails\": \"24시간 전문 간호 서비스\\n주 2회 전문의 회진\\n물리치료 주 3회 제공\",
    \"availableRooms\": \"1인실 1개, 2인실 2개 입소 가능\",
    \"specialServices\": \"치매 전문 케어 프로그램\\n욕창 예방 및 관리\",
    \"responseMessage\": \"20년 경력의 의료진이 환자분을 돌봐드립니다.\"
  }")

RESPONSE_ID=$(echo $SEND_QUOTE | grep -o '"responseId":"QR[^"]*"' | cut -d'"' -f4)
echo "✅ 견적서 전송 완료"
echo "   Response ID: $RESPONSE_ID"
echo ""

# 6. 고객: 견적서 조회
echo "6. 고객: 받은 견적서 조회..."
QUOTES=$(curl -s "http://localhost:3000/api/customer/quote-responses/$LATEST_QUOTE" \
  -H "Cookie: user_session=customer@test.com")

echo "✅ 견적서 조회 완료"
echo ""

# 7. 고객: 메시지 전송
echo "7. 고객: 시설에게 문의 메시지 전송..."
MESSAGE_SEND=$(curl -s -X POST http://localhost:3000/api/messages/send \
  -H "Content-Type: application/json" \
  -H "Cookie: user_session=customer@test.com" \
  -d "{
    \"responseId\": \"$RESPONSE_ID\",
    \"message\": \"안녕하세요. 치매 케어 프로그램에 대해 더 자세히 알고 싶습니다. 하루 일과는 어떻게 되나요? 입소 가능한 날짜도 궁금합니다.\"
  }")

MESSAGE_ID=$(echo $MESSAGE_SEND | grep -o '"messageId":"MSG[^"]*"' | cut -d'"' -f4)
echo "메시지 전송 응답: $MESSAGE_SEND"
echo "✅ 메시지 전송 완료"
echo "   Message ID: $MESSAGE_ID"
echo ""

# 8. 시설: 받은 메시지 조회
echo "8. 시설: 받은 메시지 조회..."
MESSAGES=$(curl -s "http://localhost:3000/api/messages/$RESPONSE_ID" \
  -H "Cookie: user_session=hospital@test.com")

echo "받은 메시지: $MESSAGES"
MESSAGE_COUNT=$(echo $MESSAGES | grep -o '"message"' | wc -l)
echo "✅ 메시지 조회 완료 (총 $MESSAGE_COUNT개)"
echo ""

# 9. 시설: 답변 전송
echo "9. 시설: 답변 전송..."
REPLY=$(curl -s -X POST http://localhost:3000/api/messages/reply \
  -H "Content-Type: application/json" \
  -H "Cookie: user_session=hospital@test.com" \
  -d "{
    \"responseId\": \"$RESPONSE_ID\",
    \"message\": \"안녕하세요. 문의 주셔서 감사합니다.\\n\\n치매 케어 프로그램은 다음과 같이 진행됩니다:\\n- 오전 9시: 인지 재활 프로그램\\n- 오전 11시: 작업 치료\\n- 오후 2시: 음악 치료\\n- 오후 4시: 산책 및 레크리에이션\\n\\n현재 1인실 1개가 비어있으며, 다음 주부터 입소 가능합니다. 방문 상담도 환영합니다!\"
  }")

REPLY_ID=$(echo $REPLY | grep -o '"messageId":"MSG[^"]*"' | cut -d'"' -f4)
echo "답변 전송 응답: $REPLY"
echo "✅ 답변 전송 완료"
echo "   Reply ID: $REPLY_ID"
echo ""

# 10. 고객: 받은 답변 조회
echo "10. 고객: 받은 답변 조회..."
ALL_MESSAGES=$(curl -s "http://localhost:3000/api/messages/$RESPONSE_ID" \
  -H "Cookie: user_session=customer@test.com")

echo "전체 메시지 내역:"
echo "$ALL_MESSAGES" | grep -o '"message":"[^"]*"' | cut -d'"' -f4
TOTAL_COUNT=$(echo $ALL_MESSAGES | grep -o '"message"' | wc -l)
echo "✅ 메시지 조회 완료 (총 $TOTAL_COUNT개)"
echo ""

echo "======================================"
echo "✅ 메시지 교환 기능 테스트 완료"
echo "======================================"
echo ""
echo "브라우저 테스트:"
echo "1. 고객 로그인: http://localhost:3000/login"
echo "   - customer@test.com / 1234"
echo "2. 견적 ID: $LATEST_QUOTE"
echo "3. Response ID: $RESPONSE_ID"
echo "4. 견적서 상세 페이지에서 '문의하기' 버튼 클릭"
echo "5. 메시지 작성 및 전송 확인"

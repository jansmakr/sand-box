#!/bin/bash

echo "========================================="
echo "시설 대시보드 UI 개선 테스트"
echo "========================================="
echo ""

BASE_URL="http://localhost:3000"

# 1. 고객으로 로그인하고 견적 요청 생성
echo "1️⃣  테스트 견적 요청 생성..."
CUSTOMER_LOGIN=$(curl -s -c cookies_customer.txt -X POST "$BASE_URL/api/auth/login" \
  -H "Content-Type: application/json" \
  -d '{"email":"customer@test.com","password":"1234","type":"customer"}')

QUOTE=$(curl -s -b cookies_customer.txt -X POST "$BASE_URL/api/quote-request" \
  -H "Content-Type: application/json" \
  -d '{
    "quoteType":"simple",
    "applicantName":"박영희",
    "applicantPhone":"010-5555-6666",
    "patientName":"박철수",
    "patientAge":"82",
    "patientGender":"남",
    "sido":"서울특별시",
    "sigungu":"강남구",
    "facilityType":"요양병원",
    "careGrade":"2등급",
    "insuranceType":"건강보험",
    "mainSymptoms":"치매",
    "communication":"듣기만 가능",
    "mobility":"휠체어",
    "dietType":"일반식",
    "toiletUse":"부축"
  }')

QUOTE_ID=$(echo $QUOTE | jq -r '.quoteId')
echo "   ✅ 생성된 견적 ID: $QUOTE_ID"
echo ""

# 2. 시설 로그인
echo "2️⃣  시설 로그인..."
FACILITY_LOGIN=$(curl -s -c cookies_facility.txt -X POST "$BASE_URL/api/auth/login" \
  -H "Content-Type: application/json" \
  -d '{"email":"hospital@test.com","password":"1234","type":"facility"}')
echo "   $(echo $FACILITY_LOGIN | jq -r '.message')"
echo ""

# 3. 시설 대시보드 데이터 확인
echo "3️⃣  시설 대시보드 데이터 확인..."
DASHBOARD=$(curl -s -b cookies_facility.txt "$BASE_URL/api/facility/dashboard")
NEW_REQUESTS=$(echo $DASHBOARD | jq -r '.data.stats.newRequests')
echo "   ✅ 새로운 견적 요청: ${NEW_REQUESTS}건"

# 첫 번째 요청의 상세 정보 확인
FIRST_REQUEST=$(echo $DASHBOARD | jq -r '.data.newRequests[0]')
if [ "$FIRST_REQUEST" != "null" ]; then
  echo ""
  echo "   📋 첫 번째 견적 요청 상세:"
  echo "      - 신청자: $(echo $FIRST_REQUEST | jq -r '.applicant_name')"
  echo "      - 환자: $(echo $FIRST_REQUEST | jq -r '.patient_name') ($(echo $FIRST_REQUEST | jq -r '.patient_age')세)"
  echo "      - 연락처: $(echo $FIRST_REQUEST | jq -r '.applicant_phone')"
  echo "      - 지역: $(echo $FIRST_REQUEST | jq -r '.sido') $(echo $FIRST_REQUEST | jq -r '.sigungu')"
  echo "      - 요양등급: $(echo $FIRST_REQUEST | jq -r '.care_grade')"
  echo "      - 추가정보: $(echo $FIRST_REQUEST | jq -r '.additional_notes' | head -c 100)..."
fi
echo ""

# 4. 시설 대시보드 페이지 접근 테스트
echo "4️⃣  시설 대시보드 페이지 접근 테스트..."
DASH_PAGE=$(curl -s -b cookies_facility.txt "$BASE_URL/dashboard/facility")
if echo "$DASH_PAGE" | grep -q "시설 대시보드"; then
  echo "   ✅ 페이지 로드 성공"
else
  echo "   ❌ 페이지 로드 실패"
fi

if echo "$DASH_PAGE" | grep -q "additional_notes"; then
  echo "   ✅ 추가정보 파싱 로직 포함"
else
  echo "   ❌ 추가정보 파싱 로직 없음"
fi

if echo "$DASH_PAGE" | grep -q "상세정보 보기"; then
  echo "   ✅ 상세정보 보기 버튼 존재"
else
  echo "   ❌ 상세정보 보기 버튼 없음"
fi
echo ""

# 정리
rm -f cookies_customer.txt cookies_facility.txt

echo "========================================="
echo "✅ 시설 대시보드 UI 개선 테스트 완료!"
echo "========================================="

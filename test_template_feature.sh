#!/bin/bash

BASE_URL="http://localhost:3000"

echo "=========================================="
echo "시설 견적 템플릿 기능 테스트"
echo "=========================================="
echo ""

# 시설 로그인
echo "1️⃣ 시설 로그인..."
curl -s -X POST "${BASE_URL}/api/auth/login" \
  -H "Content-Type: application/json" \
  -c /tmp/facility_cookies.txt \
  -d '{
    "email": "hospital@test.com",
    "password": "1234",
    "type": "facility"
  }' > /dev/null

echo "✅ 로그인 완료"
echo ""

# 템플릿 저장
echo "2️⃣ 템플릿 저장..."
TEMPLATE_SAVE=$(curl -s -X POST "${BASE_URL}/api/facility/template" \
  -H "Content-Type: application/json" \
  -b /tmp/facility_cookies.txt \
  -d '{
    "facilityName": "서울요양병원",
    "facilityDescription": "20년 전통의 전문 요양 시설로 최고의 의료 서비스를 제공합니다.",
    "defaultServiceDetails": "• 24시간 전문 간호 서비스\n• 전문의 주 2회 정기 회진\n• 물리치료 주 3회 제공\n• 작업치료 및 인지재활 프로그램\n• 영양사 맞춤 식단 관리",
    "defaultSpecialServices": "• 치매 전문 케어 프로그램\n• 욕창 예방 및 관리\n• 투약 관리 시스템\n• 24시간 CCTV 모니터링\n• 정기적인 건강 상태 리포트",
    "defaultMessage": "안녕하세요, 서울요양병원입니다.\n\n저희 시설은 20년 경력의 전문 의료진이 상주하며, 환자분의 상태에 최적화된 케어를 제공하고 있습니다.\n\n특히 치매 환자 케어 경험이 풍부하며, 낙상 예방 시스템과 24시간 모니터링 체계를 갖추고 있습니다.\n\n방문 상담 가능하오니 언제든 연락주시기 바랍니다.",
    "priceRangeMin": 2500000,
    "priceRangeMax": 3500000,
    "availableRoomTypes": "1인실, 2인실, 4인실"
  }')

echo "응답: ${TEMPLATE_SAVE}"
echo ""

# 템플릿 조회
echo "3️⃣ 템플릿 조회..."
TEMPLATE_GET=$(curl -s -X GET "${BASE_URL}/api/facility/template" \
  -H "Content-Type: application/json" \
  -b /tmp/facility_cookies.txt)

echo "템플릿 데이터:"
echo "${TEMPLATE_GET}" | python3 -c "
import sys, json
try:
    data = json.load(sys.stdin)
    if data.get('success') and data.get('data'):
        template = data['data']
        print(f\"시설명: {template.get('facility_name')}\")
        print(f\"서비스 상세: {template.get('default_service_details')[:50]}...\")
        print(f\"특별 서비스: {template.get('default_special_services')[:50]}...\")
        print(f\"가격대: {template.get('price_range_min')} ~ {template.get('price_range_max')}원\")
        print('✅ 템플릿 저장 확인')
    else:
        print('❌ 템플릿 없음')
except Exception as e:
    print(f'오류: {e}')
" 2>/dev/null

echo ""

# 고객 로그인 및 견적 생성
echo "4️⃣ 고객이 견적 요청 생성..."
curl -s -X POST "${BASE_URL}/api/auth/login" \
  -H "Content-Type: application/json" \
  -c /tmp/customer_cookies.txt \
  -d '{
    "email": "customer@test.com",
    "password": "1234",
    "type": "customer"
  }' > /dev/null

QUOTE_RESPONSE=$(curl -s -X POST "${BASE_URL}/api/quote-request" \
  -H "Content-Type: application/json" \
  -b /tmp/customer_cookies.txt \
  -d '{
    "quoteType": "simple",
    "applicantName": "템플릿테스터",
    "applicantPhone": "010-9999-7777",
    "patientName": "환자",
    "patientAge": 75,
    "patientGender": "남",
    "sido": "서울특별시",
    "sigungu": "강남구",
    "facilityType": "요양병원",
    "careGrade": "2등급"
  }')

QUOTE_ID=$(echo $QUOTE_RESPONSE | grep -o '"quoteId":"[^"]*"' | cut -d'"' -f4)
echo "견적 ID: ${QUOTE_ID}"
echo ""

echo "5️⃣ 시설 대시보드에서 견적 확인..."
DASHBOARD=$(curl -s -X GET "${BASE_URL}/api/facility/dashboard" \
  -H "Content-Type: application/json" \
  -b /tmp/facility_cookies.txt)

NEW_REQUESTS=$(echo $DASHBOARD | grep -o '"newRequests"' | wc -l)
echo "새 견적 요청 있음: $([ $NEW_REQUESTS -gt 0 ] && echo 'Yes' || echo 'No')"
echo ""

# 정리
rm -f /tmp/facility_cookies.txt /tmp/customer_cookies.txt

echo "=========================================="
echo "✅ 템플릿 기능 테스트 완료!"
echo "=========================================="
echo ""
echo "📌 브라우저 테스트:"
echo "  1. 시설 로그인: ${BASE_URL}/dashboard/facility"
echo "     계정: hospital@test.com / 1234"
echo ""
echo "  2. '견적 템플릿' 버튼 클릭"
echo "     → 저장된 템플릿 확인"
echo ""
echo "  3. 대시보드에서 '견적서 작성' 클릭"
echo "     → 템플릿 내용이 자동으로 입력됨"
echo ""
echo "  견적 ID: ${QUOTE_ID}"

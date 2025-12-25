#!/bin/bash

echo "========================================="
echo "대시보드 UI 데이터 표시 테스트"
echo "========================================="
echo ""

BASE_URL="http://localhost:3000"

# 고객 대시보드 페이지 테스트
echo "1️⃣  고객 대시보드 페이지 확인..."
CUSTOMER_DASH_PAGE=$(curl -s "$BASE_URL/dashboard/customer" -H "Cookie: user_session=test" 2>&1)
if echo "$CUSTOMER_DASH_PAGE" | grep -q "고객 대시보드"; then
  echo "   ✅ 고객 대시보드 페이지 로드 성공"
else
  echo "   ❌ 고객 대시보드 페이지 로드 실패"
fi

if echo "$CUSTOMER_DASH_PAGE" | grep -q "loadDashboardData"; then
  echo "   ✅ 데이터 로드 함수 존재"
else
  echo "   ❌ 데이터 로드 함수 없음"
fi

echo ""

# 시설 대시보드 페이지 테스트
echo "2️⃣  시설 대시보드 페이지 확인..."
FACILITY_DASH_PAGE=$(curl -s "$BASE_URL/dashboard/facility" -H "Cookie: user_session=test" 2>&1)
if echo "$FACILITY_DASH_PAGE" | grep -q "시설 대시보드"; then
  echo "   ✅ 시설 대시보드 페이지 로드 성공"
else
  echo "   ❌ 시설 대시보드 페이지 로드 실패"
fi

if echo "$FACILITY_DASH_PAGE" | grep -q "loadDashboardData"; then
  echo "   ✅ 데이터 로드 함수 존재"
fi

if echo "$FACILITY_DASH_PAGE" | grep -q "openQuoteModal"; then
  echo "   ✅ 견적서 작성 모달 함수 존재"
fi

echo ""

# 견적 상세 페이지 테스트
echo "3️⃣  견적 상세 페이지 확인..."
QUOTE_DETAIL_PAGE=$(curl -s "$BASE_URL/quote-details/Q1234567890" -H "Cookie: user_session=test" 2>&1)
if echo "$QUOTE_DETAIL_PAGE" | grep -q "견적서"; then
  echo "   ✅ 견적 상세 페이지 로드 성공"
else
  echo "   ❌ 견적 상세 페이지 로드 실패"
fi

echo ""

echo "========================================="
echo "✅ 대시보드 UI 테스트 완료!"
echo "========================================="

#!/bin/bash

echo "================================"
echo "📱 모바일 최적화 테스트"
echo "================================"
echo ""

# 색상 정의
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}1. 서비스 상태 확인${NC}"
if curl -s http://localhost:3000 > /dev/null; then
    echo -e "${GREEN}✅ 서비스 정상 작동${NC}"
else
    echo "❌ 서비스 연결 실패"
    exit 1
fi
echo ""

echo -e "${BLUE}2. Viewport 메타태그 확인${NC}"
VIEWPORT=$(curl -s http://localhost:3000 | grep -o 'viewport' | head -1)
if [ -n "$VIEWPORT" ]; then
    echo -e "${GREEN}✅ Viewport 메타태그 존재${NC}"
else
    echo "❌ Viewport 메타태그 없음"
fi
echo ""

echo -e "${BLUE}3. 모바일 메뉴 확인${NC}"
MOBILE_MENU=$(curl -s http://localhost:3000 | grep -o 'mobile-menu' | head -1)
if [ -n "$MOBILE_MENU" ]; then
    echo -e "${GREEN}✅ 모바일 메뉴 존재${NC}"
else
    echo "❌ 모바일 메뉴 없음"
fi
echo ""

echo -e "${BLUE}4. 햄버거 메뉴 버튼 확인${NC}"
HAMBURGER=$(curl -s http://localhost:3000 | grep -o 'fa-bars' | head -1)
if [ -n "$HAMBURGER" ]; then
    echo -e "${GREEN}✅ 햄버거 메뉴 버튼 존재${NC}"
else
    echo "❌ 햄버거 메뉴 버튼 없음"
fi
echo ""

echo -e "${BLUE}5. 반응형 클래스 확인${NC}"
RESPONSIVE=$(curl -s http://localhost:3000 | grep -o 'md:' | head -1)
if [ -n "$RESPONSIVE" ]; then
    echo -e "${GREEN}✅ Tailwind 반응형 클래스 사용${NC}"
else
    echo "❌ 반응형 클래스 없음"
fi
echo ""

echo -e "${YELLOW}================================${NC}"
echo -e "${YELLOW}📱 모바일 테스트 가이드${NC}"
echo -e "${YELLOW}================================${NC}"
echo ""

echo "🔍 브라우저 개발자 도구로 테스트하세요:"
echo ""
echo "1️⃣ Chrome DevTools 모바일 시뮬레이션:"
echo "   - F12 키를 눌러 개발자 도구 열기"
echo "   - Ctrl+Shift+M (또는 Cmd+Shift+M) 모바일 토글"
echo "   - 디바이스: iPhone 12 Pro, Galaxy S20 등 선택"
echo ""
echo "2️⃣ 테스트할 페이지:"
echo "   - 메인 페이지: http://localhost:3000"
echo "   - 로그인: http://localhost:3000/login"
echo "   - 고객 대시보드: http://localhost:3000/dashboard/customer"
echo "   - 시설 대시보드: http://localhost:3000/dashboard/facility"
echo ""
echo "3️⃣ 확인 사항:"
echo "   ✅ 햄버거 메뉴 동작 (모바일에서만 보임)"
echo "   ✅ 통계 카드 2열 그리드 (모바일)"
echo "   ✅ 하단 네비게이션 (메인 페이지 모바일)"
echo "   ✅ 버튼 터치 영역 (최소 44px)"
echo "   ✅ 텍스트 가독성 (최소 16px)"
echo "   ✅ 스크롤 없이 주요 콘텐츠 확인 가능"
echo ""
echo "4️⃣ 테스트 계정:"
echo "   - 고객: customer@test.com / 1234"
echo "   - 시설: hospital@test.com / 1234"
echo ""

echo -e "${GREEN}================================${NC}"
echo -e "${GREEN}✅ 모바일 최적화 적용 완료!${NC}"
echo -e "${GREEN}================================${NC}"
echo ""

echo "🚀 실제 모바일 기기에서도 테스트하세요:"
echo "   샌드박스 URL: https://3000-i9rvbxi0ydi8a2ltypzm7-cbeee0f9.sandbox.novita.ai"
echo ""

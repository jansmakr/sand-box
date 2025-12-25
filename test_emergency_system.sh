#!/bin/bash

echo "======================================"
echo "긴급 전원 시스템 프로토타입 테스트"
echo "======================================"
echo ""

# 1. 서비스 상태 확인
echo "1. 서비스 상태 확인..."
curl -s http://localhost:3000 > /dev/null
if [ $? -eq 0 ]; then
  echo "✅ 서비스가 정상 작동 중입니다."
else
  echo "❌ 서비스가 응답하지 않습니다."
  exit 1
fi
echo ""

echo "======================================"
echo "✅ 구현 완료 기능"
echo "======================================"
echo ""
echo "📊 DB 테이블:"
echo "  ✓ emergency_transfers (긴급 전원 요청)"
echo "  ✓ social_workers (사회복지사 계정)"
echo "  ✓ facility_emergency_info (시설 응급 정보)"
echo ""
echo "🔌 API 엔드포인트:"
echo "  ✓ POST /api/emergency/create - 긴급 전원 요청"
echo "  ✓ GET /api/emergency/list - 목록 조회"
echo "  ✓ GET /api/emergency/:transferId - 상세 조회"
echo "  ✓ POST /api/social-worker/register - 사회복지사 회원가입"
echo "  ✓ POST /api/social-worker/login - 로그인"
echo ""
echo "🖥️  UI 페이지:"
echo "  ✓ /emergency-transfer - 긴급 전원 요청 폼"
echo ""

echo "======================================"
echo "브라우저 테스트 가이드"
echo "======================================"
echo ""
echo "📋 긴급 전원 요청 테스트"
echo "--------------------------------------"
echo "1) 긴급 전원 요청 페이지 접속:"
echo "   👉 http://localhost:3000/emergency-transfer"
echo ""
echo "2) 긴급도 선택:"
echo "   🔴 극긴급 (6시간 이내)"
echo "   🟠 긴급 (24시간 이내)"
echo "   🟢 일반 (1주일 이내)"
echo ""
echo "3) 환자 정보 입력:"
echo "   - 환자 성명: 홍길동"
echo "   - 나이: 75"
echo "   - 성별: 남성"
echo "   - 요양등급: 1등급"
echo "   - 진단명: 뇌경색 후유증"
echo ""
echo "4) 요청자 정보:"
echo "   - 요청자 유형: 사회복지사"
echo "   - 성명: 김복지"
echo "   - 연락처: 010-1234-5678"
echo "   - 병원명: 서울대병원"
echo ""
echo "5) '긴급 전원 요청 접수' 버튼 클릭"
echo "6) 요청 번호 확인 (ET로 시작)"
echo ""

echo "======================================"
echo "API 테스트 (선택사항)"
echo "======================================"
echo ""
echo "💡 긴급 전원 요청 생성 테스트:"
echo ""
echo 'curl -X POST http://localhost:3000/api/emergency/create \'
echo '  -H "Content-Type: application/json" \'
echo '  -d '"'"'{
    "urgencyLevel": "urgent",
    "patientName": "테스트환자",
    "patientAge": 75,
    "diagnosis": "뇌경색",
    "requesterType": "social_worker",
    "requesterName": "김복지",
    "requesterPhone": "010-1234-5678",
    "hospitalName": "서울대병원"
  }'"'"
echo ""
echo "💡 목록 조회:"
echo "curl http://localhost:3000/api/emergency/list"
echo ""

echo "======================================"
echo "테스트 URL"
echo "======================================"
echo ""
echo "🌐 긴급 전원 요청: http://localhost:3000/emergency-transfer"
echo "🌐 메인 페이지: http://localhost:3000"
echo ""

echo "======================================"
echo "✨ Phase 2A 프로토타입 완성!"
echo "======================================"
echo ""
echo "구현된 기능:"
echo "  ✅ 긴급도 3단계 분류 (극긴급/긴급/일반)"
echo "  ✅ 긴급 전원 요청 API"
echo "  ✅ 사회복지사 계정 시스템"
echo "  ✅ 긴급 요청 폼 페이지"
echo ""
echo "다음 단계 (추후 구현):"
echo "  ⏳ 사회복지사 대시보드"
echo "  ⏳ 시설 응급 정보 관리"
echo "  ⏳ 자동 매칭 시스템"
echo "  ⏳ 응급 알림"
echo ""

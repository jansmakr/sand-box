# 카카오 로그인 테스트

## 환경 변수 설정 완료
- KAKAO_REST_API_KEY: 2610d68cb41f3ceba40f42f1f7fe5e91
- KAKAO_REDIRECT_URI: https://carejoa.kr/api/auth/kakao/callback

## 테스트 URL
- 로그인: https://carejoa.kr/login
- 카카오 로그인: https://carejoa.kr/api/auth/kakao/login
- 마이페이지: https://carejoa.kr/my-page

## 카카오 로그인 플로우
1. 사용자가 `/login` 페이지 방문
2. "카카오 로그인" 버튼 클릭
3. `/api/auth/kakao/login` 라우트로 리다이렉트
4. 카카오 인증 페이지로 이동
5. 사용자 인증 후 `/api/auth/kakao/callback`으로 콜백
6. 사용자 정보 저장 후 `/my-page` 또는 `/signup/select-type`로 리다이렉트

## 예상 결과
- 신규 사용자: 회원 타입 선택 페이지로 이동
- 기존 사용자: 마이페이지로 이동

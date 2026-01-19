# 회원가입 기능 테스트 가이드

## 📋 현재 상태

### ✅ 정상 작동 확인
- **회원가입 API**: `/api/auth/register` 정상 작동
- **DB 저장**: D1 데이터베이스에 정상 저장
- **로그인 API**: `/api/auth/login` 정상 작동

### 🧪 API 테스트 결과
```bash
# 회원가입 테스트
curl -X POST http://localhost:3000/api/auth/register \
  -H "Content-Type: application/json" \
  -d '{
    "email": "newuser@test.com",
    "password": "test1234",
    "name": "신규유저",
    "phone": "010-9999-9999",
    "type": "customer"
  }'

# 결과: {"success":true,"message":"회원가입이 완료되었습니다.","userId":5}
```

---

## 🌐 브라우저 테스트 방법

### 1️⃣ 회원가입 페이지 접속
```
https://3000-ifvffj98inm1alivckh29-2e1b9533.sandbox.novita.ai/register
```

### 2️⃣ 정보 입력
- **가입 유형**: 일반고객 선택 (기본 선택됨)
- **이메일**: 원하는 이메일 주소
- **비밀번호**: 8자 이상
- **비밀번호 확인**: 동일한 비밀번호
- **이름**: 이름 입력
- **연락처**: 전화번호 입력

### 3️⃣ 회원가입 버튼 클릭

### 4️⃣ 예상 결과
- ✅ 성공: "회원가입이 완료되었습니다! 로그인해주세요." 알림
- ✅ 자동으로 로그인 페이지(`/login`)로 이동

---

## 🔍 오류 발생 시 확인사항

### A. 브라우저 개발자 도구 열기
- **Windows/Linux**: `F12` 또는 `Ctrl + Shift + I`
- **Mac**: `Cmd + Option + I`

### B. Console 탭 확인
1. 개발자 도구에서 **Console** 탭 클릭
2. 회원가입 버튼 클릭
3. 빨간색 에러 메시지 확인

### C. Network 탭 확인
1. 개발자 도구에서 **Network** 탭 클릭
2. 회원가입 버튼 클릭
3. `/api/auth/register` 요청 찾기
4. 클릭해서 상세 정보 확인:
   - **Status**: 200이어야 정상
   - **Response**: 응답 내용 확인

---

## 🐛 예상 가능한 문제들

### 문제 1: "이메일이 중복됩니다"
**원인**: 이미 사용 중인 이메일
**해결**: 다른 이메일 주소 사용

### 문제 2: "비밀번호가 일치하지 않습니다"
**원인**: 비밀번호와 비밀번호 확인이 다름
**해결**: 동일한 비밀번호 입력

### 문제 3: "비밀번호는 8자 이상이어야 합니다"
**원인**: 비밀번호가 너무 짧음
**해결**: 8자 이상 입력

### 문제 4: "기관명, 부서명, 직책을 모두 입력해주세요"
**원인**: 병원 관리자 또는 복지 관리자 선택 시 필수 항목 미입력
**해결**: 모든 필수 항목 입력

### 문제 5: JavaScript 오류
**원인**: 브라우저 캐시 또는 스크립트 로드 실패
**해결**: 
- 하드 리프레시: `Ctrl + Shift + R` (Windows) 또는 `Cmd + Shift + R` (Mac)
- 시크릿 모드에서 재시도

---

## 🎯 테스트 계정

이미 생성된 테스트 계정:

### 일반 고객
- 이메일: `test2@example.com`
- 비밀번호: `test1234`

### 추가된 계정
- 이메일: `procos@hanmail.net`
- 비밀번호: `test1234`

### 신규 생성 계정
- 이메일: `newuser@test.com`
- 비밀번호: `test1234`

---

## 📝 DB 확인 방법

```bash
# 모든 사용자 조회
cd /home/user/webapp
npx wrangler d1 execute carejoa-production --local \
  --command="SELECT id, email, name, user_type FROM users"

# 특정 이메일 조회
npx wrangler d1 execute carejoa-production --local \
  --command="SELECT * FROM users WHERE email = 'your@email.com'"
```

---

## 🚨 문제 보고 시 포함할 정보

회원가입이 안 될 경우, 다음 정보를 공유해주세요:

1. **사용한 이메일 주소**
2. **선택한 가입 유형** (일반고객/요양병원/상급병원/행정복지)
3. **브라우저 콘솔 에러 메시지** (스크린샷)
4. **Network 탭 응답 내용** (스크린샷)
5. **발생한 알림 메시지**

---

## 💡 빠른 해결 방법

### 회원가입 페이지가 안 열릴 때
```bash
# 서비스 재시작
cd /home/user/webapp
fuser -k 3000/tcp
pm2 restart ecosystem.config.cjs
```

### DB에 직접 계정 추가 (긴급 시)
```bash
cd /home/user/webapp
npx wrangler d1 execute carejoa-production --local --command="
INSERT INTO users (user_type, email, password_hash, name, phone, created_at, updated_at)
VALUES ('customer', 'your@email.com', 'yourpassword', '이름', '010-0000-0000', datetime('now'), datetime('now'))
"
```

---

## 📞 도움말

문제가 계속되면:
1. 브라우저 캐시 완전 삭제
2. 시크릿 모드에서 시도
3. 다른 브라우저에서 시도
4. 개발자 도구 콘솔 에러 확인

**마지막 업데이트**: 2026-01-19
**문서 버전**: 1.0.0

# 🗺️ 카카오맵 API 빠른 연동 가이드

## 5분 안에 지도 활성화하기!

### 1️⃣ Kakao Developers 가입 (2분)

1. https://developers.kakao.com/ 접속
2. 카카오 계정으로 로그인
3. **"내 애플리케이션"** → **"애플리케이션 추가하기"**
4. 앱 이름에 "케어조아" 입력 → 저장

### 2️⃣ Web 플랫폼 등록 (1분)

1. 생성한 앱 클릭
2. **"앱 설정"** → **"플랫폼"** → **"Web 플랫폼 등록"**
3. 사이트 도메인 입력:
   ```
   http://localhost:3000
   https://carejoa.kr
   ```

### 3️⃣ API 키 복사 (30초)

1. **"앱 설정"** → **"앱 키"**
2. **"JavaScript 키"** 복사
   - 예시: `1234567890abcdef1234567890abcdef`

### 4️⃣ 프로젝트에 키 설정 (1분)

**로컬 개발 환경:**

`.dev.vars` 파일 열기:
```bash
nano /home/user/webapp/.dev.vars
```

다음과 같이 수정:
```bash
KAKAO_MAPS_API_KEY=여기에_복사한_JavaScript_키_붙여넣기
ADMIN_PASSWORD=carejoa2024!secure
```

저장 후 서버 재시작:
```bash
cd /home/user/webapp
pm2 restart carejoa-webapp
```

### 5️⃣ 테스트 (30초)

브라우저에서 접속:
```
http://localhost:3000/facilities
```

✅ **성공!** 지도가 표시되고 검색 버튼 클릭 시 마커가 나타납니다.

---

## ⚠️ 문제 해결

### 지도가 안 보여요!
- `.dev.vars` 파일에서 API 키 확인
- `pm2 restart carejoa-webapp` 실행
- 브라우저 개발자 도구(F12) → Console 탭 확인

### "API Key is invalid" 에러
- JavaScript 키를 복사했는지 확인 (REST API 키 아님)
- 키 복사 시 앞뒤 공백 제거
- Web 플랫폼에 도메인이 등록되었는지 확인

---

## 🚀 프로덕션 배포 시

Cloudflare Pages에 배포할 때:
```bash
npx wrangler pages secret put KAKAO_MAPS_API_KEY --project-name=carejoa-webapp
```

프롬프트에서 JavaScript 키 입력

---

## 📖 상세 가이드

더 자세한 내용은 [KAKAO_MAPS_SETUP.md](./KAKAO_MAPS_SETUP.md) 참고

**문의**: 문제가 해결되지 않으면 Kakao Developers 포럼 (https://devtalk.kakao.com/) 에서 도움을 받으세요.

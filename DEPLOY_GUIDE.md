# 🚀 Cloudflare Pages 배포 가이드

## ⚠️ 현재 상황

Cloudflare API 토큰의 권한이 부족하여 자동 배포가 실패했습니다.

```
Error: A request to the Cloudflare API (/memberships) failed.
Authentication error [code: 10000]
```

---

## 🔧 해결 방법

### 방법 1: API 토큰 권한 업데이트 (추천)

1. **Cloudflare 대시보드 접속**
   - https://dash.cloudflare.com/profile/api-tokens

2. **API 토큰 편집**
   - 현재 토큰을 찾아서 "Edit" 클릭

3. **필요한 권한 추가**
   ```
   Account - Cloudflare Pages - Edit
   Account - Account Settings - Read
   ```

4. **Deploy 탭에서 API 키 재설정**
   - GenSpark의 Deploy 탭으로 이동
   - Cloudflare API Key 재입력

5. **배포 명령 실행**
   ```bash
   cd /home/user/webapp
   npm run build
   npx wrangler pages deploy dist --project-name carejoa-webapp
   ```

---

### 방법 2: Cloudflare 대시보드에서 수동 배포

1. **GitHub에 코드 푸시**
   ```bash
   cd /home/user/webapp
   git push origin main
   ```

2. **Cloudflare Pages 대시보드 접속**
   - https://dash.cloudflare.com/ → Pages

3. **프로젝트 선택 또는 생성**
   - 기존 프로젝트: `carejoa-webapp` 또는 `carejoa-kr` 선택
   - 신규 프로젝트: "Create a project" → "Connect to Git"

4. **GitHub 연동**
   - Repository: `webapp` 선택
   - Branch: `main`

5. **빌드 설정**
   ```
   Framework preset: None
   Build command: npm run build
   Build output directory: dist
   ```

6. **환경 변수 설정**
   ```
   ADMIN_PASSWORD=5874
   KAKAO_REST_API_KEY=2610d68c50d1030851cb426c29d69df0
   KAKAO_REDIRECT_URI=https://carejoa-webapp.pages.dev/api/auth/kakao/callback
   ```

7. **D1 바인딩 설정**
   - Settings → Functions → D1 database bindings
   - Variable name: `DB`
   - D1 database: `carejoa-production`

8. **배포 시작**
   - "Save and Deploy" 클릭

---

## 📦 현재 빌드 상태

✅ **로컬 빌드 완료**
- 빌드 파일: `dist/_worker.js` (463.24 kB)
- 모든 기능 정상 작동 확인

✅ **Git 커밋 완료**
```
d88c74c - feat: 사업자 정보 푸터 추가
b90a22f - feat: 모바일 최적화 적용
198b7f1 - feat: Phase 2A 프로토타입 완성
```

---

## 🌐 테스트 URL

**샌드박스 URL** (현재 작동 중):
https://3000-i9rvbxi0ydi8a2ltypzm7-cbeee0f9.sandbox.novita.ai

**예상 배포 URL**:
- https://carejoa-webapp.pages.dev
- https://carejoa-kr.pages.dev (기존 프로젝트)

---

## 📋 체크리스트

배포 전 확인사항:
- [x] 로컬 빌드 성공
- [x] Git 커밋 완료
- [x] 모바일 최적화 적용
- [x] 사업자 정보 추가
- [ ] API 토큰 권한 업데이트
- [ ] Cloudflare Pages 배포

---

## 💡 추가 도움말

### GitHub 푸시가 필요한 경우
```bash
cd /home/user/webapp
git push origin main
```

### 로컬에서 테스트
```bash
cd /home/user/webapp
npm run preview
```

### 프로덕션 빌드 확인
```bash
cd /home/user/webapp
npm run build
ls -lh dist/
```

---

## 📞 문의

문제가 계속되면:
1. Cloudflare 대시보드에서 로그 확인
2. API 토큰 권한 재확인
3. 수동 배포 시도


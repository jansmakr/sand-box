# 🎯 최종 배포 가이드 - procos@hanmail.net 계정

## 📋 현재 문제

**API 토큰 권한 부족:**
```
현재 토큰 권한:
✅ Workers Scripts - Edit
❌ Cloudflare Pages - Edit (없음!)
❌ D1 - Edit (없음!)

결과: 프로젝트 생성 불가
```

---

## ✅ 해결 방법: API 토큰 권한 추가

### 🎯 Step 1: API 토큰 권한 업데이트

#### 옵션 A: 기존 토큰 수정 (권장)

```
1. https://dash.cloudflare.com/profile/api-tokens 접속

2. 현재 사용 중인 토큰 찾기
   (GenSpark Deploy 탭에 입력한 토큰)

3. 토큰 오른쪽 "..." 메뉴 → "Edit" 클릭

4. Permissions 섹션에서 "Add more" 클릭

5. 다음 권한 추가:
   ✅ Account - Cloudflare Pages - Edit
   ✅ Account - D1 - Edit

6. "Continue to summary" → "Update token"

7. GenSpark Deploy 탭은 그대로 (토큰 변경 없음)
```

#### 옵션 B: 새 토큰 생성

```
1. https://dash.cloudflare.com/profile/api-tokens 접속

2. "Create Token" 클릭

3. "Edit Cloudflare Workers" 템플릿 선택

4. Permissions 확인/추가:
   ✅ Account - Cloudflare Pages - Edit
   ✅ Account - D1 - Edit
   ✅ Account - Workers Scripts - Edit
   ✅ Account - Account Settings - Read
   ✅ Account - Workers R2 Storage - Edit (선택)

5. Account Resources: "All accounts"

6. "Continue to summary" → "Create Token"

7. 토큰 복사 (한 번만 표시!)

8. GenSpark Deploy 탭에서 새 토큰으로 교체
```

---

### 🎯 Step 2: Dashboard에서 리소스 생성

#### 2-1. D1 데이터베이스 생성

```
1. https://dash.cloudflare.com 접속

2. 좌측 메뉴: "Workers & Pages"

3. 상단 탭: "D1" 선택

4. "Create database" 버튼

5. Database name: carejoa-webapp-db

6. "Create" 클릭

7. Database ID 복사 (중요!)
   형식: xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
```

#### 2-2. Pages 프로젝트 생성

```
1. 상단 탭: "Overview" (Workers & Pages)

2. "Create application" → "Pages"

3. "Create using direct upload"

4. Project name: carejoa-webapp

5. Production branch: main

6. "Create project"

7. 프로젝트 생성 완료!
```

---

### 🎯 Step 3: wrangler.jsonc 업데이트

```bash
cd /home/user/webapp
nano wrangler.jsonc
```

**업데이트 내용:**
```jsonc
{
  "$schema": "node_modules/wrangler/config-schema.json",
  "name": "carejoa-webapp",
  "compatibility_date": "2025-10-03",
  "pages_build_output_dir": "./dist",
  "compatibility_flags": ["nodejs_compat"],
  
  "d1_databases": [
    {
      "binding": "DB",
      "database_name": "carejoa-webapp-db",
      "database_id": "여기에-Step2에서-복사한-Database-ID"
    }
  ]
}
```

---

### 🎯 Step 4: D1 마이그레이션 적용

```bash
cd /home/user/webapp

# 로컬 테스트
npx wrangler d1 migrations apply carejoa-webapp-db --local

# 빌드 테스트
npm run build

# PM2로 로컬 테스트
fuser -k 3000/tcp 2>/dev/null || true
pm2 restart carejoa-webapp
sleep 3
curl http://localhost:3000

# 프로덕션 D1 마이그레이션
npx wrangler d1 migrations apply carejoa-webapp-db --remote
```

---

### 🎯 Step 5: 프로덕션 배포

```bash
cd /home/user/webapp

# 최종 빌드
npm run build

# 배포
npx wrangler pages deploy dist --project-name carejoa-webapp
```

**예상 결과:**
```
✨ Uploading... (7 files)

✨ Deployment complete!
Project: carejoa-webapp
🌍 https://[random-id].carejoa-webapp.pages.dev
```

---

### 🎯 Step 6: 환경 변수 설정

```bash
# 1. 관리자 비밀번호
npx wrangler pages secret put ADMIN_PASSWORD --project-name carejoa-webapp
# 입력: 5874

# 2. 카카오 REST API 키
npx wrangler pages secret put KAKAO_REST_API_KEY --project-name carejoa-webapp
# 입력: 2610d68c50d1030851cb426c29d69df0

# 3. 카카오 리다이렉트 URI
npx wrangler pages secret put KAKAO_REDIRECT_URI --project-name carejoa-webapp
# 입력: https://carejoa-webapp.pages.dev/api/auth/kakao/callback
```

---

### 🎯 Step 7: 커스텀 도메인 연결

#### Dashboard에서 설정:

```
1. Workers & Pages → carejoa-webapp 선택

2. "Settings" 탭

3. "Custom domains" 섹션

4. "Set up a custom domain" 클릭

5. 도메인 입력: carejoa.kr

6. DNS 레코드 자동 생성 확인

7. "Activate domain" 클릭

8. DNS 전파 대기 (5-10분)
```

#### 또는 CLI로:

```bash
npx wrangler pages domain add carejoa.kr --project-name carejoa-webapp
```

---

### 🎯 Step 8: 환경 변수 업데이트 (도메인 연결 후)

```bash
# 카카오 리다이렉트 URI 업데이트
npx wrangler pages secret put KAKAO_REDIRECT_URI --project-name carejoa-webapp
# 입력: https://carejoa.kr/api/auth/kakao/callback
```

**카카오 개발자 콘솔 업데이트:**
```
1. https://developers.kakao.com 접속
2. 내 애플리케이션 선택
3. 플랫폼 → Web 플랫폼 설정
4. Redirect URI 추가:
   https://carejoa.kr/api/auth/kakao/callback
5. 저장
```

---

## 📝 전체 체크리스트

### API 토큰
- [ ] API 토큰 권한 추가/업데이트
  - [ ] Cloudflare Pages - Edit
  - [ ] D1 - Edit
- [ ] GenSpark Deploy 탭 업데이트 (옵션 B인 경우)

### Dashboard 작업
- [ ] D1 데이터베이스 생성
- [ ] Database ID 복사
- [ ] Pages 프로젝트 생성

### 로컬 설정
- [ ] wrangler.jsonc 업데이트
- [ ] D1 마이그레이션 (local)
- [ ] 로컬 테스트 정상

### 프로덕션 배포
- [ ] D1 마이그레이션 (remote)
- [ ] npm run build
- [ ] wrangler pages deploy
- [ ] 환경 변수 설정
- [ ] 배포 URL 확인

### 도메인 설정
- [ ] 커스텀 도메인 연결
- [ ] DNS 전파 확인
- [ ] 환경 변수 업데이트 (도메인)
- [ ] 카카오 콘솔 업데이트

### 최종 확인
- [ ] https://carejoa.kr 접속
- [ ] 회원가입 테스트
- [ ] 로그인 테스트
- [ ] 견적 신청 테스트
- [ ] 관리자 로그인 테스트

---

## 🚨 트러블슈팅

### 문제: API 토큰 권한 추가 후에도 실패

**해결:**
```bash
# 캐시 삭제
rm -rf ~/.wrangler ~/.config/.wrangler

# GenSpark Deploy 탭에서 토큰 재입력
# 재시도
```

### 문제: D1 마이그레이션 실패

**해결:**
```bash
# Database ID 확인
# wrangler.jsonc의 database_id가 정확한지 확인

# 다시 시도
npx wrangler d1 migrations apply carejoa-webapp-db --remote
```

### 문제: 배포 성공했지만 DB 오류

**해결:**
```bash
# D1 바인딩 확인
npx wrangler pages project list

# Pages 프로젝트 설정에서 D1 바인딩 확인
# Dashboard → carejoa-webapp → Settings → Functions → D1 bindings
```

---

## 🎯 우선순위 액션

### 지금 바로 할 일:

```
1. API 토큰 권한 추가 (5분)
   → https://dash.cloudflare.com/profile/api-tokens

2. Dashboard에서 D1 생성 (2분)
   → Workers & Pages → D1

3. Dashboard에서 Pages 생성 (2분)
   → Workers & Pages → Create application

4. wrangler.jsonc 업데이트 (1분)

5. 배포 실행 (5분)
   → npm run build
   → npx wrangler pages deploy dist
```

**총 소요 시간: 약 15분**

---

## 📚 관련 문서

- `ACCOUNT_STRATEGY_GUIDE.md`: 계정 전략
- `QUICK_DEPLOY_GUIDE.md`: 빠른 배포
- `MIGRATION_TO_PROCOS_ACCOUNT.md`: 마이그레이션 가이드

---

**작성일**: 2025-12-28  
**상태**: ✅ 실행 준비 완료  
**첫 단계**: API 토큰 권한 추가부터 시작!

---

**준비되셨으면 Step 1부터 시작하세요! 🚀**

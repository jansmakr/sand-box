# 🔄 Cloudflare 계정 통합 마이그레이션 가이드
## procos@hanmail.net 계정으로 완전 이전

## 📋 마이그레이션 개요

**목표**: 모든 리소스를 `procos@hanmail.net` 계정으로 통합

**현재 상황:**
- ❌ 기존 계정 (8dbb304f...): carejoa-kr 프로젝트 있음
- ✅ 신규 계정 (procos@hanmail.net): API 토큰 있음, 빈 상태

**마이그레이션 후:**
- ✅ procos@hanmail.net: 모든 리소스 통합 관리
- ✅ 배포 문제 완전 해결
- ✅ 단일 계정으로 간편 관리

**예상 소요 시간**: 30-40분  
**다운타임**: 5-10분 (DNS 전파)  
**난이도**: ⭐⭐ 보통

---

## 🎯 마이그레이션 전략

### ✅ 권장: 옵션 A - 완전히 새로 시작

**장점:**
- ✅ 가장 간단하고 깔끔
- ✅ 최신 코드로 새 출발
- ✅ 테스트 데이터 정리
- ✅ 30분 내 완료

**단점:**
- ❌ 기존 프로덕션 데이터 손실

**선택 기준:**
- 아직 정식 서비스 전이면 **강력 권장**
- 테스트 데이터만 있으면 **권장**
- 실제 사용자 데이터가 있으면 옵션 B 고려

### 옵션 B - 데이터 마이그레이션

**장점:**
- ✅ 기존 데이터 보존

**단점:**
- ❌ 복잡하고 시간 소요 (2시간+)
- ❌ 기존 계정 접근 필요

---

## 🚀 옵션 A 실행 가이드 (권장)

### 📦 사전 확인

#### 현재 상태
```bash
cd /home/user/webapp
git log --oneline -5
```

**확인 사항:**
- ✅ 최신 코드 커밋 완료 (4ee0d02)
- ✅ JSX 주석 제거
- ✅ credentials 추가
- ✅ 모든 기능 정상

#### 백업 확인
```
✅ 프로젝트 백업 완료
   URL: https://www.genspark.ai/api/files/s/ORO8ygH0
   
✅ GitHub 백업 완료
   URL: https://github.com/jansmakr/sand-box
   커밋: 4ee0d02
```

---

### 🎬 Step 1: D1 데이터베이스 생성

```bash
cd /home/user/webapp

# 새 D1 데이터베이스 생성
npx wrangler d1 create carejoa-production
```

**예상 출력:**
```
✅ Successfully created DB 'carejoa-production'

[[d1_databases]]
binding = "DB"
database_name = "carejoa-production"
database_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"

⚠️ 위의 database_id를 복사해두세요!
```

---

### 📝 Step 2: wrangler.jsonc 업데이트

**현재 파일:**
```jsonc
{
  "$schema": "node_modules/wrangler/config-schema.json",
  "name": "carejoa-webapp",
  "compatibility_date": "2025-10-03",
  "pages_build_output_dir": "./dist",
  "compatibility_flags": ["nodejs_compat"]
}
```

**업데이트할 내용:**
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
      "database_name": "carejoa-production",
      "database_id": "여기에-Step1에서-받은-database_id-입력"
    }
  ]
}
```

**실행:**
```bash
# 에디터로 직접 수정하거나
nano wrangler.jsonc

# 또는 아래 명령어 사용 (database_id 교체 필요)
```

---

### 🗄️ Step 3: 데이터베이스 마이그레이션 적용

#### 로컬 테스트
```bash
cd /home/user/webapp

# 로컬 D1에 마이그레이션 적용
npx wrangler d1 migrations apply carejoa-production --local
```

**예상 출력:**
```
Migrations to be applied:
┌────────────────────────────────────────┐
│ 0001_create_users_table.sql           │
│ 0002_create_facilities_table.sql      │
│ 0003_create_quote_requests.sql        │
│ 0004_create_quote_responses.sql       │
│ 0005_create_chat_messages.sql         │
│ 0006_create_reviews.sql               │
│ 0007_add_user_type_field.sql          │
│ 0008_add_kakao_fields.sql             │
│ 0009_representative_facility.sql      │
└────────────────────────────────────────┘

✅ Migrations applied successfully!
```

#### 로컬 테스트
```bash
# 빌드
npm run build

# PM2로 시작
fuser -k 3000/tcp 2>/dev/null || true
pm2 restart carejoa-webapp

# 테스트
sleep 3
curl http://localhost:3000/
```

**예상:**
```
HTTP 200 ✅
```

#### 프로덕션 마이그레이션
```bash
# 프로덕션 D1에 마이그레이션 적용
npx wrangler d1 migrations apply carejoa-production --remote
```

---

### 🌐 Step 4: Pages 프로젝트 생성

```bash
cd /home/user/webapp

# Pages 프로젝트 생성
npx wrangler pages project create carejoa-webapp --production-branch main
```

**예상 출력:**
```
✅ Successfully created the 'carejoa-webapp' project!

Your project has been created successfully.
View your project at:
https://carejoa-webapp.pages.dev
```

---

### 🚢 Step 5: 첫 배포

```bash
cd /home/user/webapp

# 최종 빌드
npm run build

# 프로덕션 배포
npx wrangler pages deploy dist --project-name carejoa-webapp
```

**예상 출력:**
```
✨ Uploading... (7 files)

✨ Deployment complete!
🌍 https://[random-id].carejoa-webapp.pages.dev
```

**배포 URL 복사해두기!**

---

### 🔐 Step 6: 환경 변수 설정

```bash
cd /home/user/webapp

# 1. 관리자 비밀번호
npx wrangler pages secret put ADMIN_PASSWORD --project-name carejoa-webapp
# 입력: 5874

# 2. 카카오 REST API 키
npx wrangler pages secret put KAKAO_REST_API_KEY --project-name carejoa-webapp
# 입력: 2610d68c50d1030851cb426c29d69df0

# 3. 카카오 리다이렉트 URI (임시)
npx wrangler pages secret put KAKAO_REDIRECT_URI --project-name carejoa-webapp
# 입력: https://carejoa-webapp.pages.dev/api/auth/kakao/callback
```

**확인:**
```bash
npx wrangler pages secret list --project-name carejoa-webapp
```

---

### 🧪 Step 7: 배포 테스트

```bash
# 배포된 URL 테스트
DEPLOY_URL="https://[random-id].carejoa-webapp.pages.dev"

# 1. 메인 페이지
curl -I $DEPLOY_URL

# 2. API 엔드포인트
curl $DEPLOY_URL/api/auth/me

# 3. 관리자 로그인 페이지
curl -I $DEPLOY_URL/admin
```

**예상 결과:**
```
✅ HTTP 200 (메인 페이지)
✅ HTTP 401 (API - 로그인 필요, 정상)
✅ HTTP 200 (관리자 페이지)
```

**브라우저 테스트:**
```
1. https://[random-id].carejoa-webapp.pages.dev 접속
2. 회원가입 테스트
3. 로그인 테스트
4. 견적 신청 테스트
```

---

### 🌍 Step 8: 커스텀 도메인 연결

#### 방법 1: Dashboard에서 설정 (권장)

```
1. Cloudflare Dashboard 접속
   https://dash.cloudflare.com

2. Workers & Pages → carejoa-webapp 선택

3. Settings → Custom domains 탭

4. "Set up a custom domain" 클릭

5. 도메인 입력: carejoa.kr

6. DNS 레코드 자동 생성 확인

7. "Activate domain" 클릭
```

#### 방법 2: Wrangler CLI 사용

```bash
# 커스텀 도메인 추가
npx wrangler pages domain add carejoa.kr --project-name carejoa-webapp
```

**DNS 전파 대기:**
```
⏱️ 약 5-10분 소요
```

**확인:**
```bash
# DNS 전파 확인
nslookup carejoa.kr

# HTTPS 접속 테스트
curl -I https://carejoa.kr
```

---

### 🔄 Step 9: 환경 변수 업데이트

**카카오 리다이렉트 URI 변경:**
```bash
# 기존: https://carejoa-webapp.pages.dev/api/auth/kakao/callback
# 신규: https://carejoa.kr/api/auth/kakao/callback

npx wrangler pages secret put KAKAO_REDIRECT_URI --project-name carejoa-webapp
# 입력: https://carejoa.kr/api/auth/kakao/callback
```

**카카오 개발자 콘솔 업데이트:**
```
1. https://developers.kakao.com 접속
2. 내 애플리케이션 → [앱 이름] 선택
3. 앱 설정 → 플랫폼 → Web 플랫폼 설정
4. Redirect URI 추가:
   https://carejoa.kr/api/auth/kakao/callback
5. 저장
```

---

### ✅ Step 10: 최종 확인

```bash
# 1. 메인 도메인 접속
curl -I https://carejoa.kr

# 2. 관리자 로그인
# 브라우저: https://carejoa.kr/admin
# 아이디: admin@carejoa.kr
# 비밀번호: 5874

# 3. 테스트 계정 확인
# 고객: customer@test.com / 1234
# 시설: hospital@test.com / 1234
```

**체크리스트:**
```
□ 메인 페이지 로드 정상
□ 회원가입 작동
□ 로그인 작동
□ 고객 대시보드 접근 가능
□ 시설 대시보드 접근 가능
□ 관리자 대시보드 접근 가능
□ 견적 신청 작동
□ 시설 정보 수정 작동 (credentials 포함)
□ 카카오 로그인 작동 (선택)
```

---

### 📝 Step 11: Git 업데이트

```bash
cd /home/user/webapp

# wrangler.jsonc 변경사항 커밋
git add wrangler.jsonc
git commit -m "Config: procos 계정으로 마이그레이션 완료"

# meta_info 업데이트
# cloudflare_project_name을 carejoa-webapp으로 변경
```

---

### 🎉 Step 12: 정리

#### 기존 프로젝트 정리 (선택)

**기존 계정 접근 가능한 경우:**
```
1. Cloudflare Dashboard (기존 계정) 접속
2. Workers & Pages → carejoa-kr 프로젝트 삭제
3. D1 Database → carejoa-production 삭제
```

**접근 불가능한 경우:**
- 방치해도 무방 (무료 플랜, 비용 없음)
- 도메인만 새 계정으로 이전되면 문제 없음

---

## 📊 마이그레이션 체크리스트

### 사전 준비
- [x] 코드 백업 완료 (GitHub + Blob)
- [x] 최신 코드 커밋 완료
- [x] 로컬 테스트 정상

### D1 데이터베이스
- [ ] Step 1: D1 생성 완료
- [ ] Step 2: wrangler.jsonc 업데이트
- [ ] Step 3: 로컬 마이그레이션 적용
- [ ] Step 3: 프로덕션 마이그레이션 적용
- [ ] 로컬 테스트 정상

### Pages 프로젝트
- [ ] Step 4: Pages 프로젝트 생성
- [ ] Step 5: 첫 배포 성공
- [ ] Step 6: 환경 변수 설정
- [ ] Step 7: 배포 테스트 정상

### 도메인 설정
- [ ] Step 8: 커스텀 도메인 연결
- [ ] DNS 전파 완료
- [ ] HTTPS 접속 정상
- [ ] Step 9: 환경 변수 업데이트
- [ ] 카카오 콘솔 업데이트

### 최종 확인
- [ ] Step 10: 모든 기능 테스트
- [ ] Step 11: Git 커밋
- [ ] Step 12: 기존 리소스 정리

---

## 🚨 트러블슈팅

### 문제 1: D1 생성 실패
```bash
Error: Authentication error [code: 10000]
```

**해결:**
```bash
# API 토큰 확인
npx wrangler whoami

# Deploy 탭에서 토큰 재확인
# D1 권한이 있는지 확인
```

### 문제 2: 배포 실패
```bash
Error: Failed to publish
```

**해결:**
```bash
# 빌드 재시도
rm -rf dist node_modules/.cache
npm run build

# 배포 재시도
npx wrangler pages deploy dist --project-name carejoa-webapp
```

### 문제 3: DNS 전파 안 됨
```bash
# 10분 이상 대기 후에도 안 되면
```

**해결:**
```bash
# DNS 레코드 확인
nslookup carejoa.kr 8.8.8.8

# Cloudflare Dashboard에서 DNS 레코드 수동 확인
# A 레코드 또는 CNAME 레코드가 있는지 확인
```

### 문제 4: 환경 변수 안 보임
```bash
# secret list가 비어있으면
```

**해결:**
```bash
# 다시 설정
npx wrangler pages secret put ADMIN_PASSWORD --project-name carejoa-webapp

# 프로젝트명 확인
npx wrangler pages project list
```

---

## 💡 추가 팁

### 무중단 배포
```
1. 새 프로젝트 완전히 설정 및 테스트
2. 도메인 연결 전에 모든 기능 확인
3. 도메인 연결 → 5-10분 다운타임
4. 완료
```

### 롤백 계획
```
만약 문제 발생 시:
1. 도메인을 기존 프로젝트로 되돌림
2. 또는 백업에서 복원
```

### 비용
```
모든 작업: $0 (무료)
D1 Database: 무료 플랜
Pages: 무료 플랜
도메인: 기존 도메인 사용 ($0)
```

---

## 🎯 예상 타임라인

```
Step 1-3: D1 설정 (5분)
Step 4-5: Pages 배포 (10분)
Step 6-7: 환경변수 및 테스트 (5분)
Step 8-9: 도메인 설정 (10분)
Step 10-11: 최종 확인 (5분)
Step 12: 정리 (5분)

총 소요 시간: 약 40분
```

---

## ✅ 마이그레이션 완료 후

**새 URL:**
- 프로덕션: https://carejoa.kr
- Pages 기본: https://carejoa-webapp.pages.dev

**관리:**
- Cloudflare Dashboard: procos@hanmail.net 계정
- D1 Database: carejoa-production
- Pages Project: carejoa-webapp

**API 토큰:**
- 현재 토큰 그대로 사용 가능
- 모든 권한 정상 작동

**향후 배포:**
```bash
cd /home/user/webapp
npm run build
npx wrangler pages deploy dist --project-name carejoa-webapp
```

---

## 📚 관련 문서

- **DEPLOYMENT_SOLUTION_GUIDE.md**: 배포 문제 해결
- **SCALABILITY_ANALYSIS.md**: 확장성 분석
- **README.md**: 프로젝트 개요

---

**작성일**: 2025-12-28  
**문서 버전**: v1.0  
**상태**: ✅ 실행 준비 완료  
**예상 소요**: 40분

---

**준비되셨으면 Step 1부터 시작하세요! 🚀**

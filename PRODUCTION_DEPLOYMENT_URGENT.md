# ⚠️ 프로덕션 배포 필요 - 긴급 수정 가이드

**발생 시간**: 2025-12-28  
**오류**: 프로덕션 환경(https://carejoa.kr)에서 404/401 오류 발생  
**원인**: 최신 코드가 프로덕션에 배포되지 않음  

---

## 🔴 **발생한 오류**

### **오류 로그**
```
GET https://carejoa.kr/api/auth/me 404 (Not Found)
POST https://carejoa.kr/api/facility/update-info 401 (Unauthorized)
```

### **영향받는 기능**
- 시설 정보 수정 모달 (`openFacilityEditModal`)
- 시설 정보 업데이트 API
- 사용자 인증 API

---

## ✅ **해결 방법**

### **1. Cloudflare API 토큰 권한 확인 (필수)**

현재 API 토큰에 필요한 권한이 없습니다. Cloudflare Dashboard에서 토큰 권한을 확인하세요:

**필요한 권한:**
- ✅ Cloudflare Pages - Edit
- ✅ Account Settings - Read
- ✅ D1 - Edit (D1 마이그레이션용)

**토큰 확인 URL:**
```
https://dash.cloudflare.com/profile/api-tokens
```

---

### **2. 프로덕션 배포 (단계별)**

#### **Step 1: D1 마이그레이션 적용 (프로덕션)**

```bash
cd /home/user/webapp

# 대표시설 신청 테이블 마이그레이션 (0009)
npx wrangler d1 migrations apply carejoa-production --remote
```

**주의**: `--remote` 플래그는 프로덕션 데이터베이스에 적용됩니다!

#### **Step 2: 빌드**

```bash
cd /home/user/webapp
npm run build
```

#### **Step 3: 프로덕션 배포**

```bash
# 프로젝트명: carejoa-kr
npx wrangler pages deploy dist --project-name carejoa-kr
```

---

## 📋 **배포 체크리스트**

- [ ] Cloudflare API 토큰 권한 확인
- [ ] D1 마이그레이션 적용 (`npx wrangler d1 migrations apply carejoa-production --remote`)
- [ ] 프로젝트 빌드 (`npm run build`)
- [ ] Cloudflare Pages 배포 (`npx wrangler pages deploy dist --project-name carejoa-kr`)
- [ ] 배포 확인 (https://carejoa.kr)
- [ ] API 엔드포인트 테스트:
  - [ ] GET https://carejoa.kr/api/auth/me
  - [ ] POST https://carejoa.kr/api/facility/update-info
- [ ] 시설 대시보드 테스트
- [ ] 시설 정보 수정 기능 테스트

---

## 🔍 **배포 후 확인 사항**

### **1. API 엔드포인트 확인**

```bash
# /api/auth/me 확인
curl https://carejoa.kr/api/auth/me

# 시설 대시보드 확인
curl -I https://carejoa.kr/dashboard/facility
```

### **2. 브라우저 테스트**

1. https://carejoa.kr 접속
2. 시설 계정으로 로그인
3. "시설 정보 수정" 버튼 클릭
4. 정보 입력 후 저장
5. 오류 없이 저장되는지 확인

---

## 📊 **배포 정보**

| 항목 | 값 |
|------|-----|
| **프로젝트명** | carejoa-kr |
| **프로덕션 URL** | https://carejoa.kr |
| **Pages URL** | https://carejoa-kr.pages.dev |
| **최신 커밋** | 4c331b6 |
| **브랜치** | main |
| **마이그레이션** | 0009 (대표시설 신청) |

---

## ⚠️ **API 토큰 권한 부족 시**

현재 Cloudflare API 토큰에 권한이 부족합니다:

```
Error: A request to the Cloudflare API failed.
Authentication error [code: 10000]
```

**해결 방법:**

1. Cloudflare Dashboard 접속
2. Profile → API Tokens 메뉴
3. 기존 토큰 수정 또는 새 토큰 생성
4. 필요한 권한 부여:
   - ✅ Account Settings: Read
   - ✅ Cloudflare Pages: Edit
   - ✅ D1: Edit
5. 새 토큰을 Deploy 탭에 저장

---

## 🚨 **긴급 대응 (임시)**

API 토큰 문제로 배포가 불가능한 경우, Cloudflare Dashboard에서 수동 배포:

1. https://dash.cloudflare.com 접속
2. Pages → carejoa-kr 프로젝트 선택
3. "Settings" → "Builds & deployments"
4. "Retry deployment" 클릭

---

## 📞 **문제 지속 시**

1. **API 토큰 재생성**:
   - 기존 토큰 삭제
   - 새 토큰 생성 (필요한 권한 모두 부여)
   - Deploy 탭에서 토큰 업데이트

2. **GitHub Actions 활용**:
   - GitHub 저장소에 Cloudflare API 토큰 설정
   - 자동 배포 파이프라인 구축

3. **수동 배포**:
   - Cloudflare Dashboard에서 수동 배포
   - GitHub 저장소 연동 활용

---

## 🎯 **예상 소요 시간**

- API 토큰 권한 확인: 5분
- D1 마이그레이션: 2분
- 빌드: 2분
- 배포: 3분
- 테스트: 5분
- **총 소요**: 약 17분

---

## ✅ **배포 완료 후**

배포가 완료되면 다음을 확인하세요:

1. ✅ https://carejoa.kr 정상 접속
2. ✅ 시설 로그인 정상 작동
3. ✅ 시설 정보 수정 정상 작동
4. ✅ 대표시설 신청 버튼 표시
5. ✅ 관리자 대시보드 정상 작동

---

**작성일**: 2025-12-28  
**우선순위**: 🔴 긴급 (High Priority)  
**상태**: ⚠️ 배포 대기 중

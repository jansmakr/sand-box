# ⚠️ Cloudflare 계정 불일치 문제

**발견 시간**: 2025-12-28  
**문제**: 두 개의 다른 Cloudflare 계정이 사용되고 있음  

---

## 🔴 **문제 상황**

### **두 개의 계정 확인됨:**

1. **API 토큰 계정** (현재 사용 중):
   - Email: `procos@hanmail.net`
   - Account ID: `cc288af45c58f325e3db84d4265f8ccb`
   - 권한: D1, Cloudflare Pages, Account Settings (모두 있음)

2. **프로젝트가 있는 계정** (기존):
   - Account ID: `8dbb304ffcc41ecf3d7df4a95676e678`
   - 프로젝트: `carejoa-kr`
   - URL: https://carejoa.kr

### **오류 메시지:**
```
Error: A request to the Cloudflare API failed.
(/accounts/8dbb304ffcc41ecf3d7df4a95676e678/pages/projects/carejoa-kr)
Authentication error [code: 10000]
```

---

## ✅ **해결 방법 (2가지 중 선택)**

### **방법 1: 올바른 계정의 API 토큰 사용 (권장)**

기존 `carejoa-kr` 프로젝트가 있는 계정의 API 토큰을 생성하세요:

1. **기존 계정으로 Cloudflare 로그인**
   - Account ID: `8dbb304ffcc41ecf3d7df4a95676e678`
   - 이 계정에 `carejoa-kr` 프로젝트가 있습니다

2. **API 토큰 생성**
   - Profile → API Tokens → Create Token
   - 필요한 권한:
     - ✅ Cloudflare Pages: Edit
     - ✅ D1: Edit
     - ✅ Account Settings: Read

3. **Deploy 탭에서 새 토큰으로 업데이트**

4. **배포 명령 실행**
   ```bash
   cd /home/user/webapp
   npm run build
   npx wrangler pages deploy dist --project-name carejoa-kr
   ```

---

### **방법 2: 현재 계정에 새 프로젝트 생성**

현재 계정(`procos@hanmail.net`)에 새 프로젝트를 만들어 배포:

1. **새 프로젝트 생성**
   ```bash
   cd /home/user/webapp
   npx wrangler pages project create carejoa-kr-new --production-branch main
   ```

2. **배포**
   ```bash
   npm run build
   npx wrangler pages deploy dist --project-name carejoa-kr-new
   ```

3. **커스텀 도메인 연결**
   - Cloudflare Dashboard에서 `carejoa.kr` 도메인을 새 프로젝트에 연결
   - 기존 프로젝트에서 도메인 제거 필요

4. **D1 데이터베이스 마이그레이션**
   - 기존 데이터베이스에서 데이터 내보내기
   - 새 계정에 D1 데이터베이스 생성
   - 데이터 가져오기

---

## 📋 **현재 상태**

| 항목 | 값 |
|------|-----|
| **현재 API 토큰 계정** | procos@hanmail.net |
| **현재 Account ID** | cc288af45c58f325e3db84d4265f8ccb |
| **프로젝트가 있는 Account ID** | 8dbb304ffcc41ecf3d7df4a95676e678 |
| **프로젝트명** | carejoa-kr |
| **프로덕션 URL** | https://carejoa.kr |
| **빌드 상태** | ✅ 완료 (541.76 kB) |
| **배포 상태** | ⚠️ 계정 불일치로 실패 |

---

## 🎯 **권장 해결 순서**

1. **기존 계정 확인**:
   - 어떤 계정에 `carejoa-kr` 프로젝트가 있는지 확인
   - Account ID: `8dbb304ffcc41ecf3d7df4a95676e678`

2. **올바른 계정의 API 토큰 사용**:
   - 기존 계정으로 로그인
   - API 토큰 생성 (Cloudflare Pages + D1 권한)
   - Deploy 탭에서 토큰 업데이트

3. **배포 재시도**:
   ```bash
   cd /home/user/webapp
   npm run build
   npx wrangler pages deploy dist --project-name carejoa-kr
   ```

---

## ⚠️ **중요 참고사항**

### **D1 데이터베이스도 마찬가지**

D1 데이터베이스 (`carejoa-production`)도 기존 계정에 있을 가능성이 높습니다:
- Database ID: `6bb51315-d991-4e62-a981-4cc19a5b23ed`
- 마이그레이션 적용을 위해서는 올바른 계정의 API 토큰 필요

### **프로덕션 데이터 보호**

계정을 변경하면:
- ⚠️ 기존 D1 데이터베이스에 접근 불가
- ⚠️ 데이터 마이그레이션 필요
- ⚠️ 다운타임 발생 가능

**따라서 방법 1 (기존 계정 API 토큰 사용)을 강력히 권장합니다!**

---

## 📞 **다음 단계**

1. **기존 Cloudflare 계정 확인**
   - https://dash.cloudflare.com 로그인
   - Account ID: `8dbb304ffcc41ecf3d7df4a95676e678` 확인

2. **API 토큰 생성**
   - 올바른 계정에서 토큰 생성
   - 필요한 권한 부여

3. **Deploy 탭에서 토큰 업데이트**
   - 새 토큰으로 교체

4. **배포 재시도**

---

**작성일**: 2025-12-28  
**상태**: ⚠️ 계정 불일치 확인 필요  
**우선순위**: 🔴 긴급

# 케어조아 - 관리자 배포 매뉴얼

**작성일:** 2025-10-23  
**버전:** 1.0  
**대상:** 관리자용 (배포 및 설정 가이드)

---

## 📚 목차

1. [현재 배포 방식 (수동 배포)](#1-현재-배포-방식-수동-배포)
2. [Git 자동 배포 설정하기](#2-git-자동-배포-설정하기)
3. [Cloudflare Pages 설정 네비게이션](#3-cloudflare-pages-설정-네비게이션)
4. [배포 방식 비교표](#4-배포-방식-비교표)
5. [도메인 연결 가이드](#5-도메인-연결-가이드)
6. [환경 변수 설정](#6-환경-변수-설정)
7. [자주 묻는 질문 (FAQ)](#7-자주-묻는-질문-faq)
8. [문제 해결](#8-문제-해결)

---

## 1. 현재 배포 방식 (수동 배포)

### 📋 개요
- **프로젝트명:** carejoa-kr
- **배포 방식:** 수동 배포 (Git 연동 없음)
- **배포 명령어:** 터미널에서 직접 실행
- **장점:** 빠르고 간단, 배포 타이밍 직접 제어
- **단점:** 매번 명령어 실행 필요

---

### 🚀 전체 배포 프로세스

#### **Step 1: 코드 수정**
```bash
# 1. 프로젝트 디렉토리로 이동
cd /home/user/webapp

# 2. 파일 수정 (예: src/index.tsx)
# 원하는 코드 변경 작업 수행

# 3. Git 커밋 (선택사항, 권장)
git add .
git commit -m "변경 사항 설명"
git push origin main
```

---

#### **Step 2: 로컬 빌드 및 테스트 (선택사항)**
```bash
# 1. 빌드
cd /home/user/webapp && npm run build

# 2. 로컬 서버 시작 (PM2)
pm2 start ecosystem.config.cjs

# 3. 로컬 테스트
curl http://localhost:3000

# 4. 브라우저 접속
# 로컬 개발 환경에서 https://localhost:3000 확인
```

**예상 소요 시간:** 2-3분

---

#### **Step 3: 프로덕션 배포**

**한 줄 배포 명령어 (복사해서 바로 사용):**
```bash
cd /home/user/webapp && npm run build && export CLOUDFLARE_API_TOKEN="_-DecIX_2ToJA713TyuHzNji-g5dNPTccx6Hidtt" && npx wrangler pages deploy dist --project-name carejoa-kr
```

**단계별 설명:**

```bash
# 1. 프로젝트 디렉토리로 이동
cd /home/user/webapp

# 2. 프로젝트 빌드 (dist/ 폴더 생성)
npm run build
# ✅ 출력: dist/_worker.js, dist/_routes.json 생성됨

# 3. Cloudflare API 토큰 설정
export CLOUDFLARE_API_TOKEN="_-DecIX_2ToJA713TyuHzNji-g5dNPTccx6Hidtt"

# 4. Cloudflare Pages에 배포
npx wrangler pages deploy dist --project-name carejoa-kr
```

**배포 출력 예시:**
```
🌎 Uploading... (12/15)
✨ Success! Uploaded 15 files (5.23 sec)

✨ Deployment complete! Take a peek over at https://abc12345.carejoa-kr.pages.dev
```

**예상 소요 시간:** 1-2분

---

#### **Step 4: 배포 확인**

```bash
# 1. 프로덕션 URL 확인
curl -I https://carejoa-kr.pages.dev

# 2. 커스텀 도메인 확인 (도메인 연결된 경우)
curl -I https://carejoa.kr

# 3. API 엔드포인트 테스트
curl https://carejoa-kr.pages.dev/api/facilities/count
```

**성공 시 출력:**
```
HTTP/2 200 
content-type: application/json
```

**예상 소요 시간:** 10초

---

### 📊 전체 배포 시간
- **코드 수정 + Git 커밋:** 1-5분
- **빌드:** 10-20초
- **배포 업로드:** 1-2분
- **DNS 전파 (도메인):** 0-5분

**총 소요 시간:** 약 **3-5분** (도메인 DNS 제외)

---

### 🔄 빠른 재배포 (코드 수정 후)

```bash
# 코드 수정 후 바로 배포
cd /home/user/webapp && \
git add . && \
git commit -m "Update content" && \
git push origin main && \
npm run build && \
export CLOUDFLARE_API_TOKEN="_-DecIX_2ToJA713TyuHzNji-g5dNPTccx6Hidtt" && \
npx wrangler pages deploy dist --project-name carejoa-kr
```

**한 줄로 모든 작업 완료!**

---

## 2. Git 자동 배포 설정하기

### 📋 개요
- **목표:** GitHub에 코드 푸시하면 자동으로 Cloudflare Pages 배포
- **장점:** 완전 자동화, 배포 히스토리 관리
- **단점:** 초기 설정 필요, 새 프로젝트 생성 필요

---

### 🆕 방법 1: 새 프로젝트 만들기 (권장)

현재 프로젝트(carejoa-kr)는 수동 배포로 생성되어 Git 연동 불가능합니다.  
Git 자동 배포를 원하면 **새 프로젝트**를 만들어야 합니다.

#### **Step 1: GitHub 저장소 준비**

```bash
# 1. 현재 저장소 확인
cd /home/user/webapp
git remote -v

# 출력:
# origin  https://github.com/jansmakr/sand-box.git (fetch)
# origin  https://github.com/jansmakr/sand-box.git (push)

# 2. 최신 코드 푸시 (이미 완료된 경우 생략)
git add .
git commit -m "Prepare for auto-deployment"
git push origin main
```

---

#### **Step 2: Cloudflare Pages에서 새 프로젝트 생성**

**웹 브라우저에서 작업:**

1. **Cloudflare Dashboard 접속**
   ```
   https://dash.cloudflare.com/8dbb304ffcc41ecf3d7df4a95676e678
   ```

2. **Workers & Pages 메뉴 클릭**
   - 왼쪽 사이드바에서 **Workers & Pages** 선택

3. **Create 버튼 클릭**
   - 우측 상단의 **Create** 버튼 클릭

4. **Pages 탭 선택**
   - **Pages** 탭 클릭

5. **Connect to Git 선택**
   - "Connect to Git" 옵션 선택

6. **GitHub 계정 연결**
   - "Connect GitHub" 버튼 클릭
   - GitHub 로그인 (jansmakr@gmail.com)
   - Cloudflare Pages 앱 권한 승인

7. **저장소 선택**
   - **저장소:** jansmakr/sand-box
   - **브랜치:** main

8. **빌드 설정 구성**
   ```
   Project name: carejoa-kr-auto (새 이름 입력)
   Production branch: main
   Build command: npm run build
   Build output directory: /dist
   Root directory: /
   Environment variables: (일단 비워두고 나중에 추가)
   ```

9. **Save and Deploy 클릭**

---

#### **Step 3: 환경 변수 설정**

배포 완료 후 환경 변수를 설정해야 합니다.

1. **Settings 탭 이동**
   - 프로젝트 페이지에서 **Settings** 탭 클릭

2. **Environment variables 섹션**
   - 좌측 메뉴에서 **Environment variables** 선택

3. **변수 추가**
   - **Add variable** 버튼 클릭
   - 다음 변수들을 추가:

   | Variable name | Value | Environment |
   |--------------|-------|-------------|
   | `ADMIN_PASSWORD` | `5874` | Production |

4. **Save 버튼 클릭**

---

#### **Step 4: D1 데이터베이스 바인딩**

1. **Settings > Functions 메뉴 이동**
   - Settings 탭에서 **Functions** 섹션 찾기

2. **D1 database bindings 추가**
   - **Add binding** 버튼 클릭
   - **Variable name:** `DB`
   - **D1 database:** `carejoa-production`
   - **Save** 클릭

---

#### **Step 5: 커스텀 도메인 연결**

**기존 프로젝트에서 도메인 제거:**

1. **기존 프로젝트(carejoa-kr) 접속**
   ```
   https://dash.cloudflare.com/ > Workers & Pages > carejoa-kr
   ```

2. **Custom domains 탭**
   - **carejoa.kr** 도메인 찾기
   - **Remove** 버튼 클릭

**새 프로젝트에 도메인 추가:**

1. **새 프로젝트(carejoa-kr-auto) 접속**
   ```
   https://dash.cloudflare.com/ > Workers & Pages > carejoa-kr-auto
   ```

2. **Custom domains 탭**
   - **Set up a custom domain** 버튼 클릭
   - 도메인 입력: `carejoa.kr`
   - **Continue** 클릭
   - DNS 레코드 자동 생성 확인
   - **Activate domain** 클릭

---

#### **Step 6: 자동 배포 테스트**

```bash
# 1. 코드 수정
cd /home/user/webapp
echo "// Test auto-deployment" >> src/index.tsx

# 2. Git 커밋 및 푸시
git add .
git commit -m "Test: Auto-deployment"
git push origin main

# 3. Cloudflare Pages 확인
# 브라우저에서 프로젝트 페이지 접속
# Deployments 탭에서 자동 빌드 진행 상태 확인
```

**예상 빌드 시간:** 2-3분

**성공 시:** 새 배포 URL이 자동으로 생성됨

---

### 🔄 방법 2: 기존 프로젝트 유지 (Git 연동 불가)

**중요:** 현재 프로젝트(carejoa-kr)는 `wrangler pages deploy`로 생성되어 **Git 연동이 불가능**합니다.

Cloudflare Pages는 프로젝트 생성 시 배포 방식을 선택하며, 생성 후에는 변경할 수 없습니다:
- **Git 연동:** GitHub에서 코드를 가져와 자동 빌드
- **Direct Upload:** 로컬에서 빌드한 파일을 직접 업로드 (현재 방식)

**Git 연동을 원하면 반드시 새 프로젝트를 만들어야 합니다.**

---

### ⏱️ 전체 소요 시간

| 단계 | 소요 시간 |
|-----|----------|
| GitHub 저장소 준비 | 2분 |
| Cloudflare Pages 새 프로젝트 생성 | 5분 |
| 환경 변수 설정 | 2분 |
| D1 데이터베이스 바인딩 | 2분 |
| 커스텀 도메인 연결 | 3분 |
| 자동 배포 테스트 | 3분 |
| **총 소요 시간** | **15-20분** |

---

## 3. Cloudflare Pages 설정 네비게이션

### 🗺️ Cloudflare Dashboard 메뉴 구조

```
Cloudflare Dashboard (https://dash.cloudflare.com)
│
├── 🏠 Home
│   └── 계정 대시보드
│
├── 🌐 Websites (도메인 관리)
│   ├── carejoa.kr (도메인)
│   │   ├── DNS (DNS 레코드 관리)
│   │   ├── SSL/TLS
│   │   └── ...
│   └── 다른 도메인들
│
├── ⚙️ Workers & Pages (앱 배포)
│   ├── Overview (프로젝트 목록)
│   │   ├── carejoa-kr (현재 프로젝트)
│   │   ├── carejoa-web (중복)
│   │   ├── carejoa-pages (중복)
│   │   └── carejoa-webapp (구버전)
│   │
│   └── 각 프로젝트 클릭 시:
│       ├── 📊 Deployments (배포 히스토리)
│       │   ├── Production deployments
│       │   ├── Preview deployments
│       │   └── 배포 로그 확인
│       │
│       ├── ⚙️ Settings (프로젝트 설정)
│       │   ├── General (프로젝트명, 삭제)
│       │   ├── Environment variables (환경 변수)
│       │   ├── Functions (D1, KV, R2 바인딩)
│       │   ├── Builds & deployments (빌드 설정)
│       │   └── Custom domains (커스텀 도메인)
│       │
│       └── 📈 Analytics (트래픽 분석)
│
├── 💾 Storage & Databases
│   ├── D1 (SQL Database)
│   │   └── carejoa-production
│   ├── KV (Key-Value)
│   └── R2 (Object Storage)
│
└── 👤 Account (계정 설정)
    ├── API Tokens
    └── Members
```

---

### 📍 주요 설정 위치

#### **1. 배포 히스토리 확인**
```
Workers & Pages > [프로젝트명] > Deployments 탭
```
- 모든 배포 기록 확인
- 각 배포의 URL, 날짜, 상태 확인
- 특정 배포로 롤백 가능

---

#### **2. 환경 변수 설정**
```
Workers & Pages > [프로젝트명] > Settings > Environment variables
```

**설정 방법:**
1. **Add variable** 버튼 클릭
2. **Variable name:** 변수 이름 입력 (예: `ADMIN_PASSWORD`)
3. **Value:** 값 입력 (예: `5874`)
4. **Environment:** 적용할 환경 선택
   - **Production:** 프로덕션 환경
   - **Preview:** 미리보기 환경
   - **Both:** 두 환경 모두
5. **Save** 버튼 클릭

**중요:**
- 환경 변수 변경 후 **재배포 필요**
- 비밀번호 등 민감한 정보는 반드시 환경 변수로 관리

---

#### **3. D1 데이터베이스 연결**
```
Workers & Pages > [프로젝트명] > Settings > Functions > D1 database bindings
```

**설정 방법:**
1. **D1 database bindings** 섹션에서 **Add binding** 클릭
2. **Variable name:** `DB` (코드에서 사용할 이름)
3. **D1 database:** `carejoa-production` 선택
4. **Save** 버튼 클릭

**주의:**
- Variable name은 wrangler.jsonc의 `binding` 값과 일치해야 함
- 데이터베이스 연결 후 재배포 필요

---

#### **4. 커스텀 도메인 연결**
```
Workers & Pages > [프로젝트명] > Custom domains 탭
```

**설정 방법:**
1. **Set up a custom domain** 버튼 클릭
2. 도메인 입력 (예: `carejoa.kr`)
3. **Continue** 클릭
4. DNS 레코드 확인:
   - **Type:** CNAME
   - **Name:** @ (root domain) 또는 www
   - **Target:** carejoa-kr.pages.dev
5. **Activate domain** 클릭

**DNS 자동 설정:**
- Cloudflare 네임서버를 사용하면 자동으로 DNS 레코드 생성
- 다른 네임서버 사용 시 수동으로 CNAME 레코드 추가 필요

---

#### **5. 빌드 설정 (Git 연동 프로젝트만)**
```
Workers & Pages > [프로젝트명] > Settings > Builds & deployments
```

**설정 항목:**
- **Build command:** `npm run build`
- **Build output directory:** `/dist`
- **Root directory:** `/` (프로젝트 루트)
- **Production branch:** `main`

---

#### **6. 프로젝트 삭제**
```
Workers & Pages > [프로젝트명] > Settings > General > Delete project
```

**삭제 절차:**
1. **Delete project** 버튼 클릭
2. 프로젝트명 입력하여 확인
3. **Delete** 버튼 클릭

**주의:** 삭제 후 복구 불가능, 커스텀 도메인도 함께 제거됨

---

### 🔍 빠른 설정 체크리스트

프로젝트 배포 후 다음 항목들을 확인하세요:

- [ ] **Deployments 탭:** 최신 배포 성공 확인
- [ ] **Settings > Environment variables:** `ADMIN_PASSWORD` 설정 확인
- [ ] **Settings > Functions:** D1 바인딩 (`DB` → `carejoa-production`) 확인
- [ ] **Custom domains:** 커스텀 도메인 활성화 확인
- [ ] **Settings > Builds & deployments:** 빌드 명령어 확인 (Git 연동 시)

---

## 4. 배포 방식 비교표

### 📊 수동 배포 vs Git 자동 배포

| 항목 | 수동 배포 (현재) | Git 자동 배포 |
|-----|----------------|--------------|
| **초기 설정** | ✅ 설정 완료 | ❌ 새 프로젝트 생성 필요 (15-20분) |
| **배포 방법** | 명령어 실행 | Git push |
| **배포 시간** | 1-2분 (빠름) | 2-3분 (자동) |
| **배포 제어** | ✅ 직접 제어 | ⚠️ 푸시 시 자동 실행 |
| **배포 히스토리** | Cloudflare에만 기록 | Git + Cloudflare 양쪽 기록 |
| **롤백** | Cloudflare에서 선택 | Git revert + 재배포 |
| **실수 방지** | ⚠️ 배포 전 확인 필요 | ⚠️ 푸시 전 확인 필요 |
| **CI/CD** | ❌ 없음 | ✅ 완전 자동화 |
| **편의성** | ⚠️ 명령어 외우기 | ✅ 푸시만 하면 됨 |
| **유연성** | ✅ 원할 때 배포 | ⚠️ 푸시 시 무조건 배포 |
| **도메인 이전** | ✅ 불필요 | ⚠️ 새 프로젝트로 이전 필요 |
| **권장 시나리오** | 소규모, 빠른 개발 | 중대규모, 팀 협업 |

---

### ✅ 현재 방식 (수동 배포) 장점

1. **배포 타이밍 직접 제어**
   - 원하는 시점에 배포 가능
   - 테스트 후 안전하게 배포

2. **설정 완료됨**
   - 이미 모든 설정이 완료된 상태
   - 추가 작업 불필요

3. **빠른 배포**
   - 빌드 + 배포 1-2분 완료
   - 명령어 한 줄로 즉시 배포

4. **간단한 구조**
   - Git push와 배포가 분리되어 이해하기 쉬움
   - 실수로 배포하는 일 없음

---

### ✅ Git 자동 배포 장점

1. **완전 자동화**
   - Git push만 하면 자동 배포
   - 배포 명령어 외울 필요 없음

2. **배포 히스토리 관리**
   - 모든 배포가 Git 커밋과 연결
   - 어떤 커밋이 배포되었는지 명확

3. **팀 협업에 유리**
   - 여러 사람이 함께 작업 시 편리
   - 코드 리뷰 후 자동 배포

4. **CI/CD 파이프라인**
   - 자동 테스트, 린트 추가 가능
   - 프로페셔널한 개발 환경

---

### 🎯 추천 시나리오

#### **수동 배포 추천:**
- ✅ 혼자 개발하는 프로젝트
- ✅ 빠른 배포가 중요한 경우
- ✅ 배포 전 추가 확인이 필요한 경우
- ✅ 이미 설정이 완료된 현재 상태 유지
- ✅ 배포 타이밍을 직접 제어하고 싶은 경우

#### **Git 자동 배포 추천:**
- ✅ 팀으로 협업하는 프로젝트
- ✅ 코드 푸시 = 배포를 원하는 경우
- ✅ CI/CD 파이프라인 구축하고 싶은 경우
- ✅ 배포 히스토리를 Git과 연동하고 싶은 경우
- ✅ 시간 투자해서 자동화 환경 구축 가능

---

### 💡 결론

**현재 상태 (수동 배포)가 더 적합한 경우:**
- 현재 프로젝트는 이미 잘 작동하고 있음
- 배포 명령어도 간단함 (한 줄 복사 붙여넣기)
- 새 프로젝트 만들기는 15-20분 소요
- 도메인 이전 작업 필요

**권장 사항:**
> 💚 **현재 수동 배포 방식 유지 권장**  
> 프로젝트가 안정적으로 작동 중이며, 배포 명령어도 간단합니다.  
> 나중에 팀 협업이 필요하거나 완전 자동화를 원할 때 Git 자동 배포로 전환하세요.

---

## 5. 도메인 연결 가이드

### 📋 현재 도메인 상태
- **커스텀 도메인:** carejoa.kr
- **프로젝트:** carejoa-kr
- **도메인 등록업체:** 예스닉(Yesnic)
- **네임서버:** Cloudflare (banky.ns.cloudflare.com, chip.ns.cloudflare.com)
- **상태:** ✅ 연결 완료, 정상 작동

---

### 🔗 도메인 연결 방법 (완료됨)

#### **Step 1: Cloudflare에 도메인 추가**

1. **Cloudflare Dashboard 접속**
   ```
   https://dash.cloudflare.com/8dbb304ffcc41ecf3d7df4a95676e678
   ```

2. **Add a Site 버튼 클릭**
   - 우측 상단의 **Add a Site** 버튼 클릭

3. **도메인 입력**
   - 도메인 입력: `carejoa.kr`
   - **Add site** 버튼 클릭

4. **플랜 선택**
   - **Free** 플랜 선택
   - **Continue** 클릭

5. **DNS 레코드 확인**
   - Cloudflare가 기존 DNS 레코드를 자동으로 스캔
   - **Continue** 클릭

---

#### **Step 2: 네임서버 변경 (예스닉)**

1. **예스닉 로그인**
   ```
   https://www.yesnic.com
   ```

2. **도메인 관리 메뉴**
   - 상단 메뉴에서 **나의 서비스 > 도메인 관리** 클릭

3. **도메인 선택**
   - `carejoa.kr` 도메인 클릭

4. **네임서버 변경**
   - **네임서버 변경** 메뉴 클릭
   - Cloudflare 네임서버 입력:
     ```
     banky.ns.cloudflare.com
     chip.ns.cloudflare.com
     ```
   - **저장** 버튼 클릭

5. **변경 완료 대기**
   - 네임서버 변경 완료까지 1-48시간 소요
   - 보통 1-2시간 내 완료

---

#### **Step 3: Cloudflare Pages에 커스텀 도메인 추가**

1. **Workers & Pages 접속**
   ```
   Workers & Pages > carejoa-kr
   ```

2. **Custom domains 탭 클릭**

3. **Set up a custom domain 버튼 클릭**

4. **도메인 입력**
   - 도메인 입력: `carejoa.kr`
   - **Continue** 클릭

5. **DNS 레코드 확인**
   - Cloudflare가 자동으로 CNAME 레코드 생성:
     ```
     Type: CNAME
     Name: @
     Target: carejoa-kr.pages.dev
     Proxied: ✅
     ```

6. **Activate domain 클릭**

---

#### **Step 4: SSL 인증서 활성화 (자동)**

Cloudflare가 자동으로 SSL 인증서를 발급합니다:
- **Universal SSL:** 무료 SSL 인증서
- **발급 시간:** 5-10분
- **상태 확인:** SSL/TLS 탭에서 확인

---

### 🌐 도메인 동작 원리

```
사용자 브라우저 (https://carejoa.kr)
    ↓
Cloudflare DNS (banky.ns.cloudflare.com)
    ↓
CNAME 레코드: carejoa.kr → carejoa-kr.pages.dev
    ↓
Cloudflare Pages (carejoa-kr)
    ↓
사이트 응답 (HTML, CSS, JS)
```

---

### 🔍 도메인 연결 확인

```bash
# 1. DNS 전파 확인
nslookup carejoa.kr

# 2. HTTP 응답 확인
curl -I https://carejoa.kr

# 3. SSL 인증서 확인
curl -vI https://carejoa.kr 2>&1 | grep -i certificate
```

**성공 시 출력:**
```
HTTP/2 200 
server: cloudflare
```

---

### ⚠️ 도메인 이전 시 주의사항

**다른 프로젝트로 도메인 이전:**

1. **기존 프로젝트에서 도메인 제거**
   ```
   Workers & Pages > [기존 프로젝트] > Custom domains > Remove
   ```

2. **새 프로젝트에 도메인 추가**
   ```
   Workers & Pages > [새 프로젝트] > Custom domains > Set up a custom domain
   ```

3. **DNS 레코드 자동 업데이트**
   - Cloudflare가 자동으로 CNAME 타겟을 변경
   - 변경 반영 시간: 1-5분

---

### 🆕 서브도메인 추가하기

**예시: www.carejoa.kr 추가**

1. **Custom domains 탭에서 Add 클릭**

2. **서브도메인 입력**
   - 도메인 입력: `www.carejoa.kr`
   - **Continue** 클릭

3. **DNS 레코드 자동 생성**
   ```
   Type: CNAME
   Name: www
   Target: carejoa-kr.pages.dev
   Proxied: ✅
   ```

4. **Activate domain 클릭**

**결과:** www.carejoa.kr도 동일한 사이트로 연결됨

---

## 6. 환경 변수 설정

### 📋 현재 환경 변수
- **ADMIN_PASSWORD:** `5874` (관리자 로그인 비밀번호)

---

### ⚙️ 환경 변수 설정 방법

#### **방법 1: wrangler.jsonc 파일 (권장)**

**파일 위치:** `/home/user/webapp/wrangler.jsonc`

```jsonc
{
  "$schema": "node_modules/wrangler/config-schema.json",
  "name": "carejoa-kr",
  "compatibility_date": "2025-10-03",
  "pages_build_output_dir": "./dist",
  "compatibility_flags": ["nodejs_compat"],
  
  "d1_databases": [
    {
      "binding": "DB",
      "database_name": "carejoa-production",
      "database_id": "6bb51315-d991-4e62-a981-4cc19a5b23ed"
    }
  ],

  // 환경 변수 설정
  "vars": {
    "ADMIN_PASSWORD": "5874"
  }
}
```

**장점:**
- ✅ Git으로 버전 관리 가능
- ✅ 로컬 개발 환경과 프로덕션 동일
- ✅ 배포 시 자동으로 적용

**주의:**
- ⚠️ 민감한 정보는 Git에 커밋하지 말 것
- ⚠️ `.gitignore`에 `.env` 추가 권장

---

#### **방법 2: Cloudflare Dashboard (민감 정보)**

**민감한 정보(API 키, 비밀번호 등)는 Dashboard에서 설정:**

1. **Workers & Pages 접속**
   ```
   Workers & Pages > carejoa-kr > Settings > Environment variables
   ```

2. **Add variable 클릭**

3. **변수 입력**
   - **Variable name:** `API_KEY`
   - **Value:** `your-secret-api-key`
   - **Environment:** Production

4. **Save 클릭**

**장점:**
- ✅ 민감한 정보 안전하게 보관
- ✅ Git에 노출 안 됨

**단점:**
- ❌ 로컬 개발 환경에서는 별도 설정 필요

---

### 🔒 민감한 정보 관리 (Secrets)

**프로덕션 비밀번호, API 키 등:**

```bash
# wrangler secret 명령어 사용
export CLOUDFLARE_API_TOKEN="_-DecIX_2ToJA713TyuHzNji-g5dNPTccx6Hidtt"
echo "your-secret-value" | npx wrangler pages secret put SECRET_NAME --project-name carejoa-kr
```

**예시:**
```bash
# API 키 설정
echo "sk-1234567890abcdef" | npx wrangler pages secret put OPENAI_API_KEY --project-name carejoa-kr

# 데이터베이스 비밀번호 설정
echo "super-secret-password" | npx wrangler pages secret put DB_PASSWORD --project-name carejoa-kr
```

**확인:**
```bash
npx wrangler pages secret list --project-name carejoa-kr
```

---

### 🌍 환경별 변수 설정 (Git 자동 배포 시)

**프로덕션과 미리보기 환경 분리:**

1. **Cloudflare Dashboard 접속**
   ```
   Workers & Pages > carejoa-kr > Settings > Environment variables
   ```

2. **각 환경별 변수 추가**

   | Variable name | Production | Preview |
   |--------------|-----------|---------|
   | `API_URL` | `https://api.carejoa.kr` | `https://api-dev.carejoa.kr` |
   | `DEBUG_MODE` | `false` | `true` |

3. **코드에서 사용**
   ```typescript
   // src/index.tsx
   const apiUrl = env.API_URL;
   const debugMode = env.DEBUG_MODE === 'true';
   ```

---

### 📝 환경 변수 체크리스트

프로젝트 배포 전 다음 환경 변수들을 확인하세요:

- [ ] **ADMIN_PASSWORD:** 관리자 로그인 비밀번호 (`5874`)
- [ ] **D1 바인딩:** `DB` → `carejoa-production`
- [ ] **API 키:** (필요한 경우) 외부 API 키 설정
- [ ] **디버그 모드:** (필요한 경우) 개발/프로덕션 분리

---

## 7. 자주 묻는 질문 (FAQ)

### ❓ 배포 시간이 얼마나 걸리나요?

**수동 배포:**
- 빌드: 10-20초
- 업로드: 30-60초
- 배포 완료: 10-30초
- **총 시간: 1-2분**

**Git 자동 배포:**
- 빌드: 30-60초
- 업로드: 30-60초
- 배포 완료: 30-60초
- **총 시간: 2-3분**

---

### ❓ 배포 실패 시 어떻게 하나요?

**1. 에러 메시지 확인**
```bash
# 배포 로그 확인
npx wrangler pages deploy dist --project-name carejoa-kr

# 빌드 에러 확인
npm run build
```

**2. 일반적인 실패 원인**
- ❌ 빌드 에러: 코드 오류 수정 후 재배포
- ❌ API 토큰 만료: 새 토큰 발급 후 재배포
- ❌ D1 데이터베이스 연결 실패: 바인딩 확인
- ❌ 환경 변수 누락: wrangler.jsonc 확인

**3. 롤백 방법**
```
Cloudflare Dashboard > Workers & Pages > carejoa-kr > Deployments
→ 이전 배포 선택 → Rollback to this deployment
```

---

### ❓ 이전 버전으로 롤백하려면?

**방법 1: Cloudflare Dashboard**
1. **Deployments 탭 접속**
   ```
   Workers & Pages > carejoa-kr > Deployments
   ```

2. **이전 배포 선택**
   - 배포 히스토리에서 돌아갈 버전 선택

3. **Rollback 버튼 클릭**
   - **Rollback to this deployment** 클릭

**방법 2: Git (자동 배포 시)**
```bash
# 1. Git 커밋 히스토리 확인
git log --oneline

# 2. 이전 커밋으로 되돌리기
git revert <commit-hash>

# 3. 푸시 (자동 재배포)
git push origin main
```

---

### ❓ 도메인 연결이 안 돼요

**증상:** "사이트에 연결할 수 없음" 오류

**해결 방법:**

1. **DNS 전파 확인**
   ```bash
   nslookup carejoa.kr
   ```
   - 네임서버가 Cloudflare로 변경되었는지 확인

2. **CNAME 레코드 확인**
   ```
   Cloudflare Dashboard > Websites > carejoa.kr > DNS
   ```
   - CNAME 레코드가 올바른 프로젝트를 가리키는지 확인

3. **기다리기**
   - DNS 전파는 최대 48시간 소요 (보통 1-2시간)

---

### ❓ 관리자 로그인이 안 돼요

**증상:** "로그인 중 오류 발생" 팝업

**해결 방법:**

1. **환경 변수 확인**
   ```bash
   # wrangler.jsonc 파일 확인
   cat /home/user/webapp/wrangler.jsonc
   ```
   - `vars.ADMIN_PASSWORD`가 `"5874"`로 설정되어 있는지 확인

2. **재배포**
   ```bash
   cd /home/user/webapp && \
   npm run build && \
   export CLOUDFLARE_API_TOKEN="_-DecIX_2ToJA713TyuHzNji-g5dNPTccx6Hidtt" && \
   npx wrangler pages deploy dist --project-name carejoa-kr
   ```

3. **API 테스트**
   ```bash
   curl -X POST https://carejoa-kr.pages.dev/api/admin/login \
     -H "Content-Type: application/json" \
     -d '{"password":"5874"}'
   ```
   - 성공 시: `{"success":true}`

---

### ❓ 로컬 환경과 프로덕션 결과가 달라요

**원인:**
- 환경 변수 차이
- D1 데이터베이스 데이터 차이
- 빌드 설정 차이

**해결 방법:**

1. **로컬 환경 재빌드**
   ```bash
   cd /home/user/webapp
   npm run build
   pm2 restart carejoa-webapp
   ```

2. **환경 변수 동기화**
   - wrangler.jsonc의 `vars` 섹션 확인
   - Cloudflare Dashboard의 환경 변수 확인

3. **D1 데이터베이스 확인**
   ```bash
   # 로컬 데이터베이스
   npx wrangler d1 execute carejoa-production --local --command="SELECT COUNT(*) FROM facilities"

   # 프로덕션 데이터베이스
   npx wrangler d1 execute carejoa-production --remote --command="SELECT COUNT(*) FROM facilities"
   ```

---

### ❓ 빌드가 너무 오래 걸려요

**일반적인 빌드 시간:**
- 로컬: 10-20초
- Cloudflare (자동 배포): 30-60초

**빌드 시간 단축 방법:**

1. **캐시 활용**
   ```bash
   # node_modules 캐시
   npm ci  # 대신 npm install
   ```

2. **불필요한 파일 제외**
   ```bash
   # .gitignore 확인
   cat .gitignore
   ```

3. **빌드 로그 확인**
   ```bash
   npm run build
   ```

---

### ❓ 수동 배포 명령어를 자주 까먹어요

**해결 방법 1: Alias 설정**
```bash
# ~/.bashrc 또는 ~/.zshrc에 추가
alias deploy-carejoa='cd /home/user/webapp && npm run build && export CLOUDFLARE_API_TOKEN="_-DecIX_2ToJA713TyuHzNji-g5dNPTccx6Hidtt" && npx wrangler pages deploy dist --project-name carejoa-kr'

# 사용법
deploy-carejoa
```

**해결 방법 2: npm script 추가**
```json
// package.json
{
  "scripts": {
    "deploy": "npm run build && export CLOUDFLARE_API_TOKEN='_-DecIX_2ToJA713TyuHzNji-g5dNPTccx6Hidtt' && npx wrangler pages deploy dist --project-name carejoa-kr"
  }
}

// 사용법
npm run deploy
```

**해결 방법 3: 이 매뉴얼 참고**
```bash
# QUICK_REFERENCE.md 파일 확인
cat /home/user/webapp/QUICK_REFERENCE.md
```

---

## 8. 문제 해결

### 🔧 일반적인 문제들

#### **문제 1: "Error: Not authenticated"**

**증상:**
```
Error: Not authenticated. Please run `wrangler login`.
```

**원인:** Cloudflare API 토큰이 설정되지 않음

**해결 방법:**
```bash
# 1. API 토큰 설정
export CLOUDFLARE_API_TOKEN="_-DecIX_2ToJA713TyuHzNji-g5dNPTccx6Hidtt"

# 2. 인증 확인
npx wrangler whoami

# 3. 재배포
npx wrangler pages deploy dist --project-name carejoa-kr
```

---

#### **문제 2: "Error: No Pages project found"**

**증상:**
```
Error: No Pages project found with the name "carejoa-kr"
```

**원인:** 프로젝트명이 잘못되었거나 프로젝트가 삭제됨

**해결 방법:**
```bash
# 1. 프로젝트 목록 확인
export CLOUDFLARE_API_TOKEN="_-DecIX_2ToJA713TyuHzNji-g5dNPTccx6Hidtt"
npx wrangler pages project list

# 2. 올바른 프로젝트명으로 재배포
npx wrangler pages deploy dist --project-name <실제-프로젝트명>
```

---

#### **문제 3: "Build failed"**

**증상:**
```
npm run build
... 빌드 에러 메시지 ...
```

**원인:** 코드 오류, 의존성 문제, 타입스크립트 에러 등

**해결 방법:**

1. **에러 메시지 확인**
   ```bash
   npm run build 2>&1 | less
   ```

2. **일반적인 원인:**
   - ❌ TypeScript 타입 에러: 코드 수정
   - ❌ import 경로 오류: 경로 확인
   - ❌ 의존성 누락: `npm install` 재실행

3. **캐시 정리 후 재빌드**
   ```bash
   rm -rf dist/ node_modules/.vite
   npm run build
   ```

---

#### **문제 4: "D1 database not found"**

**증상:**
```
Error: D1 database "carejoa-production" not found
```

**원인:** D1 데이터베이스 바인딩 설정 안 됨

**해결 방법:**

1. **wrangler.jsonc 확인**
   ```bash
   cat /home/user/webapp/wrangler.jsonc
   ```
   - `d1_databases` 섹션에 데이터베이스가 설정되어 있는지 확인

2. **Cloudflare Dashboard 확인**
   ```
   Workers & Pages > carejoa-kr > Settings > Functions > D1 database bindings
   ```
   - `DB` 바인딩이 `carejoa-production`을 가리키는지 확인

3. **재배포**
   ```bash
   npm run build
   npx wrangler pages deploy dist --project-name carejoa-kr
   ```

---

#### **문제 5: "Port 3000 already in use"**

**증상:**
```
Error: listen EADDRINUSE: address already in use :::3000
```

**원인:** 포트 3000을 이미 다른 프로세스가 사용 중

**해결 방법:**

1. **포트 사용 중인 프로세스 종료**
   ```bash
   # 방법 1: fuser 사용
   fuser -k 3000/tcp 2>/dev/null || true

   # 방법 2: PM2 사용
   pm2 delete all

   # 방법 3: lsof 사용
   lsof -ti:3000 | xargs kill -9
   ```

2. **서비스 재시작**
   ```bash
   pm2 start ecosystem.config.cjs
   ```

---

#### **문제 6: "Git push failed"**

**증상:**
```
remote: Invalid username or token.
fatal: Authentication failed
```

**원인:** Git 인증 실패

**해결 방법:**
```bash
# GitHub 환경 재설정 (자동 인증)
# setup_github_environment 호출 (AI Assistant가 수행)

# Git 푸시 재시도
git push origin main
```

---

#### **문제 7: 배포 후 변경사항이 반영 안 됨**

**증상:** 코드를 수정하고 배포했는데 사이트에 변경사항이 안 보임

**원인:**
- 브라우저 캐시
- Cloudflare 캐시
- 빌드가 안 됨

**해결 방법:**

1. **브라우저 캐시 삭제**
   - Ctrl + Shift + R (강력 새로고침)
   - 또는 개발자 도구 > Network > Disable cache

2. **Cloudflare 캐시 퍼지**
   ```
   Cloudflare Dashboard > Websites > carejoa.kr > Caching > Purge Everything
   ```

3. **재빌드 및 재배포**
   ```bash
   rm -rf dist/
   npm run build
   npx wrangler pages deploy dist --project-name carejoa-kr
   ```

4. **배포 URL 직접 확인**
   ```bash
   # 최신 배포 URL로 접속 (캐시 우회)
   # 예: https://abc12345.carejoa-kr.pages.dev
   ```

---

### 🆘 긴급 상황 대응

#### **사이트가 다운되었어요!**

**체크리스트:**

1. **프로덕션 URL 확인**
   ```bash
   curl -I https://carejoa-kr.pages.dev
   ```

2. **커스텀 도메인 확인**
   ```bash
   curl -I https://carejoa.kr
   ```

3. **최신 배포 상태 확인**
   ```
   Cloudflare Dashboard > Workers & Pages > carejoa-kr > Deployments
   ```
   - 최신 배포가 "Success" 상태인지 확인

4. **긴급 롤백**
   ```
   Deployments 탭 > 이전 배포 선택 > Rollback to this deployment
   ```

5. **관리자에게 연락**
   - Cloudflare 계정: jansmakr@gmail.com
   - GitHub 저장소: https://github.com/jansmakr/sand-box

---

### 📞 추가 지원

**문서 참고:**
- `/home/user/webapp/PROJECT_CONFIGURATION.md` - 전체 설정 정보
- `/home/user/webapp/QUICK_REFERENCE.md` - 빠른 참조 가이드
- `/home/user/webapp/README.md` - 프로젝트 개요

**외부 문서:**
- Cloudflare Pages: https://developers.cloudflare.com/pages
- Cloudflare D1: https://developers.cloudflare.com/d1
- Hono Framework: https://hono.dev
- Wrangler CLI: https://developers.cloudflare.com/workers/wrangler

---

## 📝 마무리

이 매뉴얼은 케어조아 프로젝트의 배포와 설정에 관한 모든 정보를 담고 있습니다.

**핵심 내용:**
1. ✅ **현재 방식 (수동 배포):** 빠르고 간단, 설정 완료됨
2. ⚙️ **Git 자동 배포:** 완전 자동화, 새 프로젝트 생성 필요
3. 🗺️ **Cloudflare Pages 설정:** 모든 메뉴 네비게이션 가이드
4. 🔗 **도메인 연결:** carejoa.kr 연결 완료
5. 📊 **비교표:** 두 배포 방식의 장단점
6. ❓ **FAQ:** 자주 묻는 질문과 해결 방법
7. 🔧 **문제 해결:** 일반적인 문제와 해결 방법

**권장 사항:**
> 💚 현재 수동 배포 방식을 유지하되, 이 매뉴얼을 참고하여 필요할 때 Git 자동 배포로 전환하세요.

---

**문서 버전:** 1.0  
**최종 업데이트:** 2025-10-23  
**작성자:** AI Assistant (Claude)  
**관리자:** jansmakr@gmail.com

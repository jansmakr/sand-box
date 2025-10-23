# 🚀 케어조아 Cloudflare Pages 배포 가이드

## 📦 배포 파일 정보

- **파일명**: `carejoa-deployment.tar.gz`
- **위치**: `/home/user/webapp/carejoa-deployment.tar.gz`
- **크기**: 2.2MB
- **포함 내용**:
  - `_worker.js` (메인 애플리케이션)
  - `_routes.json` (라우팅 설정)
  - `robots.txt` (SEO)
  - `sitemap.xml` (SEO)
  - `static/` (CSS, JS 등)

---

## 📋 Cloudflare Pages 배포 단계

### Step 1: Cloudflare 대시보드 접속 🌐

1. https://dash.cloudflare.com 접속
2. Cloudflare 계정으로 로그인
   - 이메일: `procos@hanmail.net`
   - Account ID: `cc288af45c58f325e3db84d4265f8ccb`

---

### Step 2: Pages 프로젝트 생성 ➕

1. 좌측 메뉴에서 **Workers & Pages** 클릭
2. **Create application** 버튼 클릭
3. **Pages** 탭 선택
4. **Upload assets** 선택 (Git 연동 아님!)

---

### Step 3: 프로젝트 설정 ⚙️

**프로젝트 이름 입력**:
```
carejoa-kr
```

**Production 브랜치** (있다면):
```
main
```

---

### Step 4: 파일 업로드 📤

#### 방법 A: 개별 파일 업로드 (추천!)

Cloudflare Pages는 tar.gz를 직접 지원하지 않으므로, 파일을 압축 해제 후 업로드해야 합니다.

**로컬에서 해야 할 작업**:

1. `/home/user/webapp/carejoa-deployment.tar.gz` 다운로드
2. 압축 해제:
   ```bash
   tar -xzf carejoa-deployment.tar.gz -C carejoa-deploy
   cd carejoa-deploy
   ```
3. Cloudflare 대시보드에서:
   - **Upload Files** 또는 **Drop files here** 영역에
   - 모든 파일/폴더 드래그 앤 드롭
   - 업로드할 파일:
     - `_worker.js`
     - `_routes.json`
     - `robots.txt`
     - `sitemap.xml`
     - `static/` 폴더 전체

#### 방법 B: Wrangler CLI (문제 해결 시)

```bash
cd /home/user/webapp
npx wrangler pages deploy dist --project-name carejoa-kr
```

---

### Step 5: 배포 완료 확인 ✅

배포가 완료되면:

**Production URL**:
```
https://carejoa-kr.pages.dev
```

**또는 랜덤 URL**:
```
https://[random-id].carejoa-kr.pages.dev
```

---

## 🌍 커스텀 도메인 연결 (carejoa.kr)

배포 완료 후 커스텀 도메인 연결:

### Step 1: Cloudflare Pages 설정

1. 프로젝트 페이지에서 **Custom domains** 클릭
2. **Set up a custom domain** 클릭
3. 도메인 입력: `carejoa.kr`
4. **Activate domain** 클릭

### Step 2: DNS 설정

Cloudflare가 자동으로 DNS 레코드를 설정합니다:

```
CNAME carejoa.kr → carejoa-kr.pages.dev
```

### Step 3: SSL/TLS 확인

- Cloudflare가 자동으로 SSL 인증서 발급 (무료)
- 5-10분 내 HTTPS 활성화

---

## 🔍 배포 후 테스트

### 필수 테스트 항목:

1. **메인 페이지 접속**
   ```
   https://carejoa-kr.pages.dev
   ```

2. **간편 견적 폼 테스트**
   - 이름, 전화번호, 지역 입력
   - 제출 버튼 클릭
   - 성공 메시지 확인

3. **카카오톡 플로팅 버튼**
   - 우측 하단 노란 버튼 클릭
   - 카카오톡 오픈채팅 열림 확인

4. **SEO 파일 확인**
   ```
   https://carejoa-kr.pages.dev/robots.txt
   https://carejoa-kr.pages.dev/sitemap.xml
   ```

5. **Google Analytics 확인**
   - https://analytics.google.com 접속
   - 실시간 보고서에서 방문자 확인

---

## 🔧 재배포 방법 (코드 수정 시)

### 방법 1: 수동 업로드 (현재 방식)

```bash
# 1. 코드 수정
# 2. 빌드
cd /home/user/webapp
npm run build

# 3. 새 배포 패키지 생성
tar -czf carejoa-deployment-v2.tar.gz -C dist .

# 4. Cloudflare 대시보드에서 재업로드
```

### 방법 2: GitHub Actions (나중에 설정)

Git push만 하면 자동 배포!

---

## 📊 배포 정보 요약

| 항목 | 값 |
|------|-----|
| **프로젝트명** | carejoa-kr |
| **Account ID** | cc288af45c58f325e3db84d4265f8ccb |
| **Production URL** | https://carejoa-kr.pages.dev |
| **커스텀 도메인** | https://carejoa.kr (연결 시) |
| **빌드 출력** | dist/ |
| **배포 방식** | Manual Upload |

---

## 🎯 주요 기능 체크리스트

배포 후 다음 기능들이 모두 작동해야 합니다:

- [ ] 메인 페이지 로딩
- [ ] 간편 견적 신청 폼
- [ ] 카카오톡 플로팅 버튼
- [ ] 고객 후기 섹션
- [ ] 지역별 전화상담 모달
- [ ] 전국 요양시설 찾기 (27,657개)
- [ ] 관리자 로그인
- [ ] Google Analytics 추적
- [ ] robots.txt 접근
- [ ] sitemap.xml 접근
- [ ] 모바일 반응형
- [ ] D1 데이터베이스 연결

---

## ⚠️ 주의사항

### D1 데이터베이스 연결

현재 배포 패키지에는 D1 바인딩이 포함되어 있습니다:

```json
{
  "binding": "DB",
  "database_name": "carejoa-production",
  "database_id": "6bb51315-d991-4e62-a981-4cc19a5b23ed"
}
```

**확인 필요**:
- D1 데이터베이스가 동일한 Cloudflare 계정에 있는지 확인
- 없다면 새로 생성 필요:
  ```bash
  npx wrangler d1 create carejoa-production
  ```

---

## 🆘 문제 해결

### 1. 업로드 실패 시
- 파일 크기 확인 (25MB 이하)
- 브라우저 캐시 삭제
- 다른 브라우저 시도

### 2. 페이지가 안 뜰 때
- 배포 로그 확인
- _worker.js 파일 확인
- _routes.json 확인

### 3. D1 에러 발생 시
- Cloudflare 대시보드 → D1 → 데이터베이스 생성
- wrangler.jsonc의 database_id 업데이트

---

## 📞 지원

문제 발생 시:
1. Cloudflare 배포 로그 확인
2. 브라우저 콘솔 (F12) 확인
3. GitHub Issues 등록

---

## 🎉 배포 완료 후

배포가 성공하면:
- ✅ 24/7 안정적인 서비스
- ✅ 글로벌 CDN으로 빠른 속도
- ✅ 무료 SSL/TLS
- ✅ 무제한 트래픽
- ✅ 영구적으로 사용 가능

**성공을 기원합니다!** 🚀

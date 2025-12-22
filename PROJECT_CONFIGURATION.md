# 케어조아 프로젝트 - 전체 설정 정보

**생성일:** 2025-10-23  
**최종 업데이트:** 2025-10-23

---

## 📊 최종 기능 체크 결과

### ✅ 프로덕션 환경
- **상태:** 정상 작동
- **메인 URL:** https://63a58900.carejoa-kr.pages.dev
- **프로젝트명:** carejoa-kr
- **API 상태:** ✅ 정상 (200 OK)
- **데이터베이스:** ✅ 20,432개 시설 데이터 로드 성공
- **마지막 배포:** 2025-10-23 04:08 GMT

### ✅ 로컬 개발 환경
- **상태:** PM2로 정상 실행 중
- **로컬 URL:** http://localhost:3000
- **프로세스명:** carejoa-webapp
- **실행 시간:** 19분+ (안정적)
- **로컬 DB:** 1개 테스트 데이터 (정상)

### ✅ GitHub 연동
- **저장소:** https://github.com/jansmakr/sand-box
- **최신 커밋:** c7df276 (견적 섹션 삭제)
- **브랜치:** main
- **상태:** ✅ 최신 코드 푸시 완료

---

## 🔐 계정 정보

### Cloudflare 계정
- **이메일:** jansmakr@gmail.com
- **Account ID:** 8dbb304ffcc41ecf3d7df4a95676e678
- **대시보드:** https://dash.cloudflare.com

### GitHub 계정
- **이메일:** jansmakr@gmail.com
- **저장소명:** sand-box
- **저장소 URL:** https://github.com/jansmakr/sand-box

### API 토큰
- **Cloudflare API Token:** _-DecIX_2ToJA713TyuHzNji-g5dNPTccx6Hidtt
- **권한:**
  - Account - Cloudflare Pages - Edit
  - Account - D1 - Edit
  - Account - Workers Scripts - Edit
- **생성일:** 2025-10-23
- **계정:** jansmakr@gmail.com

---

## 🌐 Cloudflare Pages 설정

### 프로젝트 정보
- **프로젝트명:** carejoa-kr
- **프로덕션 URL:** https://carejoa-kr.pages.dev
- **최신 배포 URL:** https://63a58900.carejoa-kr.pages.dev
- **배포 방식:** Git 연동 없음 (수동 배포)
- **빌드 출력 디렉토리:** dist/

### 삭제 권장 프로젝트
다음 프로젝트들은 중복/구버전으로 삭제 권장:
- ❌ carejoa-web (중복)
- ❌ carejoa-pages (중복)
- ❌ carejoa-webapp (구버전, 5일 전)

### 도메인 설정
- **커스텀 도메인:** carejoa.kr (연결 대기 중)
- **기본 도메인:** carejoa-kr.pages.dev

---

## 💾 Cloudflare D1 Database 설정

### 데이터베이스 정보
- **Database Name:** carejoa-production
- **Database ID:** 6bb51315-d991-4e62-a981-4cc19a5b23ed
- **바인딩명:** DB
- **시설 데이터:** 20,432개

### 테이블 구조
```sql
CREATE TABLE facilities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  facility_type TEXT NOT NULL,
  name TEXT NOT NULL,
  phone TEXT,
  address TEXT NOT NULL,
  sido TEXT NOT NULL,
  sigungu TEXT NOT NULL,
  latitude REAL,
  longitude REAL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
```

### 마이그레이션 파일
- **위치:** `/home/user/webapp/migrations/0001_create_facilities.sql`
- **상태:** ✅ 프로덕션 적용 완료

### D1 명령어
```bash
# 로컬 데이터베이스 조회
npx wrangler d1 execute carejoa-production --local --command="SELECT COUNT(*) FROM facilities"

# 프로덕션 데이터베이스 조회
export CLOUDFLARE_API_TOKEN="_-DecIX_2ToJA713TyuHzNji-g5dNPTccx6Hidtt"
npx wrangler d1 execute carejoa-production --remote --command="SELECT COUNT(*) FROM facilities"

# 마이그레이션 적용
npx wrangler d1 migrations apply carejoa-production --local    # 로컬
npx wrangler d1 migrations apply carejoa-production --remote   # 프로덕션
```

---

## 📁 프로젝트 구조

### 디렉토리 구조
```
/home/user/webapp/
├── src/
│   ├── index.tsx              # 메인 Hono 애플리케이션
│   └── styles.css             # TailwindCSS 소스
├── public/
│   └── static/
│       ├── app.js             # 프론트엔드 JavaScript
│       └── tailwind.css       # 컴파일된 CSS
├── migrations/
│   └── 0001_create_facilities.sql
├── dist/                      # 빌드 출력 (배포용)
│   ├── _worker.js
│   └── _routes.json
├── .git/                      # Git 저장소
├── .gitignore
├── ecosystem.config.cjs       # PM2 설정
├── wrangler.jsonc             # Cloudflare 설정
├── package.json
├── vite.config.ts
├── tsconfig.json
└── PROJECT_CONFIGURATION.md   # 이 파일
```

### 주요 설정 파일

#### wrangler.jsonc
```json
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
  ]
}
```

#### ecosystem.config.cjs (PM2)
```javascript
module.exports = {
  apps: [
    {
      name: 'carejoa-webapp',
      script: 'npx',
      args: 'wrangler pages dev dist --ip 0.0.0.0 --port 3000',
      env: {
        NODE_ENV: 'development',
        PORT: 3000
      }
    }
  ]
}
```

---

## 🚀 배포 가이드

### 로컬 개발 서버 시작
```bash
# 1. 프로젝트 디렉토리로 이동
cd /home/user/webapp

# 2. 빌드
npm run build

# 3. PM2로 시작
pm2 start ecosystem.config.cjs

# 4. 서비스 확인
curl http://localhost:3000
pm2 logs --nostream
```

### 프로덕션 배포
```bash
# 1. 프로젝트 디렉토리로 이동
cd /home/user/webapp

# 2. 빌드
npm run build

# 3. API 토큰 설정 및 배포
export CLOUDFLARE_API_TOKEN="_-DecIX_2ToJA713TyuHzNji-g5dNPTccx6Hidtt"
npx wrangler pages deploy dist --project-name carejoa-kr

# 4. 배포 확인
curl -I https://carejoa-kr.pages.dev
```

### Git 푸시
```bash
cd /home/user/webapp
git add .
git commit -m "커밋 메시지"
git push origin main
```

---

## 🔧 개발 명령어

### NPM Scripts
```bash
npm run build          # CSS + Vite 빌드
npm run build:css      # TailwindCSS만 빌드
npm run dev            # Vite 개발 서버 (로컬 머신용)
```

### PM2 명령어
```bash
pm2 start ecosystem.config.cjs    # 서비스 시작
pm2 restart carejoa-webapp        # 재시작
pm2 stop carejoa-webapp           # 중지
pm2 delete carejoa-webapp         # 삭제
pm2 logs carejoa-webapp --nostream # 로그 확인
pm2 list                          # 프로세스 목록
```

### Wrangler 명령어
```bash
# 인증 확인
npx wrangler whoami

# D1 데이터베이스 목록
npx wrangler d1 list

# Pages 배포
npx wrangler pages deploy dist --project-name carejoa-kr

# Pages 프로젝트 목록
npx wrangler pages project list
```

---

## 🎨 주요 기능

### ✅ 구현 완료된 기능
1. **시설 검색 및 지도 표시**
   - Leaflet 지도 통합
   - 20,432개 요양시설 데이터
   - 실시간 필터링 (시/도, 시/군/구, 시설 유형)
   - 마커 클릭 시 상세 정보 표시

2. **성능 최적화**
   - requestAnimationFrame 사용
   - DocumentFragment 배치 DOM 조작
   - passive scroll 이벤트
   - debounce/throttle 유틸리티

3. **Google Analytics 통합**
   - GA4 이벤트 트래킹
   - 추적 ID: G-KWGGQN7LR3

4. **반응형 디자인**
   - 모바일 최적화
   - TailwindCSS 사용
   - 데스크톱/태블릿/모바일 대응

5. **카카오톡 연동**
   - 플로팅 버튼
   - 오픈채팅 링크

### ❌ 삭제된 기능
- **무료 맞춤 견적 신청 폼** (2025-10-23 삭제)
  - 이유: 사용자 요청으로 완전 제거
  - 커밋: c7df276

---

## 📝 Git 커밋 히스토리

```
c7df276 - feat: Remove quick estimate form section completely
fa82b4b - feat: Change quick estimate form to 'Coming Soon' status
cd192e6 - fix: Remove duplicate regionData declaration in app.js
280d40e - fix: Update account configuration for carejoa-kr project
0ad379d - feat: Add cascading dropdown for quick estimate form and optimize performance
```

---

## 🔍 트러블슈팅

### 문제: API 500 에러
**원인:** 잘못된 Cloudflare 계정 또는 API 토큰
**해결:**
```bash
export CLOUDFLARE_API_TOKEN="_-DecIX_2ToJA713TyuHzNji-g5dNPTccx6Hidtt"
npx wrangler whoami  # jansmakr@gmail.com 확인
```

### 문제: regionData 중복 선언 에러
**원인:** app.js와 index.tsx에서 모두 선언
**해결:** app.js에서 선언 제거, index.tsx 인라인 스크립트만 사용

### 문제: PM2 서비스 시작 실패
**원인:** 포트 3000 이미 사용 중
**해결:**
```bash
fuser -k 3000/tcp 2>/dev/null || true
pm2 start ecosystem.config.cjs
```

### 문제: GitHub 푸시 실패
**원인:** Git 인증 미설정
**해결:** GitHub 토큰은 자동으로 설정됨 (setup_github_environment)

---

## 📞 연락처 및 링크

### 프로젝트 관련
- **프로덕션 사이트:** https://carejoa-kr.pages.dev
- **GitHub 저장소:** https://github.com/jansmakr/sand-box
- **Cloudflare Dashboard:** https://dash.cloudflare.com/8dbb304ffcc41ecf3d7df4a95676e678

### 외부 서비스
- **Google Analytics:** https://analytics.google.com (GA4: G-KWGGQN7LR3)
- **카카오톡 오픈채팅:** https://open.kakao.com/o/siR7YBUh

---

## 📌 중요 메모

### ⚠️ 주의사항
1. **계정 혼동 방지:** 항상 jansmakr@gmail.com 계정 사용
2. **API 토큰 보안:** 토큰을 GitHub에 커밋하지 말 것
3. **프로덕션 배포:** 항상 빌드 후 배포
4. **D1 데이터베이스:** 프로덕션 DB 조작 시 신중히

### 🔄 정기 점검 항목
- [ ] Cloudflare Pages 배포 상태 확인
- [ ] D1 데이터베이스 백업
- [ ] GitHub 저장소 동기화
- [ ] PM2 프로세스 상태 확인
- [ ] 사용하지 않는 Cloudflare 프로젝트 정리

---

## 📚 참고 문서

### 공식 문서
- Cloudflare Pages: https://developers.cloudflare.com/pages
- Cloudflare D1: https://developers.cloudflare.com/d1
- Hono Framework: https://hono.dev
- Wrangler CLI: https://developers.cloudflare.com/workers/wrangler

### 기술 스택
- **Backend:** Hono (TypeScript)
- **Frontend:** Vanilla JavaScript, TailwindCSS
- **Database:** Cloudflare D1 (SQLite)
- **Maps:** Leaflet.js
- **Analytics:** Google Analytics 4
- **Deployment:** Cloudflare Pages
- **Process Manager:** PM2

---

**마지막 업데이트:** 2025-10-23 04:10 GMT  
**문서 버전:** 1.0  
**작성자:** AI Assistant (Claude)

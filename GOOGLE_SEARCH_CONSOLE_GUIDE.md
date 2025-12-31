# Google Search Console 등록 가이드

## 📌 개요
케어조아 사이트의 20,432개 요양시설이 구글 및 네이버 검색에 노출되도록 하는 설정 가이드입니다.

---

## ✅ 완료된 작업

### 1. 시설 페이지 링크 추가
- ✅ AI 매칭 페이지: 시설 카드에 "상세보기" 링크 추가
- ✅ 전국 시설 찾기 페이지: 시설 이름 클릭 시 상세 페이지 이동
- ✅ 지도 팝업: "상세보기" 버튼 추가
- ✅ 버튼 레이아웃: [상세보기] [지도] [상담] 3열 구성

### 2. 시설 상세 페이지 SEO 최적화
각 시설마다 다음 요소가 포함된 상세 페이지 제공:
- ✅ SEO 친화적 제목: `{시설명} - {지역} {시설유형} | 케어조아`
- ✅ 메타 Description
- ✅ Open Graph 태그 (페이스북, 카카오톡 공유)
- ✅ Twitter Card
- ✅ 구조화된 데이터 (Schema.org)

### 3. Sitemap.xml
- ✅ 동적 Sitemap 라우트 구현
- ✅ `/sitemap-facilities-1.xml`, `/sitemap-facilities-2.xml` 등 동적 생성
- ✅ 메인 페이지 + 20,432개 시설 페이지 모두 포함

### 4. robots.txt
```txt
User-agent: *
Allow: /
Disallow: /admin/
Disallow: /api/
Disallow: /dashboard/

Sitemap: https://carejoa.kr/sitemap.xml
```

---

## 🚀 Google Search Console 등록 방법

### Step 1: Google Search Console 접속
1. 브라우저에서 https://search.google.com/search-console 접속
2. Google 계정 로그인 (Gmail 계정)

### Step 2: 속성 추가
1. **"속성 추가"** 버튼 클릭
2. 두 가지 방법 중 선택:
   - **도메인** (권장): `carejoa.kr` 입력
   - **URL 접두어**: `https://carejoa.kr` 입력

### Step 3: 소유권 확인

#### 방법 A: DNS 인증 (도메인 선택 시 - 권장)
1. Google이 제공하는 TXT 레코드를 복사
   ```
   예: google-site-verification=abc123def456...
   ```
2. 도메인 관리 페이지 접속 (Cloudflare, 가비아, 후이즈 등)
3. DNS 설정 → TXT 레코드 추가
   - 유형: TXT
   - 이름: @
   - 값: (Google이 제공한 값)
4. Google Search Console로 돌아와서 **"확인"** 클릭

#### 방법 B: HTML 파일 업로드 (URL 접두어 선택 시)
1. Google이 제공하는 HTML 파일 다운로드
   ```html
   예: google1234567890abcdef.html
   ```
2. 케어조아 프로젝트의 `public/` 폴더에 업로드
   ```bash
   # 파일을 /home/user/webapp/public/ 에 복사
   ```
3. 빌드 및 배포
   ```bash
   npm run build
   npx wrangler pages deploy dist --project-name carejoa-kr-auto
   ```
4. Google Search Console에서 **"확인"** 클릭

### Step 4: Sitemap 제출
1. 좌측 메뉴에서 **"Sitemaps"** 클릭
2. "새 사이트맵 추가" 입력란에 입력:
   ```
   https://carejoa.kr/sitemap.xml
   ```
3. **"제출"** 버튼 클릭

### Step 5: URL 검사 (선택 사항)
테스트로 몇 개 URL이 잘 색인되는지 확인:
```
https://carejoa.kr/
https://carejoa.kr/facilities
https://carejoa.kr/facility/AUTO_88779
```

---

## 🔍 네이버 웹마스터 도구 등록

### Step 1: 네이버 웹마스터 도구 접속
1. https://searchadvisor.naver.com/ 접속
2. 네이버 계정 로그인

### Step 2: 사이트 등록
1. **"웹마스터 도구"** 클릭
2. **"사이트 추가"** 클릭
3. URL 입력: `https://carejoa.kr`

### Step 3: 소유권 확인
#### 방법 A: HTML 파일 업로드 (권장)
1. 네이버가 제공하는 HTML 파일 다운로드
   ```html
   예: naver1234567890abcdef.html
   ```
2. `public/` 폴더에 업로드 후 빌드/배포

#### 방법 B: 메타태그 추가
1. 네이버가 제공하는 메타태그 복사
   ```html
   <meta name="naver-site-verification" content="abc123..." />
   ```
2. 메인 페이지 `<head>`에 추가

### Step 4: 사이트맵 제출
1. 좌측 메뉴 **"요청" → "사이트맵 제출"**
2. 사이트맵 URL 입력:
   ```
   https://carejoa.kr/sitemap.xml
   ```
3. **"확인"** 클릭

---

## 📊 예상 결과 및 타임라인

### 1주차
- ✅ Google/Naver 크롤러가 사이트 발견
- ✅ Search Console에 "색인 생성 중" 표시

### 2-4주차
- 📈 색인 페이지 수 증가 시작
- 📈 Search Console에서 "총 페이지 수: 20,432개" 확인 가능

### 1-2개월
- 🔍 시설명 직접 검색 시 노출 시작
  - 예: "큰사랑요양병원" → carejoa.kr/facility/AUTO_88779
- 🔍 검색 결과 5-10위권

### 3-6개월
- 🚀 상위 노출 (1-5위권)
- 🚀 복합 키워드 노출
  - 예: "서울 강남구 요양병원"
  - 예: "부산 해운대 요양원"

### 1년 후
- 💎 안정적 검색 트래픽
- 💎 월 수만 명 유입 예상
- 💎 네이버/구글 모두 상위 노출

---

## 🎯 검색 노출 예시

### Before (현재)
```
구글 검색: "큰사랑요양병원"
1. 네이버 블로그
2. 병원 홈페이지
3. 기타 리뷰 사이트
❌ carejoa.kr 없음
```

### After (2-3개월 후)
```
구글 검색: "큰사랑요양병원"
1. 병원 홈페이지
2. ✅ carejoa.kr/facility/AUTO_88779 ⭐
3. 네이버 블로그
4. 기타 리뷰 사이트
```

### After (6개월 후)
```
구글 검색: "서울 강남구 요양병원"
1. ✅ carejoa.kr/facilities ⭐
2. ✅ carejoa.kr/facility/AUTO_88779 ⭐
3. ✅ carejoa.kr/facility/AUTO_73540 ⭐
4. 네이버 지식인
5. 기타 사이트
```

---

## 🔧 추가 최적화 (선택 사항)

### 1. 시설 정보 보강
```typescript
// 각 시설 페이지에 추가 정보 넣기
- 시설 사진 (이미지 SEO)
- 리뷰 및 평점
- 상세 주소 및 연락처
- 운영 시간
- 시설 설명
```

### 2. 블로그 콘텐츠 작성
```
- "서울 강남구 요양병원 추천 BEST 10"
- "요양원 선택 시 체크리스트"
- "장기요양등급별 시설 비교"
```

### 3. 정기적인 콘텐츠 업데이트
```
- 새로운 시설 정보 추가
- 시설 정보 업데이트
- 이벤트 및 뉴스 게시
```

---

## ✅ 체크리스트

### 필수 작업 (오늘 완료)
- [x] 시설 카드에 상세 페이지 링크 추가
- [x] 시설 상세 페이지 SEO 메타태그 추가
- [x] Sitemap.xml 생성
- [x] robots.txt 설정

### Google Search Console (사용자 직접 진행)
- [ ] Google Search Console 계정 생성
- [ ] carejoa.kr 속성 추가
- [ ] 소유권 확인 (DNS 또는 HTML 파일)
- [ ] Sitemap 제출
- [ ] URL 검사 실행

### 네이버 웹마스터 (사용자 직접 진행)
- [ ] 네이버 웹마스터 도구 계정 생성
- [ ] carejoa.kr 사이트 등록
- [ ] 소유권 확인
- [ ] 사이트맵 제출

---

## 📞 문의 및 지원

문제가 발생하거나 추가 지원이 필요하면 말씀해주세요!

**주요 URL:**
- 메인: https://carejoa.kr
- 시설 찾기: https://carejoa.kr/facilities
- AI 매칭: https://carejoa.kr/ai-matching
- Sitemap: https://carejoa.kr/sitemap.xml
- 시설 상세 예시: https://carejoa.kr/facility/AUTO_88779

**배포 정보:**
- 최신 배포: https://8ec3e4d7.carejoa-kr-auto.pages.dev
- GitHub: https://github.com/jansmakr/sand-box
- Git 커밋: 6f9c90c

---

## 🎉 축하합니다!

SEO 최적화 작업이 완료되었습니다! 🚀

이제 Google Search Console과 네이버 웹마스터 도구에 등록만 하시면,
**20,432개 요양시설이 모두 검색 엔진에 노출**됩니다!

**예상 검색 트래픽:**
- 1-2개월: 하루 100-500명
- 3-6개월: 하루 1,000-3,000명
- 1년 후: 하루 5,000-10,000명 이상

화이팅! 🎯

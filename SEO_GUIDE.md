# 케어조아 SEO 최적화 가이드

## ✅ 완료된 작업

### 1. 시설 상세 페이지 생성
- **URL 구조**: `/facility/:id`
- **예시**: `https://carejoa.kr/facility/AUTO_88779`
- **SEO 메타태그**: title, description, keywords
- **Open Graph**: 페이스북/카카오톡 공유 최적화
- **구조화된 데이터**: Schema.org (Hospital/HealthAndBeautyBusiness)

### 2. Sitemap.xml 동적 생성
- **URL**: `https://carejoa.kr/sitemap.xml`
- **페이지네이션**: 1,000개씩 분할 (`?page=1`, `?page=2`, ...)
- **총 URL 수**: ~20,500개 (메인 페이지 + 시설 페이지)
- **업데이트**: 실시간 (DB 기반)

### 3. Robots.txt
- **URL**: `https://carejoa.kr/robots.txt`
- **허용**: /, /facility/*, /facilities, /ai-matching
- **차단**: /admin, /api/*

## 📊 SEO 성능 최적화

### 서버 부담 최소화
- ✅ Cloudflare D1 쿼리 최적화 (인덱스 활용)
- ✅ Sitemap 페이지네이션 (1,000개 단위)
- ✅ 캐싱 헤더 설정
- ✅ 경량 HTML (Tailwind CDN)

### 검색 엔진 최적화
- ✅ 시설명 기반 title 태그
- ✅ 지역 + 시설 유형 키워드
- ✅ 구조화된 데이터 (JSON-LD)
- ✅ 모바일 반응형 디자인

## 🚀 Google Search Console 등록 방법

### Step 1: Google Search Console 접속
1. https://search.google.com/search-console/ 접속
2. "속성 추가" 클릭
3. "URL 접두어" 선택
4. `https://carejoa.kr` 입력

### Step 2: 소유권 확인
**방법 1: HTML 파일 업로드 (권장)**
1. Google에서 제공하는 HTML 파일 다운로드
2. Cloudflare Pages `/public` 폴더에 업로드
3. 배포 후 확인 클릭

**방법 2: DNS TXT 레코드**
1. Cloudflare DNS 설정으로 이동
2. TXT 레코드 추가
3. Google 제공 값 입력

### Step 3: Sitemap 제출
1. 좌측 메뉴 "Sitemaps" 클릭
2. `https://carejoa.kr/sitemap.xml` 입력
3. "제출" 클릭

### Step 4: 페이지네이션된 Sitemap 제출 (선택)
```
https://carejoa.kr/sitemap.xml?page=1
https://carejoa.kr/sitemap.xml?page=2
...
https://carejoa.kr/sitemap.xml?page=21
```

## 📈 예상 결과 및 타임라인

### 1주차: 색인 시작
- Google Bot 크롤링 시작
- 메인 페이지 + 주요 페이지 색인

### 2~4주차: 시설 페이지 색인
- 20,000개 시설 페이지 점진적 색인
- "시설명" 검색 시 결과 나타나기 시작

### 1~2개월: 검색 순위 상승
- "시설명 + 지역" 검색 시 1~2페이지 노출
- "요양병원 서울 강남" 같은 키워드 상위 노출

### 3개월 이후: 안정화
- 대부분의 시설 페이지 색인 완료
- 검색 트래픽 안정적 증가

## 🔍 검색 키워드 예시

### 시설명 직접 검색
- "큰사랑요양병원"
- "강남논현데이케어센터"
- "예은 재가복지센터"

### 지역 + 시설 유형
- "서울 강남 요양병원"
- "부산 해운대 재가복지센터"
- "대전 서구 주야간보호센터"

### 롱테일 키워드
- "서울 강남구 요양병원 추천"
- "부산 요양원 비용"
- "대전 재가복지센터 전화번호"

## 📊 성능 모니터링

### Google Search Console 지표
- **노출수**: 검색 결과에 표시된 횟수
- **클릭수**: 실제 클릭 수
- **CTR**: 클릭률
- **평균 게재 순위**: 검색 결과 순위

### 목표 지표 (3개월 후)
- 노출수: 100,000+/월
- 클릭수: 5,000+/월
- CTR: 5%+
- 평균 순위: 10위 이내

## 🔧 추가 최적화 (향후)

### Phase 2: 콘텐츠 강화
- 시설 리뷰 시스템
- 시설 평점 표시
- 시설 사진 업로드

### Phase 3: 구조화된 데이터 확장
- AggregateRating (평점)
- Review (리뷰)
- LocalBusiness (지역 비즈니스)

### Phase 4: 속도 최적화
- 이미지 최적화 (WebP)
- CSS/JS 번들 최소화
- CDN 캐싱 강화

## 📞 지원

문의사항이 있으시면 언제든지 연락주세요!

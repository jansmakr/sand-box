# 네이버 검색 등록 가이드

## 📋 목차
1. [네이버 서치어드바이저 등록](#1-네이버-서치어드바이저-등록)
2. [사이트 소유 확인](#2-사이트-소유-확인)
3. [사이트맵 제출](#3-사이트맵-제출)
4. [RSS 피드 제출](#4-rss-피드-제출)
5. [검증 및 모니터링](#5-검증-및-모니터링)

---

## 1. 네이버 서치어드바이저 등록

### 1.1 사이트 접속
```
https://searchadvisor.naver.com/
```

### 1.2 로그인
- 네이버 계정으로 로그인
- 계정이 없다면 회원가입 필요

### 1.3 사이트 등록
1. **우측 상단 "웹마스터 도구" 클릭**
2. **"사이트 등록" 버튼 클릭**
3. **사이트 URL 입력**: `https://carejoa.kr`
4. **"확인" 버튼 클릭**

---

## 2. 사이트 소유 확인

네이버는 3가지 방법으로 사이트 소유를 확인할 수 있습니다:

### 방법 1: HTML 파일 업로드 (가장 쉬움) ✅ 권장

1. **네이버에서 제공하는 HTML 파일 다운로드**
   - 파일명 예시: `naver1234567890abcdef.html`

2. **Cloudflare Pages에 파일 배포**
   ```bash
   # 로컬에서 작업
   cd /home/user/webapp/public
   
   # 다운로드한 파일을 public 폴더에 복사
   # 예: cp ~/Downloads/naver1234567890abcdef.html .
   
   # 빌드 및 배포
   cd /home/user/webapp
   npm run build
   npx wrangler pages deploy dist --project-name carejoa-kr-auto
   ```

3. **확인**
   - 브라우저에서 `https://carejoa.kr/naver1234567890abcdef.html` 접속
   - 파일이 정상적으로 보이면 성공

4. **네이버에서 "소유 확인" 버튼 클릭**

### 방법 2: HTML 태그 삽입

1. **네이버에서 제공하는 메타태그 복사**
   ```html
   <meta name="naver-site-verification" content="1234567890abcdef" />
   ```

2. **메인 페이지 head에 추가**
   - `/home/user/webapp/src/index.tsx` 파일의 메인 페이지 `<head>` 섹션에 추가

3. **빌드 및 배포**

### 방법 3: DNS TXT 레코드 (Cloudflare DNS)

1. **Cloudflare 대시보드 접속**
   - https://dash.cloudflare.com/
   
2. **carejoa.kr 도메인 선택**

3. **DNS 설정**
   - Type: `TXT`
   - Name: `@` (또는 루트 도메인)
   - Content: 네이버에서 제공한 값 (예: `naver-site-verification=1234567890abcdef`)
   - TTL: Auto

4. **저장 후 네이버에서 "소유 확인" 클릭**

---

## 3. 사이트맵 제출

### 3.1 사이트맵 URL 확인

케어조아는 이미 사이트맵이 생성되어 있습니다:

```
메인 사이트맵:
https://carejoa.kr/sitemap.xml

개별 사이트맵:
https://carejoa.kr/sitemap-main.xml (메인 페이지들)
https://carejoa.kr/sitemap-facilities-1.xml (시설 1-10,000)
https://carejoa.kr/sitemap-facilities-2.xml (시설 10,001-20,000)
https://carejoa.kr/sitemap-facilities-3.xml (시설 20,001-20,432)
```

### 3.2 네이버에 사이트맵 제출

1. **네이버 서치어드바이저 접속**
   - https://searchadvisor.naver.com/

2. **좌측 메뉴에서 "요청" → "사이트맵 제출" 클릭**

3. **사이트맵 URL 입력**
   ```
   https://carejoa.kr/sitemap.xml
   ```

4. **"확인" 버튼 클릭**

### 3.3 사이트맵 검증

사이트맵이 정상인지 확인:
```bash
curl -s https://carejoa.kr/sitemap.xml | head -50
```

예상 결과:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<sitemapindex xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <sitemap>
    <loc>https://carejoa.kr/sitemap-main.xml</loc>
    <lastmod>2025-12-31</lastmod>
  </sitemap>
  <sitemap>
    <loc>https://carejoa.kr/sitemap-facilities-1.xml</loc>
    <lastmod>2025-12-31</lastmod>
  </sitemap>
  ...
</sitemapindex>
```

---

## 4. RSS 피드 제출

### 4.1 RSS 피드란?

RSS는 최신 콘텐츠 업데이트를 네이버에 알리는 방법입니다.
- 새로운 시설 등록
- 시설 정보 업데이트
- 블로그 포스트 등

### 4.2 RSS 피드 생성 필요 여부

**현재 케어조아는 정적 시설 데이터베이스이므로 RSS는 선택사항입니다.**

다음 경우에만 RSS 피드가 필요합니다:
- ❌ 시설 데이터가 자주 변경되는 경우
- ❌ 블로그나 뉴스 섹션이 있는 경우
- ❌ 일일 업데이트 콘텐츠가 있는 경우

**권장사항**: 
- 현재는 **사이트맵만 제출**하면 충분합니다
- RSS는 나중에 블로그나 뉴스 기능 추가 시 구현

### 4.3 RSS 피드 구현 (옵션)

만약 RSS가 필요하다면:

1. **RSS 라우트 추가** (`/home/user/webapp/src/index.tsx`):

```typescript
// RSS 피드 생성
app.get('/rss.xml', async (c) => {
  const { DB } = c.env;
  
  if (!DB) {
    return c.text('Database not available', 500);
  }
  
  try {
    // 최근 업데이트된 시설 20개 가져오기
    const facilities = await DB.prepare(`
      SELECT id, name, address, sido, sigungu, facility_type, phone, updated_at
      FROM facilities
      ORDER BY updated_at DESC
      LIMIT 20
    `).all();
    
    // RSS XML 생성
    const rss = `<?xml version="1.0" encoding="UTF-8"?>
<rss version="2.0" xmlns:dc="http://purl.org/dc/elements/1.1/">
  <channel>
    <title>케어조아 - 요양시설 정보</title>
    <link>https://carejoa.kr</link>
    <description>전국 요양시설 및 요양병원 정보</description>
    <language>ko</language>
    <lastBuildDate>${new Date().toUTCString()}</lastBuildDate>
    ${facilities.results.map(facility => `
    <item>
      <title>${facility.name} - ${facility.sido} ${facility.sigungu}</title>
      <link>https://carejoa.kr/facility/${facility.id}</link>
      <description>${facility.facility_type} | ${facility.address || '주소 정보 없음'} | ${facility.phone || '전화번호 정보 없음'}</description>
      <pubDate>${new Date(facility.updated_at || Date.now()).toUTCString()}</pubDate>
      <dc:creator>케어조아</dc:creator>
    </item>`).join('\n')}
  </channel>
</rss>`;
    
    return c.body(rss, 200, {
      'Content-Type': 'application/xml; charset=utf-8',
      'Cache-Control': 'public, max-age=3600'
    });
  } catch (error) {
    console.error('[RSS] 생성 오류:', error);
    return c.text('RSS feed generation failed', 500);
  }
});
```

2. **RSS 제출**
   - 네이버 서치어드바이저 → "요청" → "RSS 제출"
   - URL 입력: `https://carejoa.kr/rss.xml`

---

## 5. 검증 및 모니터링

### 5.1 등록 완료 확인

1. **네이버 서치어드바이저 대시보드**
   - 사이트 등록 상태: "확인됨"
   - 사이트맵 상태: "제출됨"

2. **색인 상태 확인** (1-2주 소요)
   - 좌측 메뉴 → "검색 노출" → "검색 결과"
   - 색인된 페이지 수 확인

### 5.2 검색 테스트

**1-2주 후 네이버에서 검색:**

```
site:carejoa.kr
```

예상 결과:
- 메인 페이지
- 시설 찾기 페이지
- 개별 시설 페이지들

**특정 시설 검색:**
```
큰사랑요양병원 site:carejoa.kr
서울 요양병원 site:carejoa.kr
```

### 5.3 모니터링 지표

**네이버 서치어드바이저에서 확인:**

1. **검색 유입**
   - 일일 클릭 수
   - 일일 노출 수
   - 평균 클릭률

2. **색인 현황**
   - 총 색인 페이지 수 (목표: 20,432개)
   - 색인 오류 페이지
   - 제외된 페이지

3. **검색어 분석**
   - 주요 유입 검색어
   - 검색 순위
   - 클릭률

---

## 6. 예상 타임라인

| 기간 | 단계 | 내용 |
|------|------|------|
| **Day 1** | 등록 | 서치어드바이저 사이트 등록 및 소유 확인 |
| **Day 1** | 제출 | 사이트맵 제출 |
| **1-3일** | 크롤링 시작 | 네이버 봇이 사이트맵 확인 |
| **1-2주** | 색인 시작 | 일부 페이지 색인 시작 |
| **2-4주** | 색인 증가 | 20,432개 시설 페이지 색인 진행 |
| **1-2개월** | 검색 노출 시작 | 시설명 직접 검색 시 노출 |
| **3-6개월** | 상위 노출 | "서울 요양병원" 등 복합 키워드 노출 |
| **6-12개월** | 안정화 | 안정적인 검색 트래픽 |

---

## 7. 자주 묻는 질문 (FAQ)

### Q1. 사이트맵과 RSS 둘 다 제출해야 하나요?
**A:** 사이트맵만 제출해도 충분합니다. RSS는 자주 업데이트되는 콘텐츠가 있을 때만 필요합니다.

### Q2. 왜 네이버 검색에 안 나오나요?
**A:** 색인에는 1-2주, 검색 노출에는 1-2개월이 걸립니다. 인내심을 가지고 기다려주세요.

### Q3. 색인 속도를 높이려면?
**A:** 
- 사이트맵을 주기적으로 재제출
- 내부 링크 최적화 (이미 완료)
- 품질 높은 콘텐츠 추가
- 외부 링크 확보 (블로그, 카페 등)

### Q4. 네이버 블로그/카페에 링크를 올려도 되나요?
**A:** 네, 도움이 됩니다! 자연스럽게 링크를 공유하면 색인 속도가 빨라집니다.

---

## 8. 추가 최적화 팁

### 8.1 네이버 최적화

1. **메타 디스크립션 작성**
   - 각 시설 페이지에 고유한 설명 추가 (이미 완료 ✅)

2. **이미지 최적화**
   - 시설 사진 추가
   - alt 텍스트 작성

3. **구조화된 데이터**
   - Schema.org 마크업 (이미 완료 ✅)

### 8.2 콘텐츠 추가 (장기 전략)

1. **블로그 섹션**
   - 요양 관련 정보
   - 시설 이용 가이드
   - 최신 뉴스

2. **FAQ 페이지**
   - 자주 묻는 질문
   - 이용 안내

3. **지역별 가이드**
   - "서울 강남구 요양병원 가이드"
   - "경기도 수원시 요양원 추천"

---

## 9. 체크리스트

### 초기 설정 (Day 1)
- [ ] 네이버 서치어드바이저 가입
- [ ] carejoa.kr 사이트 등록
- [ ] 사이트 소유 확인 (HTML 파일 또는 메타태그)
- [ ] 사이트맵 제출: https://carejoa.kr/sitemap.xml
- [ ] robots.txt 확인: https://carejoa.kr/robots.txt

### 1주 후
- [ ] 사이트 색인 상태 확인
- [ ] 크롤링 오류 확인 및 수정
- [ ] 네이버 검색 테스트: `site:carejoa.kr`

### 1개월 후
- [ ] 색인 페이지 수 확인 (목표: 20,432개)
- [ ] 검색 유입 확인
- [ ] 주요 검색어 분석

### 3개월 후
- [ ] 검색 순위 모니터링
- [ ] 콘텐츠 추가 계획
- [ ] SEO 개선 사항 검토

---

## 10. 연락처 및 지원

**네이버 서치어드바이저 고객센터:**
- https://help.naver.com/

**케어조아 프로젝트:**
- GitHub: https://github.com/jansmakr/sand-box
- 프로덕션: https://carejoa.kr

---

## 마무리

1. **지금 바로 할 일**:
   - 네이버 서치어드바이저 가입
   - 사이트 등록 및 소유 확인
   - 사이트맵 제출

2. **기다리기**:
   - 1-2주: 색인 시작
   - 1-2개월: 검색 노출 시작

3. **장기 전략**:
   - 콘텐츠 추가
   - 외부 링크 확보
   - 사용자 경험 개선

**축하합니다! 네이버 검색 등록으로 케어조아의 가시성이 크게 향상될 것입니다! 🎉**

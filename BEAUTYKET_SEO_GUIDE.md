# Beautyket SEO 최적화 가이드

## 📋 목차
1. [현재 상태 분석](#현재-상태-분석)
2. [검색 엔진 최적화 전략](#검색-엔진-최적화-전략)
3. [사이트맵 생성](#사이트맵-생성)
4. [robots.txt 설정](#robotstxt-설정)
5. [메타 태그 최적화](#메타-태그-최적화)
6. [구조화된 데이터 (Schema.org)](#구조화된-데이터-schemaorg)
7. [페이지별 SEO 설정](#페이지별-seo-설정)
8. [네이버 웹마스터 도구](#네이버-웹마스터-도구)
9. [구글 서치 콘솔](#구글-서치-콘솔)
10. [구현 코드](#구현-코드)

---

## 현재 상태 분석

### Beautyket 플랫폼 정보
- **도메인**: beautycat.kr
- **API**: https://api.beautycat.kr/api
- **버전**: v2.8.13.6.62.1
- **배포**: Cloudflare Pages
- **대표샵 수**: 3개
- **주요 기능**: 샵 검색, 쿠폰, 예약, 알림

### SEO 개선 필요 항목
1. ✅ 대표샵 정보 API 존재
2. ❌ 사이트맵 없음
3. ❌ robots.txt 없음
4. ❌ 메타 태그 최적화 필요
5. ❌ 구조화된 데이터 없음
6. ❌ 개별 샵 페이지 URL 없음

---

## 검색 엔진 최적화 전략

### 1. URL 구조 설계

#### 추천 URL 구조
```
https://beautycat.kr/                    # 홈페이지
https://beautycat.kr/shops               # 전체 샵 목록
https://beautycat.kr/shops/[id]          # 개별 샵 상세
https://beautycat.kr/region/[sido]       # 지역별 샵 목록
https://beautycat.kr/region/[sido]/[sigungu]  # 세부 지역
https://beautycat.kr/search              # 검색 결과
```

#### 예시
```
https://beautycat.kr/shops/1             # 서울 강남 뷰티샵
https://beautycat.kr/region/서울특별시    # 서울 전체
https://beautycat.kr/region/서울특별시/강남구  # 강남구
```

### 2. 검색 키워드 전략

#### 타겟 키워드
- **메인**: 뷰티샵, 미용실, 네일샵, 피부관리
- **지역**: [지역명] + 뷰티샵 (예: 강남 뷰티샵)
- **서비스**: 헤어, 네일, 피부관리, 왁싱
- **롱테일**: [지역] + [서비스] + 추천/예약

#### SEO 친화적 제목 예시
```
강남 뷰티샵 | 헤어/네일/피부관리 예약 | Beautyket
서울 강남구 네일샵 추천 TOP 3 | 쿠폰/할인 | Beautyket
```

---

## 사이트맵 생성

### 1. 사이트맵 인덱스 (sitemap.xml)

```xml
<?xml version="1.0" encoding="UTF-8"?>
<sitemapindex xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <!-- 메인 페이지 -->
  <sitemap>
    <loc>https://beautycat.kr/sitemap-main.xml</loc>
    <lastmod>2026-01-13</lastmod>
  </sitemap>
  
  <!-- 샵 목록 -->
  <sitemap>
    <loc>https://beautycat.kr/sitemap-shops.xml</loc>
    <lastmod>2026-01-13</lastmod>
  </sitemap>
  
  <!-- 지역별 -->
  <sitemap>
    <loc>https://beautycat.kr/sitemap-regions.xml</loc>
    <lastmod>2026-01-13</lastmod>
  </sitemap>
</sitemapindex>
```

### 2. 메인 페이지 사이트맵 (sitemap-main.xml)

```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url>
    <loc>https://beautycat.kr/</loc>
    <lastmod>2026-01-13</lastmod>
    <changefreq>daily</changefreq>
    <priority>1.0</priority>
  </url>
  
  <url>
    <loc>https://beautycat.kr/shops</loc>
    <lastmod>2026-01-13</lastmod>
    <changefreq>daily</changefreq>
    <priority>0.9</priority>
  </url>
  
  <url>
    <loc>https://beautycat.kr/search</loc>
    <lastmod>2026-01-13</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  
  <url>
    <loc>https://beautycat.kr/about</loc>
    <lastmod>2026-01-13</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.5</priority>
  </url>
</urlset>
```

### 3. 샵 목록 사이트맵 (sitemap-shops.xml)

```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
        xmlns:image="http://www.google.com/schemas/sitemap-image/1.1">
  <!-- 각 대표샵마다 생성 -->
  <url>
    <loc>https://beautycat.kr/shops/1</loc>
    <lastmod>2026-01-13</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
    <image:image>
      <image:loc>https://beautycat.kr/images/shops/1.jpg</image:loc>
      <image:title>서울 강남 뷰티샵</image:title>
    </image:image>
  </url>
  
  <url>
    <loc>https://beautycat.kr/shops/2</loc>
    <lastmod>2026-01-13</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  
  <!-- ... 모든 대표샵 추가 -->
</urlset>
```

### 4. 동적 사이트맵 생성 스크립트

**파일 위치**: `scripts/generate-sitemap.js`

```javascript
// scripts/generate-sitemap.js
const fs = require('fs');
const path = require('path');

const DOMAIN = 'https://beautycat.kr';
const OUTPUT_DIR = './public';

// API에서 대표샵 데이터 가져오기
async function fetchShops() {
  const response = await fetch('https://api.beautycat.kr/api/tables/representative_shops?limit=1000');
  const data = await response.json();
  return data.data || [];
}

// 메인 사이트맵 인덱스 생성
function generateSitemapIndex() {
  const today = new Date().toISOString().split('T')[0];
  
  return `<?xml version="1.0" encoding="UTF-8"?>
<sitemapindex xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <sitemap>
    <loc>${DOMAIN}/sitemap-main.xml</loc>
    <lastmod>${today}</lastmod>
  </sitemap>
  <sitemap>
    <loc>${DOMAIN}/sitemap-shops.xml</loc>
    <lastmod>${today}</lastmod>
  </sitemap>
  <sitemap>
    <loc>${DOMAIN}/sitemap-regions.xml</loc>
    <lastmod>${today}</lastmod>
  </sitemap>
</sitemapindex>`;
}

// 메인 페이지 사이트맵 생성
function generateMainSitemap() {
  const today = new Date().toISOString().split('T')[0];
  
  const urls = [
    { loc: '/', priority: '1.0', changefreq: 'daily' },
    { loc: '/shops', priority: '0.9', changefreq: 'daily' },
    { loc: '/search', priority: '0.8', changefreq: 'weekly' },
    { loc: '/about', priority: '0.5', changefreq: 'monthly' },
    { loc: '/terms', priority: '0.3', changefreq: 'monthly' },
    { loc: '/privacy', priority: '0.3', changefreq: 'monthly' }
  ];
  
  const urlsXml = urls.map(url => `
  <url>
    <loc>${DOMAIN}${url.loc}</loc>
    <lastmod>${today}</lastmod>
    <changefreq>${url.changefreq}</changefreq>
    <priority>${url.priority}</priority>
  </url>`).join('');
  
  return `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
${urlsXml}
</urlset>`;
}

// 샵 사이트맵 생성
async function generateShopsSitemap() {
  const today = new Date().toISOString().split('T')[0];
  const shops = await fetchShops();
  
  console.log(`📍 ${shops.length}개 대표샵 사이트맵 생성 중...`);
  
  const urlsXml = shops.map(shop => `
  <url>
    <loc>${DOMAIN}/shops/${shop.id}</loc>
    <lastmod>${today}</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>`).join('');
  
  return `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
${urlsXml}
</urlset>`;
}

// 지역별 사이트맵 생성
async function generateRegionsSitemap() {
  const today = new Date().toISOString().split('T')[0];
  const shops = await fetchShops();
  
  // 시도별 그룹핑
  const regions = {};
  shops.forEach(shop => {
    const sido = shop.sido || shop.region_sido;
    const sigungu = shop.sigungu || shop.region_sigungu;
    
    if (!regions[sido]) {
      regions[sido] = new Set();
    }
    if (sigungu) {
      regions[sido].add(sigungu);
    }
  });
  
  console.log(`🗺️ ${Object.keys(regions).length}개 지역 사이트맵 생성 중...`);
  
  let urlsXml = '';
  
  // 시도 페이지
  Object.keys(regions).forEach(sido => {
    urlsXml += `
  <url>
    <loc>${DOMAIN}/region/${encodeURIComponent(sido)}</loc>
    <lastmod>${today}</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.7</priority>
  </url>`;
    
    // 시군구 페이지
    regions[sido].forEach(sigungu => {
      urlsXml += `
  <url>
    <loc>${DOMAIN}/region/${encodeURIComponent(sido)}/${encodeURIComponent(sigungu)}</loc>
    <lastmod>${today}</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.6</priority>
  </url>`;
    });
  });
  
  return `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
${urlsXml}
</urlset>`;
}

// 파일 저장
function saveSitemap(filename, content) {
  const filepath = path.join(OUTPUT_DIR, filename);
  fs.writeFileSync(filepath, content, 'utf8');
  
  const size = (content.length / 1024).toFixed(2);
  console.log(`✅ ${filename} 생성 완료 (${size} KB)`);
}

// 메인 실행
async function main() {
  console.log('🚀 Beautyket 사이트맵 생성 시작...\n');
  
  try {
    // 1. 사이트맵 인덱스
    const indexXml = generateSitemapIndex();
    saveSitemap('sitemap.xml', indexXml);
    
    // 2. 메인 페이지
    const mainXml = generateMainSitemap();
    saveSitemap('sitemap-main.xml', mainXml);
    
    // 3. 샵 목록
    const shopsXml = await generateShopsSitemap();
    saveSitemap('sitemap-shops.xml', shopsXml);
    
    // 4. 지역별
    const regionsXml = await generateRegionsSitemap();
    saveSitemap('sitemap-regions.xml', regionsXml);
    
    console.log('\n✨ 사이트맵 생성 완료!');
    console.log(`📍 URL: ${DOMAIN}/sitemap.xml`);
    
  } catch (error) {
    console.error('❌ 사이트맵 생성 실패:', error);
    process.exit(1);
  }
}

// 실행
main();
```

### 5. package.json에 스크립트 추가

```json
{
  "scripts": {
    "sitemap": "node scripts/generate-sitemap.js",
    "prebuild": "npm run sitemap",
    "build": "vite build"
  }
}
```

---

## robots.txt 설정

**파일 위치**: `public/robots.txt`

```txt
# robots.txt for Beautyket
User-agent: *
Allow: /
Allow: /shops/
Allow: /region/
Allow: /search

# 크롤링 제외
Disallow: /admin/
Disallow: /dashboard/
Disallow: /api/
Disallow: /login
Disallow: /register

# 네이버 봇
User-agent: Yeti
Allow: /

# 구글 봇
User-agent: Googlebot
Allow: /

# 사이트맵
Sitemap: https://beautycat.kr/sitemap.xml
Sitemap: https://beautycat.kr/sitemap-main.xml
Sitemap: https://beautycat.kr/sitemap-shops.xml
Sitemap: https://beautycat.kr/sitemap-regions.xml

# 크롤링 속도 제한
Crawl-delay: 1
```

---

## 메타 태그 최적화

### 1. 홈페이지 메타 태그

```html
<!DOCTYPE html>
<html lang="ko">
<head>
  <!-- 기본 메타 태그 -->
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <!-- SEO 메타 태그 -->
  <title>Beautyket | 전국 뷰티샵 예약 플랫폼 | 쿠폰/할인</title>
  <meta name="description" content="전국 뷰티샵, 미용실, 네일샵 예약 플랫폼. 실시간 예약, 쿠폰 제공, 지역별 검색. 무료 기간 2026년 5월까지!">
  <meta name="keywords" content="뷰티샵, 미용실, 네일샵, 피부관리, 헤어샵, 예약, 쿠폰, 할인, 강남, 서울">
  <meta name="author" content="Beautyket">
  <meta name="robots" content="index, follow">
  <link rel="canonical" href="https://beautycat.kr/">
  
  <!-- Open Graph (Facebook, Kakao) -->
  <meta property="og:type" content="website">
  <meta property="og:title" content="Beautyket | 전국 뷰티샵 예약 플랫폼">
  <meta property="og:description" content="전국 뷰티샵, 미용실, 네일샵 예약 플랫폼. 실시간 예약, 쿠폰 제공">
  <meta property="og:url" content="https://beautycat.kr/">
  <meta property="og:image" content="https://beautycat.kr/images/og-image.jpg">
  <meta property="og:site_name" content="Beautyket">
  <meta property="og:locale" content="ko_KR">
  
  <!-- Twitter Card -->
  <meta name="twitter:card" content="summary_large_image">
  <meta name="twitter:title" content="Beautyket | 전국 뷰티샵 예약 플랫폼">
  <meta name="twitter:description" content="전국 뷰티샵, 미용실, 네일샵 예약 플랫폼">
  <meta name="twitter:image" content="https://beautycat.kr/images/twitter-card.jpg">
  
  <!-- 네이버 블로그 최적화 -->
  <meta property="og:article:author" content="Beautyket">
  
  <!-- 구글 검색 -->
  <meta name="google-site-verification" content="YOUR_VERIFICATION_CODE">
  
  <!-- 네이버 검색 -->
  <meta name="naver-site-verification" content="YOUR_NAVER_VERIFICATION_CODE">
  
  <!-- 파비콘 -->
  <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
  <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
  
  <!-- 구조화된 데이터 (JSON-LD) -->
  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "WebSite",
    "name": "Beautyket",
    "url": "https://beautycat.kr",
    "description": "전국 뷰티샵 예약 플랫폼",
    "potentialAction": {
      "@type": "SearchAction",
      "target": "https://beautycat.kr/search?q={search_term_string}",
      "query-input": "required name=search_term_string"
    }
  }
  </script>
</head>
<body>
  <!-- 콘텐츠 -->
</body>
</html>
```

### 2. 개별 샵 페이지 메타 태그 (동적 생성)

```javascript
// 샵 상세 페이지 메타 태그 생성 함수
function generateShopMetaTags(shop) {
  const title = `${shop.shop_name} | ${shop.region_sido} ${shop.region_sigungu} | Beautyket`;
  const description = `${shop.shop_name} - ${shop.region_sido} ${shop.region_sigungu} 뷰티샵. 서비스: ${shop.services || '헤어, 네일, 피부관리'}. 지금 예약하고 쿠폰 받으세요!`;
  const url = `https://beautycat.kr/shops/${shop.id}`;
  const image = shop.image_url || 'https://beautycat.kr/images/default-shop.jpg';
  
  return `
    <title>${title}</title>
    <meta name="description" content="${description}">
    <link rel="canonical" href="${url}">
    
    <meta property="og:type" content="business.business">
    <meta property="og:title" content="${title}">
    <meta property="og:description" content="${description}">
    <meta property="og:url" content="${url}">
    <meta property="og:image" content="${image}">
    
    <meta property="business:contact_data:street_address" content="${shop.address || ''}">
    <meta property="business:contact_data:locality" content="${shop.region_sigungu}">
    <meta property="business:contact_data:region" content="${shop.region_sido}">
    <meta property="business:contact_data:country_name" content="South Korea">
  `;
}
```

---

## 구조화된 데이터 (Schema.org)

### 1. LocalBusiness Schema (개별 샵)

```javascript
function generateShopSchema(shop) {
  return {
    "@context": "https://schema.org",
    "@type": "BeautySalon",
    "name": shop.shop_name,
    "description": `${shop.shop_name}은(는) ${shop.region_sido} ${shop.region_sigungu}에 위치한 뷰티샵입니다.`,
    "image": shop.image_url || "https://beautycat.kr/images/default-shop.jpg",
    "url": `https://beautycat.kr/shops/${shop.id}`,
    "telephone": shop.phone || "",
    "address": {
      "@type": "PostalAddress",
      "streetAddress": shop.address || "",
      "addressLocality": shop.region_sigungu,
      "addressRegion": shop.region_sido,
      "addressCountry": "KR"
    },
    "geo": shop.lat && shop.lng ? {
      "@type": "GeoCoordinates",
      "latitude": shop.lat,
      "longitude": shop.lng
    } : undefined,
    "openingHoursSpecification": [
      {
        "@type": "OpeningHoursSpecification",
        "dayOfWeek": ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"],
        "opens": "09:00",
        "closes": "20:00"
      },
      {
        "@type": "OpeningHoursSpecification",
        "dayOfWeek": ["Saturday"],
        "opens": "09:00",
        "closes": "18:00"
      }
    ],
    "priceRange": "₩₩",
    "servesCuisine": undefined,
    "makesOffer": [
      {
        "@type": "Offer",
        "itemOffered": {
          "@type": "Service",
          "name": "헤어 서비스",
          "description": "컷, 펌, 염색 등 다양한 헤어 서비스"
        }
      },
      {
        "@type": "Offer",
        "itemOffered": {
          "@type": "Service",
          "name": "네일 서비스",
          "description": "네일 아트, 젤 네일 등"
        }
      }
    ],
    "aggregateRating": shop.rating ? {
      "@type": "AggregateRating",
      "ratingValue": shop.rating,
      "reviewCount": shop.review_count || 0,
      "bestRating": "5",
      "worstRating": "1"
    } : undefined
  };
}

// HTML에 삽입
const schemaScript = document.createElement('script');
schemaScript.type = 'application/ld+json';
schemaScript.textContent = JSON.stringify(generateShopSchema(shop));
document.head.appendChild(schemaScript);
```

### 2. ItemList Schema (샵 목록)

```javascript
function generateShopListSchema(shops) {
  return {
    "@context": "https://schema.org",
    "@type": "ItemList",
    "name": "Beautyket 대표 뷰티샵",
    "description": "전국 대표 뷰티샵 목록",
    "numberOfItems": shops.length,
    "itemListElement": shops.map((shop, index) => ({
      "@type": "ListItem",
      "position": index + 1,
      "item": {
        "@type": "BeautySalon",
        "name": shop.shop_name,
        "url": `https://beautycat.kr/shops/${shop.id}`,
        "image": shop.image_url,
        "address": {
          "@type": "PostalAddress",
          "addressLocality": shop.region_sigungu,
          "addressRegion": shop.region_sido
        }
      }
    }))
  };
}
```

### 3. BreadcrumbList Schema (네비게이션)

```javascript
function generateBreadcrumbSchema(path) {
  const breadcrumbs = [
    { name: '홈', url: 'https://beautycat.kr/' }
  ];
  
  if (path.includes('/shops')) {
    breadcrumbs.push({ name: '샵 찾기', url: 'https://beautycat.kr/shops' });
    
    if (path.match(/\/shops\/\d+/)) {
      breadcrumbs.push({ name: '샵 상세', url: window.location.href });
    }
  } else if (path.includes('/region')) {
    const parts = path.split('/').filter(Boolean);
    if (parts[1]) {
      breadcrumbs.push({ 
        name: decodeURIComponent(parts[1]), 
        url: `https://beautycat.kr/region/${parts[1]}`
      });
    }
    if (parts[2]) {
      breadcrumbs.push({ 
        name: decodeURIComponent(parts[2]), 
        url: window.location.href
      });
    }
  }
  
  return {
    "@context": "https://schema.org",
    "@type": "BreadcrumbList",
    "itemListElement": breadcrumbs.map((item, index) => ({
      "@type": "ListItem",
      "position": index + 1,
      "name": item.name,
      "item": item.url
    }))
  };
}
```

---

## 페이지별 SEO 설정

### 1. 샵 상세 페이지 생성

**파일 위치**: `src/pages/shop-detail.html` 또는 동적 생성

```html
<!DOCTYPE html>
<html lang="ko">
<head>
  <!-- 동적으로 메타 태그 삽입 -->
  <script>
    // shop ID 가져오기
    const shopId = window.location.pathname.split('/').pop();
    
    // API에서 샵 정보 가져오기
    fetch(`https://api.beautycat.kr/api/tables/representative_shops/${shopId}`)
      .then(res => res.json())
      .then(data => {
        const shop = data.data;
        
        // 메타 태그 동적 생성
        document.title = `${shop.shop_name} | ${shop.region_sido} ${shop.region_sigungu} | Beautyket`;
        
        const metaDescription = document.createElement('meta');
        metaDescription.name = 'description';
        metaDescription.content = `${shop.shop_name} - ${shop.region_sido} ${shop.region_sigungu} 뷰티샵`;
        document.head.appendChild(metaDescription);
        
        // OG 태그
        const ogTitle = document.createElement('meta');
        ogTitle.setAttribute('property', 'og:title');
        ogTitle.content = document.title;
        document.head.appendChild(ogTitle);
        
        // Schema 추가
        const schema = document.createElement('script');
        schema.type = 'application/ld+json';
        schema.textContent = JSON.stringify(generateShopSchema(shop));
        document.head.appendChild(schema);
        
        // 페이지 콘텐츠 렌더링
        renderShopDetail(shop);
      });
  </script>
</head>
<body>
  <div id="shop-detail">
    <!-- 로딩 중... -->
  </div>
</body>
</html>
```

### 2. 지역별 페이지 생성

```javascript
// 지역별 페이지 라우팅
if (window.location.pathname.startsWith('/region/')) {
  const pathParts = window.location.pathname.split('/').filter(Boolean);
  const sido = decodeURIComponent(pathParts[1]);
  const sigungu = pathParts[2] ? decodeURIComponent(pathParts[2]) : null;
  
  // 메타 태그 설정
  const title = sigungu 
    ? `${sido} ${sigungu} 뷰티샵 | Beautyket`
    : `${sido} 뷰티샵 | Beautyket`;
  document.title = title;
  
  const metaDescription = document.createElement('meta');
  metaDescription.name = 'description';
  metaDescription.content = `${sido}${sigungu ? ' ' + sigungu : ''} 지역 뷰티샵 목록. 실시간 예약 가능`;
  document.head.appendChild(metaDescription);
  
  // 해당 지역 샵 목록 로드
  loadShopsByRegion(sido, sigungu);
}
```

---

## 네이버 웹마스터 도구

### 1. 사이트 등록

1. **네이버 서치어드바이저** 접속
   - URL: https://searchadvisor.naver.com/

2. **사이트 추가**
   - 사이트 URL 입력: `https://beautycat.kr`

3. **소유 확인**
   - **방법 1: HTML 파일 업로드**
     ```html
     <!-- naver1234567890abcd.html -->
     naver-site-verification: naver1234567890abcd.html
     ```
   
   - **방법 2: 메타 태그**
     ```html
     <meta name="naver-site-verification" content="YOUR_VERIFICATION_CODE">
     ```

4. **사이트맵 제출**
   - 사이트맵 URL: `https://beautycat.kr/sitemap.xml`
   - 확인 후 "수집 요청" 클릭

### 2. 네이버 검색 최적화 팁

```html
<!-- 네이버 블로그 최적화 -->
<meta property="og:article:author" content="Beautyket">
<meta property="og:article:published_time" content="2026-01-13T00:00:00+09:00">

<!-- 네이버 지도 연동 (향후) -->
<meta name="naver:placeid" content="YOUR_PLACE_ID">
```

---

## 구글 서치 콘솔

### 1. 사이트 등록

1. **구글 서치 콘솔** 접속
   - URL: https://search.google.com/search-console/

2. **속성 추가**
   - 도메인: `beautycat.kr`
   - 또는 URL 접두어: `https://beautycat.kr`

3. **소유권 확인**
   - **방법 1: HTML 파일**
     ```html
     <!-- google1234567890abcdef.html -->
     google-site-verification: google1234567890abcdef.html
     ```
   
   - **방법 2: 메타 태그**
     ```html
     <meta name="google-site-verification" content="YOUR_VERIFICATION_CODE">
     ```
   
   - **방법 3: DNS (권장)**
     - TXT 레코드 추가: `google-site-verification=YOUR_CODE`

4. **사이트맵 제출**
   - Sitemaps 메뉴에서 URL 입력
   - `https://beautycat.kr/sitemap.xml`

### 2. 색인 생성 요청

```bash
# URL 검사 도구 사용
1. 좌측 메뉴 "URL 검사" 클릭
2. URL 입력 (예: https://beautycat.kr/shops/1)
3. "색인 생성 요청" 클릭
```

### 3. 구글 애널리틱스 연동

```html
<!-- Google Analytics 4 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

---

## 구현 코드

### 1. Hono 라우트 추가 (Cloudflare Workers)

```typescript
// src/index.tsx
import { Hono } from 'hono';
import { serveStatic } from 'hono/cloudflare-workers';

const app = new Hono();

// 사이트맵 라우트
app.get('/sitemap.xml', serveStatic({ path: './public/sitemap.xml' }));
app.get('/sitemap-main.xml', serveStatic({ path: './public/sitemap-main.xml' }));
app.get('/sitemap-shops.xml', serveStatic({ path: './public/sitemap-shops.xml' }));
app.get('/sitemap-regions.xml', serveStatic({ path: './public/sitemap-regions.xml' }));

// robots.txt
app.get('/robots.txt', serveStatic({ path: './public/robots.txt' }));

// 개별 샵 페이지 (SSR)
app.get('/shops/:id', async (c) => {
  const shopId = c.req.param('id');
  
  // API에서 샵 정보 가져오기
  const response = await fetch(`https://api.beautycat.kr/api/tables/representative_shops/${shopId}`);
  const data = await response.json();
  const shop = data.data;
  
  if (!shop) {
    return c.notFound();
  }
  
  // HTML 생성
  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      
      <title>${shop.shop_name} | ${shop.region_sido} ${shop.region_sigungu} | Beautyket</title>
      <meta name="description" content="${shop.shop_name} - ${shop.region_sido} ${shop.region_sigungu} 뷰티샵">
      <link rel="canonical" href="https://beautycat.kr/shops/${shop.id}">
      
      <meta property="og:type" content="business.business">
      <meta property="og:title" content="${shop.shop_name} | Beautyket">
      <meta property="og:url" content="https://beautycat.kr/shops/${shop.id}">
      
      <script type="application/ld+json">
      ${JSON.stringify(generateShopSchema(shop))}
      </script>
    </head>
    <body>
      <h1>${shop.shop_name}</h1>
      <p>${shop.region_sido} ${shop.region_sigungu}</p>
      <p>${shop.address || ''}</p>
      <p>${shop.phone || ''}</p>
      
      <!-- 나머지 콘텐츠 -->
    </body>
    </html>
  `);
});

// 지역별 페이지
app.get('/region/:sido', async (c) => {
  const sido = c.req.param('sido');
  
  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <title>${sido} 뷰티샵 | Beautyket</title>
      <meta name="description" content="${sido} 지역 뷰티샵 목록">
    </head>
    <body>
      <h1>${sido} 뷰티샵</h1>
      <!-- 샵 목록 -->
    </body>
    </html>
  `);
});

app.get('/region/:sido/:sigungu', async (c) => {
  const sido = c.req.param('sido');
  const sigungu = c.req.param('sigungu');
  
  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <title>${sido} ${sigungu} 뷰티샵 | Beautyket</title>
      <meta name="description" content="${sido} ${sigungu} 지역 뷰티샵 목록">
    </head>
    <body>
      <h1>${sido} ${sigungu} 뷰티샵</h1>
      <!-- 샵 목록 -->
    </body>
    </html>
  `);
});

export default app;
```

### 2. 클라이언트 사이드 메타 태그 업데이트

```javascript
// public/static/seo.js
const SEO = {
  // 메타 태그 업데이트
  updateMetaTags(data) {
    // Title
    document.title = data.title;
    
    // Description
    this.setMetaTag('name', 'description', data.description);
    
    // Keywords
    if (data.keywords) {
      this.setMetaTag('name', 'keywords', data.keywords);
    }
    
    // Canonical
    this.setLinkTag('rel', 'canonical', data.url);
    
    // Open Graph
    this.setMetaTag('property', 'og:title', data.title);
    this.setMetaTag('property', 'og:description', data.description);
    this.setMetaTag('property', 'og:url', data.url);
    
    if (data.image) {
      this.setMetaTag('property', 'og:image', data.image);
    }
  },
  
  setMetaTag(attrName, attrValue, content) {
    let tag = document.querySelector(`meta[${attrName}="${attrValue}"]`);
    if (!tag) {
      tag = document.createElement('meta');
      tag.setAttribute(attrName, attrValue);
      document.head.appendChild(tag);
    }
    tag.setAttribute('content', content);
  },
  
  setLinkTag(attrName, attrValue, href) {
    let tag = document.querySelector(`link[${attrName}="${attrValue}"]`);
    if (!tag) {
      tag = document.createElement('link');
      tag.setAttribute(attrName, attrValue);
      document.head.appendChild(tag);
    }
    tag.setAttribute('href', href);
  },
  
  // 구조화된 데이터 추가
  addStructuredData(data) {
    const script = document.createElement('script');
    script.type = 'application/ld+json';
    script.textContent = JSON.stringify(data);
    document.head.appendChild(script);
  }
};

// 전역 노출
window.SEO = SEO;
```

### 3. 샵 상세 페이지에서 SEO 적용

```javascript
// 샵 상세 정보 로드 시
async function loadShopDetail(shopId) {
  const response = await fetch(`https://api.beautycat.kr/api/tables/representative_shops/${shopId}`);
  const data = await response.json();
  const shop = data.data;
  
  // SEO 메타 태그 업데이트
  window.SEO.updateMetaTags({
    title: `${shop.shop_name} | ${shop.region_sido} ${shop.region_sigungu} | Beautyket`,
    description: `${shop.shop_name} - ${shop.region_sido} ${shop.region_sigungu} 뷰티샵. 지금 예약하고 쿠폰 받으세요!`,
    url: `https://beautycat.kr/shops/${shop.id}`,
    image: shop.image_url,
    keywords: `뷰티샵, ${shop.region_sido}, ${shop.region_sigungu}, ${shop.shop_name}`
  });
  
  // 구조화된 데이터 추가
  window.SEO.addStructuredData(generateShopSchema(shop));
  
  // 페이지 렌더링
  renderShopDetail(shop);
}
```

---

## 배포 체크리스트

### 배포 전 확인사항

- [ ] `public/robots.txt` 생성
- [ ] `public/sitemap.xml` 생성
- [ ] `public/sitemap-main.xml` 생성
- [ ] `public/sitemap-shops.xml` 생성
- [ ] `public/sitemap-regions.xml` 생성
- [ ] 홈페이지 메타 태그 확인
- [ ] Open Graph 이미지 준비 (1200x630px)
- [ ] 파비콘 준비 (32x32, 16x16, 180x180)
- [ ] 구글 서치 콘솔 등록
- [ ] 네이버 서치어드바이저 등록
- [ ] 사이트맵 제출 (구글, 네이버)
- [ ] 대표샵 개별 페이지 생성
- [ ] 지역별 페이지 생성
- [ ] 구조화된 데이터 확인

### 배포 후 확인사항

- [ ] robots.txt 접근 확인: `https://beautycat.kr/robots.txt`
- [ ] 사이트맵 접근 확인: `https://beautycat.kr/sitemap.xml`
- [ ] 구글 서치 콘솔에서 색인 상태 확인
- [ ] 네이버 서치어드바이저에서 수집 상태 확인
- [ ] 메타 태그 확인 (개발자 도구)
- [ ] Open Graph 확인: https://developers.facebook.com/tools/debug/
- [ ] 모바일 친화성 확인: https://search.google.com/test/mobile-friendly
- [ ] 페이지 속도 확인: https://pagespeed.web.dev/

---

## 모니터링 및 개선

### 1. 검색 순위 추적

**추천 도구:**
- 구글 서치 콘솔 - 검색어, 노출, 클릭 수
- 네이버 서치어드바이저 - 검색 유입 분석
- Google Analytics - 트래픽 분석

### 2. 정기적인 사이트맵 업데이트

```bash
# 매일 자동 실행 (GitHub Actions)
name: Update Sitemap

on:
  schedule:
    - cron: '0 0 * * *'  # 매일 자정
  workflow_dispatch:

jobs:
  update-sitemap:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: actions/setup-node@v2
      - run: npm install
      - run: npm run sitemap
      - run: npx wrangler pages deploy dist
```

### 3. SEO 점수 개선

**목표:**
- Google Lighthouse SEO: 90점 이상
- 페이지 속도: 80점 이상
- 모바일 친화성: 100점

**개선 방법:**
- 이미지 최적화 (WebP)
- 코드 압축 (Minify)
- CDN 사용 (Cloudflare)
- 캐싱 전략
- 구조화된 데이터 확대

---

## 참고 자료

### 공식 문서
- **구글 SEO**: https://developers.google.com/search/docs
- **네이버 웹마스터**: https://searchadvisor.naver.com/guide
- **Schema.org**: https://schema.org/
- **Open Graph**: https://ogp.me/

### 도구
- **구글 서치 콘솔**: https://search.google.com/search-console/
- **네이버 서치어드바이저**: https://searchadvisor.naver.com/
- **구글 리치 결과 테스트**: https://search.google.com/test/rich-results
- **메타 태그 체커**: https://metatags.io/

---

## 마치며

이 가이드를 따라 Beautyket 플랫폼의 SEO를 최적화하면:

✅ 네이버/구글 검색 결과에 노출
✅ 개별 샵 정보 검색 가능
✅ 지역별 검색 최적화
✅ 소셜 미디어 공유 최적화
✅ 검색 트래픽 증가

**핵심 포인트:**
1. 사이트맵 생성 및 제출
2. 메타 태그 최적화
3. 구조화된 데이터 추가
4. 개별 페이지 URL 구조
5. 정기적인 업데이트 및 모니터링

문의사항이나 추가 지원이 필요하면 언제든지 연락 주세요!

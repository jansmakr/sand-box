import { jsxRenderer } from 'hono/jsx-renderer'

export const renderer = jsxRenderer(({ children }) => {
  return (
    <html lang="ko">
      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        
        {/* 기본 SEO 메타 태그 */}
        <title>케어조아 - 전국 요양원/요양병원 실시간 비교 견적</title>
        <meta name="description" content="전국 14,000개 이상의 요양원, 요양병원, 노인요양시설을 한눈에 비교하고 실시간 견적을 받아보세요. 지역별 요양시설 검색부터 맞춤 상담까지 무료로 제공합니다." />
        <meta name="keywords" content="요양원, 요양병원, 노인요양시설, 실버타운, 요양원 비용, 요양병원 비교, 요양시설 견적, 케어조아, 노인돌봄, 장기요양보험" />
        <meta name="author" content="케어조아" />
        <link rel="canonical" href="https://carejoa.kr" />
        
        {/* Open Graph 태그 (페이스북, 카카오톡) */}
        <meta property="og:type" content="website" />
        <meta property="og:site_name" content="케어조아" />
        <meta property="og:title" content="케어조아 - 전국 요양시설 비교 플랫폼" />
        <meta property="og:description" content="전국 14,000개 이상의 요양시설을 한눈에 비교하고 맞춤 견적을 받아보세요." />
        <meta property="og:url" content="https://carejoa.kr" />
        <meta property="og:image" content="https://page.gensparksite.com/v1/base64_upload/b39dca8586af1dacd6d8417554313896" />
        <meta property="og:image:width" content="1200" />
        <meta property="og:image:height" content="630" />
        <meta property="og:locale" content="ko_KR" />
        
        {/* Twitter Card 태그 */}
        <meta name="twitter:card" content="summary_large_image" />
        <meta name="twitter:title" content="케어조아 - 전국 요양시설 비교 플랫폼" />
        <meta name="twitter:description" content="전국 14,000개 이상의 요양시설을 한눈에 비교하고 맞춤 견적을 받아보세요." />
        <meta name="twitter:image" content="https://page.gensparksite.com/v1/base64_upload/b39dca8586af1dacd6d8417554313896" />
        
        {/* 모바일 웹앱 설정 */}
        <meta name="theme-color" content="#0d9488" />
        
        {/* 표준 모바일 웹앱 메타 태그 (모든 플랫폼) */}
        <meta name="mobile-web-app-capable" content="yes" />
        
        {/* iOS 웹앱 메타 태그 (iOS 호환성) */}
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
        <meta name="apple-mobile-web-app-title" content="케어조아" />
        
        {/* 네이버 사이트 소유 확인 */}
        <meta name="naver-site-verification" content="dc43a9599c76357b725d565f539f29ee2d907b81" />
        
        {/* Content Security Policy */}
        <meta httpEquiv="Content-Security-Policy" content="default-src 'self' https:; script-src 'self' 'unsafe-inline' 'unsafe-eval' https://www.googletagmanager.com https://cdn.jsdelivr.net https://unpkg.com https://static.cloudflareinsights.com; style-src 'self' 'unsafe-inline' https://cdn.jsdelivr.net https://unpkg.com; img-src 'self' data: https:; font-src 'self' data: https://cdn.jsdelivr.net; connect-src 'self' https://www.google-analytics.com https://www.genspark.ai https://cloudflareinsights.com https://cdn.jsdelivr.net; frame-src 'self';" />
        
        {/* Google Analytics 4 */}
        <script async src="https://www.googletagmanager.com/gtag/js?id=G-KWGGQN7LR3"></script>
        
        {/* Favicon */}
        <link rel="icon" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><text y='.9em' font-size='90'>❤️</text></svg>" />
        
        {/* Tailwind CSS */}
        <link href="/static/tailwind.css" rel="stylesheet" />
        
        {/* Font Awesome Icons */}
        <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet" />
        
        {/* Custom Styles */}
        <link href="/static/style.css" rel="stylesheet" />
        
        {/* JSON-LD 구조화 데이터 (Schema.org) */}
        <script type="application/ld+json" dangerouslySetInnerHTML={{
          __html: JSON.stringify({
            "@context": "https://schema.org",
            "@type": "WebSite",
            "name": "케어조아",
            "alternateName": "CareJoa",
            "url": "https://carejoa.kr",
            "description": "전국 요양원, 요양병원, 노인요양시설 비교 및 견적 플랫폼",
            "inLanguage": "ko-KR",
            "potentialAction": {
              "@type": "SearchAction",
              "target": {
                "@type": "EntryPoint",
                "urlTemplate": "https://carejoa.kr/search?q={search_term_string}"
              },
              "query-input": "required name=search_term_string"
            }
          })
        }} />
        
        <script type="application/ld+json" dangerouslySetInnerHTML={{
          __html: JSON.stringify({
            "@context": "https://schema.org",
            "@type": "Organization",
            "name": "케어조아",
            "url": "https://carejoa.kr",
            "logo": "https://page.gensparksite.com/v1/base64_upload/b39dca8586af1dacd6d8417554313896",
            "description": "요양시설 비교 및 맞춤 견적 서비스",
            "address": {
              "@type": "PostalAddress",
              "addressCountry": "KR",
              "addressLocality": "대한민국"
            },
            "contactPoint": {
              "@type": "ContactPoint",
              "contactType": "고객지원",
              "availableLanguage": ["Korean"]
            },
            "sameAs": [
              "https://open.kakao.com/o/siR7YBUh"
            ]
          })
        }} />
        
        <script type="application/ld+json" dangerouslySetInnerHTML={{
          __html: JSON.stringify({
            "@context": "https://schema.org",
            "@type": "Service",
            "serviceType": "요양시설 비교 및 견적 서비스",
            "provider": {
              "@type": "Organization",
              "name": "케어조아"
            },
            "areaServed": {
              "@type": "Country",
              "name": "대한민국"
            },
            "audience": {
              "@type": "Audience",
              "audienceType": "요양시설을 찾는 보호자, 환자 가족"
            },
            "offers": {
              "@type": "Offer",
              "price": "0",
              "priceCurrency": "KRW",
              "description": "무료 요양시설 비교 및 견적 상담"
            }
          })
        }} />
        
        <style>{`
          body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif;
          }
        `}</style>
      </head>
      <body class="bg-gray-50 min-h-screen">
        {children}
        
        {/* Axios for API calls */}
        <script src="https://cdn.jsdelivr.net/npm/axios@1.6.0/dist/axios.min.js"></script>
        
        {/* Custom JavaScript (includes GA init and Service Worker cleanup) */}
        <script src="/static/app.js"></script>
      </body>
    </html>
  )
})

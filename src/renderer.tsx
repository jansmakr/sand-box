import { jsxRenderer } from 'hono/jsx-renderer'

export const renderer = jsxRenderer(({ children }) => {
  return (
    <html lang="ko">
      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, viewport-fit=cover" />
        <title>셀픽 - 화장품도 스스로 픽! | AI 성분 분석기</title>
        <meta name="description" content="화장품 성분분석, 이젠 화장품도 스스로 픽! 셀픽 📱 카메라로 성분표 촬영하면 AI가 안전성 분석하고 맞춤 제품을 추천해드립니다" />
        
        {/* PWA 메타 태그 - 최신 표준 */}
        <meta name="theme-color" content="#9333ea" />
        <meta name="mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
        <meta name="apple-mobile-web-app-title" content="셀픽" />
        
        {/* Favicon 및 아이콘 */}
        <link rel="icon" type="image/svg+xml" href="/favicon.svg" />
        <link rel="icon" type="image/png" sizes="32x32" href="/favicon.png" />
        <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png" />
        
        {/* PWA Manifest */}
        <link rel="manifest" href="/manifest.json" />
        
        {/* 오픈 그래프 메타 태그 */}
        <meta property="og:title" content="셀픽 - 화장품도 스스로 픽! | AI 성분 분석기" />
        <meta property="og:description" content="화장품 성분분석, 이젠 화장품도 스스로 픽! 셀픽 📱 카메라로 성분표 촬영하면 AI가 분석해드립니다" />
        <meta property="og:type" content="website" />
        
        {/* 성능 최적화 */}
        <link rel="dns-prefetch" href="https://cdn.tailwindcss.com" />
        <link rel="dns-prefetch" href="https://cdnjs.cloudflare.com" />
        

        
        {/* Font Awesome */}
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet" />
        
        {/* Tailwind CSS - CDN */}
        <script src="https://cdn.tailwindcss.com"></script>
        
        {/* Custom CSS */}
        <link href="/static/style.css" rel="stylesheet" />
      </head>
      <body>{children}</body>
    </html>
  )
})

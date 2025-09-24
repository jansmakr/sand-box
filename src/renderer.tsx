import { jsxRenderer } from 'hono/jsx-renderer'

export const renderer = jsxRenderer(({ children }) => {
  return (
    <html lang="ko">
      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, viewport-fit=cover" />
        <title>뷰티샷 - 피부측정&화장품분석 | AI 뷰티 전문가</title>
        <meta name="description" content="뷰티샷에서 피부측정과 화장품분석을 한번에! 📸 AI가 피부상태를 진단하고 화장품 성분을 분석해서 맞춤 뷰티 솔루션을 제공합니다" />
        
        {/* PWA 메타 태그 - 최신 표준 */}
        <meta name="theme-color" content="#9333ea" />
        <meta name="mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
        <meta name="apple-mobile-web-app-title" content="뷰티샷" />
        
        {/* Favicon 및 아이콘 */}
        <link rel="icon" type="image/svg+xml" href="/favicon.svg" />
        <link rel="icon" type="image/png" sizes="32x32" href="/favicon.png" />
        <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png" />
        
        {/* PWA Manifest */}
        <link rel="manifest" href="/manifest.json" />
        
        {/* 오픈 그래프 메타 태그 */}
        <meta property="og:title" content="뷰티샷 - 피부측정&화장품분석 | AI 뷰티 전문가" />
        <meta property="og:description" content="뷰티샷에서 피부측정과 화장품분석을 한번에! 📸 AI 뷰티 전문가가 맞춤 솔루션을 제공합니다" />
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

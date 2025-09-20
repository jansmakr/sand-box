import { jsxRenderer } from 'hono/jsx-renderer'

export const renderer = jsxRenderer(({ children }) => {
  return (
    <html lang="ko">
      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, viewport-fit=cover" />
        <title>피부 성분 분석기 - AI 화장품 성분 분석</title>
        <meta name="description" content="📱 카메라로 화장품 성분표를 촬영하면 AI가 안전성을 분석하고 피부타입별 맞춤 제품을 추천해드립니다" />
        
        {/* PWA 메타 태그 */}
        <meta name="theme-color" content="#9333ea" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
        <meta name="apple-mobile-web-app-title" content="성분분석기" />
        
        {/* 오픈 그래프 메타 태그 */}
        <meta property="og:title" content="피부 성분 분석기 - AI 화장품 성분 분석" />
        <meta property="og:description" content="카메라로 성분표를 촬영하면 AI가 분석해드립니다" />
        <meta property="og:type" content="website" />
        
        {/* 성능 최적화 */}
        <link rel="dns-prefetch" href="https://cdn.tailwindcss.com" />
        <link rel="dns-prefetch" href="https://cdnjs.cloudflare.com" />
        
        {/* Tailwind CSS */}
        <script src="https://cdn.tailwindcss.com"></script>
        
        {/* Font Awesome */}
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet" />
        
        {/* Custom CSS */}
        <link href="/static/style.css" rel="stylesheet" />
      </head>
      <body>{children}</body>
    </html>
  )
})

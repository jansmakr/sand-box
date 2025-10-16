import { jsxRenderer } from 'hono/jsx-renderer'

export const renderer = jsxRenderer(({ children }) => {
  return (
    <html lang="ko">
      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>케어조아 - 실시간 요양시설 견적 플랫폼</title>
        <meta name="description" content="전국 어디서든 원하는 요양시설 찾기! 시설 정보 확인부터 맞춤 견적 요청까지 한 번에!" />
        
        {/* 네이버 사이트 소유 확인 */}
        <meta name="naver-site-verification" content="5cc01115b78cdcac6d30bc8ce080f4290c212043" />
        
        {/* Favicon */}
        <link rel="icon" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><text y='.9em' font-size='90'>❤️</text></svg>" />
        
        {/* Tailwind CSS */}
        <link href="/static/tailwind.css" rel="stylesheet" />
        
        {/* Font Awesome Icons */}
        <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet" />
        
        {/* Custom Styles */}
        <link href="/static/style.css" rel="stylesheet" />
        
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
        
        {/* Service Worker 비활성화 */}
        <script dangerouslySetInnerHTML={{
          __html: `
          if ('serviceWorker' in navigator) {
            navigator.serviceWorker.getRegistrations().then(function(registrations) {
              for(let registration of registrations) {
                registration.unregister();
              }
            });
          }
        `}} />
        
        {/* Custom JavaScript */}
        <script src="/static/app.js"></script>
      </body>
    </html>
  )
})

// Simple proxy server for GenSpark preview
// Proxies requests to the production Cloudflare Pages deployment

const http = require('http');
const https = require('https');
const PORT = 3000;
const TARGET = 'https://8dc9bd54.carejoa-kr.pages.dev';

console.log(`🚀 Starting GenSpark preview proxy server...`);
console.log(`📍 Port: ${PORT}`);
console.log(`🎯 Target: ${TARGET}`);

const server = http.createServer((req, res) => {
  const targetUrl = new URL(req.url, TARGET);
  
  const options = {
    hostname: targetUrl.hostname,
    port: 443,
    path: targetUrl.pathname + targetUrl.search,
    method: req.method,
    headers: {
      ...req.headers,
      host: targetUrl.hostname
    }
  };

  const proxyReq = https.request(options, (proxyRes) => {
    // Copy response headers
    res.writeHead(proxyRes.statusCode, proxyRes.headers);
    proxyRes.pipe(res);
  });

  proxyReq.on('error', (err) => {
    console.error('Proxy error:', err.message);
    res.writeHead(502, { 'Content-Type': 'text/html; charset=utf-8' });
    res.end(`
      <!DOCTYPE html>
      <html lang="ko">
      <head>
        <meta charset="UTF-8">
        <title>프록시 오류</title>
      </head>
      <body>
        <h1>프록시 연결 오류</h1>
        <p>배포 서버에 연결할 수 없습니다.</p>
        <p><a href="${TARGET}" target="_blank">직접 접속하기 →</a></p>
      </body>
      </html>
    `);
  });

  req.pipe(proxyReq);
});

server.listen(PORT, '0.0.0.0', () => {
  console.log(`✅ GenSpark preview proxy running at http://0.0.0.0:${PORT}`);
  console.log(`✅ Proxying to: ${TARGET}`);
  console.log(`\n📱 GenSpark 미리보기가 정상 작동합니다!`);
});

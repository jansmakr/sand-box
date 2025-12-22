// Simple preview server for GenSpark
const http = require('http');
const fs = require('fs');
const path = require('path');

const PORT = 3000;
const DIST_DIR = path.join(__dirname, 'dist');

// MIME types
const mimeTypes = {
  '.html': 'text/html',
  '.js': 'application/javascript',
  '.css': 'text/css',
  '.json': 'application/json',
  '.png': 'image/png',
  '.jpg': 'image/jpeg',
  '.gif': 'image/gif',
  '.svg': 'image/svg+xml',
  '.ico': 'image/x-icon',
  '.woff': 'font/woff',
  '.woff2': 'font/woff2',
  '.ttf': 'font/ttf',
};

const server = http.createServer((req, res) => {
  console.log(`${req.method} ${req.url}`);
  
  // Serve dist/_worker.js for all requests (Cloudflare Pages behavior)
  const workerPath = path.join(DIST_DIR, '_worker.js');
  
  if (fs.existsSync(workerPath)) {
    const content = fs.readFileSync(workerPath, 'utf8');
    
    // Simple HTML response for root
    if (req.url === '/' || req.url.startsWith('/?')) {
      res.writeHead(200, { 
        'Content-Type': 'text/html; charset=utf-8',
        'Access-Control-Allow-Origin': '*'
      });
      res.end(`<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>케어조아 - 미리보기</title>
</head>
<body>
  <h1>케어조아 개발 서버</h1>
  <p>실제 배포 URL: <a href="https://8dc9bd54.carejoa-kr.pages.dev" target="_blank">https://8dc9bd54.carejoa-kr.pages.dev</a></p>
  <p>GenSpark 미리보기는 실제 배포 URL을 사용해주세요.</p>
  <script>
    console.log('케어조아 미리보기 서버 로드됨');
  </script>
</body>
</html>`);
    } else {
      // Serve static files from dist
      const filePath = path.join(DIST_DIR, req.url === '/' ? 'index.html' : req.url);
      
      if (fs.existsSync(filePath) && fs.statSync(filePath).isFile()) {
        const ext = path.extname(filePath);
        const mimeType = mimeTypes[ext] || 'application/octet-stream';
        
        res.writeHead(200, { 
          'Content-Type': mimeType,
          'Access-Control-Allow-Origin': '*'
        });
        fs.createReadStream(filePath).pipe(res);
      } else {
        res.writeHead(404, { 'Content-Type': 'text/html' });
        res.end('<h1>404 - Not Found</h1><p>Use production URL: https://8dc9bd54.carejoa-kr.pages.dev</p>');
      }
    }
  } else {
    res.writeHead(500, { 'Content-Type': 'text/html' });
    res.end('<h1>500 - Server Error</h1><p>Worker file not found</p>');
  }
});

server.listen(PORT, '0.0.0.0', () => {
  console.log(`✅ Preview server running at http://0.0.0.0:${PORT}`);
  console.log(`📱 Use production URL: https://8dc9bd54.carejoa-kr.pages.dev`);
});

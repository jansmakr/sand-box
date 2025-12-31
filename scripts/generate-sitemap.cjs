/**
 * Sitemap 생성 스크립트
 * 배포된 사이트의 동적 라우트에서 데이터를 가져와 정적 sitemap을 생성합니다.
 */

const fs = require('fs');
const path = require('path');
const https = require('https');

const SITE_URL = 'https://carejoa.kr';

function fetchData(url) {
  return new Promise((resolve, reject) => {
    https.get(url, (res) => {
      let data = '';
      res.on('data', (chunk) => data += chunk);
      res.on('end', () => {
        if (res.statusCode === 200) {
          resolve(data);
        } else {
          reject(new Error(`HTTP ${res.statusCode}: ${data}`));
        }
      });
    }).on('error', reject);
  });
}

async function generateSitemap() {
  console.log('🚀 Sitemap 생성 시작...');
  console.log(`📡 사이트 URL: ${SITE_URL}`);
  
  try {
    // /static/facilities.json에서 모든 시설 데이터 가져오기
    console.log('\n📥 시설 데이터 로드 중...');
    console.log('  URL: /static/facilities.json');
    
    const facilitiesData = await fetchData(`${SITE_URL}/static/facilities.json`);
    const facilities = JSON.parse(facilitiesData);
    
    if (!facilities || facilities.length === 0) {
      console.error('❌ 시설 데이터가 없습니다.');
      console.log('💡 /static/facilities.json 파일을 확인해주세요.');
      process.exit(1);
    }
    
    console.log(`✅ 시설 데이터 로드 완료: ${facilities.length.toLocaleString()}개`);
    
    // Sitemap Index 생성
    console.log('\n📝 Sitemap Index 생성 중...');
    let sitemapIndex = '<?xml version="1.0" encoding="UTF-8"?>\n';
    sitemapIndex += '<sitemapindex xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n';
    sitemapIndex += '  <!-- 메인 Sitemap -->\n';
    sitemapIndex += '  <sitemap>\n';
    sitemapIndex += '    <loc>https://carejoa.kr/sitemap-main.xml</loc>\n';
    sitemapIndex += '    <lastmod>' + new Date().toISOString().split('T')[0] + '</lastmod>\n';
    sitemapIndex += '  </sitemap>\n';
    sitemapIndex += '  \n';
    sitemapIndex += '  <!-- 시설 Sitemap -->\n';
    sitemapIndex += '  <sitemap>\n';
    sitemapIndex += '    <loc>https://carejoa.kr/sitemap-facilities.xml</loc>\n';
    sitemapIndex += '    <lastmod>' + new Date().toISOString().split('T')[0] + '</lastmod>\n';
    sitemapIndex += '  </sitemap>\n';
    sitemapIndex += '</sitemapindex>\n';
    
    // Sitemap Main 생성
    console.log('📝 Sitemap Main 생성 중...');
    let sitemapMain = '<?xml version="1.0" encoding="UTF-8"?>\n';
    sitemapMain += '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n';
    sitemapMain += '  <!-- 메인 페이지 -->\n';
    sitemapMain += '  <url>\n';
    sitemapMain += '    <loc>https://carejoa.kr/</loc>\n';
    sitemapMain += '    <lastmod>' + new Date().toISOString().split('T')[0] + '</lastmod>\n';
    sitemapMain += '    <changefreq>daily</changefreq>\n';
    sitemapMain += '    <priority>1.0</priority>\n';
    sitemapMain += '  </url>\n';
    sitemapMain += '  \n';
    sitemapMain += '  <!-- 주요 페이지 -->\n';
    
    const mainPages = [
      { url: '/facilities', priority: '0.9', changefreq: 'daily' },
      { url: '/ai-matching', priority: '0.9', changefreq: 'daily' },
      { url: '/call-consultation', priority: '0.8', changefreq: 'weekly' },
      { url: '/quote-request', priority: '0.8', changefreq: 'weekly' },
      { url: '/quote-simple', priority: '0.8', changefreq: 'weekly' }
    ];
    
    mainPages.forEach(page => {
      sitemapMain += '  <url>\n';
      sitemapMain += `    <loc>https://carejoa.kr${page.url}</loc>\n`;
      sitemapMain += `    <lastmod>${new Date().toISOString().split('T')[0]}</lastmod>\n`;
      sitemapMain += `    <changefreq>${page.changefreq}</changefreq>\n`;
      sitemapMain += `    <priority>${page.priority}</priority>\n`;
      sitemapMain += '  </url>\n';
    });
    
    sitemapMain += '</urlset>\n';
    
    // Sitemap Facilities 생성
    console.log('📝 Sitemap Facilities 생성 중...');
    let sitemapFacilities = '<?xml version="1.0" encoding="UTF-8"?>\n';
    sitemapFacilities += '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n';
    
    facilities.forEach((facility, index) => {
      if (index % 5000 === 0 && index > 0) {
        console.log(`  진행 중... ${index.toLocaleString()}/${facilities.length.toLocaleString()}`);
      }
      
      sitemapFacilities += '  <url>\n';
      sitemapFacilities += `    <loc>https://carejoa.kr/facility/${facility.id}</loc>\n`;
      if (facility.updated_at) {
        const date = facility.updated_at.split('T')[0];
        sitemapFacilities += `    <lastmod>${date}</lastmod>\n`;
      }
      sitemapFacilities += '    <changefreq>monthly</changefreq>\n';
      sitemapFacilities += '    <priority>0.7</priority>\n';
      sitemapFacilities += '  </url>\n';
    });
    
    sitemapFacilities += '</urlset>\n';
    console.log(`✅ Sitemap Facilities 완료: ${facilities.length.toLocaleString()}개 URL`);
    
    // public 디렉토리에 저장
    const publicDir = path.join(__dirname, '../public');
    if (!fs.existsSync(publicDir)) {
      fs.mkdirSync(publicDir, { recursive: true });
    }
    
    fs.writeFileSync(path.join(publicDir, 'sitemap.xml'), sitemapIndex);
    fs.writeFileSync(path.join(publicDir, 'sitemap-main.xml'), sitemapMain);
    fs.writeFileSync(path.join(publicDir, 'sitemap-facilities.xml'), sitemapFacilities);
    
    console.log('\n✨ Sitemap 생성 완료!');
    console.log('📂 생성된 파일:');
    console.log('  - public/sitemap.xml (Index)');
    console.log('  - public/sitemap-main.xml (6개 메인 페이지)');
    console.log(`  - public/sitemap-facilities.xml (${facilities.length.toLocaleString()}개 시설)`);
    console.log('\n🌐 URL:');
    console.log('  - https://carejoa.kr/sitemap.xml');
    console.log('  - https://carejoa.kr/sitemap-main.xml');
    console.log('  - https://carejoa.kr/sitemap-facilities.xml');
    
    // 파일 크기 출력
    const sitemapIndexSize = (fs.statSync(path.join(publicDir, 'sitemap.xml')).size / 1024).toFixed(2);
    const sitemapMainSize = (fs.statSync(path.join(publicDir, 'sitemap-main.xml')).size / 1024).toFixed(2);
    const sitemapFacilitiesSize = (fs.statSync(path.join(publicDir, 'sitemap-facilities.xml')).size / 1024 / 1024).toFixed(2);
    
    console.log('\n📦 파일 크기:');
    console.log(`  - sitemap.xml: ${sitemapIndexSize} KB`);
    console.log(`  - sitemap-main.xml: ${sitemapMainSize} KB`);
    console.log(`  - sitemap-facilities.xml: ${sitemapFacilitiesSize} MB`);
    
    console.log('\n🎉 완료! 이제 빌드하고 배포하세요.');
    console.log('💡 다음 명령: npm run build && npx wrangler pages deploy dist --project-name carejoa-kr-auto');
    
  } catch (error) {
    console.error('\n❌ Sitemap 생성 중 오류:', error.message);
    console.error('\n💡 문제 해결:');
    console.error('  1. 사이트가 배포되어 있는지 확인: https://carejoa.kr');
    console.error('  2. /static/facilities.json 파일 확인');
    console.error('  3. 데이터베이스에 시설 데이터가 있는지 확인');
    process.exit(1);
  }
}

// 실행
generateSitemap().catch(error => {
  console.error('❌ 치명적 오류:', error);
  process.exit(1);
});

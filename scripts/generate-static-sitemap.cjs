/**
 * 정적 Sitemap 생성 스크립트 (빌드 시 실행)
 * public/static/facilities.json 파일에서 시설 데이터를 읽어 정적 sitemap.xml 파일들을 생성합니다.
 */

const fs = require('fs');
const path = require('path');

async function generateStaticSitemap() {
  console.log('🚀 정적 Sitemap 생성 시작...\n');
  
  try {
    // 1. 로컬 JSON 파일에서 시설 데이터 읽기
    console.log('📊 시설 데이터 로드 중 (public/static/facilities.json)...');
    const facilitiesPath = path.join(__dirname, '../public/static/facilities.json');
    
    if (!fs.existsSync(facilitiesPath)) {
      console.error('❌ facilities.json 파일을 찾을 수 없습니다!');
      console.log('⚠️  빈 sitemap만 생성합니다.');
      
      // 빈 sitemap-main.xml만 생성
      const staticPages = [
        { url: 'https://carejoa.kr/', priority: '1.0', changefreq: 'daily' },
        { url: 'https://carejoa.kr/facilities', priority: '0.9', changefreq: 'daily' },
        { url: 'https://carejoa.kr/ai-matching', priority: '0.9', changefreq: 'weekly' },
        { url: 'https://carejoa.kr/call-consultation', priority: '0.8', changefreq: 'weekly' },
        { url: 'https://carejoa.kr/signup', priority: '0.7', changefreq: 'monthly' },
        { url: 'https://carejoa.kr/haniwon-visit', priority: '0.7', changefreq: 'monthly' },
        { url: 'https://carejoa.kr/manager-consultation', priority: '0.7', changefreq: 'monthly' },
        { url: 'https://carejoa.kr/regional-consultation', priority: '0.7', changefreq: 'monthly' },
      ];
      
      let sitemapMain = '<?xml version="1.0" encoding="UTF-8"?>\n';
      sitemapMain += '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n';
      staticPages.forEach(page => {
        sitemapMain += '  <url>\n';
        sitemapMain += `    <loc>${page.url}</loc>\n`;
        sitemapMain += `    <lastmod>${new Date().toISOString().split('T')[0]}</lastmod>\n`;
        sitemapMain += `    <changefreq>${page.changefreq}</changefreq>\n`;
        sitemapMain += `    <priority>${page.priority}</priority>\n`;
        sitemapMain += '  </url>\n';
      });
      sitemapMain += '</urlset>';
      
      const publicDir = path.join(__dirname, '../public');
      fs.writeFileSync(path.join(publicDir, 'sitemap-main.xml'), sitemapMain);
      
      let sitemapIndex = '<?xml version="1.0" encoding="UTF-8"?>\n';
      sitemapIndex += '<sitemapindex xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n';
      sitemapIndex += '  <sitemap>\n';
      sitemapIndex += '    <loc>https://carejoa.kr/sitemap-main.xml</loc>\n';
      sitemapIndex += `    <lastmod>${new Date().toISOString().split('T')[0]}</lastmod>\n`;
      sitemapIndex += '  </sitemap>\n';
      sitemapIndex += '</sitemapindex>';
      fs.writeFileSync(path.join(publicDir, 'sitemap.xml'), sitemapIndex);
      
      console.log('\n✅ 기본 Sitemap 생성 완료');
      return;
    }
    
    const facilitiesData = fs.readFileSync(facilitiesPath, 'utf-8');
    const facilities = JSON.parse(facilitiesData);
    
    const totalFacilities = facilities.length;
    console.log(`✅ 총 시설 수: ${totalFacilities.toLocaleString()}개\n`);
    
    // 2. 페이지 수 계산
    const limit = 5000; // 페이지당 5,000개 (구글 크롤링 최적화)
    const totalPages = Math.ceil(totalFacilities / limit);
    console.log(`📄 총 페이지 수: ${totalPages}개 (페이지당 ${limit.toLocaleString()}개)\n`);
    
    // 3. 메인 sitemap.xml (인덱스) 생성
    console.log('📝 Sitemap Index 생성 중...');
    let sitemapIndex = '<?xml version="1.0" encoding="UTF-8"?>\n';
    sitemapIndex += '<sitemapindex xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n';
    
    // 메인 페이지 사이트맵
    sitemapIndex += '  <sitemap>\n';
    sitemapIndex += '    <loc>https://carejoa.kr/sitemap-main.xml</loc>\n';
    sitemapIndex += `    <lastmod>${new Date().toISOString().split('T')[0]}</lastmod>\n`;
    sitemapIndex += '  </sitemap>\n';
    
    // 시설 페이지 사이트맵들
    for (let i = 1; i <= totalPages; i++) {
      sitemapIndex += '  <sitemap>\n';
      sitemapIndex += `    <loc>https://carejoa.kr/sitemap-facilities-${i}.xml</loc>\n`;
      sitemapIndex += `    <lastmod>${new Date().toISOString().split('T')[0]}</lastmod>\n`;
      sitemapIndex += '  </sitemap>\n';
    }
    
    sitemapIndex += '</sitemapindex>';
    
    const publicDir = path.join(__dirname, '../public');
    if (!fs.existsSync(publicDir)) {
      fs.mkdirSync(publicDir, { recursive: true });
    }
    
    fs.writeFileSync(path.join(publicDir, 'sitemap.xml'), sitemapIndex);
    console.log('✅ sitemap.xml 생성 완료\n');
    
    // 4. sitemap-main.xml (정적 페이지들) 생성
    console.log('📝 Sitemap Main 생성 중...');
    const staticPages = [
      { url: 'https://carejoa.kr/', priority: '1.0', changefreq: 'daily' },
      { url: 'https://carejoa.kr/facilities', priority: '0.9', changefreq: 'daily' },
      { url: 'https://carejoa.kr/ai-matching', priority: '0.9', changefreq: 'weekly' },
      { url: 'https://carejoa.kr/call-consultation', priority: '0.8', changefreq: 'weekly' },
      { url: 'https://carejoa.kr/signup', priority: '0.7', changefreq: 'monthly' },
      { url: 'https://carejoa.kr/haniwon-visit', priority: '0.7', changefreq: 'monthly' },
      { url: 'https://carejoa.kr/manager-consultation', priority: '0.7', changefreq: 'monthly' },
      { url: 'https://carejoa.kr/regional-consultation', priority: '0.7', changefreq: 'monthly' },
    ];
    
    let sitemapMain = '<?xml version="1.0" encoding="UTF-8"?>\n';
    sitemapMain += '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n';
    
    staticPages.forEach(page => {
      sitemapMain += '  <url>\n';
      sitemapMain += `    <loc>${page.url}</loc>\n`;
      sitemapMain += `    <lastmod>${new Date().toISOString().split('T')[0]}</lastmod>\n`;
      sitemapMain += `    <changefreq>${page.changefreq}</changefreq>\n`;
      sitemapMain += `    <priority>${page.priority}</priority>\n`;
      sitemapMain += '  </url>\n';
    });
    
    sitemapMain += '</urlset>';
    
    fs.writeFileSync(path.join(publicDir, 'sitemap-main.xml'), sitemapMain);
    console.log('✅ sitemap-main.xml 생성 완료\n');
    
    // 5. 각 페이지별 시설 사이트맵 생성
    console.log('📝 시설 Sitemap 생성 중...');
    
    for (let page = 1; page <= totalPages; page++) {
      const offset = (page - 1) * limit;
      const pageFacilities = facilities.slice(offset, offset + limit);
      
      if (pageFacilities.length === 0) {
        console.log(`  ⚠️  페이지 ${page}: 시설 데이터 없음`);
        break;
      }
      
      console.log(`  ⏳ 페이지 ${page}/${totalPages} 처리 중... (${pageFacilities.length.toLocaleString()}개)`);
      
      // XML 생성
      let xml = '<?xml version="1.0" encoding="UTF-8"?>\n';
      xml += '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n';
      
      pageFacilities.forEach(facility => {
        xml += '  <url>\n';
        xml += `    <loc>https://carejoa.kr/facility/${facility.id}</loc>\n`;
        xml += `    <lastmod>${new Date().toISOString().split('T')[0]}</lastmod>\n`;
        xml += '    <changefreq>monthly</changefreq>\n';
        xml += '    <priority>0.7</priority>\n';
        xml += '  </url>\n';
      });
      
      xml += '</urlset>';
      
      const filename = `sitemap-facilities-${page}.xml`;
      fs.writeFileSync(path.join(publicDir, filename), xml);
      console.log(`  ✅ ${filename} 생성 완료 (${pageFacilities.length.toLocaleString()}개 URL)`);
    }
    
    console.log('\n🎉 모든 Sitemap 생성 완료!');
    console.log('\n📂 생성된 파일:');
    console.log('  - public/sitemap.xml (인덱스)');
    console.log('  - public/sitemap-main.xml (메인 페이지)');
    for (let i = 1; i <= totalPages; i++) {
      console.log(`  - public/sitemap-facilities-${i}.xml`);
    }
    
    console.log('\n🌐 URL:');
    console.log('  - https://carejoa.kr/sitemap.xml');
    console.log('  - https://carejoa.kr/sitemap-main.xml');
    for (let i = 1; i <= totalPages; i++) {
      console.log(`  - https://carejoa.kr/sitemap-facilities-${i}.xml`);
    }
    
    // 파일 크기 출력
    console.log('\n📦 파일 크기:');
    const sitemapStat = fs.statSync(path.join(publicDir, 'sitemap.xml'));
    const mainStat = fs.statSync(path.join(publicDir, 'sitemap-main.xml'));
    console.log(`  - sitemap.xml: ${(sitemapStat.size / 1024).toFixed(2)} KB`);
    console.log(`  - sitemap-main.xml: ${(mainStat.size / 1024).toFixed(2)} KB`);
    
    let totalSize = sitemapStat.size + mainStat.size;
    for (let i = 1; i <= totalPages; i++) {
      const fileStat = fs.statSync(path.join(publicDir, `sitemap-facilities-${i}.xml`));
      totalSize += fileStat.size;
      console.log(`  - sitemap-facilities-${i}.xml: ${(fileStat.size / 1024 / 1024).toFixed(2)} MB`);
    }
    console.log(`\n📊 총 크기: ${(totalSize / 1024 / 1024).toFixed(2)} MB`);
    
  } catch (error) {
    console.error('\n❌ Sitemap 생성 실패:', error.message);
    console.error(error.stack);
    process.exit(1);
  }
}

// 실행
generateStaticSitemap();

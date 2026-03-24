/**
 * 정적 Sitemap 생성 스크립트 (빌드 시 실행)
 * Cloudflare D1 프로덕션 DB에서 시설 데이터를 가져와 정적 sitemap.xml 파일들을 생성합니다.
 */

const fs = require('fs');
const path = require('path');

// wrangler d1 명령으로 데이터 가져오기
const { execSync } = require('child_process');

async function generateStaticSitemap() {
  console.log('🚀 정적 Sitemap 생성 시작...\n');
  
  try {
    // 1. 전체 시설 수 조회 (프로덕션 DB 사용)
    console.log('📊 시설 개수 조회 중 (프로덕션 DB)...');
    const countCmd = `npx wrangler d1 execute carejoa-production --command="SELECT COUNT(*) as count FROM facilities" --json`;
    const countOutput = execSync(countCmd, { encoding: 'utf-8' });
    
    // JSON 파싱
    let totalFacilities = 0;
    try {
      const countData = JSON.parse(countOutput);
      totalFacilities = countData[0]?.results?.[0]?.count || 0;
    } catch (e) {
      console.error('❌ 시설 개수 파싱 실패:', e.message);
      // 대체값으로 15396 사용
      totalFacilities = 15396;
      console.log(`⚠️  대체값 사용: ${totalFacilities.toLocaleString()}개`);
    }
    
    console.log(`✅ 총 시설 수: ${totalFacilities.toLocaleString()}개\n`);
    
    // 2. 페이지 수 계산
    const limit = 10000; // 페이지당 10,000개
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
    
    // 5. 각 페이지별 시설 사이트맵 생성 (프로덕션 DB 사용)
    console.log('📝 시설 Sitemap 생성 중 (프로덕션 DB)...');
    
    for (let page = 1; page <= totalPages; page++) {
      const offset = (page - 1) * limit;
      
      console.log(`  ⏳ 페이지 ${page}/${totalPages} 처리 중... (오프셋: ${offset.toLocaleString()})`);
      
      // 시설 ID 목록 조회 (프로덕션 DB)
      const facilitiesCmd = `npx wrangler d1 execute carejoa-production --command="SELECT id, updated_at FROM facilities ORDER BY id LIMIT ${limit} OFFSET ${offset}" --json`;
      
      let facilitiesOutput;
      try {
        facilitiesOutput = execSync(facilitiesCmd, { encoding: 'utf-8', timeout: 30000 });
      } catch (e) {
        console.error(`  ❌ 페이지 ${page} 데이터 조회 실패:`, e.message);
        continue;
      }
      
      // JSON 파싱
      let facilities = [];
      try {
        const jsonData = JSON.parse(facilitiesOutput);
        facilities = jsonData[0]?.results || [];
      } catch (e) {
        console.error(`  ❌ 페이지 ${page} JSON 파싱 실패:`, e.message);
        continue;
      }
      
      if (facilities.length === 0) {
        console.log(`  ⚠️  페이지 ${page}: 시설 데이터 없음`);
        break; // 더 이상 데이터가 없으면 중단
      }
      
      // XML 생성
      let xml = '<?xml version="1.0" encoding="UTF-8"?>\n';
      xml += '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n';
      
      facilities.forEach(facility => {
        xml += '  <url>\n';
        xml += `    <loc>https://carejoa.kr/facility/${facility.id}</loc>\n`;
        if (facility.updated_at) {
          const lastmod = facility.updated_at.split('T')[0];
          xml += `    <lastmod>${lastmod}</lastmod>\n`;
        }
        xml += '    <changefreq>monthly</changefreq>\n';
        xml += '    <priority>0.7</priority>\n';
        xml += '  </url>\n';
      });
      
      xml += '</urlset>';
      
      const filename = `sitemap-facilities-${page}.xml`;
      fs.writeFileSync(path.join(publicDir, filename), xml);
      console.log(`  ✅ ${filename} 생성 완료 (${facilities.length.toLocaleString()}개 URL)`);
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
    
  } catch (error) {
    console.error('\n❌ Sitemap 생성 실패:', error.message);
    console.error(error.stack);
    process.exit(1);
  }
}

// 실행
generateStaticSitemap();

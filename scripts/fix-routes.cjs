/**
 * _routes.json 수정 스크립트
 * Sitemap 파일들을 정적 파일로 제공하도록 설정
 */

const fs = require('fs');
const path = require('path');

const routesPath = path.join(__dirname, '../dist/_routes.json');

if (!fs.existsSync(routesPath)) {
  console.log('⚠️  _routes.json 파일이 없습니다.');
  process.exit(0);
}

const routes = JSON.parse(fs.readFileSync(routesPath, 'utf-8'));

// Sitemap 파일들을 exclude에 추가
if (!routes.exclude) {
  routes.exclude = [];
}

const filesToExclude = [
  '/robots.txt',
  '/sitemap.xml',
  '/sitemap-main.xml',
  '/sitemap-facilities.xml',
  '/static/*'
];

filesToExclude.forEach(file => {
  if (!routes.exclude.includes(file)) {
    routes.exclude.push(file);
  }
});

fs.writeFileSync(routesPath, JSON.stringify(routes, null, 2));

console.log('✅ _routes.json 수정 완료');
console.log('   Exclude:', routes.exclude.join(', '));

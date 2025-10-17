const { execSync } = require('child_process');
const fs = require('fs');

console.log('📊 데이터베이스에서 시설 정보 추출 중...');

// wrangler로 데이터 추출
const result = execSync('npx wrangler d1 execute carejoa-production --local --command="SELECT * FROM facilities" 2>&1', {
  encoding: 'utf-8',
  maxBuffer: 50 * 1024 * 1024 // 50MB
});

// JSON 파싱
const jsonMatch = result.match(/\[[\s\S]*"results"[\s\S]*\]/);
if (!jsonMatch) {
  console.error('❌ 데이터 추출 실패');
  process.exit(1);
}

const data = JSON.parse(jsonMatch[0]);
const facilities = data[0].results;

console.log(`✅ ${facilities.length}개 시설 데이터 추출 완료`);

// CSV 생성
const headers = ['ID', '시설유형', '시설명', '우편번호', '주소', '전화번호', '위도', '경도', '시도', '시군구', '비고'];
const csvRows = ['\uFEFF' + headers.join(',')];

facilities.forEach(f => {
  const row = [
    f.id || '',
    f.facility_type || '',
    `"${(f.name || '').replace(/"/g, '""')}"`,
    f.postal_code || '',
    `"${(f.address || '').replace(/"/g, '""')}"`,
    f.phone || '',
    f.latitude || 0,
    f.longitude || 0,
    f.sido || '',
    f.sigungu || '',
    `"${(f.notes || '').replace(/"/g, '""')}"`
  ];
  csvRows.push(row.join(','));
});

// 파일명 생성
const today = new Date().toISOString().split('T')[0];
const filename = `carejoa.kr_facilities_backup_${today}.csv`;

fs.writeFileSync(filename, csvRows.join('\n'), 'utf-8');

const sizeInMB = (fs.statSync(filename).size / 1024 / 1024).toFixed(2);
console.log(`✅ 백업 완료: ${filename}`);
console.log(`📦 파일 크기: ${sizeInMB} MB`);
console.log(`📍 위치: /home/user/webapp/${filename}`);

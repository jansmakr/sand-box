const Database = require('better-sqlite3');
const fs = require('fs');

// 로컬 D1 데이터베이스 찾기
const dbPath = '.wrangler/state/v3/d1';
const dbFiles = fs.readdirSync(dbPath, { recursive: true }).filter(f => f.endsWith('.sqlite'));

if (dbFiles.length === 0) {
  console.error('❌ 데이터베이스 파일을 찾을 수 없습니다');
  process.exit(1);
}

const fullPath = `${dbPath}/${dbFiles[0]}`;
console.log(`📂 데이터베이스: ${fullPath}`);

const db = new Database(fullPath, { readonly: true });

// 모든 시설 데이터 추출
const facilities = db.prepare('SELECT * FROM facilities').all();

console.log(`📊 총 ${facilities.length}개 시설 데이터 추출`);

// CSV 생성 (UTF-8 BOM 포함)
const headers = ['ID', '시설유형', '시설명', '우편번호', '주소', '전화번호', '위도', '경도', '시도', '시군구', '비고'];
const csvRows = ['\uFEFF' + headers.join(',')]; // UTF-8 BOM 추가

facilities.forEach(f => {
  const row = [
    f.id,
    f.facility_type,
    `"${(f.name || '').replace(/"/g, '""')}"`,
    f.postal_code || '',
    `"${(f.address || '').replace(/"/g, '""')}"`,
    f.phone || '',
    f.latitude,
    f.longitude,
    f.sido,
    f.sigungu,
    `"${(f.notes || '').replace(/"/g, '""')}"`
  ];
  csvRows.push(row.join(','));
});

// 오늘 날짜 생성
const today = new Date().toISOString().split('T')[0];
const filename = `carejoa.kr_facilities_backup_${today}.csv`;

fs.writeFileSync(filename, csvRows.join('\n'), 'utf-8');

console.log(`✅ 백업 완료: ${filename}`);
console.log(`📦 파일 크기: ${(fs.statSync(filename).size / 1024 / 1024).toFixed(2)} MB`);

db.close();

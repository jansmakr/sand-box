#!/usr/bin/env bash

# 대량 SQL을 작은 배치로 나누어 실행
# 사용법: ./bulk_insert_d1.sh [local|remote]

MODE=${1:-local}
DB_NAME="carejoa-production"
INPUT_DIR="migrations/batches"
BATCH_SIZE=100

echo "🚀 D1 대량 삽입 시작..."
echo "   데이터베이스: $DB_NAME"
echo "   모드: $MODE"
echo ""

# generated_details.json을 SQL 배치로 변환
echo "📦 배치 파일 생성 중..."
node << 'EOF'
const fs = require('fs');
const path = require('path');

const details = JSON.parse(fs.readFileSync('migrations/generated_details.json', 'utf8'));
const BATCH_SIZE = 100;
const OUTPUT_DIR = 'migrations/batches';

// 디렉토리 생성
if (!fs.existsSync(OUTPUT_DIR)) {
  fs.mkdirSync(OUTPUT_DIR, { recursive: true });
}

// 배치별로 SQL 생성
for (let i = 0; i < details.length; i += BATCH_SIZE) {
  const batch = details.slice(i, i + BATCH_SIZE);
  const batchNum = Math.floor(i / BATCH_SIZE) + 1;
  
  const sqls = batch.map(item => {
    const escape = (str) => String(str || '').replace(/'/g, "''");
    const specialties = JSON.stringify(item.specialties || []).replace(/'/g, "''");
    const admissionTypes = JSON.stringify(item.admissionTypes || []).replace(/'/g, "''");
    
    return `INSERT OR REPLACE INTO facility_details (facility_id, specialties, admission_types, monthly_cost, deposit, notes, updated_by, updated_at) VALUES (${item.facility_id}, '${specialties}', '${admissionTypes}', ${item.monthly_cost || 0}, ${item.deposit || 0}, '자동 생성', 'auto_generator', datetime('now'));`;
  });
  
  const filename = `batch_${String(batchNum).padStart(4, '0')}.sql`;
  fs.writeFileSync(path.join(OUTPUT_DIR, filename), sqls.join('\n'), 'utf8');
  
  if (batchNum % 10 === 0) {
    console.log(`   생성: ${batchNum}/${Math.ceil(details.length / BATCH_SIZE)}`);
  }
}

console.log(`✅ 배치 파일 생성 완료: ${Math.ceil(details.length / BATCH_SIZE)}개`);
EOF

# 생성된 배치 파일 실행
echo ""
echo "📤 배치 실행 중..."

SUCCESS=0
FAIL=0

for file in $INPUT_DIR/batch_*.sql; do
  BATCH_NAME=$(basename "$file")
  echo -n "   $BATCH_NAME... "
  
  if [ "$MODE" = "remote" ]; then
    npx wrangler d1 execute $DB_NAME --remote --file="$file" > /dev/null 2>&1
  else
    npx wrangler d1 execute $DB_NAME --local --file="$file" > /dev/null 2>&1
  fi
  
  if [ $? -eq 0 ]; then
    echo "✅"
    ((SUCCESS++))
  else
    echo "❌"
    ((FAIL++))
  fi
done

echo ""
echo "======================================"
echo "✅ 실행 완료!"
echo "   성공: $SUCCESS"
echo "   실패: $FAIL"
echo "======================================"

if [ $FAIL -gt 0 ]; then
  echo "⚠️  일부 배치가 실패했습니다."
  exit 1
fi

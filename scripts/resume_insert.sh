#!/bin/bash
DB_NAME="carejoa-production"
BATCH_DIR="migrations/batches_prod"
START_BATCH=139  # 6900 / 50 = 138, 다음은 139
TOTAL_BATCHES=316

echo "🔄 남은 배치 실행 시작... ($START_BATCH ~ $TOTAL_BATCHES)"
SUCCESS=0
FAIL=0

for i in $(seq -w $START_BATCH $TOTAL_BATCHES); do
  file="$BATCH_DIR/batch_$i.sql"
  
  if [ ! -f "$file" ]; then
    echo "⚠️  파일 없음: $file"
    continue
  fi
  
  npx wrangler d1 execute $DB_NAME --remote --file="$file" > /dev/null 2>&1
  
  if [ $? -eq 0 ]; then
    ((SUCCESS++))
    if [ $((SUCCESS % 10)) -eq 0 ]; then
      echo "📈 진행: $((START_BATCH + SUCCESS - 1))/$TOTAL_BATCHES"
    fi
  else
    ((FAIL++))
    echo "❌ 실패: batch_$i"
  fi
done

echo "✅ 완료: 성공 $SUCCESS, 실패 $FAIL"

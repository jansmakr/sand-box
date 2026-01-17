#!/usr/bin/env bash

# 프로덕션 D1에 전체 배치 실행
# 사용법: ./insert_all_batches_prod.sh

DB_NAME="carejoa-production"
BATCH_DIR="migrations/batches_prod"
TOTAL_BATCHES=$(ls -1 $BATCH_DIR/batch_*.sql 2>/dev/null | wc -l)

echo "🚀 프로덕션 D1 대량 삽입 시작..."
echo "   데이터베이스: $DB_NAME"
echo "   총 배치: $TOTAL_BATCHES개"
echo "   예상 시간: 약 $(($TOTAL_BATCHES * 5 / 60))분"
echo ""

if [ "$TOTAL_BATCHES" -eq 0 ]; then
  echo "❌ 배치 파일을 찾을 수 없습니다: $BATCH_DIR"
  exit 1
fi

SUCCESS=0
FAIL=0
START_TIME=$(date +%s)

for file in $BATCH_DIR/batch_*.sql; do
  BATCH_NAME=$(basename "$file" .sql)
  BATCH_NUM=${BATCH_NAME#batch_}
  
  # 진행률 표시 (10배치마다)
  if [ $((10#$BATCH_NUM % 10)) -eq 0 ] || [ $BATCH_NUM = "0001" ]; then
    PROGRESS=$((SUCCESS * 100 / TOTAL_BATCHES))
    ELAPSED=$(($(date +%s) - START_TIME))
    AVG_TIME=$((ELAPSED / (SUCCESS + 1)))
    REMAINING=$(((TOTAL_BATCHES - SUCCESS) * AVG_TIME / 60))
    echo "📈 진행률: $PROGRESS% ($SUCCESS/$TOTAL_BATCHES) | 남은 시간: 약 ${REMAINING}분"
  fi
  
  # 배치 실행
  npx wrangler d1 execute $DB_NAME --remote --file="$file" > /dev/null 2>&1
  
  if [ $? -eq 0 ]; then
    ((SUCCESS++))
  else
    ((FAIL++))
    echo "❌ 실패: $BATCH_NAME"
  fi
done

TOTAL_TIME=$(($(date +%s) - START_TIME))

echo ""
echo "======================================"
echo "✅ 실행 완료!"
echo "   성공: $SUCCESS"
echo "   실패: $FAIL"
echo "   성공률: $((SUCCESS * 100 / TOTAL_BATCHES))%"
echo "   소요 시간: $((TOTAL_TIME / 60))분 $((TOTAL_TIME % 60))초"
echo "======================================"

if [ $FAIL -gt 0 ]; then
  echo "⚠️  $FAIL개 배치가 실패했습니다."
  exit 1
fi

echo ""
echo "🎉 모든 데이터가 성공적으로 삽입되었습니다!"

#!/bin/bash

# ================================================================
# Cloudflare D1 배치 실행 스크립트
# ================================================================
# 용도: 22,541개 시설 평가등급 데이터를 프로덕션 DB에 삽입
# 파일: 226개 배치 SQL 파일
# 작성일: 2026-05-07
# ================================================================

# 설정
DB_NAME="carejoa-production"
BATCH_DIR="./migrations/batches_ratings"
LOG_DIR="./logs"
LOG_FILE="$LOG_DIR/execution_$(date +%Y%m%d_%H%M%S).log"

# 디렉토리 생성
mkdir -p "$LOG_DIR" "$BATCH_DIR/success" "$BATCH_DIR/failed"

echo "================================================================" | tee -a "$LOG_FILE"
echo "Cloudflare D1 배치 실행 시작: $(date)" | tee -a "$LOG_FILE"
echo "================================================================" | tee -a "$LOG_FILE"
echo "Database: $DB_NAME" | tee -a "$LOG_FILE"
echo "Total batches: 226" | tee -a "$LOG_FILE"
echo "Expected records: 22,541" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# 카운터 초기화
SUCCESS_COUNT=0
FAILED_COUNT=0
START_TIME=$(date +%s)

# 배치 파일 순차 실행
for i in $(seq -f "%03g" 1 226); do
    FILE="batch_${i}.sql"
    FULL_PATH="$BATCH_DIR/$FILE"
    
    # 파일 존재 확인
    if [ ! -f "$FULL_PATH" ]; then
        echo "[SKIP] $FILE not found" | tee -a "$LOG_FILE"
        continue
    fi
    
    # 진행률 계산
    PROGRESS=$((i * 100 / 226))
    echo "[$(date +%H:%M:%S)] [$PROGRESS%] Processing $FILE ($i/226)..." | tee -a "$LOG_FILE"
    
    # Wrangler D1 실행
    npx wrangler d1 execute "$DB_NAME" --remote --file="$FULL_PATH" >> "$LOG_FILE" 2>&1
    
    if [ $? -eq 0 ]; then
        echo "  ✅ SUCCESS" | tee -a "$LOG_FILE"
        mv "$FULL_PATH" "$BATCH_DIR/success/"
        SUCCESS_COUNT=$((SUCCESS_COUNT + 1))
    else
        echo "  ❌ FAILED" | tee -a "$LOG_FILE"
        mv "$FULL_PATH" "$BATCH_DIR/failed/"
        FAILED_COUNT=$((FAILED_COUNT + 1))
        
        # 5회 이상 연속 실패 시 중단
        if [ $FAILED_COUNT -ge 5 ]; then
            echo "" | tee -a "$LOG_FILE"
            echo "❌ 5회 이상 실패로 배치 중단" | tee -a "$LOG_FILE"
            echo "실패한 파일을 확인하세요: $BATCH_DIR/failed/" | tee -a "$LOG_FILE"
            exit 1
        fi
    fi
    
    # API 레이트 리밋 방지 (Cloudflare API 제한 고려)
    sleep 1
done

# 실행 시간 계산
END_TIME=$(date +%s)
DURATION=$((END_TIME - START_TIME))
DURATION_MIN=$((DURATION / 60))
DURATION_SEC=$((DURATION % 60))

echo "" | tee -a "$LOG_FILE"
echo "================================================================" | tee -a "$LOG_FILE"
echo "배치 실행 완료: $(date)" | tee -a "$LOG_FILE"
echo "================================================================" | tee -a "$LOG_FILE"
echo "성공: $SUCCESS_COUNT / 실패: $FAILED_COUNT / 총: 226" | tee -a "$LOG_FILE"
echo "실행 시간: ${DURATION_MIN}분 ${DURATION_SEC}초" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# 검증 쿼리 실행
echo "=== 데이터 검증 ===" | tee -a "$LOG_FILE"
echo "총 레코드 수 확인..." | tee -a "$LOG_FILE"
npx wrangler d1 execute "$DB_NAME" --remote \
    --command="SELECT COUNT(*) as total FROM facility_public_data" | tee -a "$LOG_FILE"

echo "" | tee -a "$LOG_FILE"
echo "등급별 분포 확인..." | tee -a "$LOG_FILE"
npx wrangler d1 execute "$DB_NAME" --remote \
    --command="SELECT grade_value, COUNT(*) as count FROM facility_public_data GROUP BY grade_value ORDER BY grade_value" | tee -a "$LOG_FILE"

echo "" | tee -a "$LOG_FILE"
echo "✅ 배치 실행이 완료되었습니다!" | tee -a "$LOG_FILE"
echo "로그 파일: $LOG_FILE" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "다음 단계:" | tee -a "$LOG_FILE"
echo "1. 웹사이트에서 평가등급 뱃지 확인: https://carejoa.kr/facilities" | tee -a "$LOG_FILE"
echo "2. 시설 상세 페이지 확인: https://carejoa.kr/facility/1" | tee -a "$LOG_FILE"
echo "3. AI 매칭 정확도 향상 확인: https://carejoa.kr/ai-matching" | tee -a "$LOG_FILE"

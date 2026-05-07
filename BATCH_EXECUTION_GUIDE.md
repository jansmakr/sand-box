# 🚀 평가등급 데이터 프로덕션 배치 실행 가이드

본 가이드는 원격지 환경(샌드박스 등)에서 프로덕션 DB로 직접 배치 실행 시 발생하는 **네트워크 지연(Latency) 문제**를 극복하고, **226개의 배치 파일(총 22,541개 데이터)**을 안정적이고 빠르게 실행하기 위한 실무 최적화 프로세스를 다룹니다.

**작성일**: 2026-05-07  
**상태**: 배치 파일 준비 완료 (226개)  
**데이터**: 22,541개 시설 평가등급  

---

## ⚠️ 1. 현황 및 핵심 제약사항

### 현재 상황
* **데이터 규모**: 22,541개 시설 평가등급 데이터
* **배치 파일 수**: 226개 분할 SQL 파일 (총 23MB)
* **위치**: `/home/user/webapp/migrations/batches_ratings/`

### 문제점 분석
1. **네트워크 RTT(Round Trip Time)**: 샌드박스 → 프로덕션 DB 간 네트워크 지연
2. **연결 오버헤드**: 226회의 독립적인 DB 연결 시도
3. **타임아웃 발생**: 각 배치당 2분 제한으로 대용량 처리 불가
4. **프로덕션 부하**: 외부에서의 지속적인 DB 접근이 실시간 서비스에 영향

### 예상 소요 시간
| 환경 | 예상 시간 | 비고 |
|------|-----------|------|
| 샌드박스 → 프로덕션 (현재) | 3~4시간 | ❌ 타임아웃 위험 높음 |
| Bastion/App 서버 → 프로덕션 | 10~15분 | ✅ **권장** |
| 로컬 PC → 프로덕션 | 20~30분 | ✅ 안정적 |

---

## 🛠️ 2. 실용적 해결 전략

### 전략 A: 네트워크 레이턴시 제거 (Data Locality) ⭐ 최우선
DB와 동일한 네트워크 내부(VPC)에서 배치 실행
* **방법**: DB와 1ms 이하 지연을 가진 내부 서버 활용
* **대상**: Bastion 호스트, Application 서버, 또는 Cloudflare Worker 내부
* **효과**: 네트워크 왕복 시간 제거 → 속도 10~20배 향상

### 전략 B: 병렬 처리 및 일괄 실행
226개 파일을 효율적으로 처리
* **방법**: 파일별 순차 실행 → 5~10개 동시 병렬 처리
* **주의**: DB Connection Pool 크기 고려
* **효과**: 실행 시간 단축, CPU 사용률 최적화

### 전략 C: 이력 관리 및 재시도 메커니즘
실패 시 복구 가능한 구조
* **방법**: 성공/실패 파일을 별도 폴더로 이동
* **효과**: 중단 시점부터 재개 가능 (Idempotency)

---

## 🏃‍♂️ 3. 단계별 실행 절차

### 📦 1단계: 배치 파일 패키징 및 전송

#### Cloudflare Workers/Pages 환경 (권장)
Cloudflare D1은 내부 네트워크로 최적화되어 있으므로, **로컬 환경에서 Wrangler CLI로 직접 실행**하는 것이 가장 빠릅니다.

```bash
# [로컬 PC] GitHub에서 클론
git clone https://github.com/jansmakr/sand-box.git
cd sand-box

# Wrangler 로그인
npx wrangler login
```

#### 일반 서버 환경
```bash
# [로컬/샌드박스] 배치 파일 압축
cd /home/user/webapp
tar -czf evaluation_batches.tar.gz migrations/batches_ratings/

# [로컬] Bastion/App 서버로 전송
scp evaluation_batches.tar.gz user@bastion-server:/tmp/
```

---

### 🔧 2단계: 실행 환경 준비

```bash
# [운영 서버] 압축 해제
cd /tmp
tar -xzf evaluation_batches.tar.gz
cd migrations/batches_ratings/

# 이력 관리 디렉토리 생성
mkdir -p success failed logs
```

---

### 🚀 3단계: 자동화 실행 스크립트 작성

#### Cloudflare D1용 스크립트 (`run_batches_cloudflare.sh`)

```bash
#!/bin/bash

# 설정
DB_NAME="carejoa-production"
LOG_FILE="./logs/execution_$(date +%Y%m%d_%H%M%S).log"
BATCH_DIR="./migrations/batches_ratings"

echo "=== Cloudflare D1 배치 실행 시작: $(date) ===" | tee -a "$LOG_FILE"
echo "Database: $DB_NAME" | tee -a "$LOG_FILE"
echo "Total batches: 226" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# 카운터 초기화
SUCCESS_COUNT=0
FAILED_COUNT=0

# 배치 파일 순차 실행
for i in {001..226}; do
    FILE="batch_${i}.sql"
    FULL_PATH="$BATCH_DIR/$FILE"
    
    # 파일 존재 확인
    if [ ! -f "$FULL_PATH" ]; then
        echo "[SKIP] $FILE not found" | tee -a "$LOG_FILE"
        continue
    fi
    
    echo "[$(date +%H:%M:%S)] Processing $FILE ($((i))/226)..." | tee -a "$LOG_FILE"
    
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
            echo "❌ 5회 이상 실패로 배치 중단" | tee -a "$LOG_FILE"
            exit 1
        fi
    fi
    
    # API 레이트 리밋 방지
    sleep 1
done

echo "" | tee -a "$LOG_FILE"
echo "=== 배치 실행 완료: $(date) ===" | tee -a "$LOG_FILE"
echo "성공: $SUCCESS_COUNT / 실패: $FAILED_COUNT" | tee -a "$LOG_FILE"
```

#### MySQL/PostgreSQL용 스크립트 (`run_batches_sql.sh`)

```bash
#!/bin/bash

# DB 접속 정보
DB_HOST="prod-db-endpoint.rds.amazonaws.com"
DB_USER="prod_user"
DB_NAME="production_db"
# 비밀번호는 환경변수로 설정: export DB_PASS="your_password"

LOG_FILE="./logs/execution_$(date +%Y%m%d_%H%M%S).log"

echo "=== 배치 실행 시작: $(date) ===" | tee -a "$LOG_FILE"

for file in batch_*.sql; do
    [ -e "$file" ] || continue
    
    echo "[$(date +%H:%M:%S)] Processing $file..." | tee -a "$LOG_FILE"
    
    # MySQL 실행
    mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < "$file" 2>> "$LOG_FILE"
    
    if [ $? -eq 0 ]; then
        echo "  ✅ SUCCESS" | tee -a "$LOG_FILE"
        mv "$file" ./success/
    else
        echo "  ❌ FAILED" | tee -a "$LOG_FILE"
        mv "$file" ./failed/
    fi
    
    sleep 0.1
done

echo "=== 배치 실행 완료: $(date) ===" | tee -a "$LOG_FILE"
```

---

### ✅ 4단계: 드라이 런 및 검증

```bash
# 첫 3개 배치만 테스트
for i in {001..003}; do
    echo "Testing batch_${i}.sql..."
    npx wrangler d1 execute carejoa-production --remote \
        --file="migrations/batches_ratings/batch_${i}.sql"
done

# 결과 확인
npx wrangler d1 execute carejoa-production --remote \
    --command="SELECT COUNT(*) as inserted FROM facility_public_data"
# 예상: 300개 (3 배치 × 100개)
```

---

### 🎯 5단계: 본 배치 실행

```bash
# 백그라운드로 안전하게 실행
nohup bash run_batches_cloudflare.sh > ./logs/nohup.log 2>&1 &

# 프로세스 ID 저장
echo $! > batch_process.pid

# 실시간 로그 확인
tail -f ./logs/nohup.log
```

---

## 📊 4. 실행 후 검증

### 데이터 확인 쿼리

```bash
# 1. 총 레코드 수
npx wrangler d1 execute carejoa-production --remote \
    --command="SELECT COUNT(*) as total FROM facility_public_data"
# 예상: 22,541개

# 2. 등급별 분포
npx wrangler d1 execute carejoa-production --remote \
    --command="SELECT grade_value, COUNT(*) as count FROM facility_public_data GROUP BY grade_value ORDER BY grade_value"
# 예상: A(~3,000), B(~8,000), C(~7,000), D(~3,000), E(~1,500)

# 3. 시설 매칭 샘플
npx wrangler d1 execute carejoa-production --remote \
    --command="SELECT f.name, f.sido, f.sigungu, fpd.grade_value FROM facilities f LEFT JOIN facility_public_data fpd ON f.id = fpd.facility_id WHERE fpd.grade_value IS NOT NULL LIMIT 10"
```

### 웹사이트 확인

배치 완료 후 다음 페이지에서 평가등급 뱃지 표시 확인:

1. **시설 상세**: https://carejoa.kr/facility/1
   - 시설명 옆 "🏆 공단평가 A등급" 뱃지
   
2. **전국 시설 검색**: https://carejoa.kr/facilities
   - 평가등급 필터 작동
   - 각 시설 카드에 등급 뱃지

---

## 🚨 5. 긴급 대응 및 트러블슈팅

### CPU 사용률 급증 시
```bash
# 프로세스 일시 정지
kill -STOP $(cat batch_process.pid)

# DB 상태 확인 후 재개
kill -CONT $(cat batch_process.pid)
```

### 중간 실패 시 복구
```bash
# 실패한 배치만 재실행
cd migrations/batches_ratings/failed/
for file in *.sql; do
    echo "Retry: $file"
    npx wrangler d1 execute carejoa-production --remote --file="$file"
    [ $? -eq 0 ] && mv "$file" ../success/
done
```

### API 레이트 리밋 발생 시
```bash
# 스크립트에서 sleep 시간 증가
sed -i 's/sleep 1/sleep 3/g' run_batches_cloudflare.sh
```

---

## 💡 6. 최적화 팁

### 병렬 처리 (고급)
```bash
# GNU parallel 사용 (5개 동시 실행)
ls batch_*.sql | parallel -j 5 \
    'npx wrangler d1 execute carejoa-production --remote --file={}'
```

### 진행률 표시
```bash
# pv 명령어로 진행률 표시
find . -name "batch_*.sql" | pv -l -s 226 | \
    xargs -I {} npx wrangler d1 execute carejoa-production --remote --file={}
```

---

## 📈 7. 성능 비교

| 방식 | 환경 | 시간 | 안정성 | 권장도 |
|------|------|------|--------|--------|
| 샌드박스 직접 실행 | 원격 | 3~4시간 | ❌ 낮음 | ⛔ 비권장 |
| 로컬 PC → Wrangler | VPN | 20~30분 | ✅ 높음 | ⭐⭐⭐ 권장 |
| Bastion 서버 | 내부망 | 10~15분 | ✅ 매우 높음 | ⭐⭐⭐⭐⭐ 최고 |
| GitHub Actions CI/CD | 자동화 | 30~40분 | ✅ 높음 | ⭐⭐⭐⭐ 추천 |

---

## 🎯 8. 권장 실행 방법 요약

### 즉시 실행 (개인 PC에서)
```bash
# 1. 프로젝트 클론
git clone https://github.com/jansmakr/sand-box.git
cd sand-box

# 2. Wrangler 로그인
npx wrangler login

# 3. 배치 실행 스크립트 복사
chmod +x run_batches_cloudflare.sh

# 4. 백그라운드 실행
nohup bash run_batches_cloudflare.sh &

# 5. 진행 확인
tail -f logs/nohup.log
```

### 프로덕션 서버에서 (최적)
1. **Bastion 서버 접속**
2. **배치 파일 전송** (SCP/SFTP)
3. **내부 네트워크에서 실행** → 10~15분 완료
4. **검증 후 배포**

---

**작성일**: 2026-05-07  
**최종 수정**: 2026-05-07  
**상태**: 배치 실행 준비 완료  
**GitHub**: https://github.com/jansmakr/sand-box

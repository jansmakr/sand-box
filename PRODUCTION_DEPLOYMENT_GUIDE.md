# 🚀 케어조아 프로덕션 배포 가이드

## 📋 목차
1. [프로덕션 배치 실행](#프로덕션-배치-실행)
2. [Cloudflare Pages 배포](#cloudflare-pages-배포)
3. [환경 변수 설정](#환경-변수-설정)
4. [배포 후 검증](#배포-후-검증)
5. [문제 해결](#문제-해결)

---

## 🗄️ 프로덕션 배치 실행

### 1. 배치 파일 개요
- **위치**: `migrations/batches_ratings/`
- **파일 수**: 226개 (batch_001.sql ~ batch_226.sql)
- **데이터**: 22,541개 시설의 평가등급 정보
- **예상 실행 시간**: 20~30분

### 2. 자동 배치 실행 (추천)

```bash
# 1. 프로젝트 디렉토리로 이동
cd /home/user/webapp

# 2. 배치 스크립트 실행 (자동으로 226개 파일 실행)
bash scripts/import-ratings-batch.sh

# 3. 실행 로그 확인
tail -f import-ratings.log
```

### 3. 수동 배치 실행

개별 배치를 수동으로 실행하려면:

```bash
# 단일 배치 실행
npx wrangler d1 execute carejoa-production \
  --file="migrations/batches_ratings/batch_001.sql"

# 여러 배치 실행 (예: 1~10번)
for i in {001..010}; do
  echo "Processing batch_${i}.sql..."
  npx wrangler d1 execute carejoa-production \
    --file="migrations/batches_ratings/batch_${i}.sql"
  sleep 1  # API 레이트 리밋 방지
done

# 전체 배치 실행
for i in {001..226}; do
  echo "Processing batch_${i}.sql..."
  npx wrangler d1 execute carejoa-production \
    --file="migrations/batches_ratings/batch_${i}.sql"
  sleep 1
done
```

### 4. 로컬 테스트 (선택사항)

프로덕션 배포 전 로컬 DB에서 테스트:

```bash
# 로컬 DB 초기화
rm -rf .wrangler/state/v3/d1

# 마이그레이션 적용
npx wrangler d1 migrations apply carejoa-production --local

# 배치 실행 (로컬)
for i in {001..226}; do
  npx wrangler d1 execute carejoa-production --local \
    --file="migrations/batches_ratings/batch_${i}.sql"
done
```

### 5. 배치 실행 검증

```bash
# 1. facility_public_data 테이블 레코드 수 확인
npx wrangler d1 execute carejoa-production \
  --command="SELECT COUNT(*) as total FROM facility_public_data"
# 예상 결과: total = 22,541

# 2. 등급별 분포 확인
npx wrangler d1 execute carejoa-production \
  --command="SELECT grade_value, COUNT(*) as count FROM facility_public_data GROUP BY grade_value ORDER BY grade_value"
# 예상 결과:
# A: ~3,000개
# B: ~8,000개
# C: ~7,000개
# D: ~3,000개
# E: ~1,500개

# 3. 시설 매칭 확인 (JOIN 테스트)
npx wrangler d1 execute carejoa-production \
  --command="SELECT COUNT(*) FROM facilities f INNER JOIN facility_public_data fpd ON f.id = fpd.facility_id"
```

---

## ☁️ Cloudflare Pages 배포

### 1. 사전 준비

```bash
# 1. Cloudflare API 토큰 설정 확인
npx wrangler whoami

# 2. 프로젝트 빌드
npm run build

# 3. 빌드 결과 확인
ls -lh dist/
# 예상: _worker.js (약 965KB), _routes.json, public 폴더
```

### 2. 프로덕션 배포

```bash
# 1. Cloudflare Pages 배포
npx wrangler pages deploy dist --project-name carejoa

# 2. 배포 완료 후 URL 확인
# Production: https://carejoa.pages.dev
# Branch: https://main.carejoa.pages.dev
```

### 3. 커스텀 도메인 설정 (선택사항)

```bash
# 커스텀 도메인 추가
npx wrangler pages domain add carejoa.kr --project-name carejoa

# 도메인 목록 확인
npx wrangler pages domain list --project-name carejoa
```

---

## 🔐 환경 변수 설정

### 1. Cloudflare Pages 환경 변수

```bash
# API 키 설정 (예시)
npx wrangler pages secret put API_KEY --project-name carejoa
# 프롬프트: Enter secret value: [YOUR_API_KEY]

# 환경 변수 목록 확인
npx wrangler pages secret list --project-name carejoa
```

### 2. D1 데이터베이스 바인딩 확인

`wrangler.jsonc` 파일에서 확인:

```jsonc
{
  "name": "carejoa",
  "d1_databases": [
    {
      "binding": "DB",
      "database_name": "carejoa-production",
      "database_id": "your-database-id"
    }
  ]
}
```

---

## ✅ 배포 후 검증

### 1. 웹사이트 접속 테스트

```bash
# 메인 페이지
curl -I https://carejoa.pages.dev

# API 엔드포인트 테스트
curl https://carejoa.pages.dev/api/facilities?limit=5

# 시설 상세 페이지 (평가등급 뱃지 확인)
curl https://carejoa.pages.dev/facility/1
```

### 2. 평가등급 기능 확인

브라우저에서 다음을 확인:

1. **전국 시설 검색** (`/facilities`)
   - 평가등급 필터 드롭다운 존재 확인
   - A등급 필터 적용 시 A등급 시설만 표시
   - 시설 카드에 평가등급 뱃지 표시 확인

2. **시설 상세 페이지** (`/facility/[id]`)
   - 건강보험공단 평가등급 뱃지 표시 확인
   - A~E 등급별 색상 코딩 확인

3. **AI 매칭** (`/ai-matching`)
   - 추천 점수에 평가등급 반영 확인
   - 콘솔 로그에서 등급 점수 출력 확인

### 3. 성능 테스트

```bash
# 페이지 로딩 속도
time curl -o /dev/null -s https://carejoa.pages.dev

# API 응답 시간
time curl -o /dev/null -s https://carejoa.pages.dev/api/facilities
```

---

## 🔧 문제 해결

### 1. 배치 실행 실패

**문제**: `Error: D1 execute failed`

**해결 방법**:
```bash
# 1. Wrangler 업데이트
npm install -g wrangler@latest

# 2. 데이터베이스 연결 확인
npx wrangler d1 list

# 3. 개별 배치 재실행
npx wrangler d1 execute carejoa-production \
  --file="migrations/batches_ratings/batch_XXX.sql"
```

### 2. 배포 실패

**문제**: `Error: Failed to publish`

**해결 방법**:
```bash
# 1. 빌드 파일 삭제 후 재빌드
rm -rf dist .wrangler
npm run build

# 2. Cloudflare 인증 확인
npx wrangler whoami

# 3. 재배포
npx wrangler pages deploy dist --project-name carejoa
```

### 3. 평가등급 데이터 표시 안 됨

**문제**: 평가등급 뱃지가 표시되지 않음

**해결 방법**:
```bash
# 1. DB 데이터 확인
npx wrangler d1 execute carejoa-production \
  --command="SELECT * FROM facility_public_data LIMIT 10"

# 2. JOIN 쿼리 테스트
npx wrangler d1 execute carejoa-production \
  --command="SELECT f.name, fpd.grade_value FROM facilities f LEFT JOIN facility_public_data fpd ON f.id = fpd.facility_id LIMIT 10"

# 3. 배치 재실행
bash scripts/import-ratings-batch.sh
```

### 4. API 응답 느림

**문제**: `/api/facilities` 응답 시간이 느림

**해결 방법**:
```bash
# 1. 인덱스 추가
npx wrangler d1 execute carejoa-production \
  --command="CREATE INDEX IF NOT EXISTS idx_facility_public_data_facility_id ON facility_public_data(facility_id)"

# 2. 쿼리 최적화 확인
npx wrangler d1 execute carejoa-production \
  --command="EXPLAIN QUERY PLAN SELECT * FROM facilities f LEFT JOIN facility_public_data fpd ON f.id = fpd.facility_id LIMIT 10"
```

---

## 📊 배포 체크리스트

### 배포 전
- [ ] 로컬 테스트 완료
- [ ] 빌드 성공 확인 (`npm run build`)
- [ ] Git 커밋 및 푸시 완료
- [ ] 배치 파일 존재 확인 (`migrations/batches_ratings/`)

### 배포 중
- [ ] 배치 실행 완료 (226개)
- [ ] DB 데이터 검증 (22,541개 레코드)
- [ ] Cloudflare Pages 배포 성공
- [ ] 환경 변수 설정 완료

### 배포 후
- [ ] 메인 페이지 접속 확인
- [ ] 평가등급 필터 동작 확인
- [ ] 평가등급 뱃지 표시 확인
- [ ] AI 매칭 스코어링 확인
- [ ] 성능 테스트 완료
- [ ] 에러 로그 확인

---

## 📞 지원

- **GitHub**: https://github.com/jansmakr/sand-box
- **Cloudflare Docs**: https://developers.cloudflare.com/pages/
- **Wrangler Docs**: https://developers.cloudflare.com/workers/wrangler/

---

**최종 업데이트**: 2026-05-07

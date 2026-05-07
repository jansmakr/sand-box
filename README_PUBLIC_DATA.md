# 공공데이터 평가등급 통합 완료 ✅

## 📊 완료된 작업

### 1️⃣ 데이터 수집
- **국민건강보험공단_장기요양기관 평가 결과** (2024년 12월 기준)
- **총 22,541개** 시설 평가등급 데이터 파싱 완료
- 평가등급 (A~E), 평가점수, 시설코드(admin_sym) 포함

### 2️⃣ 데이터 처리
- 226개 배치 SQL 파일 생성 (`migrations/batches_ratings/`)
- 기존 케어조아 시설과 매칭 로직 구현
- 신규 시설 자동 추가 기능

### 3️⃣ GitHub 업로드
- ✅ 모든 코드 커밋 완료
- ✅ 평가등급 데이터 및 스크립트 포함
- ✅ Repository: https://github.com/jansmakr/sand-box

---

## 🚀 프로덕션 환경에서 실행 방법

### 방법 1: 자동 배치 실행 (추천)
```bash
# 전체 배치 자동 실행
bash scripts/import-ratings-batch.sh
```

### 방법 2: 수동 배치 실행
```bash
# 배치별 개별 실행 (1~226)
npx wrangler d1 execute carejoa-production --local --file="migrations/batches_ratings/batch_001.sql"
npx wrangler d1 execute carejoa-production --local --file="migrations/batches_ratings/batch_002.sql"
# ... 226개 배치
```

### 방법 3: 프로덕션 DB 직접 실행
```bash
# --local 플래그 제거하여 프로덕션 DB에 직접 적용
for file in migrations/batches_ratings/batch_*.sql; do
  npx wrangler d1 execute carejoa-production --file="$file"
done
```

---

## 📈 예상 결과

실행 후 다음과 같은 결과를 얻을 수 있습니다:

```sql
-- 평가등급이 있는 시설 수
SELECT COUNT(*) FROM facilities WHERE admin_sym IS NOT NULL;
-- 예상: 22,541개

-- 평가등급별 분포
SELECT grade_value, COUNT(*) as count 
FROM facility_public_data 
GROUP BY grade_value 
ORDER BY grade_value;
-- 예상: A, B, C, D, E 등급별 시설 수
```

---

## 🔧 데이터 구조

### `facilities` 테이블
- `admin_sym` 컬럼 추가 (시설 코드, 11자리)
- 기존 시설 업데이트 + 신규 시설 추가

### `facility_public_data` 테이블
- `facility_id` (FK → facilities.id)
- `admin_sym` (시설 코드)
- `grade_year` (평가 연도: 2024)
- `grade_value` (평가 등급: A~E)
- `last_updated` (최종 업데이트 시간)

---

## 📋 파일 목록

### 스크립트
- `scripts/import-ratings.cjs` - CSV 파싱 스크립트
- `scripts/sync-ratings-to-db.cjs` - SQL 생성 스크립트
- `scripts/import-ratings-batch.sh` - 배치 실행 스크립트

### 데이터
- `public-data-facilities.json` - 파싱된 22,541개 시설 데이터
- `migrations/batches_ratings/` - 226개 SQL 배치 파일
- `migrations/0023_add_facility_public_data.sql` - 테이블 스키마

---

## ⚠️ 주의사항

1. **실행 시간**: 전체 배치 실행 시 약 20-30분 소요 예상
2. **로컬 DB**: `--local` 플래그 사용 시 로컬 개발 DB에만 적용
3. **프로덕션 DB**: 프로덕션 적용 전 반드시 로컬에서 테스트 권장
4. **백업**: 프로덕션 실행 전 DB 백업 권장

---

## 📞 다음 단계

1. ✅ **GitHub 업로드 완료**
2. ⏳ **프로덕션 환경에서 배치 실행**
3. ⏳ **UI에 평가등급 표시**
   - 시설 카드에 등급 뱃지 추가
   - 검색 필터에 등급 옵션 추가
4. ⏳ **AI 매칭에 평가등급 반영**
   - 하이브리드 스코어링 알고리즘에 등급 가중치 추가

---

## 💡 활용 예시

### UI에 평가등급 표시
```jsx
// 시설 카드에 등급 뱃지
{facility.grade_value && (
  <span className={`badge badge-${facility.grade_value}`}>
    🏆 공단평가 {facility.grade_value}등급
  </span>
)}
```

### AI 매칭 스코어링
```typescript
const gradeScores = { A: 100, B: 80, C: 60, D: 40, E: 20 };
const publicScore = gradeScores[facility.grade_value] || 0;
const finalScore = internalScore * 0.5 + publicScore * 0.3 + reputationScore * 0.2;
```

---

**작성일**: 2026-05-07  
**작성자**: AI Developer  
**상태**: ✅ GitHub 업로드 완료, 프로덕션 배포 대기 중

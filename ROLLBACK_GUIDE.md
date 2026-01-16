# 🔐 복원 가이드

## 📦 백업 정보

### 백업 전 상태
- **날짜**: 2026-01-16
- **상태**: Advanced AI matching v2 (완전 작동)
- **백업 URL**: https://www.genspark.ai/api/files/s/YSvLRqai
- **크기**: 56.9 MB

### 백업 후 추가된 기능
- DB 스키마 확장 (facility_details 컬럼 추가)
- 시설 상세 정보 조회/저장 API
- 관리자 UI에 상세 정보 입력 폼 추가

---

## 🔄 복원 방법

### 방법 1: 전체 복원 (권장)
```bash
# 1. 백업 파일 다운로드
wget https://www.genspark.ai/api/files/s/YSvLRqai -O backup.tar.gz

# 2. 압축 해제
tar -xzf backup.tar.gz

# 3. 프로젝트 디렉토리로 이동
cd /home/user/webapp

# 4. 파일 복원 (덮어쓰기)
# 백업 내용이 /home/user/webapp로 복원됨

# 5. 의존성 재설치
npm install

# 6. 빌드
npm run build

# 7. 배포
npx wrangler pages deploy dist --project-name carejoa-kr-auto
```

### 방법 2: DB만 롤백
```bash
# D1 마이그레이션 0017 롤백은 지원되지 않음
# 대신 컬럼만 삭제:

npx wrangler d1 execute carejoa-production --remote --command="
ALTER TABLE facility_details DROP COLUMN specialized_care;
ALTER TABLE facility_details DROP COLUMN admission_types;
ALTER TABLE facility_details DROP COLUMN operating_hours;
ALTER TABLE facility_details DROP COLUMN min_stay_period;
ALTER TABLE facility_details DROP COLUMN short_term_available;
ALTER TABLE facility_details DROP COLUMN monthly_cost;
ALTER TABLE facility_details DROP COLUMN deposit;
ALTER TABLE facility_details DROP COLUMN daily_cost;
ALTER TABLE facility_details DROP COLUMN additional_costs;
ALTER TABLE facility_details DROP COLUMN total_beds;
ALTER TABLE facility_details DROP COLUMN available_beds;
ALTER TABLE facility_details DROP COLUMN notes;
ALTER TABLE facility_details DROP COLUMN updated_by;
"
```

**주의**: SQLite/D1은 ALTER TABLE DROP COLUMN을 지원하지 않을 수 있습니다.  
완전한 롤백을 원하면 **방법 1 (전체 복원)**을 사용하세요.

### 방법 3: Git 롤백
```bash
# 1. 백업 전 커밋으로 되돌리기
cd /home/user/webapp
git log --oneline  # 커밋 히스토리 확인
git reset --hard a6219b2  # 백업 직전 커밋

# 2. 강제 푸시
git push -f origin main

# 3. 재배포
npm run build
npx wrangler pages deploy dist --project-name carejoa-kr-auto
```

---

## ⚠️ 롤백 시 영향

### 영향 받는 것
- ❌ 관리자 UI의 상세 정보 입력 폼 사라짐
- ❌ API 엔드포인트 2개 사라짐
  - GET /api/admin/facilities/:id/details
  - PUT /api/admin/facilities/:id/details
- ❌ DB의 새 컬럼들 (하지만 데이터는 없음)

### 영향 없는 것
- ✅ 기존 AI 매칭 기능 (완전 정상)
- ✅ 시설 목록/수정/삭제 (정상 작동)
- ✅ 견적 요청/응답 (정상 작동)
- ✅ 고객 관리 (정상 작동)
- ✅ 평점/리뷰 시스템 (정상 작동)

---

## 💡 롤백이 필요한 경우

### 시나리오 1: 새 기능에 버그가 있음
```bash
# Git 롤백 (방법 3)
git reset --hard a6219b2
git push -f origin main
npm run build
npx wrangler pages deploy dist
```

### 시나리오 2: DB 마이그레이션이 문제
```bash
# 전체 복원 (방법 1)
# 백업 파일에서 복원
```

### 시나리오 3: 일부만 롤백
```bash
# 특정 파일만 복원
git checkout a6219b2 -- src/index.tsx
git commit -m "Rollback facility details UI"
git push origin main
```

---

## 📊 현재 상태 (롤백 전)

### 커밋 히스토리
```
45f66c1 - feat: Add admin UI for facility details input (step 4)
b33e591 - feat: Add facility details management APIs (steps 1-3)
a6219b2 - docs: Add comprehensive AI matching final documentation (백업 시점)
3ccf5f3 - feat: Implement advanced AI matching
...
```

### 배포 URL
- 최신: https://c19e55c3.carejoa-kr-auto.pages.dev/
- Production: https://carejoa.kr/

### 테스트 방법
```
1. https://c19e55c3.carejoa-kr-auto.pages.dev/admin/login
2. 로그인: admin@carejoa.kr / admin1234!
3. 시설 관리 → 시설 수정
4. "상세 정보 입력" 클릭
5. 전문 분야/입소 유형/비용 입력
6. 저장
```

---

## 🆘 문제 발생 시

### 긴급 복원
```bash
# 백업에서 즉시 복원
wget https://www.genspark.ai/api/files/s/YSvLRqai -O backup.tar.gz
tar -xzf backup.tar.gz
cd /home/user/webapp
npm install
npm run build
npx wrangler pages deploy dist --project-name carejoa-kr-auto
```

### 지원 요청
- 백업 URL 보관: https://www.genspark.ai/api/files/s/YSvLRqai
- 롤백 커밋: a6219b2
- 문제 발생 시각 기록
- 에러 로그 복사

---

**✅ 이 가이드를 안전한 곳에 보관하세요!**

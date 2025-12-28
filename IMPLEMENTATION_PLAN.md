# 🚀 구현 계획 및 안전성 검증

## 📅 작성 일시: 2025-12-28

---

## 🎯 구현 목표

### 요청사항 (8개)
1. ✅ **고객 대시보드 상단 홈 버튼 추가** (완료)
2. ⏳ **시설찾기 페이지 Leaflet.js 지도 통합**
3. ⏳ **3가지 대시보드 견적서 작성 필수 필드 추가**
4. ⏳ **시설 회원가입 후 필수 안내 메시지**
5. ⏳ **지역별 대표시설 신청 버튼**
6. ⏳ **관리자 대표시설 신청 확인**
7. ⏳ **관리자 견적서 수발신 확인**
8. ⏳ **채팅 기능 UI 구현**

---

## 🔍 안전성 검증

### 1. 기존 시스템 분석 ✅

#### 현재 데이터베이스 테이블 (20개)
```
✅ admin_users              - 관리자 계정
✅ chat_messages            - 채팅 메시지 (이미 존재!)
✅ d1_migrations            - 마이그레이션 이력
✅ emergency_transfers      - 응급 이송
✅ facilities               - 시설 정보 (20,433개)
✅ facility_emergency_info  - 시설 응급 정보
✅ facility_templates       - 시설 템플릿
✅ messages                 - 메시지
✅ partner_referrals        - 파트너 추천
✅ partners_approval        - 파트너 승인
✅ quotation_requests       - 견적 요청
✅ quotations               - 견적서
✅ quote_requests           - 견적 요청 (중복?)
✅ quote_responses          - 견적 응답
✅ review_responses         - 리뷰 응답
✅ reviews                  - 리뷰
✅ social_workers           - 사회복지사
✅ users                    - 사용자
```

#### 기존 API 엔드포인트 ✅
```
✅ POST /api/partner                  - 파트너 등록
✅ POST /api/family-care              - 가족 간병 등록
✅ POST /api/admin/login              - 관리자 로그인
✅ POST /api/quote/submit-new         - 견적 요청
✅ GET  /api/customer/dashboard       - 고객 대시보드
✅ GET  /api/facility/dashboard       - 시설 대시보드
✅ POST /api/facility/send-quote      - 견적서 전송
✅ POST /api/facility/update-info     - 시설 정보 수정 (NEW!)
✅ POST /api/messages/send            - 메시지 전송 (이미 존재!)
✅ GET  /api/messages/:responseId     - 메시지 조회 (이미 존재!)
✅ POST /api/messages/reply           - 메시지 응답 (이미 존재!)
```

#### 기존 페이지 ✅
```
✅ /                          - 메인 랜딩
✅ /facilities                - 시설 찾기 (지도 없음 - 추가 필요!)
✅ /quote-request             - 견적 신청
✅ /dashboard/customer        - 고객 대시보드
✅ /dashboard/facility        - 시설 대시보드
✅ /admin                     - 관리자 로그인
✅ /admin/dashboard           - 관리자 대시보드
```

---

## ⚠️ 잠재적 충돌 및 위험 요소

### 1. 테이블 스키마 충돌 위험 ⚠️
**문제**: `quote_requests`와 `quotation_requests` 중복 가능성
**해결**: 
- 기존 테이블 구조 확인 후 필드 추가만 진행
- 새 테이블 생성 시 마이그레이션 파일 사용

### 2. API 엔드포인트 충돌 없음 ✅
**확인**: 
- 기존 API와 새 API 경로가 겹치지 않음
- 채팅 API는 이미 구현되어 있음 (UI만 추가)

### 3. UI 레이아웃 충돌 위험 낮음 ✅
**확인**:
- 기존 대시보드 구조 유지하면서 추가만 진행
- Tailwind CSS 클래스 사용으로 스타일 충돌 없음

### 4. 지도 통합 위험 낮음 ✅
**확인**:
- README.md에 Leaflet.js 마이그레이션 완료 기록
- OpenStreetMap 사용, API 키 불필요
- 기존 `/facilities` 페이지에 추가만 하면 됨

---

## 📋 구현 순서 (안전성 우선)

### Phase 1: UI 개선 (위험도: 낮음) ✅
**예상 시간**: 30분
**영향 범위**: 프론트엔드만

1. ✅ **고객 대시보드 홈 버튼** (완료)
   - 기존 HTML 수정
   - 데이터베이스 변경 없음
   - API 변경 없음

2. **시설찾기 Leaflet.js 지도**
   - `/facilities` 페이지 수정
   - CDN 추가 (Leaflet.js)
   - 데이터베이스 변경 없음
   - API 변경 없음

---

### Phase 2: 필수 필드 검증 추가 (위험도: 낮음)
**예상 시간**: 40분
**영향 범위**: 프론트엔드 + 기존 API 검증 로직

3. **견적서 작성 필수 필드**
   - 고객 견적 요청 폼: 시설유형/시도/시군구 필수
   - 시설 정보 수정 폼: 시설유형/시도/시군구 필수
   - 관리자 시설 관리: 필터링 UI 개선
   - **주의**: 기존 `quote_requests` 테이블에 이미 필드 존재 확인 필요
   - **안전 조치**: 필드가 없으면 마이그레이션 파일 생성

4. **시설 정보 미등록 안내 메시지**
   - 시설 로그인 시 `facility_type`, `region_sido`, `region_sigungu` 체크
   - 미입력 시 경고 배너 표시
   - 데이터베이스 변경 없음

---

### Phase 3: 채팅 UI 구현 (위험도: 낮음)
**예상 시간**: 50분
**영향 범위**: 프론트엔드만 (API 이미 존재)

5. **고객 대시보드 채팅 모달**
   - 받은 견적서 카드에 "💬 메시지" 버튼
   - 채팅 모달 UI (기존 `/api/messages/send` 사용)
   - 읽지 않은 메시지 배지

6. **시설 대시보드 채팅 모달**
   - 내 견적서 카드에 "💬 메시지" 버튼
   - 채팅 모달 UI (기존 `/api/messages/reply` 사용)
   - 읽지 않은 메시지 배지

---

### Phase 4: DB 스키마 추가 (위험도: 중간)
**예상 시간**: 40분
**영향 범위**: 데이터베이스 + 백엔드 API

⚠️ **주의사항**:
- 마이그레이션 파일 생성 필수
- 로컬 테스트 후 프로덕션 적용
- 롤백 계획 준비

7. **대표시설 신청 시스템**
   - 새 테이블: `representative_facility_applications` 생성
   ```sql
   CREATE TABLE IF NOT EXISTS representative_facility_applications (
     id INTEGER PRIMARY KEY AUTOINCREMENT,
     facility_id INTEGER NOT NULL,
     facility_name TEXT NOT NULL,
     facility_type TEXT NOT NULL,
     region_sido TEXT NOT NULL,
     region_sigungu TEXT NOT NULL,
     manager_name TEXT,
     manager_phone TEXT,
     status TEXT DEFAULT 'pending', -- pending, approved, rejected
     applied_at DATETIME DEFAULT CURRENT_TIMESTAMP,
     approved_at DATETIME,
     approved_by TEXT,
     FOREIGN KEY (facility_id) REFERENCES facilities(id)
   );
   ```
   - 인덱스: `region_sido`, `region_sigungu`, `status`
   - API: `POST /api/facility/apply-representative`
   - 시설 대시보드에 신청 버튼 추가

---

### Phase 5: 관리자 기능 확장 (위험도: 낮음)
**예상 시간**: 40분
**영향 범위**: 관리자 페이지만

8. **관리자 대표시설 신청 관리**
   - 신청 내역 조회 API
   - 승인/거절 버튼
   - 지역별 필터링

9. **관리자 견적서 수발신 모니터링**
   - `quote_requests` + `quote_responses` JOIN
   - 전체 견적 현황 대시보드
   - 고객명, 시설명, 금액, 상태, 날짜 표시
   - CSV 다운로드 (선택)

---

## 🛡️ 안전 장치

### 1. Git 커밋 전략
```bash
# 각 Phase마다 별도 커밋
git add .
git commit -m "Phase 1: UI 개선 - 홈 버튼 및 지도 추가"
git push origin main

# 문제 발생 시 롤백
git revert HEAD
```

### 2. 데이터베이스 백업
```bash
# 마이그레이션 전 백업
npx wrangler d1 execute carejoa-production --local --command="SELECT * FROM quote_requests" > backup_quote_requests.json
npx wrangler d1 execute carejoa-production --local --command="SELECT * FROM facilities" > backup_facilities.json
```

### 3. 단계별 테스트
```bash
# 각 Phase 완료 후
npm run build
pm2 restart carejoa-webapp
curl http://localhost:3000/dashboard/customer
curl http://localhost:3000/dashboard/facility
curl http://localhost:3000/admin/dashboard
```

### 4. 프로덕션 배포 전 확인
- [ ] 로컬 샌드박스에서 모든 기능 테스트
- [ ] 브라우저 콘솔 에러 확인
- [ ] 네트워크 탭에서 API 응답 확인
- [ ] 모바일 레이아웃 확인
- [ ] D1 데이터 무결성 확인

---

## 📊 예상 소요 시간

| Phase | 작업 | 시간 | 위험도 |
|-------|------|------|--------|
| 1 | UI 개선 (홈 버튼, 지도) | 30분 | 낮음 ✅ |
| 2 | 필수 필드 검증 | 40분 | 낮음 ✅ |
| 3 | 채팅 UI 구현 | 50분 | 낮음 ✅ |
| 4 | DB 스키마 추가 | 40분 | 중간 ⚠️ |
| 5 | 관리자 기능 | 40분 | 낮음 ✅ |
| **총계** | | **3시간 20분** | |

---

## ✅ 기존 시스템 호환성 검증

### 데이터베이스
- ✅ `users` 테이블에 `facility_type`, `region_sido`, `region_sigungu` 필드 존재 확인 필요
- ✅ `facilities` 테이블에 시설 정보 20,433개 존재
- ✅ `chat_messages` 테이블 이미 존재 (채팅 기능 백엔드 완료)

### API
- ✅ 채팅 API 이미 구현 (`/api/messages/*`)
- ✅ 시설 정보 수정 API 이미 구현 (`/api/facility/update-info`)
- ✅ 견적 요청 API 이미 구현 (`/api/quote/submit-new`)

### UI
- ✅ Tailwind CSS 사용으로 스타일 충돌 없음
- ✅ Font Awesome 아이콘 이미 로드됨
- ✅ 대시보드 레이아웃 확장 가능

---

## 🚨 주의사항

### 반드시 확인해야 할 사항
1. **users 테이블 스키마**
   - `facility_type`, `region_sido`, `region_sigungu` 필드 존재 여부
   - 없으면 마이그레이션 파일 생성 필요

2. **quote_requests vs quotation_requests**
   - 두 테이블의 차이점 확인
   - 사용 중인 테이블이 어느 것인지 확인

3. **세션 관리**
   - 시설 로그인 시 세션에 `facility_type` 등 저장 확인
   - 필수 정보 미입력 시 경고 로직

---

## 🎯 성공 기준

### Phase 1-3 (UI 개선)
- [ ] 고객 대시보드 홈 버튼 클릭 시 메인 페이지 이동
- [ ] 시설찾기 페이지에 Leaflet.js 지도 표시
- [ ] 견적 요청 시 필수 필드 미입력 시 경고
- [ ] 시설 정보 미등록 시 안내 배너 표시
- [ ] 채팅 모달에서 메시지 전송 성공

### Phase 4-5 (DB 및 관리자)
- [ ] 대표시설 신청 버튼 클릭 시 DB 저장
- [ ] 관리자 대표시설 신청 목록 조회
- [ ] 관리자 견적서 수발신 현황 조회
- [ ] 승인/거절 버튼 동작

---

## 📝 구현 완료 체크리스트

### Phase 1: UI 개선 ✅
- [x] 고객 대시보드 홈 버튼 추가
- [ ] 시설찾기 Leaflet.js 지도 통합

### Phase 2: 필수 필드
- [ ] 견적 요청 필수 필드 검증
- [ ] 시설 정보 필수 필드 검증
- [ ] 시설 정보 미등록 안내

### Phase 3: 채팅 UI
- [ ] 고객 채팅 모달
- [ ] 시설 채팅 모달
- [ ] 읽지 않은 메시지 배지

### Phase 4: DB 스키마
- [ ] 대표시설 신청 테이블 생성
- [ ] 마이그레이션 파일 작성
- [ ] 로컬 테스트 완료
- [ ] API 엔드포인트 구현

### Phase 5: 관리자 기능
- [ ] 대표시설 신청 관리 UI
- [ ] 견적서 수발신 모니터링 UI
- [ ] 승인/거절 기능

---

**작성자**: Claude Code Assistant  
**검토 완료**: 2025-12-28  
**승인**: 사용자 확인 대기 중

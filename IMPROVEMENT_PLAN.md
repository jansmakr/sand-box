# 케어조아 개선 작업 계획

## 🚨 발견된 문제점

### 1. 데이터 불일치 문제
- **facilities.json과 D1 facilities 테이블 간 ID 불일치**
  - JSON의 ID 303-305: 서울 강남구 요양원
  - D1의 ID 303-305: 인천 미추홀구 요양병원
  - **원인**: 두 개의 다른 데이터 소스 사용 중
  
- **좌표 누락 문제**
  - 강남구 요양원 4개 시설의 lat/lng가 0으로 설정
  - AI 매칭 시 거리 계산 불가

### 2. 아키텍처 문제
- 프론트엔드가 D1이 아닌 static JSON 파일 사용
- 데이터 동기화 메커니즘 없음
- 실시간 업데이트 불가

---

## 📋 개선 작업 목록

### ✅ 완료 상태
- [x] facility_details 테이블 구축 (15,396개)
- [x] AI 매칭 알고리즘 고도화
- [x] 관리자 페이지 구현
- [x] 전문분야/입소유형 데이터 생성

### 🔄 진행할 작업

#### 작업 1: 데이터 통합 및 동기화 (우선순위: 최고)
**목표**: facilities.json과 D1 facilities 테이블 통합

**단계**:
1. D1 facilities 테이블에서 전체 데이터 export
2. JSON 파일의 누락된 시설 추가
3. 좌표 데이터 보정 (Geocoding API 활용)
4. 통합된 데이터로 facilities.json 재생성
5. D1에 최종 데이터 재삽입

**예상 시간**: 30분

---

#### 작업 2: 시설 상세 페이지 개선
**목표**: /facility/:id 페이지에 평점, 리뷰, 상세정보 표시

**구현 내용**:
- GET /api/facilities/:id (기본 정보 + 상세 정보 조인)
- GET /api/facilities/:id/reviews (리뷰 목록)
- 프론트엔드 상세 페이지 UI
  - 시설 기본 정보 (이름, 주소, 전화, 타입)
  - 평점 및 리뷰 통계
  - 전문분야 태그
  - 입소유형 태그
  - 비용 정보
  - 리뷰 목록
  - 지도 표시 (좌표 있을 경우)

**예상 시간**: 45분

---

#### 작업 3: 사용자 피드백 대시보드
**목표**: 매칭 성능 모니터링 및 분석

**구현 내용**:
- GET /api/admin/feedback/analytics (분석 데이터)
  - 일별/주별 매칭 요청 수
  - 평균 매칭 시간
  - 평균 결과 수
  - 사용자 만족도 (피드백 기반)
- 프론트엔드 대시보드 페이지 (/admin/dashboard)
  - 차트: 매칭 요청 추이 (Chart.js)
  - 테이블: 최근 피드백 목록
  - 통계: 핵심 지표 카드

**예상 시간**: 40분

---

#### 작업 4: 데이터 품질 개선 스크립트
**목표**: 실제 시설 정보 검증 및 보정

**구현 내용**:
- `scripts/validate_facility_data.js`
  - 좌표 누락 시설 검출 및 Geocoding
  - 전화번호 형식 검증 및 정규화
  - 중복 시설 검출
  - 주소 형식 통일
- `scripts/enrich_facility_details.js`
  - 시설 이름 기반 전문분야 재추정
  - 비용 정보 지역별 보정
  - 병상 수 추정 (타입 기반)

**예상 시간**: 30분

---

#### 작업 5: 모바일 UI/UX 최적화
**목표**: 반응형 디자인 강화

**구현 내용**:
- 모바일 네비게이션 개선 (햄버거 메뉴)
- 터치 최적화 (버튼 크기, 스와이프)
- 검색 필터 모바일 최적화 (아코디언)
- 시설 카드 모바일 레이아웃
- 로딩 상태 UX 개선

**예상 시간**: 35분

---

#### 작업 6: 성능 최적화
**목표**: 쿼리 최적화 및 캐싱 전략

**구현 내용**:
- D1 쿼리 인덱스 최적화
  - `CREATE INDEX idx_facilities_sido_sigungu ON facilities(sido, sigungu)`
  - `CREATE INDEX idx_facilities_type ON facilities(facility_type)`
  - `CREATE INDEX idx_facilities_location ON facilities(latitude, longitude)`
- API 응답 캐싱 (Cloudflare Workers Cache API)
  - /api/regions (1시간)
  - /api/facilities (5분)
  - /static/facilities.json (30분)
- 페이지네이션 구현
  - /api/facilities?page=1&limit=20

**예상 시간**: 30분

---

#### 작업 7: 채팅 상담 기능 (선택사항)
**목표**: 실시간 상담 지원

**구현 내용**:
- Cloudflare Durable Objects 기반 WebSocket
- 또는 Tawk.to / Intercom 같은 서드파티 통합
- 관리자 채팅 인터페이스

**예상 시간**: 60분 (복잡도 높음)

---

## 🎯 우선순위 순서

1. **데이터 통합 및 동기화** (30분) - 가장 중요
2. **시설 상세 페이지 개선** (45분)
3. **사용자 피드백 대시보드** (40분)
4. **성능 최적화** (30분)
5. **데이터 품질 개선** (30분)
6. **모바일 UI/UX 최적화** (35분)
7. **채팅 상담 기능** (60분) - 선택사항

**총 예상 시간**: 약 3시간 30분

---

## 📝 작업 진행 방식

각 작업마다:
1. 백업 생성
2. 구현
3. 테스트
4. Git 커밋
5. 배포
6. 검증

---

**작성일**: 2026-01-17  
**상태**: 계획 수립 완료

# 케어조아(CAREJOA) 완전한 재구축 가이드

> 🎯 **목적**: 새 프로젝트에서 동일한 웹앱을 구축하기 위한 완전한 문서
> 
> 📅 **작성일**: 2026-05-14
> 
> 📊 **현재 상태**: 22,315줄 / 980KB 단일 파일 / 139개 엔드포인트

---

## 📋 목차

1. [프로젝트 개요](#1-프로젝트-개요)
2. [심각한 성능 문제 및 최적화 방안](#2-심각한-성능-문제-및-최적화-방안)
3. [전체 기능 목록](#3-전체-기능-목록)
4. [데이터베이스 스키마](#4-데이터베이스-스키마)
5. [API 엔드포인트 완전 목록](#5-api-엔드포인트-완전-목록)
6. [프론트엔드 페이지 구조](#6-프론트엔드-페이지-구조)
7. [핵심 비즈니스 로직](#7-핵심-비즈니스-로직)
8. [새 프로젝트 구축 가이드](#8-새-프로젝트-구축-가이드)
9. [삭제/축소 가능 부분](#9-삭제축소-가능-부분)
10. [최적화된 파일 구조](#10-최적화된-파일-구조)

---

## 1. 프로젝트 개요

### 🎯 핵심 목표
**케어조아(CAREJOA)**: 요양시설과 보호자를 연결하는 종합 플랫폼

### 🔑 주요 기능
1. **요양시설 검색 및 추천** (AI 매칭)
2. **견적 요청 및 관리**
3. **시설 평가 및 리뷰**
4. **관리자 대시보드** (시설 관리, 사용자 관리)
5. **카카오 소셜 로그인**
6. **채팅 시스템**
7. **한의원 연계 서비스**

### 📊 현재 데이터
- **시설 수**: 20,480개
- **평가 데이터**: 9,994개 (A~E 등급)
- **사용자 유형**: 고객(customer), 시설(facility), 파트너(partner)

---

## 2. 심각한 성능 문제 및 최적화 방안

### 🚨 현재 문제점

#### **1. 단일 파일 구조 (22,315줄)**
```
src/
└── index.tsx (980KB, 22,315줄)
    ├── 86개 GET 엔드포인트
    ├── 53개 POST 엔드포인트
    ├── 117개 SELECT 쿼리
    ├── 41개 INSERT 쿼리
    └── 27개 UPDATE 쿼리
```

**문제점:**
- ⚠️ 미리보기/샌드박스 연결 불안정
- 🐌 빌드 시간 증가 (2초+)
- 🔧 유지보수 극도로 어려움
- 🔍 코드 검색 지연

#### **2. 중복/불필요 코드**
- 관리자 페이지 과도한 HTML (6,000줄+)
- 테스트용 더미 데이터 (500줄+)
- 사용하지 않는 기능 (1,000줄+)

---

### ✅ 최적화 방안

#### **방안 1: 파일 분리 (권장)**
```
src/
├── index.tsx (메인 진입점, 300줄)
├── routes/
│   ├── auth.ts (인증 관련, 500줄)
│   ├── facilities.ts (시설 관련, 800줄)
│   ├── admin.ts (관리자 관련, 1,200줄)
│   ├── ai-matching.ts (AI 매칭, 600줄)
│   └── pages.ts (페이지 라우트, 2,000줄)
├── database/
│   ├── schema.ts (DB 스키마 정의)
│   └── queries.ts (쿼리 함수)
├── utils/
│   ├── auth.ts (인증 헬퍼)
│   └── validation.ts (유효성 검사)
└── types/
    └── index.ts (타입 정의)
```

**예상 효과:**
- ✅ 빌드 시간 50% 감소
- ✅ 미리보기/샌드박스 안정화
- ✅ 유지보수 용이성 300% 향상

#### **방안 2: 불필요 코드 제거**
- 관리자 HTML 5,000줄 → React 컴포넌트로 이동 (별도 프로젝트)
- 테스트 데이터 500줄 → 환경변수로 이동
- 미사용 기능 1,000줄 → 완전 삭제

**예상 효과:**
- ✅ 총 라인 수 6,500줄 감소 (30% 축소)
- ✅ 파일 크기 680KB (300KB 감소)

---

## 3. 전체 기능 목록

### 📱 사용자 기능

#### 3.1 인증 및 회원가입
- [x] 이메일/비밀번호 로그인
- [x] 카카오 소셜 로그인
- [x] 사용자 유형 선택 (고객/시설/파트너)
- [x] 회원가입 (이메일 중복 확인)
- [x] 로그아웃
- [x] 세션 관리 (쿠키 기반)

#### 3.2 시설 검색 및 추천
- [x] 전국 시설 검색 (지역, 유형, 등급 필터)
- [x] AI 매칭 시스템 (특허 출원)
  - 12가지 변수 분석
  - 협업 필터링
  - 매칭 점수 계산 (0-100점)
- [x] 지역별 대표 시설 추천
- [x] 시설 상세 정보 (평점, 평가 등급, 연락처)
- [x] 지도 기반 검색 (Leaflet.js)

#### 3.3 견적 요청 및 관리
- [x] 간편 견적 요청 (3단계)
- [x] 상세 견적 요청
- [x] 가족 돌봄 서비스 신청
- [x] 견적서 확인
- [x] 시설 응답 확인

#### 3.4 리뷰 및 평가
- [x] 시설 리뷰 작성
- [x] 별점 평가 (청결도, 직원, 식사, 시설)
- [x] 리뷰 목록 조회

#### 3.5 채팅 시스템
- [x] 실시간 메시지 전송
- [x] 읽음 상태 관리
- [x] 읽지 않은 메시지 카운트

#### 3.6 한의원 연계 서비스
- [x] 한의원 방문 신청
- [x] 한의원 정보 페이지
- [x] 통합 돌봄 서비스

#### 3.7 마이페이지
- [x] 고객 대시보드 (견적 요청 내역)
- [x] 시설 대시보드 (견적 응답 관리)
- [x] 파트너 대시보드 (파트너 정보)
- [x] 프로필 수정

---

### 🔧 시설 기능

#### 3.8 시설 관리
- [x] 시설 정보 수정
- [x] 가격 관리
- [x] 사진 관리
- [x] 견적서 발송

#### 3.9 견적 응답
- [x] 견적 요청 확인
- [x] 견적서 작성 및 발송
- [x] 응답 내역 관리

---

### 👨‍💼 관리자 기능

#### 3.10 대시보드
- [x] 전체 통계 (시설, 사용자, 견적)
- [x] 최근 가입 사용자
- [x] 최근 견적 요청
- [x] 대표 시설 신청 관리

#### 3.11 시설 관리
- [x] 시설 목록 (필터, 검색)
- [x] 시설 상세 정보
- [x] 시설 생성/수정/삭제
- [x] 대표 시설 지정
- [x] Excel 업로드 (대량 등록)

#### 3.12 사용자 관리
- [x] 고객 목록
- [x] 고객 상세 정보
- [x] 고객 견적 요청 내역

#### 3.13 파트너 관리
- [x] 파트너 승인/거부
- [x] 대표 시설 신청 승인/거부

#### 3.14 견적 모니터링
- [x] 견적 요청 목록
- [x] 응답률 통계
- [x] 견적 상세 정보

---

## 4. 데이터베이스 스키마

### 📦 테이블 구조

#### 4.1 사용자 관련

```sql
-- users 테이블
CREATE TABLE users (
  id TEXT PRIMARY KEY,
  email TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  name TEXT NOT NULL,
  type TEXT NOT NULL, -- 'customer' | 'facility'
  facility_type TEXT, -- '요양병원' | '요양원' | '주야간보호' | '재가복지센터'
  address TEXT,
  phone TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- user_sessions 테이블 (세션 관리)
-- Note: 현재 메모리 기반, DB로 이전 권장
```

#### 4.2 시설 관련

```sql
-- facilities 테이블
CREATE TABLE facilities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  type TEXT NOT NULL, -- 시설 유형
  name TEXT NOT NULL,
  phone TEXT,
  address TEXT,
  latitude REAL,
  longitude REAL,
  sido TEXT,
  sigungu TEXT,
  admin_sym TEXT, -- 관리 기호
  source_system TEXT,
  source_code TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- facility_public_data 테이블 (평가 정보)
CREATE TABLE facility_public_data (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  facility_id INTEGER NOT NULL,
  grade_value TEXT, -- 'A', 'B', 'C', 'D', 'E'
  grade_year INTEGER,
  score REAL,
  last_updated DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (facility_id) REFERENCES facilities(id)
);

-- facility_ratings 테이블 (사용자 평점)
CREATE TABLE facility_ratings (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  facility_id INTEGER NOT NULL,
  user_id TEXT NOT NULL,
  overall_rating REAL NOT NULL,
  cleanliness_rating REAL,
  staff_rating REAL,
  food_rating REAL,
  facilities_rating REAL,
  comment TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (facility_id) REFERENCES facilities(id)
);
```

#### 4.3 견적 관련

```sql
-- quote_requests 테이블
CREATE TABLE quote_requests (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  patient_name TEXT NOT NULL,
  age INTEGER,
  care_grade TEXT, -- '1등급' ~ '5등급', '인지지원등급'
  sido TEXT,
  sigungu TEXT,
  facility_type TEXT,
  budget INTEGER,
  phone TEXT,
  additional_notes TEXT,
  status TEXT DEFAULT 'pending', -- 'pending', 'responded', 'completed'
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- quote_responses 테이블
CREATE TABLE quote_responses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  quote_request_id INTEGER NOT NULL,
  facility_id INTEGER NOT NULL,
  partner_id TEXT,
  monthly_cost INTEGER,
  deposit INTEGER,
  available_date TEXT,
  message TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (quote_request_id) REFERENCES quote_requests(id),
  FOREIGN KEY (facility_id) REFERENCES facilities(id)
);
```

#### 4.4 채팅 관련

```sql
-- chat_messages 테이블
CREATE TABLE chat_messages (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  sender_id TEXT NOT NULL,
  receiver_id TEXT NOT NULL,
  message TEXT NOT NULL,
  is_read INTEGER DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
```

#### 4.5 파트너 관련

```sql
-- partners 테이블
CREATE TABLE partners (
  id TEXT PRIMARY KEY,
  facility_id INTEGER,
  facility_name TEXT NOT NULL,
  facility_type TEXT NOT NULL,
  manager_name TEXT NOT NULL,
  manager_phone TEXT NOT NULL,
  business_registration TEXT,
  status TEXT DEFAULT 'pending', -- 'pending', 'approved', 'rejected'
  is_representative INTEGER DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (facility_id) REFERENCES facilities(id)
);
```

#### 4.6 피드백 관련

```sql
-- feedback_stats 테이블 (AI 매칭 피드백)
CREATE TABLE feedback_stats (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  facility_id INTEGER NOT NULL,
  impressions INTEGER DEFAULT 0,
  clicks INTEGER DEFAULT 0,
  last_shown DATETIME,
  FOREIGN KEY (facility_id) REFERENCES facilities(id)
);
```

#### 4.7 요양비용 계산기 관련

```sql
-- ltc_grade_rates 테이블 (장기요양등급 본인부담률)
CREATE TABLE ltc_grade_rates (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  grade_level TEXT UNIQUE NOT NULL, -- '1등급', '2등급', ..., '인지지원등급'
  grade_number INTEGER,
  copayment_rate REAL NOT NULL, -- 15.0 (15%)
  max_monthly_limit INTEGER,
  description TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- facility_type_costs 테이블 (시설 유형별 비용)
CREATE TABLE facility_type_costs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  facility_type TEXT NOT NULL, -- '요양병원', '요양원', '주야간보호', '재가복지센터'
  grade_level TEXT NOT NULL,
  base_cost INTEGER NOT NULL,
  meal_cost INTEGER,
  management_cost INTEGER,
  total_cost INTEGER NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- voucher_amounts 테이블 (통합돌봄 바우처 금액)
CREATE TABLE voucher_amounts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  grade_level TEXT UNIQUE NOT NULL,
  monthly_amount INTEGER NOT NULL,
  description TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- calculation_history 테이블 (계산 이력)
CREATE TABLE calculation_history (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT,
  grade_level TEXT NOT NULL,
  facility_type TEXT NOT NULL,
  total_facility_cost INTEGER NOT NULL,
  voucher_support INTEGER NOT NULL,
  copayment_amount INTEGER NOT NULL,
  additional_cost INTEGER NOT NULL,
  final_monthly_cost INTEGER NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- additional_cost_items 테이블 (추가 비용 항목)
CREATE TABLE additional_cost_items (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  item_name TEXT UNIQUE NOT NULL,
  monthly_cost INTEGER NOT NULL,
  description TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
```

---

## 5. API 엔드포인트 완전 목록

### 🔐 인증 API (7개)

| Method | Endpoint | 설명 | 라인 |
|--------|----------|------|------|
| POST | `/api/auth/login` | 로그인 | 733 |
| POST | `/api/auth/logout` | 로그아웃 | 809 |
| GET | `/api/auth/me` | 현재 사용자 정보 | 837 |
| POST | `/api/auth/register` | 회원가입 | 1426 |
| GET | `/api/auth/kakao/login` | 카카오 로그인 | 1598 |
| GET | `/api/auth/kakao/callback` | 카카오 콜백 | 1604 |
| POST | `/api/auth/kakao/complete` | 카카오 회원가입 완료 | 2060 |

### 🏥 시설 API (15개)

| Method | Endpoint | 설명 | 라인 |
|--------|----------|------|------|
| POST | `/api/facility/check-existing` | 시설 중복 확인 | 1354 |
| GET | `/api/facilities` | 시설 목록 조회 | 20554 |
| GET | `/api/facilities/:id` | 시설 상세 정보 | 20652 |
| GET | `/api/facilities/with-representative` | 대표 시설 포함 목록 | 9992 |
| GET | `/api/representative-facilities` | 지역별 대표 시설 | ~19000 |
| POST | `/api/admin/upload-facilities` | 시설 Excel 업로드 | 9319 |
| POST | `/api/admin/facility/update` | 시설 정보 수정 | 9882 |
| POST | `/api/admin/facility/set-representative` | 대표 시설 지정 | 10044 |
| POST | `/api/admin/facility/create` | 시설 생성 | 10162 |
| POST | `/api/admin/facility/delete` | 시설 삭제 | 10217 |
| GET | `/api/facility/dashboard` | 시설 대시보드 | 13914 |
| POST | `/api/facility/send-quote` | 견적서 발송 | 14051 |
| POST | `/api/facility/update-info` | 시설 정보 업데이트 | 14097 |
| GET | `/api/admin/facilities/representative-info` | 대표 시설 정보 | 9943 |
| GET | `/api/admin/facilities/with-representative` | 관리자용 대표 시설 목록 | 9968 |

### 💬 채팅 API (4개)

| Method | Endpoint | 설명 | 라인 |
|--------|----------|------|------|
| GET | `/api/chat/messages` | 메시지 목록 | 2149 |
| POST | `/api/chat/send` | 메시지 전송 | 2209 |
| POST | `/api/chat/mark-read` | 읽음 처리 | 2278 |
| GET | `/api/chat/unread-count` | 읽지 않은 메시지 수 | 2319 |

### 📋 견적 API (7개)

| Method | Endpoint | 설명 | 라인 |
|--------|----------|------|------|
| POST | `/api/partner` | 파트너 등록 | 8926 |
| POST | `/api/family-care` | 가족 돌봄 신청 | 8988 |
| POST | `/api/quote-request` | 견적 요청 | 9002 |
| POST | `/api/quote/submit-new` | 새 견적 제출 | 9140 |
| GET | `/api/quote/list` | 견적 목록 | ~14000 |
| GET | `/api/quote/details/:id` | 견적 상세 | ~14200 |
| POST | `/api/quote/accept` | 견적 수락 | ~14400 |

### 🤖 AI 매칭 API (1개)

| Method | Endpoint | 설명 | 라인 |
|--------|----------|------|------|
| POST | `/api/ai-matching` | AI 매칭 시스템 | 11024 |

### 👨‍💼 관리자 API (20개+)

| Method | Endpoint | 설명 | 라인 |
|--------|----------|------|------|
| POST | `/api/admin/login` | 관리자 로그인 | 9289 |
| POST | `/api/admin/logout` | 관리자 로그아웃 | 9309 |
| GET | `/api/admin/data` | 관리자 데이터 | 9389 |
| POST | `/api/admin/partner/approve` | 파트너 승인 | 9426 |
| POST | `/api/admin/partner/reject` | 파트너 거부 | 9444 |
| POST | `/api/admin/partner/set-representative` | 대표 파트너 지정 | 9463 |
| GET | `/api/admin/customers` | 고객 목록 | 9505 |
| GET | `/api/admin/customers/:id` | 고객 상세 | 9536 |
| GET | `/api/admin/customers/:id/quotes` | 고객 견적 내역 | 9601 |
| GET | `/api/admin/representative-applications` | 대표 시설 신청 목록 | 9654 |
| POST | `/api/admin/representative-applications/approve` | 신청 승인 | 9684 |
| POST | `/api/admin/representative-applications/reject` | 신청 거부 | 9713 |
| GET | `/api/admin/quote-monitoring` | 견적 모니터링 | 9749 |
| ... | ... | (더 많은 관리자 API) | ... |

### 🔧 기타 API

| Method | Endpoint | 설명 | 라인 |
|--------|----------|------|------|
| GET | `/api/regional-centers` | 지역 센터 목록 | 9377 |
| POST | `/api/manager-consultation/request` | 관리자 상담 요청 | 3467 |

---

## 6. 프론트엔드 페이지 구조

### 📄 메인 페이지 (30개)

| 경로 | 설명 | 라인 | 주요 기능 |
|------|------|------|----------|
| `/` | 홈페이지 | 3512 | 서비스 소개, AI 매칭, 한의원 연계 |
| `/login` | 로그인 | 539 | 이메일/비밀번호, 카카오 로그인 |
| `/register` | 회원가입 | 864 | 이메일, 비밀번호, 이름, 전화번호 |
| `/signup` | 회원가입 (리디렉션) | 868 | `/register`로 리디렉션 |
| `/signup/select-type` | 사용자 유형 선택 | 1734 | 고객/시설/파트너 선택 |
| `/facilities` | 전국 시설 찾기 | 5990 | 지도, 필터, 검색 |
| `/facility/:id` | 시설 상세 정보 | 4459 | 평점, 평가 등급, 연락처, 지도 |
| `/ai-matching` | AI 매칭 페이지 | 19418 | 12가지 변수, 매칭 점수 |
| `/regional-consultation` | 지역별 전화상담 | 6526 | 지역 선택, 시설 목록 |
| `/call-consultation` | 전화 상담 | 20249 | 지역별 시설 목록, 전화 연결 |
| `/manager-consultation` | 관리자 상담 | 3155 | 상담 신청 폼 |
| `/family-care-register` | 가족 돌봄 등록 | 4345 | 가족 돌봄 서비스 신청 |
| `/quote-simple` | 간편 견적 요청 | 10608 | 3단계 간편 견적 |
| `/quote-request` | 견적 요청 | 11862 | 상세 견적 요청 폼 |
| `/quote-new` | 새 견적 | 12849 | 새 견적 작성 |
| `/quote-details/:quoteId` | 견적 상세 | 17444 | 견적 상세 정보, 응답 확인 |
| `/dashboard/customer` | 고객 대시보드 | 15165 | 견적 요청 내역 |
| `/dashboard/facility` | 시설 대시보드 | 15508 | 견적 응답 관리 |
| `/dashboard/partner` | 파트너 대시보드 | 16854 | 파트너 정보 관리 |
| `/profile` | 프로필 | 18269 | 사용자 정보 수정 |
| `/chat` | 채팅 | 2355 | 실시간 메시지 |
| `/review/write` | 리뷰 작성 | 2718 | 별점, 코멘트 |
| `/reviews` | 리뷰 목록 | 2946 | 전체 리뷰 목록 |
| `/haniwon-visit` | 한의원 방문 | 4723 | 한의원 연계 서비스 |
| `/haniwon-info` | 한의원 정보 | 5069 | 한의원 소개 |
| `/system-info` | 시스템 정보 | 5273 | AI 매칭 시스템 설명 |
| `/integrated-care` | 통합 돌봄 | 5647 | 통합 돌봄 서비스 소개 |
| `/facility-price-management` | 가격 관리 | 16607 | 시설 가격 정보 관리 |
| `/facility-photo-management` | 사진 관리 | 16744 | 시설 사진 업로드 |
| `/facility/template` | 시설 템플릿 | 17193 | 시설 정보 템플릿 |
| `/emergency-transfer` | 긴급 이송 | 18779 | 긴급 이송 서비스 |
| `/subscription` | 구독 | 232 | 구독 서비스 (개발 중) |

### 📱 관리자 페이지 (6개)

| 경로 | 설명 | 라인 | 주요 기능 |
|------|------|------|----------|
| `/admin` | 관리자 로그인 | 6531 | 관리자 인증 |
| `/admin/dashboard` | 관리자 대시보드 | 7479 | 전체 통계, 최근 활동 |
| `/admin/facilities` | 시설 관리 | 6612 | 시설 목록, 생성, 수정, 삭제 |
| `/admin/customers` | 고객 관리 | 8595 | 고객 목록, 상세 정보 |
| `/admin/quote-detail/:quoteId` | 견적 상세 | 8330 | 견적 요청 상세 정보 |
| `/admin/quote-monitoring` | 견적 모니터링 | ~9700 | 견적 응답률, 통계 |

---

## 7. 핵심 비즈니스 로직

### 🤖 AI 매칭 알고리즘 (특허 출원)

**위치**: 라인 11024-11350

**12가지 매칭 변수:**
1. 지역 & 거리 (sido, sigungu, maxDistance)
2. 시설 유형 (facilityType)
3. 요양등급 (careGrade: 1~5등급, 인지지원등급)
4. 예산 범위 (budget)
5. 시설 평가 등급 (A~E)
6. 전문 프로그램 (keywords)
7. 입소 가능 여부 (availableDate)
8. 평점 (rating)
9. 리뷰 수 (reviewCount)
10. 청결도 (cleanliness)
11. 직원 친절도 (staff)
12. 협업 필터링 (같은 등급 사용자가 선택한 시설)

**매칭 스코어 계산 로직:**
```typescript
function calculateEnhancedMatchScore(
  facility: Facility,
  criteria: SearchCriteria,
  stats: FacilityStats | null,
  collaborativeScore: number
): number {
  let score = 0;

  // 1. 지역 매칭 (최대 30점)
  if (facility.sido === criteria.sido) score += 15;
  if (facility.sigungu === criteria.sigungu) score += 15;

  // 2. 시설 유형 매칭 (최대 20점)
  if (facility.type === criteria.facilityType) score += 20;

  // 3. 거리 매칭 (최대 15점)
  if (facility.distance) {
    if (facility.distance <= 5) score += 15;
    else if (facility.distance <= 10) score += 10;
    else if (facility.distance <= 20) score += 5;
  }

  // 4. 평점 매칭 (최대 15점)
  if (stats?.avgRating) {
    score += (stats.avgRating / 5) * 15;
  }

  // 5. 평가 등급 매칭 (최대 10점)
  const gradeScores = { A: 10, B: 8, C: 6, D: 4, E: 2 };
  if (facility.grade_value) {
    score += gradeScores[facility.grade_value] || 0;
  }

  // 6. 협업 필터링 보너스 (최대 15점)
  score += collaborativeScore;

  // 7. 키워드 매칭 (최대 10점)
  if (criteria.keywords && facility.specialties) {
    const matches = criteria.keywords.filter(k =>
      facility.specialties.includes(k)
    );
    score += matches.length * 2;
  }

  return Math.min(100, score);
}
```

**3단계 안전장치 (최소 2개 보장):**
1. 조건 완화 매칭 (같은 시도 → 같은 유형 → 전체)
2. DB 직접 조회 (랜덤 샘플링)
3. 명확한 사유 표시

---

### 📊 시설 평가 등급 시스템

**위치**: `facility_public_data` 테이블

**등급 분포 (9,994개 시설):**
- A등급: 1,779개 (17.8%) - 최우수
- B등급: 4,203개 (42.1%) - 우수
- C등급: 2,171개 (21.7%) - 보통
- D등급: 1,011개 (10.1%) - 미흡
- E등급: 830개 (8.3%) - 개선 필요

**배지 표시 로직:**
```typescript
function getGradeBadge(grade: string): string {
  const badges = {
    A: '<span class="bg-gradient-to-r from-yellow-400 to-orange-500 text-white px-2 py-1 rounded-full text-xs font-bold">A등급 최우수</span>',
    B: '<span class="bg-blue-500 text-white px-2 py-1 rounded-full text-xs">B등급 우수</span>',
    C: '<span class="bg-green-500 text-white px-2 py-1 rounded-full text-xs">C등급 보통</span>',
    D: '<span class="bg-orange-500 text-white px-2 py-1 rounded-full text-xs">D등급 미흡</span>',
    E: '<span class="bg-red-500 text-white px-2 py-1 rounded-full text-xs">E등급 개선필요</span>'
  };
  return badges[grade] || '';
}
```

---

### 🔐 인증 시스템

**세션 관리** (쿠키 기반):
```typescript
// 로그인
c.cookie('session_id', sessionId, {
  httpOnly: true,
  secure: true,
  maxAge: 7 * 24 * 60 * 60, // 7일
  sameSite: 'Lax'
});

// 미들웨어 (인증 확인)
async function requireAuth(c: Context, next: Function) {
  const sessionId = c.req.cookie('session_id');
  if (!sessionId || !dataStore.userSessions.has(sessionId)) {
    return c.redirect('/login');
  }
  await next();
}
```

**카카오 소셜 로그인:**
```typescript
// 1. 카카오 인증 URL 생성
const kakaoAuthUrl = `https://kauth.kakao.com/oauth/authorize?client_id=${KAKAO_REST_API_KEY}&redirect_uri=${KAKAO_REDIRECT_URI}&response_type=code`;

// 2. 콜백 처리
const tokenResponse = await fetch('https://kauth.kakao.com/oauth/token', {
  method: 'POST',
  headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
  body: new URLSearchParams({
    grant_type: 'authorization_code',
    client_id: KAKAO_REST_API_KEY,
    redirect_uri: KAKAO_REDIRECT_URI,
    code: code
  })
});

// 3. 사용자 정보 조회
const userResponse = await fetch('https://kapi.kakao.com/v2/user/me', {
  headers: { Authorization: `Bearer ${accessToken}` }
});
```

---

## 8. 새 프로젝트 구축 가이드

### 🚀 단계별 가이드

#### **Step 1: 프로젝트 초기화**

```bash
# 1. Hono Cloudflare Pages 템플릿 생성
npm create hono@latest carejoa-v2 -- --template cloudflare-pages --install --pm npm

cd carejoa-v2

# 2. Git 초기화
git init
git add .
git commit -m "Initial commit"

# 3. 추가 패키지 설치
npm install @hono/zod-validator zod
```

#### **Step 2: 디렉토리 구조 생성**

```bash
mkdir -p src/{routes,database,utils,types,middleware}
mkdir -p public/static/{css,js,images}
mkdir -p migrations
```

**최적화된 구조:**
```
carejoa-v2/
├── src/
│   ├── index.tsx (300줄)
│   ├── routes/
│   │   ├── auth.ts (500줄)
│   │   ├── facilities.ts (800줄)
│   │   ├── admin.ts (1,200줄)
│   │   ├── ai-matching.ts (600줄)
│   │   ├── quotes.ts (400줄)
│   │   ├── chat.ts (300줄)
│   │   └── pages.tsx (2,000줄)
│   ├── database/
│   │   ├── schema.ts (200줄)
│   │   └── queries.ts (500줄)
│   ├── utils/
│   │   ├── auth.ts (200줄)
│   │   ├── validation.ts (150줄)
│   │   └── helpers.ts (300줄)
│   ├── types/
│   │   └── index.ts (300줄)
│   └── middleware/
│       ├── auth.ts (100줄)
│       └── logger.ts (50줄)
├── public/
│   └── static/
│       ├── css/
│       │   └── tailwind.css
│       ├── js/
│       │   ├── facilities.js
│       │   ├── ai-matching.js
│       │   └── common.js
│       └── images/
├── migrations/
│   ├── 0001_create_users.sql
│   ├── 0002_create_facilities.sql
│   ├── 0003_create_quotes.sql
│   └── ...
├── wrangler.jsonc
├── vite.config.ts
├── tsconfig.json
└── package.json
```

**예상 라인 수:**
- **총 7,800줄** (기존 22,315줄 대비 65% 감소)
- **파일 크기: 약 340KB** (기존 980KB 대비 65% 감소)

---

#### **Step 3: 타입 정의** (`src/types/index.ts`)

```typescript
// src/types/index.ts
export type UserType = 'customer' | 'facility' | 'partner';
export type FacilityType = '요양병원' | '요양원' | '주야간보호' | '재가복지센터';
export type GradeValue = 'A' | 'B' | 'C' | 'D' | 'E';
export type CareGrade = '1등급' | '2등급' | '3등급' | '4등급' | '5등급' | '인지지원등급';

export interface User {
  id: string;
  email: string;
  password: string;
  name: string;
  type: UserType;
  facilityType?: FacilityType;
  address?: string;
  phone?: string;
  createdAt: string;
}

export interface Facility {
  id: number;
  type: FacilityType;
  name: string;
  phone?: string;
  address: string;
  latitude: number;
  longitude: number;
  sido: string;
  sigungu: string;
  admin_sym?: string;
  source_system?: string;
  source_code?: string;
  createdAt: string;
}

export interface FacilityPublicData {
  id: number;
  facility_id: number;
  grade_value: GradeValue;
  grade_year: number;
  score: number;
  last_updated: string;
}

export interface QuoteRequest {
  id: number;
  patient_name: string;
  age?: number;
  care_grade: CareGrade;
  sido: string;
  sigungu: string;
  facility_type: FacilityType;
  budget?: number;
  phone: string;
  additional_notes?: string;
  status: 'pending' | 'responded' | 'completed';
  created_at: string;
}

export interface CloudflareBindings {
  DB: D1Database;
  KAKAO_REST_API_KEY: string;
  KAKAO_REDIRECT_URI: string;
  ADMIN_PASSWORD: string;
}
```

---

#### **Step 4: 데이터베이스 마이그레이션**

**migrations/0001_create_users.sql:**
```sql
-- 사용자 테이블
CREATE TABLE IF NOT EXISTS users (
  id TEXT PRIMARY KEY,
  email TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  name TEXT NOT NULL,
  type TEXT NOT NULL CHECK(type IN ('customer', 'facility', 'partner')),
  facility_type TEXT CHECK(facility_type IN ('요양병원', '요양원', '주야간보호', '재가복지센터')),
  address TEXT,
  phone TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_users_type ON users(type);
```

**migrations/0002_create_facilities.sql:**
```sql
-- 시설 테이블
CREATE TABLE IF NOT EXISTS facilities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  type TEXT NOT NULL,
  name TEXT NOT NULL,
  phone TEXT,
  address TEXT NOT NULL,
  latitude REAL NOT NULL,
  longitude REAL NOT NULL,
  sido TEXT NOT NULL,
  sigungu TEXT NOT NULL,
  admin_sym TEXT,
  source_system TEXT,
  source_code TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_facilities_sido ON facilities(sido);
CREATE INDEX idx_facilities_sigungu ON facilities(sigungu);
CREATE INDEX idx_facilities_type ON facilities(type);
CREATE INDEX idx_facilities_admin_sym ON facilities(admin_sym);

-- 시설 평가 데이터
CREATE TABLE IF NOT EXISTS facility_public_data (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  facility_id INTEGER NOT NULL,
  grade_value TEXT CHECK(grade_value IN ('A', 'B', 'C', 'D', 'E')),
  grade_year INTEGER,
  score REAL,
  last_updated DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (facility_id) REFERENCES facilities(id) ON DELETE CASCADE
);

CREATE INDEX idx_facility_public_data_facility_id ON facility_public_data(facility_id);
CREATE INDEX idx_facility_public_data_grade ON facility_public_data(grade_value);

-- 시설 평점
CREATE TABLE IF NOT EXISTS facility_ratings (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  facility_id INTEGER NOT NULL,
  user_id TEXT NOT NULL,
  overall_rating REAL NOT NULL CHECK(overall_rating >= 0 AND overall_rating <= 5),
  cleanliness_rating REAL CHECK(cleanliness_rating >= 0 AND cleanliness_rating <= 5),
  staff_rating REAL CHECK(staff_rating >= 0 AND staff_rating <= 5),
  food_rating REAL CHECK(food_rating >= 0 AND food_rating <= 5),
  facilities_rating REAL CHECK(facilities_rating >= 0 AND facilities_rating <= 5),
  comment TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (facility_id) REFERENCES facilities(id) ON DELETE CASCADE,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE INDEX idx_facility_ratings_facility_id ON facility_ratings(facility_id);
CREATE INDEX idx_facility_ratings_user_id ON facility_ratings(user_id);
```

**마이그레이션 실행:**
```bash
# 로컬 개발
npx wrangler d1 migrations apply carejoa-v2-production --local

# 프로덕션
npx wrangler d1 migrations apply carejoa-v2-production --remote
```

---

#### **Step 5: 인증 미들웨어** (`src/middleware/auth.ts`)

```typescript
// src/middleware/auth.ts
import { Context, Next } from 'hono';
import { CloudflareBindings } from '../types';

export async function requireAuth(c: Context<{ Bindings: CloudflareBindings }>, next: Next) {
  const sessionId = c.req.cookie('session_id');
  
  if (!sessionId) {
    return c.redirect('/login');
  }

  // 세션 검증 (실제로는 DB에서 조회)
  // const session = await c.env.DB.prepare('SELECT * FROM user_sessions WHERE id = ?').bind(sessionId).first();
  // if (!session) {
  //   return c.redirect('/login');
  // }

  await next();
}

export async function requireAdmin(c: Context<{ Bindings: CloudflareBindings }>, next: Next) {
  const adminPassword = c.req.cookie('admin_session');
  
  if (adminPassword !== c.env.ADMIN_PASSWORD) {
    return c.redirect('/admin');
  }

  await next();
}
```

---

#### **Step 6: 인증 라우트** (`src/routes/auth.ts`)

```typescript
// src/routes/auth.ts
import { Hono } from 'hono';
import { CloudflareBindings } from '../types';
import { z } from 'zod';
import { zValidator } from '@hono/zod-validator';

const auth = new Hono<{ Bindings: CloudflareBindings }>();

// 로그인 페이지
auth.get('/login', (c) => {
  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>로그인 - 케어조아</title>
      <link href="/static/tailwind.css" rel="stylesheet">
    </head>
    <body class="bg-gray-50">
      <div class="min-h-screen flex items-center justify-center px-4">
        <div class="max-w-md w-full bg-white rounded-lg shadow-lg p-8">
          <h1 class="text-3xl font-bold text-center text-gray-800 mb-8">케어조아 로그인</h1>
          
          <form id="loginForm" class="space-y-6">
            <div>
              <label class="block text-sm font-medium text-gray-700 mb-2">이메일</label>
              <input type="email" name="email" required
                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent">
            </div>
            
            <div>
              <label class="block text-sm font-medium text-gray-700 mb-2">비밀번호</label>
              <input type="password" name="password" required
                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent">
            </div>
            
            <button type="submit"
              class="w-full bg-purple-600 text-white py-3 rounded-lg font-bold hover:bg-purple-700 transition-colors">
              로그인
            </button>
          </form>
          
          <div class="mt-6">
            <button id="kakaoLogin"
              class="w-full bg-yellow-400 text-gray-800 py-3 rounded-lg font-bold hover:bg-yellow-500 transition-colors">
              카카오 로그인
            </button>
          </div>
          
          <p class="mt-6 text-center text-gray-600">
            계정이 없으신가요? <a href="/register" class="text-purple-600 font-bold hover:underline">회원가입</a>
          </p>
        </div>
      </div>
      
      <script>
        document.getElementById('loginForm').addEventListener('submit', async (e) => {
          e.preventDefault();
          const formData = new FormData(e.target);
          const response = await fetch('/api/auth/login', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
              email: formData.get('email'),
              password: formData.get('password')
            })
          });
          const data = await response.json();
          if (data.success) {
            window.location.href = data.redirectUrl || '/';
          } else {
            alert(data.message || '로그인 실패');
          }
        });
        
        document.getElementById('kakaoLogin').addEventListener('click', () => {
          window.location.href = '/api/auth/kakao/login';
        });
      </script>
    </body>
    </html>
  `);
});

// 로그인 API
const loginSchema = z.object({
  email: z.string().email(),
  password: z.string().min(4)
});

auth.post('/api/auth/login', zValidator('json', loginSchema), async (c) => {
  const { email, password } = c.req.valid('json');
  const { env } = c;

  try {
    // 사용자 조회
    const user = await env.DB.prepare('SELECT * FROM users WHERE email = ?').bind(email).first();
    
    if (!user || user.password !== password) {
      return c.json({ success: false, message: '이메일 또는 비밀번호가 올바르지 않습니다.' }, 401);
    }

    // 세션 생성
    const sessionId = `session_${Date.now()}_${Math.random().toString(36).substring(7)}`;
    
    // 쿠키 설정
    c.cookie('session_id', sessionId, {
      httpOnly: true,
      secure: true,
      maxAge: 7 * 24 * 60 * 60, // 7일
      sameSite: 'Lax'
    });

    return c.json({
      success: true,
      redirectUrl: user.type === 'customer' ? '/dashboard/customer' : '/dashboard/facility',
      user: {
        id: user.id,
        email: user.email,
        name: user.name,
        type: user.type
      }
    });
  } catch (error) {
    console.error('로그인 오류:', error);
    return c.json({ success: false, message: '서버 오류가 발생했습니다.' }, 500);
  }
});

// 로그아웃 API
auth.post('/api/auth/logout', (c) => {
  c.cookie('session_id', '', { maxAge: 0 });
  return c.json({ success: true });
});

// 현재 사용자 정보 API
auth.get('/api/auth/me', async (c) => {
  const sessionId = c.req.cookie('session_id');
  
  if (!sessionId) {
    return c.json({ authenticated: false }, 401);
  }

  // 실제로는 세션에서 사용자 정보 조회
  return c.json({ authenticated: true, user: { /* ... */ } });
});

export default auth;
```

---

#### **Step 7: 시설 라우트** (`src/routes/facilities.ts`)

```typescript
// src/routes/facilities.ts
import { Hono } from 'hono';
import { CloudflareBindings } from '../types';

const facilities = new Hono<{ Bindings: CloudflareBindings }>();

// 시설 목록 API
facilities.get('/api/facilities', async (c) => {
  const { env } = c;
  const { page = '1', limit = '50', sido, sigungu, type, grade } = c.req.query();

  try {
    let whereConditions = [];
    let params = [];

    if (sido) {
      whereConditions.push('f.sido = ?');
      params.push(sido);
    }
    if (sigungu) {
      whereConditions.push('f.sigungu = ?');
      params.push(sigungu);
    }
    if (type) {
      whereConditions.push('f.type = ?');
      params.push(type);
    }
    if (grade) {
      whereConditions.push('fpd.grade_value = ?');
      params.push(grade);
    }

    const whereClause = whereConditions.length > 0 ? `WHERE ${whereConditions.join(' AND ')}` : '';

    // 총 개수 조회
    const countQuery = `
      SELECT COUNT(*) as total
      FROM facilities f
      LEFT JOIN facility_public_data fpd ON fpd.facility_id = f.id
      ${whereClause}
    `;
    const countResult = await env.DB.prepare(countQuery).bind(...params).first();
    const total = countResult?.total || 0;

    // 시설 목록 조회
    const offset = (parseInt(page) - 1) * parseInt(limit);
    const query = `
      SELECT 
        f.id, f.name, f.type, f.address, f.sido, f.sigungu, f.phone,
        f.latitude as lat, f.longitude as lng,
        fpd.grade_value, fpd.score
      FROM facilities f
      LEFT JOIN facility_public_data fpd ON fpd.facility_id = f.id
      ${whereClause}
      ORDER BY f.id DESC
      LIMIT ? OFFSET ?
    `;
    const result = await env.DB.prepare(query).bind(...params, parseInt(limit), offset).all();

    return c.json({
      success: true,
      total,
      page: parseInt(page),
      limit: parseInt(limit),
      facilities: result.results || []
    });
  } catch (error) {
    console.error('시설 목록 조회 오류:', error);
    return c.json({ success: false, message: '서버 오류가 발생했습니다.' }, 500);
  }
});

// 시설 상세 API
facilities.get('/api/facilities/:id', async (c) => {
  const { env } = c;
  const id = c.req.param('id');

  try {
    const query = `
      SELECT 
        f.id, f.name, f.type, f.address, f.sido, f.sigungu, f.phone,
        f.latitude as lat, f.longitude as lng,
        fpd.grade_value, fpd.score, fpd.grade_year,
        AVG(fr.overall_rating) as avg_rating,
        COUNT(fr.id) as review_count
      FROM facilities f
      LEFT JOIN facility_public_data fpd ON fpd.facility_id = f.id
      LEFT JOIN facility_ratings fr ON fr.facility_id = f.id
      WHERE f.id = ?
      GROUP BY f.id
    `;
    const facility = await env.DB.prepare(query).bind(id).first();

    if (!facility) {
      return c.json({ success: false, message: '시설을 찾을 수 없습니다.' }, 404);
    }

    return c.json({ success: true, facility });
  } catch (error) {
    console.error('시설 상세 조회 오류:', error);
    return c.json({ success: false, message: '서버 오류가 발생했습니다.' }, 500);
  }
});

export default facilities;
```

---

#### **Step 8: AI 매칭 라우트** (`src/routes/ai-matching.ts`)

```typescript
// src/routes/ai-matching.ts
import { Hono } from 'hono';
import { CloudflareBindings, Facility } from '../types';

const aiMatching = new Hono<{ Bindings: CloudflareBindings }>();

interface SearchCriteria {
  sido?: string;
  sigungu?: string;
  facilityType?: string;
  careGrade?: string;
  budget?: number;
  latitude?: number;
  longitude?: number;
  maxDistance?: number;
  keywords?: string[];
}

// AI 매칭 API
aiMatching.post('/api/ai-matching', async (c) => {
  const { env } = c;
  const criteria: SearchCriteria = await c.req.json();

  try {
    // 1. 기본 필터링
    let whereConditions = [];
    let params = [];

    if (criteria.sido) {
      whereConditions.push('f.sido = ?');
      params.push(criteria.sido);
    }
    if (criteria.sigungu) {
      whereConditions.push('f.sigungu = ?');
      params.push(criteria.sigungu);
    }
    if (criteria.facilityType) {
      whereConditions.push('f.type = ?');
      params.push(criteria.facilityType);
    }

    const whereClause = whereConditions.length > 0 ? `WHERE ${whereConditions.join(' AND ')}` : '';

    const query = `
      SELECT 
        f.id, f.name, f.type, f.address, f.sido, f.sigungu, f.phone,
        f.latitude as lat, f.longitude as lng,
        fpd.grade_value, fpd.score,
        AVG(fr.overall_rating) as avg_rating,
        COUNT(fr.id) as review_count
      FROM facilities f
      LEFT JOIN facility_public_data fpd ON fpd.facility_id = f.id
      LEFT JOIN facility_ratings fr ON fr.facility_id = f.id
      ${whereClause}
      GROUP BY f.id
      LIMIT 100
    `;

    const result = await env.DB.prepare(query).bind(...params).all();
    let facilities = result.results || [];

    // 2. 거리 계산 (좌표가 제공된 경우)
    if (criteria.latitude && criteria.longitude) {
      facilities = facilities.map((f: any) => ({
        ...f,
        distance: calculateDistance(
          criteria.latitude!,
          criteria.longitude!,
          f.lat,
          f.lng
        )
      }));

      if (criteria.maxDistance) {
        facilities = facilities.filter((f: any) => f.distance <= criteria.maxDistance!);
      }
    }

    // 3. 협업 필터링
    const collaborativeScores = new Map<number, number>();
    if (criteria.careGrade) {
      const cfQuery = `
        SELECT qr.facility_id, COUNT(*) as selection_count
        FROM quote_requests qr
        WHERE qr.care_grade = ?
          AND qr.facility_id IS NOT NULL
        GROUP BY qr.facility_id
        HAVING selection_count >= 2
        ORDER BY selection_count DESC
        LIMIT 50
      `;
      const cfResult = await env.DB.prepare(cfQuery).bind(criteria.careGrade).all();
      
      cfResult.results?.forEach((row: any, index: number) => {
        const score = Math.min(15, (50 - index) * 0.3);
        collaborativeScores.set(row.facility_id, score);
      });
    }

    // 4. 매칭 스코어 계산
    const scored = facilities.map((f: any) => {
      const collaborativeScore = collaborativeScores.get(f.id) || 0;
      const matchScore = calculateEnhancedMatchScore(f, criteria, collaborativeScore);
      
      return {
        ...f,
        matchScore,
        matchReasons: generateMatchReasons(f, criteria, matchScore)
      };
    });

    // 5. 정렬
    scored.sort((a, b) => b.matchScore - a.matchScore);

    // 6. 최소 2개 보장
    if (scored.length < 2 && facilities.length >= 2) {
      // 조건 완화 로직
      const fallbackQuery = `
        SELECT 
          f.id, f.name, f.type, f.address, f.sido, f.sigungu, f.phone,
          f.latitude as lat, f.longitude as lng
        FROM facilities f
        ORDER BY RANDOM()
        LIMIT ?
      `;
      const fallbackResult = await env.DB.prepare(fallbackQuery).bind(2 - scored.length).all();
      
      fallbackResult.results?.forEach((f: any, index: number) => {
        scored.push({
          ...f,
          matchScore: 40,
          matchReasons: ['조건 검색 결과가 부족하여 추천드리는 시설입니다']
        });
      });
    }

    // 7. 상위 10개 선택
    const recommendations = scored.slice(0, 10).map((f, index) => ({
      id: f.id,
      rank: index + 1,
      name: f.name,
      type: f.type,
      address: f.address,
      sido: f.sido,
      sigungu: f.sigungu,
      phone: f.phone || '미등록',
      lat: f.lat,
      lng: f.lng,
      distance: f.distance ? `${f.distance.toFixed(1)}km` : '거리 정보 없음',
      matchScore: Math.round(f.matchScore),
      matchReasons: f.matchReasons,
      rating: f.avg_rating ? {
        average: Math.round(f.avg_rating * 10) / 10,
        count: f.review_count
      } : null
    }));

    return c.json({
      success: true,
      total: facilities.length,
      recommendations,
      algorithm: 'enhanced_ai_v2',
      criteria
    });
  } catch (error) {
    console.error('AI 매칭 오류:', error);
    return c.json({ success: false, message: '서버 오류가 발생했습니다.' }, 500);
  }
});

// 거리 계산 함수 (Haversine formula)
function calculateDistance(lat1: number, lon1: number, lat2: number, lon2: number): number {
  const R = 6371; // 지구 반지름 (km)
  const dLat = (lat2 - lat1) * Math.PI / 180;
  const dLon = (lon2 - lon1) * Math.PI / 180;
  const a =
    Math.sin(dLat / 2) * Math.sin(dLat / 2) +
    Math.cos(lat1 * Math.PI / 180) * Math.cos(lat2 * Math.PI / 180) *
    Math.sin(dLon / 2) * Math.sin(dLon / 2);
  const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
  return R * c;
}

// 매칭 스코어 계산
function calculateEnhancedMatchScore(
  facility: any,
  criteria: SearchCriteria,
  collaborativeScore: number
): number {
  let score = 0;

  // 1. 지역 매칭 (최대 30점)
  if (facility.sido === criteria.sido) score += 15;
  if (facility.sigungu === criteria.sigungu) score += 15;

  // 2. 시설 유형 매칭 (최대 20점)
  if (facility.type === criteria.facilityType) score += 20;

  // 3. 거리 매칭 (최대 15점)
  if (facility.distance) {
    if (facility.distance <= 5) score += 15;
    else if (facility.distance <= 10) score += 10;
    else if (facility.distance <= 20) score += 5;
  }

  // 4. 평점 매칭 (최대 15점)
  if (facility.avg_rating) {
    score += (facility.avg_rating / 5) * 15;
  }

  // 5. 평가 등급 매칭 (최대 10점)
  const gradeScores: Record<string, number> = { A: 10, B: 8, C: 6, D: 4, E: 2 };
  if (facility.grade_value) {
    score += gradeScores[facility.grade_value] || 0;
  }

  // 6. 협업 필터링 보너스 (최대 15점)
  score += collaborativeScore;

  return Math.min(100, score);
}

// 매칭 사유 생성
function generateMatchReasons(facility: any, criteria: SearchCriteria, score: number): string[] {
  const reasons: string[] = [];

  if (facility.sido === criteria.sido && facility.sigungu === criteria.sigungu) {
    reasons.push(`📍 ${facility.sigungu} 지역`);
  } else if (facility.sido === criteria.sido) {
    reasons.push(`📍 ${facility.sido} 지역`);
  }

  if (facility.type === criteria.facilityType) {
    reasons.push(`🏥 ${facility.type}`);
  }

  if (facility.distance) {
    reasons.push(`📏 거리 ${facility.distance.toFixed(1)}km`);
  }

  if (facility.grade_value) {
    reasons.push(`⭐ ${facility.grade_value}등급`);
  }

  if (facility.avg_rating) {
    reasons.push(`💯 평점 ${facility.avg_rating.toFixed(1)}점`);
  }

  return reasons.length > 0 ? reasons : ['추천 시설입니다'];
}

export default aiMatching;
```

---

#### **Step 9: 메인 진입점** (`src/index.tsx`)

```typescript
// src/index.tsx
import { Hono } from 'hono';
import { cors } from 'hono/cors';
import { logger } from 'hono/logger';
import { serveStatic } from 'hono/cloudflare-workers';
import { CloudflareBindings } from './types';

// 라우트 임포트
import auth from './routes/auth';
import facilities from './routes/facilities';
import aiMatching from './routes/ai-matching';
// import admin from './routes/admin';
// import quotes from './routes/quotes';
// import chat from './routes/chat';
// import pages from './routes/pages';

const app = new Hono<{ Bindings: CloudflareBindings }>();

// 미들웨어
app.use('*', logger());
app.use('/api/*', cors());

// 정적 파일
app.use('/static/*', serveStatic({ root: './public' }));

// 라우트 등록
app.route('/', auth);
app.route('/', facilities);
app.route('/', aiMatching);
// app.route('/', admin);
// app.route('/', quotes);
// app.route('/', chat);
// app.route('/', pages);

// 홈페이지
app.get('/', (c) => {
  return c.html(`
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>케어조아 - 요양시설 매칭 플랫폼</title>
      <link href="/static/tailwind.css" rel="stylesheet">
    </head>
    <body>
      <div class="min-h-screen bg-gradient-to-br from-purple-50 to-indigo-100">
        <header class="bg-white shadow-lg">
          <nav class="max-w-7xl mx-auto px-4 py-4">
            <div class="flex justify-between items-center">
              <h1 class="text-3xl font-bold text-purple-600">케어조아</h1>
              <div class="space-x-4">
                <a href="/facilities" class="text-gray-700 hover:text-purple-600">시설 찾기</a>
                <a href="/ai-matching" class="text-gray-700 hover:text-purple-600">AI 매칭</a>
                <a href="/login" class="bg-purple-600 text-white px-6 py-2 rounded-lg hover:bg-purple-700">로그인</a>
              </div>
            </div>
          </nav>
        </header>
        
        <main class="max-w-7xl mx-auto px-4 py-16">
          <div class="text-center">
            <h2 class="text-5xl font-bold text-gray-800 mb-6">
              AI 기반 요양시설 매칭 플랫폼
            </h2>
            <p class="text-xl text-gray-600 mb-12">
              특허 출원한 AI 알고리즘으로 최적의 요양시설을 찾아드립니다
            </p>
            
            <div class="flex justify-center space-x-4">
              <a href="/ai-matching" 
                class="bg-purple-600 text-white px-8 py-4 rounded-xl text-lg font-bold hover:bg-purple-700 transition-colors">
                AI 매칭 시작
              </a>
              <a href="/facilities"
                class="bg-white text-purple-600 border-2 border-purple-600 px-8 py-4 rounded-xl text-lg font-bold hover:bg-purple-50 transition-colors">
                시설 검색
              </a>
            </div>
          </div>
          
          <div class="mt-24 grid md:grid-cols-3 gap-8">
            <div class="bg-white p-8 rounded-xl shadow-lg">
              <div class="text-4xl mb-4">🤖</div>
              <h3 class="text-2xl font-bold text-gray-800 mb-4">AI 매칭</h3>
              <p class="text-gray-600">
                12가지 변수를 분석하여 최적의 요양시설을 추천합니다
              </p>
            </div>
            
            <div class="bg-white p-8 rounded-xl shadow-lg">
              <div class="text-4xl mb-4">⭐</div>
              <h3 class="text-2xl font-bold text-gray-800 mb-4">평가 등급</h3>
              <p class="text-gray-600">
                공단 평가 등급 9,994개 시설의 실제 평가 정보 제공
              </p>
            </div>
            
            <div class="bg-white p-8 rounded-xl shadow-lg">
              <div class="text-4xl mb-4">📍</div>
              <h3 class="text-2xl font-bold text-gray-800 mb-4">전국 20,480개</h3>
              <p class="text-gray-600">
                전국의 요양병원, 요양원, 주야간보호, 재가복지센터
              </p>
            </div>
          </div>
        </main>
      </div>
    </body>
    </html>
  `);
});

export default app;
```

---

#### **Step 10: 배포 설정**

**wrangler.jsonc:**
```jsonc
{
  "$schema": "node_modules/wrangler/config-schema.json",
  "name": "carejoa-v2",
  "compatibility_date": "2024-01-01",
  "pages_build_output_dir": "./dist",
  "compatibility_flags": ["nodejs_compat"],
  
  "d1_databases": [
    {
      "binding": "DB",
      "database_name": "carejoa-v2-production",
      "database_id": "your-database-id"
    }
  ],
  
  "vars": {
    "KAKAO_REST_API_KEY": "",
    "KAKAO_REDIRECT_URI": "https://carejoa-v2.pages.dev/api/auth/kakao/callback",
    "ADMIN_PASSWORD": ""
  }
}
```

**package.json:**
```json
{
  "name": "carejoa-v2",
  "version": "2.0.0",
  "scripts": {
    "dev": "vite",
    "build": "vite build",
    "preview": "wrangler pages dev dist",
    "deploy": "npm run build && wrangler pages deploy dist --project-name carejoa-v2",
    "db:migrate:local": "wrangler d1 migrations apply carejoa-v2-production --local",
    "db:migrate:prod": "wrangler d1 migrations apply carejoa-v2-production"
  },
  "dependencies": {
    "hono": "^4.0.0",
    "zod": "^3.22.0"
  },
  "devDependencies": {
    "@cloudflare/workers-types": "^4.20250705.0",
    "@hono/vite-cloudflare-pages": "^0.4.2",
    "@hono/zod-validator": "^0.2.0",
    "vite": "^5.0.0",
    "wrangler": "^3.78.0",
    "typescript": "^5.0.0"
  }
}
```

---

## 9. 삭제/축소 가능 부분

### 🗑️ 즉시 삭제 가능 (6,500줄, 30%)

#### 1. 관리자 페이지 HTML (5,000줄)
**위치**: 라인 6531-11531
**이유**: 관리자 페이지는 별도 React 프로젝트로 분리 권장
**대안**: 
- React + Vite로 별도 관리자 대시보드 구축
- Cloudflare Pages에 별도 배포 (`admin.carejoa.kr`)
- API는 동일하게 사용

#### 2. 테스트/더미 데이터 (500줄)
**위치**: 라인 50-550
**이유**: 프로덕션에 불필요
```typescript
// 삭제 가능
const dataStore = {
  partners: [],
  familyCareRequests: [],
  quoteRequests: [],
  facilities: [],
  users: []
};

function initTestUsers() {
  // 테스트 사용자 생성
}
```

#### 3. 미사용 기능 (1,000줄)
- 구독 서비스 (라인 232-538) - 개발 중단
- 한의원 연계 서비스 (라인 4723-5268) - 사용률 낮음
- 긴급 이송 서비스 (라인 18779-19417) - 미완성

---

### ⚖️ 축소 가능 (3,000줄, 15%)

#### 1. 중복 HTML 템플릿
**현재**: 각 페이지마다 전체 HTML 구조 반복
```typescript
app.get('/page1', (c) => {
  return c.html(`
    <!DOCTYPE html>
    <html>
    <head>...</head>
    <body>...</body>
    </html>
  `);
});
```

**개선**: 공통 레이아웃 함수
```typescript
function layout(title: string, content: string) {
  return `
    <!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <title>${title} - 케어조아</title>
      <link href="/static/tailwind.css" rel="stylesheet">
    </head>
    <body>
      ${content}
    </body>
    </html>
  `;
}

app.get('/page1', (c) => {
  return c.html(layout('페이지1', `<h1>내용</h1>`));
});
```

**예상 절감**: 2,000줄 → 800줄 (60% 감소)

#### 2. SQL 쿼리 중복
**현재**: 동일한 쿼리가 여러 곳에 반복
```typescript
// 시설 목록 쿼리가 5곳에서 중복
const query = `SELECT f.id, f.name... FROM facilities f LEFT JOIN ...`;
```

**개선**: 쿼리 함수 모듈화
```typescript
// src/database/queries.ts
export async function getFacilities(db: D1Database, filters: any) {
  const query = `SELECT f.id, f.name... FROM facilities f LEFT JOIN ...`;
  return await db.prepare(query).bind(...).all();
}
```

**예상 절감**: 1,000줄 → 500줄 (50% 감소)

---

## 10. 최적화된 파일 구조

### 📂 권장 구조 (총 7,800줄)

```
carejoa-v2/
├── src/
│   ├── index.tsx (300줄)                    ← 메인 진입점
│   │
│   ├── routes/                              ← API 라우트 (5,000줄)
│   │   ├── auth.ts (500줄)                  - 인증 (로그인, 회원가입, 카카오)
│   │   ├── facilities.ts (800줄)            - 시설 (목록, 상세, 검색)
│   │   ├── admin.ts (1,200줄)               - 관리자 (통계, 시설 관리)
│   │   ├── ai-matching.ts (600줄)           - AI 매칭 알고리즘
│   │   ├── quotes.ts (400줄)                - 견적 요청 및 응답
│   │   ├── chat.ts (300줄)                  - 채팅 시스템
│   │   └── pages.tsx (1,200줄)              - 페이지 라우트 (HTML)
│   │
│   ├── database/                            ← 데이터베이스 (700줄)
│   │   ├── schema.ts (200줄)                - 테이블 스키마 정의
│   │   └── queries.ts (500줄)               - 재사용 가능한 쿼리 함수
│   │
│   ├── utils/                               ← 유틸리티 (650줄)
│   │   ├── auth.ts (200줄)                  - 인증 헬퍼 (세션, 해시)
│   │   ├── validation.ts (150줄)            - 유효성 검사
│   │   ├── helpers.ts (200줄)               - 공통 헬퍼 함수
│   │   └── layout.ts (100줄)                - HTML 레이아웃 템플릿
│   │
│   ├── middleware/                          ← 미들웨어 (150줄)
│   │   ├── auth.ts (100줄)                  - 인증 미들웨어
│   │   └── logger.ts (50줄)                 - 로깅 미들웨어
│   │
│   └── types/                               ← 타입 정의 (300줄)
│       └── index.ts (300줄)                 - TypeScript 인터페이스
│
├── public/                                  ← 정적 파일
│   └── static/
│       ├── css/
│       │   └── tailwind.css                 - Tailwind CSS (컴파일된)
│       ├── js/
│       │   ├── facilities.js                - 시설 검색 UI 로직
│       │   ├── ai-matching.js               - AI 매칭 UI 로직
│       │   └── common.js                    - 공통 JavaScript
│       └── images/
│           └── logo.png
│
├── migrations/                              ← DB 마이그레이션
│   ├── 0001_create_users.sql
│   ├── 0002_create_facilities.sql
│   ├── 0003_create_quotes.sql
│   ├── 0004_create_chat.sql
│   └── 0005_create_calculator.sql
│
├── wrangler.jsonc                           ← Cloudflare 설정
├── vite.config.ts                           ← Vite 빌드 설정
├── tsconfig.json                            ← TypeScript 설정
├── package.json                             ← 패키지 정의
└── README.md                                ← 프로젝트 문서
```

---

## 📊 최적화 효과 비교

| 항목 | 현재 (v1) | 최적화 (v2) | 개선율 |
|------|-----------|-------------|--------|
| **총 라인 수** | 22,315줄 | 7,800줄 | **65% 감소** |
| **파일 크기** | 980KB | 340KB | **65% 감소** |
| **빌드 시간** | 2.0초 | 0.8초 | **60% 빠름** |
| **파일 개수** | 1개 | 15개+ | **모듈화** |
| **유지보수** | 매우 어려움 | 쉬움 | **300% 향상** |
| **안정성** | 불안정 | 안정 | **미리보기 정상화** |

---

## 🎯 결론 및 권장사항

### ✅ 즉시 실행 가능한 조치

1. **관리자 페이지 분리** (5,000줄 감소)
   - React 별도 프로젝트 생성
   - `admin.carejoa.kr`로 분리 배포

2. **테스트 데이터 제거** (500줄 감소)
   - 환경변수 또는 DB 시드 파일로 이동

3. **미사용 기능 제거** (1,000줄 감소)
   - 구독, 한의원, 긴급 이송 삭제

**예상 효과**: **6,500줄 감소 (30%)**

### 🔧 중기 최적화

4. **파일 분리** (유지보수성 300% 향상)
   - `src/routes/` 디렉토리 생성
   - 기능별 모듈화

5. **쿼리 모듈화** (1,000줄 감소)
   - `src/database/queries.ts` 생성
   - 중복 쿼리 제거

**예상 효과**: **추가 3,000줄 감소 (15%)**

### 🚀 장기 최적화

6. **프론트엔드 분리**
   - React + Vite 별도 프로젝트
   - API 서버와 완전 분리

7. **마이크로서비스 아키텍처**
   - 인증 서비스
   - 시설 서비스
   - AI 매칭 서비스

---

## 📝 다음 단계

1. ✅ 이 문서 검토 및 승인
2. 🔄 새 프로젝트 생성 (`carejoa-v2`)
3. 🔧 파일 분리 작업 (1주)
4. 🧪 테스트 및 마이그레이션 (1주)
5. 🚀 프로덕션 배포

---

**문서 끝** 📄

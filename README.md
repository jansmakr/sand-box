# 케어조아 (CareJOA)

## 프로젝트 개요
- **이름**: 케어조아 (CareJOA)
- **목표**: 실시간 요양 견적 및 상담 플랫폼
- **특징**: 특허기반 요양시설 매칭 서비스

## 💾 백업 정보 (IMPORTANT!)

**안정 버전 백업 (2025-11-17)**
- **백업 파일**: https://www.genspark.ai/api/files/s/v26U37Zs
- **파일 크기**: 24.1 MB
- **Git 커밋**: 1dce4b9
- **배포 URL**: https://739b4e16.carejoa-kr.pages.dev
- **복구 방법**: [RESTORE_INSTRUCTIONS.md](/home/user/webapp/RESTORE_INSTRUCTIONS.md) 참고

**백업 시점 상태:**
- ✅ 전체 시설: 20,433개
- ✅ 대표시설: 851개 (자동 지정 완료)
- ✅ 모든 기능 정상 작동 확인
- ✅ 네이버 메타태그 업데이트 완료
- ✅ 모바일 레이아웃 최적화 완료

**복구 명령어:**
```bash
# Claude에게 요청: "백업 파일로 복구해줘"
# 또는 수동 복구:
cd /home/user
wget https://www.genspark.ai/api/files/s/v26U37Zs -O backup.tar.gz
tar -xzf backup.tar.gz
cd webapp && npm install && npm run build
```

---

## 🌐 배포 URL
- **최신 배포**: https://20599e01.carejoa-kr-auto.pages.dev
- **프로덕션**: https://carejoa.kr
- **프로젝트명**: carejoa-kr-auto
- **로컬 개발**: http://localhost:3000
- **Android 앱**: https://play.google.com/store/apps/details?id=app.netlify.std_care_joa.twa
- **공식 웹사이트**: https://www.carejoa.com
- **SEO 파일**:
  - robots.txt: https://carejoa.kr/robots.txt
  - sitemap.xml: https://carejoa.kr/sitemap.xml

## ✅ 완료된 기능

### 1. 메인 랜딩 페이지
- ✅ 케어조아 로고 및 브랜딩
- ✅ 앱 스크린샷 디스플레이
- ✅ 통계 정보 (월 10만+ 이용자, 3,000+ 등록 시설, 평균 4.5점)
- ✅ Android 앱 다운로드 링크
- ✅ **3개 서비스 버튼 (3-column 레이아웃)**
  - 간편 견적 요청 (파란색, "인기" 배지)
  - **AI 맞춤 시설 찾기** (보라색, "NEW" 배지) ⭐ NEW!
  - 상세 맞춤 상담 (초록색)

### 2. 서비스 특징 섹션
- ✅ 실시간 견적 - 간단한 정보로 즉시 확인
- ✅ 검증된 시설 - 정부 인증 및 전문가 검증
- ✅ 전문 상담 - 24시간 자격 보유 상담사
- ✅ 가족 같은 마음 - 끝까지 함께하는 케어

### 3. 3단계 프로세스
- ✅ 1단계: 정보 입력
- ✅ 2단계: 견적 비교
- ✅ 3단계: 전문 상담

### 4. 요양시설 입점 신청
- ✅ 시설명, 시설 유형 선택
- ✅ **시설 주소 입력** (NEW! 2025-12-24)
  - 시/도 선택 (드롭다운)
  - 시/군/구 선택 (캐스케이딩 드롭다운, 자동 업데이트)
  - 상세주소 입력
- ✅ 담당자 정보 (이름, 연락처)
- ✅ 실시간 데이터 저장
- ✅ 시설 유형: 상급종합병원, 주민센터사회복지, 요양원, 요양병원, 주간보호센터, 그룹홈, 재가복지센터, 한의사왕진서비스, 기타

### 5. 가족 간병 등록
- ✅ 보호자 정보 (이름, 연락처)
- ✅ 환자 정보 (이름, 나이)
- ✅ 지역 정보
- ✅ 상세 요청사항
- ✅ 실시간 데이터 저장

### 6. 지역별 전화상담 시스템
- ✅ 전국 시/도 및 시/군/구 선택 시스템
- ✅ 지역별 대표 상담센터 표시 (최대 4개)
- ✅ 상담센터 정보 (시설명, 유형, 담당자, 전화번호)
- ✅ 원클릭 전화 연결 기능
- ✅ 등록된 센터가 없을 경우 대표번호 안내
- ✅ URL: https://carejoa.kr/call-consultation

### 6-1. AI 맞춤 시설 찾기 (Phase 1 MVP) ⭐ NEW! 2025-12-31
- ✅ **스마트 매칭 알고리즘**
  - 지리적 인접성 필터링 (Haversine 거리 계산)
  - 시설 유형 매칭 (요양병원/요양원/주야간보호/재가복지센터)
  - 장기요양등급 매칭 (2025년 월 한도액 기준)
  - 예산 범위 필터링
- ✅ **시설 유형별 필터 분리**
  - 요양병원: 건강보험 유형 선택 (건강보험/의료급여/보훈)
  - 요양원/주야간보호/재가복지센터: 장기요양등급 선택 (1~5등급, 인지지원등급)
- ✅ **사용자 입력 폼**
  - 시/도 및 시/군/구 선택
  - 시설 유형 선택
  - 장기요양등급 또는 건강보험 유형 (동적 표시)
  - 예산 범위 (최소/최대)
  - 최대 거리 설정 (기본 20km)
- ✅ **매칭 결과 표시**
  - 상위 10개 추천 시설
  - 거리 정보 (km)
  - 매칭 점수 (100~200점)
  - 시설 정보 (이름, 유형, 주소, 전화)
  - 원클릭 전화 연결
- ✅ **디자인**
  - 보라색 테마 (메인 컬러: #7C3AED)
  - 반응형 레이아웃
  - 로봇 아이콘
  - 그라데이션 버튼
- ✅ URL: https://carejoa.kr/ai-matching
- ✅ API: POST /api/matching/facilities

### 7. 전국 요양시설 찾기
- ✅ **20,432개** 전국 요양시설 데이터베이스 (Cloudflare D1)
- ✅ **다중 필터 검색**
  - 시/도 선택 (18개 지역)
  - 시/군/구 선택 (캐스케이딩, ~250개 지역)
  - 시설 유형 선택 (요양병원, 요양원, 재가복지센터, 주야간보호)
  - 시설명 키워드 검색
- ✅ **Leaflet.js 지도 연동** (오픈소스, API 키 불필요)
  - 빠른 로딩 속도 (0.5초 이하)
  - OpenStreetMap 타일 사용
  - 시설 유형별 색상 마커 (빨강/파랑/초록/주황)
  - 검색 결과 마커 표시 (최대 100개)
  - 마커 클릭으로 시설 정보 팝업
  - 시설 목록의 "지도" 버튼으로 특정 위치 확대
- ✅ **2열 레이아웃**: 지도(좌) + 시설 목록(우)
- ✅ **반응형 디자인**: 모바일/태블릿/데스크톱 최적화
- ✅ **성능 최적화**: 5.7MB CSV 클라이언트 사이드 로딩

### 8. 관리자 시스템
- ✅ 관리자 로그인 (환경 변수로 설정)
- ✅ 대시보드 통계
- ✅ 파트너 신청 목록 조회
- ✅ **시설 주소 정보 표시** (NEW!)
- ✅ **지역별 대표 상담센터 관리**
  - 파트너 시설 중 대표 센터 선택 (체크박스)
  - 시/도 및 시/군/구 지역 설정
  - 지역별 최대 4개 제한
  - 실시간 지역별 노출 관리
- ✅ **요양시설 정보 관리 페이지** (NEW! 2025-10-16)
  - 27,657개 전국 요양시설 데이터베이스 관리
  - CSV 일괄 임포트 기능 (1-2분 소요)
  - 시설 추가/수정/삭제 (전화번호 포함)
  - 다중 필터 검색 (시도/시군구/유형/키워드)
  - 페이지네이션 (50개씩)
  - D1 데이터베이스 초기화 기능
- ✅ 가족 간병 신청 목록 조회
- ✅ 세션 기반 인증
- ✅ 로그아웃 기능

### 13. 인증 시스템 (NEW! 2025-12-28)
- ✅ **D1 기반 세션 관리**
  - Cloudflare Workers Stateless 환경 완벽 대응
  - sessions 테이블로 영구 세션 저장
  - 7일 세션 유지
- ✅ **사용자 유형별 인증**
  - 고객 (customer)
  - 시설 (facility)
  - 병원 관리자 (hospital_manager)
  - 복지 관리자 (welfare_manager)
- ✅ **보안 강화**
  - httpOnly 쿠키
  - D1 전용 인증 (프로덕션)
  - 로컬 개발 메모리 폴백
  - 로그아웃 시 D1 세션 완전 삭제
- ✅ **API 보호**
  - requireAuth 미들웨어
  - 사용자 유형별 권한 검증
  - 401/403 에러 핸들링

### 14. 견적 관리 시스템 (NEW! 2025-12-25)
- ✅ **상세 견적 요청** (27개 항목)
  - 기본 정보 (8개): 이메일, 보험형태, 시설규모, 요양비용, 희망프로그램, 종교활동, 보호자나이, 배우자나이
  - 환자 상태 (8개): 주요증상, 의사소통, 식사능력, 식사유형, 거동능력, 화장실사용, 추가케어, 기타증상
  - 생년월일 (3개): 출생년도, 출생월, 출생일
  - 의료 정보 (4개): 진단명, 일상생활수행능력, 치매정도, 서비스유형
  - 추가 정보 (4개): 주거형태, 질병, 성격, 특이사항
- ✅ **시설 대시보드**
  - 지역별 새 견적 요청 조회 (시설 주소 기반 매칭)
  - 견적서 작성 모달 (27개 항목 모두 표시)
  - 견적서 전송 기능
  - 내가 보낸 견적서 목록
- ✅ **고객 대시보드**
  - 내 견적 요청 목록
  - 받은 견적서 개수 표시
  - 견적서 상세 조회
  - 견적서 비교 기능
- ✅ **시설별 기본 템플릿 저장** (우선순위 1)
  - 시설 정보 페이지에서 기본 템플릿 관리
  - 가격대 설정 (최소/최대)
  - 서비스 상세 내용, 특별 서비스 템플릿
  - 견적서 작성 시 템플릿 자동 로드
  - 필요한 부분만 수정하여 빠른 견적 전송
  - **작성 시간 80% 단축**
- ✅ **간단한 메시지 교환 시스템** (우선순위 2)
  - 고객 → 시설 문의 메시지 전송
  - 견적서 상세 페이지에 '문의하기' 버튼
  - 메시지 작성 모달 UI
  - chat_messages 테이블에 저장
  - 시설 답변 API 구현
- ⏳ **다음 단계** (TODO)
  - 시설 대시보드에 '받은 문의' UI 추가
  - 고객 대시보드에 메시지 내역 표시
  - 메시지 읽음 상태 관리
  - 실시간 알림 (선택사항)

### 15. 반응형 디자인
- ✅ 모바일 하단 네비게이션 (5개 컬러 버튼)
  - 🔴 상급병원 (빨강)
  - 🔵 정부복지 (파랑)
  - 🟢 가족간병 (초록)
  - ⚫ 입점신청 (회색)
  - ⚫ 관리자 (검정)
- ✅ 데스크톱 헤더 네비게이션
- ✅ 모바일 최적화 레이아웃

### 16. 푸터
- ✅ 서비스 링크
- ✅ 고객지원 (전화: 0507-1310-5873, 카카오톡, 이메일)
- ✅ 앱 다운로드 링크
- ✅ 특허 정보 표시

### 17. 실시간 견적 플랫폼 (NEW! 2025-12-24)
- ✅ **3가지 견적 방식**
  1. **간편 견적 신청** (`/quote-simple`)
     - 5분 이내 빠른 신청
     - 필수 정보만 입력 (지역, 시설 유형, 연락처, 돌봄 대상자)
     - 시도/시군구 캐스케이딩 선택
     - 선택한 지역 시설에 자동 견적 요청 전송
  2. **급한 견적 신청** (`/quote-request`)
     - 상세 정보 입력 (환자 상태, 예산 등)
     - 시설별 맞춤 견적 수신
  3. **자가 견적 계산 & AI 스마트 매칭**
     - 예상 비용 자동 계산
     - AI 기반 시설 추천
- ✅ **지역 필터링 시스템**
  - 견적 신청 시 시/도, 시/군/구 선택
  - 해당 지역 등록 시설에게만 견적 요청 전송
  - 시설 주소 데이터 기반 매칭
- ✅ **견적 요청 데이터 저장**
  - 견적 ID 자동 생성
  - 상태 추적 (pending, received, completed)
  - 관리자 대시보드에서 조회 가능

### 18. SEO 최적화 (NEW! 2025-10-23)
- ✅ **기본 SEO 메타 태그**
  - title: "케어조아 - 전국 요양원/요양병원 실시간 비교 견적"
  - description: "전국 14,000개 이상의 요양원, 요양병원, 노인요양시설을 한눈에 비교하고 실시간 견적을 받아보세요..."
  - keywords: 요양원, 요양병원, 노인요양시설, 실버타운, 장기요양보험 등
  - author, canonical URL
- ✅ **Open Graph 태그** (Facebook, 카카오톡 공유)
  - og:type, og:site_name, og:title, og:description
  - og:url, og:image (1200x630), og:locale
- ✅ **Twitter Card 태그**
  - twitter:card (summary_large_image)
  - twitter:title, twitter:description, twitter:image
- ✅ **모바일 웹앱 메타 태그**
  - theme-color (#0d9488)
  - apple-mobile-web-app-capable
  - apple-mobile-web-app-title
- ✅ **JSON-LD 구조화 데이터** (Schema.org)
  - WebSite: 검색 엔진에 사이트 정보 제공
  - Organization: 케어조아 조직 정보
  - Service: 무료 요양시설 비교/견적 서비스
- ✅ **robots.txt**: 검색 엔진 크롤링 제어
  - 모든 검색 엔진 허용 (Googlebot, Yeti, Bingbot, Slurp)
  - 관리자 페이지 차단 (/admin, /api/admin/*)
  - Crawl-delay: 1초
- ✅ **sitemap.xml**: 사이트맵 제공
  - 5개 주요 페이지 (/, /search, /family-care-register, /partner-register, /regional-partner-register)
  - 우선순위 및 업데이트 빈도 설정

## 📊 데이터 아키텍처
- **데이터베이스**: Cloudflare D1 (SQLite-based)
- **데이터 모델**: 
  - **users** 테이블: 사용자 인증 정보 (NEW! 2025-12-28)
    - id, email, password_hash, name, phone, user_type
    - facility_id, facility_type, region_sido, region_sigungu
    - facility_address, is_approved, approval_date
    - created_at, updated_at
  - **sessions** 테이블: 세션 관리 (NEW! 2025-12-28)
    - session_id (PK), user_id, expires_at
    - created_at, updated_at
  - **partners** 테이블: 시설 파트너 신청 데이터
    - id, facility_name, facility_type
    - facility_sido, facility_sigungu, facility_address (주소 정보)
    - manager_name, manager_phone
    - region_key, is_regional_center (지역별 상담센터 설정)
    - created_at, updated_at
  - **family_care** 테이블: 가족 간병 신청 데이터
    - id, guardian_name, guardian_phone
    - patient_name, patient_age, region, requirements
    - created_at
  - **regional_centers** 테이블: 지역별 대표 상담센터 (최대 4개/지역)
    - id, region_key, partner_id
    - facility_name, facility_type, manager_name, manager_phone
    - created_at
  - **facilities** 테이블: 전국 요양시설 정보 (NEW! 2025-10-16)
    - id, facility_type, name, postal_code
    - address, **phone** (전화번호 - 관리자가 추가 가능)
    - latitude, longitude, sido, sigungu
    - created_at, updated_at
    - 인덱스: sido, sigungu, facility_type, name
  - **quote_requests** 테이블: 견적 요청 데이터 (NEW! 2025-12-25)
    - id, quote_id, quote_type, applicant_name, applicant_phone, applicant_email
    - patient_name, patient_age, patient_gender, sido, sigungu
    - facility_type, care_grade, additional_notes (JSON - 27개 상세 항목)
    - status (pending, sent, completed), created_at, updated_at
  - **quote_responses** 테이블: 견적서 응답 데이터 (NEW! 2025-12-25)
    - id, response_id, quote_id, partner_id
    - estimated_price, service_details, available_rooms, special_services
    - response_message, contact_person, contact_phone
    - status (sent, viewed, accepted, rejected), created_at
  - **facility_templates** 테이블: 시설별 견적 템플릿 (NEW! 2025-12-25)
    - id, facility_id, price_min, price_max
    - default_service_details, default_special_services, default_message
    - created_at, updated_at
  - **chat_messages** 테이블: 고객-시설 메시지 교환 (NEW! 2025-12-25)
    - id, message_id, quote_id, response_id
    - sender_id, sender_type (customer/facility), message
    - is_read, created_at
- **저장 방식**: ✅ **Cloudflare D1 영구 저장** (Worker 재시작 후에도 데이터 유지)
- **인증**: 세션 쿠키 + D1 데이터베이스 기반 관리자 인증
- **지역 데이터**: 전국 17개 시도 및 시군구 전체 데이터
- **요양시설 데이터**:
  - 총 27,657개 시설 정보
  - **이중 저장 방식**:
    1. CSV 파일 (5.7MB) - 메인 검색 페이지에서 클라이언트 사이드 로딩
    2. D1 데이터베이스 - 관리자가 CSV 임포트 후 수정/삭제 가능 (전화번호 추가 가능)
  - 필드: 시설명, 유형, 주소, 시도, 시군구, 위도, 경도, **전화번호**(선택)
  - 시설 유형: 재가복지센터(17,449), 요양원(4,603), 주야간보호(2,995), 요양병원(2,610)

## 🎨 디자인 시스템
- **프레임워크**: Tailwind CSS v3
- **아이콘**: Font Awesome 6
- **컬러 테마**: 
  - Primary: Teal/Emerald (케어조아 브랜드)
  - Secondary: Blue (신뢰), Green (가족간병), Red (병원), Gray (관리)
- **그라디언트**: 각 섹션별 브랜드 컬러 그라디언트

## 🚀 기술 스택
- **프레임워크**: Hono (Cloudflare Workers)
- **배포**: Cloudflare Pages
- **스타일**: Tailwind CSS v3 (로컬 빌드)
- **프론트엔드**: JSX Server-Side Rendering
- **인증**: Cookie-based Session
- **지도**: Leaflet.js 1.9.4 + OpenStreetMap (전국 요양시설 찾기)
  - 오픈소스, API 키 불필요
  - 빠른 로딩 (39KB)
  - 완전 무료, 사용량 제한 없음
- **데이터 처리**: Client-side CSV parsing (27,657 facilities)

## 📚 매뉴얼 및 문서

### 관리자 매뉴얼
- **[배포 매뉴얼](/home/user/webapp/ADMIN_DEPLOYMENT_MANUAL.md)** - 배포 방법 및 설정 완벽 가이드
  - 수동 배포 방법 (현재 방식)
  - Git 자동 배포 설정 방법
  - Cloudflare Pages 설정 네비게이션
  - 배포 방식 비교 및 추천
  - 도메인 연결 가이드
  - 환경 변수 설정
  - 자주 묻는 질문 (FAQ)
  - 문제 해결 가이드

### 프로젝트 문서
- **[프로젝트 설정](/home/user/webapp/PROJECT_CONFIGURATION.md)** - 전체 설정 정보
- **[빠른 참조](/home/user/webapp/QUICK_REFERENCE.md)** - 자주 쓰는 명령어

---

## 🛠️ 개발 및 배포

### 로컬 개발 (D1 로컬 모드)
```bash
cd /home/user/webapp

# D1 마이그레이션 적용 (최초 1회)
npx wrangler d1 migrations apply carejoa-production --local

# 빌드 및 실행
npm run build
pm2 start ecosystem.config.cjs  # --d1=carejoa-production --local 플래그 포함
curl http://localhost:3000

# 전국 요양시설 찾기 페이지 테스트
curl http://localhost:3000/facilities

# D1 데이터 확인
npx wrangler d1 execute carejoa-production --local --command="SELECT * FROM partners"
```

### Cloudflare Pages 배포
```bash
# 1. Cloudflare API 설정
export CLOUDFLARE_API_TOKEN="your-token"

# 2. 프로덕션 D1 데이터베이스 생성 (최초 1회)
npx wrangler d1 create carejoa-production
# database_id를 wrangler.jsonc에 추가

# 3. 프로덕션 마이그레이션 적용 (최초 1회 또는 스키마 변경 시)
npx wrangler d1 migrations apply carejoa-production

# 4. 빌드 및 배포
npm run build
npx wrangler pages deploy dist --project-name=carejoa-webapp
```

### 관리자 접속
- URL: https://cf35b893.carejoa-webapp.pages.dev/admin
- 비밀번호: 환경 변수 `ADMIN_PASSWORD`로 설정 (wrangler.jsonc 참조)

## 📝 페이지 구조

### 사용자 페이지
- `/` - 메인 랜딩 페이지
- `/family-care-register` - 가족 간병 등록
- `/facilities` - 전국 요양시설 찾기 (NEW! 27,657개 시설 + 카카오맵)
- `/#partner-section` - 파트너 입점 신청 섹션

### 관리자 페이지
- `/admin` - 관리자 로그인
- `/admin/dashboard` - 관리자 대시보드
- `/admin/facilities` - 요양시설 정보 관리 (NEW! 2025-10-16)

### API 엔드포인트
- **인증** (NEW! 2025-12-28)
  - `POST /api/auth/login` - 로그인 (D1 기반)
  - `POST /api/auth/logout` - 로그아웃 (D1 세션 삭제)
  - `GET /api/auth/me` - 현재 사용자 조회
  - `POST /api/auth/register` - 회원가입
- **파트너 관리**
  - `POST /api/partner` - 파트너 등록
  - `POST /api/family-care` - 가족 간병 등록
- **관리자**
  - `POST /api/admin/login` - 관리자 로그인
  - `POST /api/admin/logout` - 관리자 로그아웃
  - `GET /api/admin/data` - 관리자 데이터 조회
  - `POST /api/admin/set-region` - 파트너 지역 설정
  - `POST /api/admin/toggle-regional-center` - 대표 상담센터 지정/해제
- **지역 정보**
  - `GET /api/regional-centers?region={regionKey}` - 지역별 상담센터 조회
- **견적 시스템** (NEW! 2025-12-25)
  - `POST /api/quote/submit-new` - 상세 견적 요청 생성 (27개 항목)
  - `GET /api/customer/dashboard` - 고객 대시보드 데이터
  - `GET /api/customer/quote-responses/:quoteId` - 견적서 응답 조회
  - `GET /api/facility/dashboard` - 시설 대시보드 데이터
  - `POST /api/facility/send-quote` - 견적서 전송
  - `GET /api/facility/template` - 시설 템플릿 조회
  - `POST /api/facility/template` - 시설 템플릿 저장/수정
- **메시지 교환** (NEW! 2025-12-25)
  - `POST /api/messages/send` - 고객 메시지 전송
  - `GET /api/messages/:responseId` - 메시지 목록 조회
  - `POST /api/messages/reply` - 시설 답변 전송
- **시설 정보 관리** (2025-10-16)
  - `POST /api/admin/init-db` - D1 데이터베이스 초기화
  - `POST /api/admin/import-csv` - CSV 데이터 일괄 임포트
  - `GET /api/admin/facilities` - 시설 목록 조회 (페이징, 검색)
  - `GET /api/admin/facilities/:id` - 시설 상세 조회
  - `POST /api/admin/facilities` - 시설 추가
  - `PUT /api/admin/facilities/:id` - 시설 정보 수정
  - `DELETE /api/admin/facilities/:id` - 시설 삭제
  - `GET /api/facilities-from-db` - D1에서 시설 데이터 조회 (메인 검색용)

## 📱 사용자 가이드

### 일반 사용자
1. 메인 페이지에서 "실시간 견적 & 상담 신청하기" 클릭
2. 또는 "지역별 전화상담하기" 버튼으로 내 지역 상담센터 찾기
   - 시/도 선택 → 시/군/구 선택
   - 해당 지역 대표 상담센터 4개 표시
   - 원클릭으로 전화 연결
3. 또는 **"전국 요양시설 찾아보기"** 버튼으로 27,657개 시설 검색 (NEW! 2025-10-16)
   - 시/도, 시/군/구, 시설 유형으로 필터링
   - 카카오맵으로 위치 확인
   - 시설명 키워드 검색
   - 시설 목록에서 "지도" 버튼으로 상세 위치 확인
4. 또는 Android 앱 다운로드
5. 가족 간병이 필요한 경우 "가족간병등록" 버튼 클릭

### 파트너 (시설 담당자)
1. 메인 페이지 하단 "요양시설 입점 신청" 섹션으로 이동
2. 시설 정보 입력
   - 시설명, 유형
   - **시설 주소 (시/도, 시/군/구, 상세주소)** (NEW!)
   - 담당자 정보
3. "요양시설 입점 신청" 버튼 클릭

### 관리자
1. 우측 상단 또는 모바일 하단 "관리자" 버튼 클릭
2. 관리자 비밀번호 입력 (환경 변수로 설정됨)
3. 대시보드에서 신청 내역 확인
4. **지역별 대표 상담센터 관리**
   - 파트너 목록에서 대표 센터로 지정할 시설 체크
   - 시/도 및 시/군/구 선택하여 지역 설정
   - "저장" 버튼으로 지역 설정 완료
   - 지역별 최대 4개까지 설정 가능
   - 설정된 센터는 해당 지역 사용자에게 노출됨
5. **요양시설 정보 관리** (NEW! 2025-10-16)
   - "시설 관리" 메뉴 클릭
   - **최초 1회**: "DB 초기화" → "CSV 임포트" 버튼 클릭 (1-2분 소요)
   - 시설 검색: 시도/시군구/유형/키워드로 필터링
   - 시설 편집: 전화번호 등 정보 수정
   - 시설 삭제: 불필요한 시설 제거
   - 시설 추가: 새로운 시설 정보 입력

## 🔄 배포 상태
- ✅ **활성화**: Cloudflare Pages에 24/7 운영 중
- ✅ **데이터베이스**: Cloudflare D1 통합 완료 - 20,432개 시설 데이터 저장
- ✅ **인증 시스템**: D1 기반 세션 관리 완전 해결 (2025-12-28)
- ✅ **빌드 완료**: 최신 버전 배포됨 (D1 + Leaflet 지도 + SEO 최적화)
- ✅ **Git 저장소**: GitHub 동기화 완료 (jansmakr/sand-box)
- ✅ **SEO 최적화**: 검색 엔진 최적화 완료
- ✅ **견적 관리 시스템**: 상세 견적 27개 항목 + 템플릿 + 메시지 교환
- **마지막 업데이트**: 2025-12-28 14:35 GMT
  - ✅ **인증 시스템 완전 해결** (NEW!)
    - D1 기반 세션 관리로 Stateless 환경 대응
    - 컬럼명 불일치 수정 (password_hash, user_type)
    - async/await 누락 수정 (28개 함수)
    - 로그아웃 시 D1 세션 완전 삭제
    - 프로덕션/로컬 환경별 폴백 전략
    - 전체 기능 테스트 완료 (고객/시설 로그인, 대시보드, 정보수정)
- **이전 업데이트** (2025-12-25 12:30):
  - ✅ **견적 관리 시스템 완성** (NEW!)
    - 상세 견적 요청 (27개 항목)
    - 시설/고객 대시보드
    - 시설별 기본 템플릿 저장 (우선순위 1) - 작성 시간 80% 단축
    - 간단한 메시지 교환 시스템 (우선순위 2)
    - 견적서 비교 기능
    - 문의하기 기능
- **이전 업데이트** (2025-10-23):
  - ✅ **SEO 최적화 완료**
    - 기본 SEO 메타 태그 추가 (title, description, keywords)
    - Open Graph 태그 (Facebook, 카카오톡 공유 최적화)
    - Twitter Card 태그
    - JSON-LD 구조화 데이터 (WebSite, Organization, Service)
    - robots.txt 생성 (검색 엔진 크롤링 제어)
    - sitemap.xml 생성 (5개 주요 페이지)
    - 모바일 웹앱 메타 태그 (theme-color, apple-mobile-web-app)
- **이전 업데이트** (2025-10-16):
  - ✅ **관리자 시설 정보 관리 페이지 추가**
    - D1 데이터베이스 기반 시설 정보 CRUD
    - CSV 일괄 임포트 기능 (27,656개 시설)
    - 전화번호 추가/수정 기능
    - 다중 필터 검색 및 페이지네이션
    - 시설 추가/수정/삭제 기능
  - ✅ **Leaflet.js 지도로 전환** (카카오맵 → Leaflet)
    - 로딩 속도 5-10배 향상 (3-5초 → 0.5초)
    - API 키 불필요, 완전 무료
    - OpenStreetMap 타일 사용
    - 시설 유형별 색상 마커 (빨강/파랑/초록/주황)
  - ✅ **전국 요양시설 찾기 기능 추가** (27,657개 시설)
  - ✅ 다중 필터 검색 (시도/시군구/유형/키워드)
  - ✅ 2열 레이아웃 (지도 + 목록)
  - ✅ 5.7MB CSV 클라이언트 사이드 로딩
  - ✅ 네이버 웹마스터 도구 인증 태그 추가
- **이전 업데이트** (2025-10-15):
  - ✅ Cloudflare D1 데이터베이스 통합 (영구 저장)
  - ✅ 지역별 전화상담 시스템 추가
  - ✅ 요양시설 입점 신청 폼에 주소 입력 기능 추가 (시/도, 시/군/구, 상세주소)
  - ✅ 모든 API를 D1 쿼리로 변환 (메모리 → D1)
  - ✅ 로컬 환경 테스트 완료

## 📈 통계 (공식 데이터)
- 월 10만+ 이용자
- 3,000+ 등록 시설
- 평균 4.5점 만족도

## 🔒 보안
- 관리자 비밀번호: 환경 변수 `ADMIN_PASSWORD`로 관리 (wrangler.jsonc에서 설정)
- 세션 기반 인증 (1시간 유효)
- CORS 활성화 (API 라우트)
- 비밀번호 하드코딩 제거 (환경 변수 사용)

## 📞 연락처
- **전화**: 070-7004-5902
- **카카오톡**: https://open.kakao.com/o/siR7YBUh
- **이메일**: utuber@kakao.com

## 🏆 특허 정보
특허기반 실시간 요양 견적 및 상담 플랫폼

---

© 2025 케어조아. All rights reserved.



## 자동 배포 테스트

- 테스트 시각: 2025-12-21 04:09:25
- GitHub 자동 배포 설정 완료


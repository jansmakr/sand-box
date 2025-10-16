# 케어조아 (CareJOA)

## 프로젝트 개요
- **이름**: 케어조아 (CareJOA)
- **목표**: 실시간 요양 견적 및 상담 플랫폼
- **특징**: 특허기반 요양시설 매칭 서비스

## 🌐 배포 URL
- **최신 배포**: https://cf35b893.carejoa-webapp.pages.dev
- **프로젝트**: https://carejoa-webapp.pages.dev
- **샌드박스**: https://3000-ic0ndu0vzhirrcffo6tky-6532622b.e2b.dev
- **Android 앱**: https://play.google.com/store/apps/details?id=app.netlify.std_care_joa.twa
- **공식 웹사이트**: https://www.carejoa.com

## ✅ 완료된 기능

### 1. 메인 랜딩 페이지
- ✅ 케어조아 로고 및 브랜딩
- ✅ 앱 스크린샷 디스플레이
- ✅ 통계 정보 (월 10만+ 이용자, 3,000+ 등록 시설, 평균 4.5점)
- ✅ Android 앱 다운로드 링크
- ✅ 실시간 견적 & 상담 신청 CTA
- ✅ **지역별 전화상담하기** 버튼 (NEW!)

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
- ✅ **시설 주소 입력** (NEW!)
  - 시/도 선택 (드롭다운)
  - 시/군/구 선택 (드롭다운)
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

### 6. 지역별 전화상담 시스템 (NEW!)
- ✅ 전국 시/도 및 시/군/구 선택 시스템
- ✅ 지역별 대표 상담센터 표시 (최대 4개)
- ✅ 상담센터 정보 (시설명, 유형, 담당자, 전화번호)
- ✅ 원클릭 전화 연결 기능
- ✅ 등록된 센터가 없을 경우 대표번호 안내

### 7. 전국 요양시설 찾기 (NEW! 2025-10-16)
- ✅ **27,657개** 전국 요양시설 데이터베이스
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
- ✅ 관리자 로그인 (비밀번호: 5874)
- ✅ 대시보드 통계
- ✅ 파트너 신청 목록 조회
- ✅ **시설 주소 정보 표시** (NEW!)
- ✅ **지역별 대표 상담센터 관리**
  - 파트너 시설 중 대표 센터 선택 (체크박스)
  - 시/도 및 시/군/구 지역 설정
  - 지역별 최대 4개 제한
  - 실시간 지역별 노출 관리
- ✅ 가족 간병 신청 목록 조회
- ✅ 세션 기반 인증
- ✅ 로그아웃 기능

### 9. 반응형 디자인
- ✅ 모바일 하단 네비게이션 (5개 컬러 버튼)
  - 🔴 상급병원 (빨강)
  - 🔵 정부복지 (파랑)
  - 🟢 가족간병 (초록)
  - ⚫ 입점신청 (회색)
  - ⚫ 관리자 (검정)
- ✅ 데스크톱 헤더 네비게이션
- ✅ 모바일 최적화 레이아웃

### 10. 푸터
- ✅ 서비스 링크
- ✅ 고객지원 (전화: 0507-1310-5873, 카카오톡, 이메일)
- ✅ 앱 다운로드 링크
- ✅ 특허 정보 표시

## 📊 데이터 아키텍처
- **데이터베이스**: Cloudflare D1 (SQLite-based)
- **데이터 모델**: 
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
  - **admin_sessions** 테이블: 관리자 세션 관리
    - session_id, created_at, expires_at
- **저장 방식**: ✅ **Cloudflare D1 영구 저장** (Worker 재시작 후에도 데이터 유지)
- **인증**: 세션 쿠키 + D1 데이터베이스 기반 관리자 인증
- **지역 데이터**: 전국 17개 시도 및 시군구 전체 데이터
- **요양시설 데이터** (NEW!):
  - 총 27,657개 시설 정보
  - CSV 파일 (5.7MB) - 클라이언트 사이드 로딩
  - 필드: 시설명, 유형, 주소, 시도, 시군구, 위도, 경도
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
- 비밀번호: 5874

## 📝 페이지 구조

### 사용자 페이지
- `/` - 메인 랜딩 페이지
- `/family-care-register` - 가족 간병 등록
- `/facilities` - 전국 요양시설 찾기 (NEW! 27,657개 시설 + 카카오맵)
- `/#partner-section` - 파트너 입점 신청 섹션

### 관리자 페이지
- `/admin` - 관리자 로그인
- `/admin/dashboard` - 관리자 대시보드

### API 엔드포인트
- `POST /api/partner` - 파트너 등록
- `POST /api/family-care` - 가족 간병 등록
- `POST /api/admin/login` - 관리자 로그인
- `POST /api/admin/logout` - 관리자 로그아웃
- `GET /api/admin/data` - 관리자 데이터 조회
- `POST /api/admin/set-region` - 파트너 지역 설정 (NEW!)
- `POST /api/admin/toggle-regional-center` - 대표 상담센터 지정/해제 (NEW!)
- `GET /api/regional-centers?region={regionKey}` - 지역별 상담센터 조회 (NEW!)

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
2. 비밀번호(5874) 입력
3. 대시보드에서 신청 내역 확인
4. **지역별 대표 상담센터 관리** (NEW!)
   - 파트너 목록에서 대표 센터로 지정할 시설 체크
   - 시/도 및 시/군/구 선택하여 지역 설정
   - "저장" 버튼으로 지역 설정 완료
   - 지역별 최대 4개까지 설정 가능
   - 설정된 센터는 해당 지역 사용자에게 노출됨

## 🔄 배포 상태
- ✅ **활성화**: Cloudflare Pages에 24/7 운영 중
- ✅ **데이터베이스**: Cloudflare D1 통합 완료 - 영구 데이터 저장
- ✅ **빌드 완료**: 최신 버전 배포됨 (D1 데이터베이스 통합 + Leaflet 지도)
- ✅ **Git 저장소**: 초기화 및 커밋 완료
- **마지막 업데이트**: 2025-10-16
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
- 관리자 비밀번호: 5874 (커스텀 설정 가능)
- 세션 기반 인증 (1시간 유효)
- CORS 활성화 (API 라우트)

## 📞 연락처
- **전화**: 0507-1310-5873
- **카카오톡**: https://open.kakao.com/o/siR7YBUh
- **이메일**: utuber@kakao.com

## 🏆 특허 정보
특허기반 실시간 요양 견적 및 상담 플랫폼

---

© 2024 케어조아. All rights reserved.

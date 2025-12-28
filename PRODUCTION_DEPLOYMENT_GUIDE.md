# 🚀 프로덕션 배포 가이드

## 📅 작성 일시: 2025-12-28

---

## ⚠️ 중요: 프로덕션 배포 전 필수 작업

### 1. D1 마이그레이션 적용 (프로덕션)

**새로 추가된 마이그레이션**:
- `0009_create_representative_facility_applications.sql` - 대표시설 신청 테이블

**실행 명령어**:
```bash
cd /home/user/webapp
npx wrangler d1 migrations apply carejoa-production --remote
```

**확인 사항**:
- Cloudflare API 토큰이 설정되어 있어야 합니다
- `wrangler.jsonc`에 프로덕션 database_id가 올바르게 설정되어 있어야 합니다

---

## 📦 GitHub 자동 배포

### 현재 상태
- ✅ GitHub 저장소: https://github.com/jansmakr/sand-box
- ✅ 최신 커밋: `e626e72` - "Fix: 프로덕션 배포를 위한 최종 빌드"
- ✅ 브랜치: main

### Cloudflare Pages 자동 배포
GitHub에 푸시하면 Cloudflare Pages가 자동으로 배포합니다.

**배포 URL 확인**:
1. Cloudflare 대시보드 접속: https://dash.cloudflare.com/
2. Workers & Pages → carejoa-kr-auto 프로젝트 선택
3. "View build" 또는 "View deployment" 클릭

**예상 배포 시간**: 3-5분

---

## 🔧 수동 배포 (필요시)

만약 자동 배포가 설정되지 않았다면:

```bash
cd /home/user/webapp

# 1. Cloudflare API 토큰 설정 확인
npx wrangler whoami

# 2. 빌드
npm run build

# 3. 프로덕션 배포
npx wrangler pages deploy dist --project-name carejoa-kr-auto

# 또는 package.json의 deploy 스크립트 사용
npm run deploy:prod
```

---

## ✅ 배포 후 확인 사항

### 1. 기본 기능 테스트
- [ ] 메인 페이지 로딩: https://carejoa.kr/
- [ ] 시설찾기 지도: https://carejoa.kr/facilities
- [ ] 견적 신청: https://carejoa.kr/quote-request

### 2. 새로 추가된 기능 테스트
- [ ] 고객 대시보드 홈 버튼
- [ ] 시설찾기 Leaflet.js 지도
- [ ] 견적 요청 필수 필드 검증
- [ ] 시설 정보 미등록 경고 배너
- [ ] 대표시설 신청 버튼 (시설 대시보드)

### 3. API 테스트
시설 대시보드에 로그인 후:
- [ ] `/api/auth/me` - 사용자 정보 조회 (200 OK)
- [ ] `/api/facility/update-info` - 시설 정보 수정 (200 OK)
- [ ] `/api/facility/apply-representative` - 대표시설 신청 (200 OK)
- [ ] `/api/facility/representative-status` - 신청 상태 조회 (200 OK)

### 4. 콘솔 오류 확인
브라우저 개발자 도구(F12) → Console 탭:
- [ ] 404 에러 없음
- [ ] 401 에러 없음 (로그인 후)
- [ ] JavaScript 오류 없음

---

## 🐛 문제 해결

### 문제 1: `/api/auth/me` 404 에러
**원인**: 프로덕션에 최신 코드가 배포되지 않음  
**해결**: GitHub 푸시 후 Cloudflare Pages 자동 배포 대기 (3-5분)

### 문제 2: 401 Unauthorized 에러
**원인**: 세션 쿠키 문제 또는 로그아웃 상태  
**해결**: 
1. 로그아웃 후 다시 로그인
2. 브라우저 쿠키 삭제
3. 시크릿 모드로 테스트

### 문제 3: D1 마이그레이션 실패
**원인**: API 토큰 권한 부족  
**해결**:
1. Cloudflare 대시보드에서 새 API 토큰 생성
2. D1 Edit 권한 포함
3. GenSpark Deploy 탭에서 토큰 업데이트
4. `source ~/.bashrc` 실행
5. 마이그레이션 재시도

---

## 📊 배포 현황

### 로컬 샌드박스
- **URL**: https://3000-i9rvbxi0ydi8a2ltypzm7-cbeee0f9.sandbox.novita.ai
- **상태**: ✅ 정상 작동
- **D1 마이그레이션**: ✅ 완료 (로컬)

### GitHub
- **저장소**: https://github.com/jansmakr/sand-box
- **브랜치**: main
- **커밋**: e626e72
- **상태**: ✅ 푸시 완료

### Cloudflare Pages
- **프로젝트**: carejoa-kr-auto
- **URL**: https://carejoa.kr
- **상태**: ⏳ 배포 대기 중
- **D1 마이그레이션**: ⚠️ 수동 실행 필요

---

## 🎯 배포 체크리스트

### 배포 전
- [x] 로컬 빌드 성공
- [x] 로컬 테스트 완료
- [x] Git 커밋 및 푸시
- [ ] D1 마이그레이션 (프로덕션) ⚠️ **필수**

### 배포 후
- [ ] Cloudflare Pages 배포 완료 확인
- [ ] 프로덕션 URL 접속 테스트
- [ ] API 엔드포인트 테스트
- [ ] 브라우저 콘솔 오류 확인
- [ ] 모바일 반응형 확인

---

## 📞 긴급 연락처

**문제 발생 시**:
1. Cloudflare 대시보드에서 배포 로그 확인
2. 이전 안정 버전으로 롤백 가능
3. GitHub에서 이전 커밋으로 복원 가능

**백업 URL**:
- 안정 버전 백업: https://www.genspark.ai/api/files/s/v26U37Zs
- Git 커밋: 1dce4b9 (백업 시점)

---

**작성자**: Claude Code Assistant  
**작성 일시**: 2025-12-28  
**우선순위**: 🔴 긴급 (D1 마이그레이션 필수!)

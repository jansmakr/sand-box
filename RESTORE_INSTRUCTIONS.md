# 케어조아 백업 복구 가이드

## 📦 백업 정보

**백업 날짜**: 2025-11-17  
**백업 파일**: `carejoa_stable_20251117.tar.gz`  
**다운로드 URL**: https://www.genspark.ai/api/files/s/v26U37Zs  
**파일 크기**: 24.1 MB  
**Git 커밋**: 1dce4b9  
**배포 URL**: https://739b4e16.carejoa-kr.pages.dev

---

## ✅ 백업 시점 상태

### 핵심 기능
- ✅ 전체 시설: 20,433개
- ✅ 대표시설: 851개 (자동 지정 완료)
- ✅ 고유 지역: 257개 시군구
- ✅ 대표센터 필터 기능
- ✅ 네이버 사이트 소유권 확인 메타태그
- ✅ 모바일 레이아웃 최적화 (전화번호 버튼)
- ✅ 지역별 전화상담 API (URL 인코딩 적용)
- ✅ 전국시설찾기 (/facilities)
- ✅ Leaflet 지도 통합

### 데이터베이스
- `facilities`: 20,433개 시설
- `regional_centers`: 851개 대표시설
- `partners`: 파트너 정보
- `family_care`: 가족간병 신청
- `admin_sessions`: 관리자 세션

### Git 상태
- 브랜치: main
- 마지막 커밋: "feat: Improve mobile layout for regional center cards - phone button below info"

---

## 🔄 복구 방법

### 방법 1: 백업 파일에서 직접 복구

```bash
# 1. 백업 파일 다운로드
cd /home/user
wget https://www.genspark.ai/api/files/s/v26U37Zs -O carejoa_stable_20251117.tar.gz

# 2. 기존 프로젝트 백업 (선택사항)
mv webapp webapp_old_$(date +%Y%m%d_%H%M%S)

# 3. 백업 파일 압축 해제
tar -xzf carejoa_stable_20251117.tar.gz

# 4. 의존성 재설치
cd /home/user/webapp
npm install

# 5. 빌드
npm run build

# 6. 배포
export CLOUDFLARE_API_TOKEN="YOUR_TOKEN_HERE"
npx wrangler pages deploy dist --project-name carejoa-kr
```

### 방법 2: Git 커밋으로 복구

```bash
cd /home/user/webapp

# 1. 현재 변경사항 저장 (선택사항)
git stash

# 2. 안정 버전으로 리셋
git reset --hard 1dce4b9

# 3. 의존성 확인
npm install

# 4. 빌드
npm run build

# 5. 배포
export CLOUDFLARE_API_TOKEN="YOUR_TOKEN_HERE"
npx wrangler pages deploy dist --project-name carejoa-kr
```

### 방법 3: Claude에게 요청

```
"백업 파일로 복구해줘"
또는
"2025-11-17 백업으로 되돌려줘"
```

Claude가 자동으로:
1. 백업 파일 다운로드
2. 압축 해제
3. 의존성 설치
4. 빌드 및 배포
를 수행합니다.

---

## 📋 복구 후 확인 사항

### 1. 사이트 접속 확인
```bash
curl -I https://carejoa-kr.pages.dev
# HTTP/2 200 응답 확인
```

### 2. 데이터 확인
```bash
# 전체 시설 수
curl 'https://carejoa-kr.pages.dev/api/admin/facilities?page=1&limit=1' \
  -H 'X-Admin-Password: 5874' | jq '.total'
# 예상: 20433

# 대표시설 수
curl 'https://carejoa-kr.pages.dev/api/admin/facilities?page=1&limit=1&isRegionalCenter=true' \
  -H 'X-Admin-Password: 5874' | jq '.total'
# 예상: 851
```

### 3. 기능 테스트
- [ ] 메인 페이지 로드 (/)
- [ ] 관리자 로그인 (/admin, 비밀번호: 5874)
- [ ] 대표센터 필터 작동
- [ ] 지역별 전화상담 모달
- [ ] 전국시설찾기 페이지 (/facilities)
- [ ] 지도 표시

---

## 🚨 문제 해결

### 빌드 오류 발생 시
```bash
cd /home/user/webapp
rm -rf node_modules package-lock.json
npm install
npm run build
```

### 배포 실패 시
```bash
# API 토큰 확인
npx wrangler whoami

# 로그인 재시도
setup_cloudflare_api_key
```

### Git 충돌 시
```bash
# 모든 변경사항 폐기하고 복구
git reset --hard 1dce4b9
git clean -fd
```

---

## 📞 지원

문제 발생 시 Claude에게 다음 정보와 함께 문의:
- 오류 메시지
- 실행한 명령어
- "백업 파일로 복구해줘" 요청

---

## 🔐 중요 정보

- **관리자 비밀번호**: 5874
- **Git 레포지토리**: https://github.com/jansmakr/sand-box
- **Cloudflare 프로젝트**: carejoa-kr
- **데이터베이스**: carejoa-production (D1)

---

**백업 생성 시각**: 2025-11-17 10:10:00 UTC
**백업 담당**: Claude AI Assistant

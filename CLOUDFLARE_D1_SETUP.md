# Cloudflare 프로덕션 D1 데이터베이스 생성 가이드

## 📋 준비사항
- Cloudflare 계정
- Cloudflare API 토큰 (Pages & D1 권한 필요)

## 🚀 단계별 가이드

### 1단계: Cloudflare API 키 설정
```bash
cd /home/user/webapp

# Claude의 setup_cloudflare_api_key 도구 사용
# 또는 수동으로 환경변수 설정:
# export CLOUDFLARE_API_TOKEN="your-token-here"
```

**API 토큰이 없다면**:
1. Cloudflare 대시보드 접속
2. My Profile → API Tokens
3. "Create Token" → "Edit Cloudflare Workers" 템플릿 선택
4. Permissions 추가: `D1:Edit`, `Pages:Edit`
5. 생성된 토큰 복사

### 2단계: 프로덕션 D1 데이터베이스 생성
```bash
cd /home/user/webapp
npx wrangler d1 create carejoa-production
```

**출력 예시**:
```
✅ Successfully created DB 'carejoa-production'

[[d1_databases]]
binding = "DB"
database_name = "carejoa-production"
database_id = "abc123-def456-ghi789..."  ← 이 ID를 복사하세요!
```

### 3단계: wrangler.jsonc 업데이트
```bash
# wrangler.jsonc 파일 열기
nano wrangler.jsonc
```

**수정 내용**:
```jsonc
{
  "d1_databases": [
    {
      "binding": "DB",
      "database_name": "carejoa-production",
      "database_id": "여기에-실제-database-id-붙여넣기"  // ← 2단계에서 복사한 ID
    }
  ]
}
```

### 4단계: 프로덕션에 테이블 생성 (자동)

**옵션 A: 배포 후 자동 생성 (추천)**
- 앱 배포 후 첫 요청 시 자동으로 모든 테이블 생성됨
- 별도 작업 불필요

**옵션 B: 수동 초기화**
```bash
# 관리자 대시보드에서
# 1. /admin/facilities 접속
# 2. "DB 초기화" 버튼 클릭
```

### 5단계: 프로덕션 배포
```bash
cd /home/user/webapp

# 빌드
npm run build

# Cloudflare Pages에 배포
npx wrangler pages deploy dist --project-name carejoa-webapp
```

### 6단계: CSV 데이터 임포트 (선택)
```bash
# 프로덕션 사이트 접속
# https://carejoa-webapp.pages.dev/admin/facilities

# 1. 로그인 (비밀번호: 5874)
# 2. "CSV 임포트" 버튼 클릭
# 3. 10-30초 대기
# 4. 27,656개 시설 임포트 완료!
```

## ✅ 완료 확인

### 데이터베이스 확인
```bash
# 프로덕션 D1에서 테이블 확인
npx wrangler d1 execute carejoa-production \
  --command="SELECT name FROM sqlite_master WHERE type='table'"

# 데이터 개수 확인
npx wrangler d1 execute carejoa-production \
  --command="SELECT COUNT(*) FROM facilities"
```

### 웹사이트 테스트
1. https://carejoa-webapp.pages.dev 접속
2. `/admin` 로그인 테스트
3. `/admin/facilities` 시설 관리 테스트

## 🔧 문제 해결

### "Database not found" 오류
```bash
# wrangler.jsonc의 database_id가 정확한지 확인
npx wrangler d1 list
```

### "Unauthorized" 오류
```bash
# API 토큰 권한 확인
npx wrangler whoami
```

### 테이블이 생성되지 않음
```bash
# 프로덕션에서 수동 초기화 API 호출
curl -X POST https://carejoa-webapp.pages.dev/api/admin/init-db
```

## 📊 현재 상태

- ✅ **로컬 D1**: 생성됨 (`.wrangler/state/v3/d1/`)
- ⏳ **프로덕션 D1**: 아직 생성 안됨
- ✅ **자동 초기화**: 설정됨 (첫 요청 시 테이블 자동 생성)
- ✅ **모든 테이블**: admin_sessions, partners, family_care, regional_centers, facilities

## 💡 참고사항

- **로컬 개발**: `--local` 플래그로 로컬 SQLite 사용 (현재 상태)
- **프로덕션**: 실제 Cloudflare D1 사용 (위 단계 완료 후)
- **데이터 동기화**: 로컬 ↔ 프로덕션 데이터는 별도 (자동 동기화 없음)
- **비용**: D1은 무료 티어 있음 (5GB 스토리지, 500만 rows read/day)

## 🔗 유용한 링크

- Cloudflare D1 문서: https://developers.cloudflare.com/d1/
- Wrangler 문서: https://developers.cloudflare.com/workers/wrangler/
- API 토큰 생성: https://dash.cloudflare.com/profile/api-tokens

---

**준비되시면 이 가이드를 따라 진행하시면 됩니다!** 🚀

# 케어조아 프로젝트 - 빠른 참조 가이드

## 🔐 핵심 계정 정보

```
Cloudflare 계정: jansmakr@gmail.com
Account ID: 8dbb304ffcc41ecf3d7df4a95676e678
API Token: _-DecIX_2ToJA713TyuHzNji-g5dNPTccx6Hidtt

GitHub 계정: jansmakr@gmail.com
저장소: https://github.com/jansmakr/sand-box
```

## 🌐 주요 URL

```
프로덕션: https://carejoa-kr.pages.dev
최신 배포: https://63a58900.carejoa-kr.pages.dev
로컬 개발: http://localhost:3000
Cloudflare: https://dash.cloudflare.com/8dbb304ffcc41ecf3d7df4a95676e678
```

## 💾 데이터베이스

```
Database Name: carejoa-production
Database ID: 6bb51315-d991-4e62-a981-4cc19a5b23ed
시설 데이터: 20,432개
```

## 🚀 자주 쓰는 명령어

### 로컬 개발
```bash
cd /home/user/webapp
npm run build
pm2 start ecosystem.config.cjs
curl http://localhost:3000
```

### 프로덕션 배포
```bash
cd /home/user/webapp
npm run build
export CLOUDFLARE_API_TOKEN="_-DecIX_2ToJA713TyuHzNji-g5dNPTccx6Hidtt"
npx wrangler pages deploy dist --project-name carejoa-kr
```

### Git 작업
```bash
cd /home/user/webapp
git add .
git commit -m "메시지"
git push origin main
```

## 📊 현재 상태 (2025-10-23)

✅ 프로덕션: 정상 작동 (20,432개 시설)
✅ 로컬 개발: PM2로 실행 중
✅ GitHub: 최신 코드 동기화
✅ D1 Database: 정상 연결
❌ 견적 신청 폼: 삭제됨

## 📁 프로젝트 위치

```
로컬 경로: /home/user/webapp
설정 파일: /home/user/webapp/PROJECT_CONFIGURATION.md
```

---

**자세한 내용은 PROJECT_CONFIGURATION.md 참조**

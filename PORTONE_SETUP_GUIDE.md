# 포트원(PortOne) KCP 결제 연동 가이드

## 📋 사전 준비

### 1. 포트원 관리자 콘솔 설정
1. [포트원 관리자 콘솔](https://admin.portone.io/) 로그인
2. 좌측 메뉴 **"채널 관리"** → **"새 채널 추가"** 클릭
3. 다음 정보 입력:
   - **채널명**: "케어조아" (원하는 이름)
   - **PG사**: **KCP** 선택
   - **MID**: KCP에서 발급받은 가맹점 번호 입력
4. **저장** 후 다음 값들 메모:
   - `channel_key` (채널 키)
5. 좌측 메뉴 **"API 키"** 클릭하여 메모:
   - `API Key`
   - `API Secret`
   - `Store ID`

## ⚙️ 환경 변수 설정

### 로컬 개발 환경 (.dev.vars 파일)
프로젝트 루트에 `.dev.vars` 파일을 생성하고 다음 내용 입력:

```bash
# .dev.vars (로컬 개발용)
ADMIN_PASSWORD="your-admin-password"

# Kakao Login API
KAKAO_REST_API_KEY="your-kakao-rest-api-key"
KAKAO_REDIRECT_URI="http://localhost:3000/auth/kakao/callback"

# PortOne KCP Payment API
PORTONE_API_KEY="your-portone-api-key"
PORTONE_API_SECRET="your-portone-api-secret"
PORTONE_STORE_ID="your-store-id"
PORTONE_CHANNEL_KEY="your-channel-key"
```

**⚠️ 중요**: `.dev.vars` 파일은 반드시 `.gitignore`에 추가하여 Git에 커밋되지 않도록 하세요!

### 프로덕션 환경 (Cloudflare Pages 시크릿)
```bash
# 포트원 API 키 설정
npx wrangler pages secret put PORTONE_API_KEY --project-name carejoa-kr-auto
# 입력 프롬프트에 값 입력

npx wrangler pages secret put PORTONE_API_SECRET --project-name carejoa-kr-auto
# 입력 프롬프트에 값 입력

npx wrangler pages secret put PORTONE_STORE_ID --project-name carejoa-kr-auto
# 입력 프롬프트에 값 입력

npx wrangler pages secret put PORTONE_CHANNEL_KEY --project-name carejoa-kr-auto
# 입력 프롬프트에 값 입력

# 시크릿 목록 확인
npx wrangler pages secret list --project-name carejoa-kr-auto
```

## 💻 구현된 API 엔드포인트

### 1. 구독 관련 API
- `GET /api/subscription/plans` - 구독 플랜 목록 조회
- `POST /api/subscription/register` - 구독 등록 (빌링키 저장)
- `POST /api/subscription/cancel` - 구독 취소
- `GET /api/subscription/status/:userId` - 사용자 구독 상태 조회

### 2. 예약 및 결제 API
- `POST /api/booking/create` - 예약 생성 및 결제
- `POST /api/payment/webhook` - 포트원 웹훅 수신
- `GET /api/booking/list/:userId` - 사용자 예약 내역 조회

### 3. 자동 정기결제 API
- `POST /api/subscription/auto-billing` - 정기 결제 자동 청구
  - 외부 Cron 서비스에서 매일 호출 (예: GitHub Actions, Uptime Robot)
  - 또는 관리자가 수동으로 트리거

## 🔄 정기 결제 자동화 설정

Cloudflare Pages는 Cron Triggers를 지원하지 않으므로, 외부 Cron 서비스를 사용해야 합니다.

### 옵션 1: GitHub Actions (권장)
`.github/workflows/auto-billing.yml` 파일 생성:

\`\`\`yaml
name: Auto Billing

on:
  schedule:
    - cron: '0 1 * * *'  # 매일 오전 1시(UTC) 실행
  workflow_dispatch:  # 수동 트리거 가능

jobs:
  billing:
    runs-on: ubuntu-latest
    steps:
      - name: Trigger Auto Billing
        run: |
          curl -X POST https://carejoa.kr/api/subscription/auto-billing \\
            -H "Content-Type: application/json" \\
            -H "Authorization: Bearer \${{ secrets.BILLING_API_KEY }}"
\`\`\`

### 옵션 2: Uptime Robot
1. [Uptime Robot](https://uptimerobot.com/) 가입
2. "Add New Monitor" 클릭
3. Monitor Type: **HTTP(s)**
4. URL: `https://carejoa.kr/api/subscription/auto-billing`
5. Monitoring Interval: **24 hours**
6. HTTP Method: **POST**

### 옵션 3: EasyCron
1. [EasyCron](https://www.easycron.com/) 가입
2. "Create Cron Job" 클릭
3. URL: `https://carejoa.kr/api/subscription/auto-billing`
4. HTTP Method: **POST**
5. Schedule: **0 1 * * *** (매일 오전 1시)

## 📊 데이터베이스 스키마

구현된 테이블:
- `subscriptions` - 구독 정보
- `payments` - 결제 내역
- `bookings` - 예약 정보
- `partner_profiles` - 파트너 프로필
- `partner_settlements` - 파트너 정산
- `withdrawal_requests` - 출금 요청

## 🔒 보안 주의사항
1. **API 키는 절대 클라이언트 코드에 노출하지 마세요**
2. **`.dev.vars` 파일을 Git에 커밋하지 마세요**
3. **프로덕션 환경에서는 반드시 Cloudflare Pages 시크릿 사용**
4. **웹훅 엔드포인트에 IP 화이트리스트 또는 서명 검증 추가 권장**

## 🧪 테스트 방법

### 로컬 테스트
```bash
# 1. 빌드
npm run build

# 2. 개발 서버 시작 (PM2)
pm2 start ecosystem.config.cjs

# 3. 테스트
curl http://localhost:3000/api/subscription/plans
```

### 프로덕션 배포
```bash
# 1. 환경 변수 설정 (위 참조)
# 2. 빌드 및 배포
npm run deploy
```

## 📞 문의
구현 관련 문의나 버그는 이슈로 등록해주세요.

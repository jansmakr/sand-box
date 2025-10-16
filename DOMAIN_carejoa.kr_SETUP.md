# 🌐 carejoa.kr 도메인 설정 가이드 (예스닉)

## 📋 설정 정보
- **도메인**: carejoa.kr
- **등록업체**: 예스닉 (yesnic.com)
- **프로젝트**: carejoa-webapp
- **현재 URL**: https://cf35b893.carejoa-webapp.pages.dev

---

## 🎯 방법 1: Cloudflare에서 도메인 관리 (권장)

### 1단계: Cloudflare에 도메인 추가

1. https://dash.cloudflare.com 로그인
2. "Add a Site" 클릭
3. **carejoa.kr** 입력
4. **Free 플랜** 선택
5. 제공되는 네임서버 정보 메모 (예시):
   ```
   amber.ns.cloudflare.com
   finn.ns.cloudflare.com
   ```

### 2단계: 예스닉에서 네임서버 변경

1. https://www.yesnic.com 로그인
2. **나의서비스 → 도메인관리**
3. **carejoa.kr** 선택
4. **네임서버 정보 변경**
5. Cloudflare 네임서버 2개 입력:
   ```
   amber.ns.cloudflare.com
   finn.ns.cloudflare.com
   ```
6. **변경신청** 클릭

⏰ **DNS 전파 대기**: 최대 24시간 (보통 1-2시간)

### 3단계: Cloudflare Pages에 커스텀 도메인 연결

샌드박스에서 실행:

```bash
cd /home/user/webapp

# 루트 도메인 추가
npx wrangler pages domain add carejoa.kr --project-name=carejoa-webapp

# www 서브도메인 추가 (선택사항)
npx wrangler pages domain add www.carejoa.kr --project-name=carejoa-webapp

# 도메인 목록 확인
npx wrangler pages domain list --project-name=carejoa-webapp
```

### 4단계: DNS 레코드 자동 생성 확인

Cloudflare 대시보드 → DNS → Records에서 확인:

```
Type    Name              Content                      Proxied
CNAME   carejoa.kr        carejoa-webapp.pages.dev     ✅
CNAME   www               carejoa-webapp.pages.dev     ✅
```

### 5단계: SSL/TLS 설정

Cloudflare 대시보드 → SSL/TLS:
1. **Encryption mode**: Full (strict)
2. **Always Use HTTPS**: On
3. **Automatic HTTPS Rewrites**: On

⏰ **SSL 인증서 발급**: 최대 15분

---

## 🎯 방법 2: 예스닉 DNS 사용 (Cloudflare 없이)

### DNS 레코드 설정

예스닉 관리페이지 → DNS 레코드 관리:

**A 레코드 (루트 도메인):**
```
호스트: @
타입: A
값: (Cloudflare Pages IP - wrangler 실행 후 제공됨)
TTL: 3600
```

**CNAME 레코드 (www):**
```
호스트: www
타입: CNAME
값: carejoa-webapp.pages.dev
TTL: 3600
```

---

## ✅ 설정 완료 후 확인

### DNS 전파 확인
```bash
# Linux/Mac
nslookup carejoa.kr
dig carejoa.kr

# Windows
nslookup carejoa.kr
```

### 사이트 접속 테스트
```bash
curl -I https://carejoa.kr
curl -I https://www.carejoa.kr
```

### 온라인 도구
- https://www.whatsmydns.net/?dns=carejoa.kr
- https://dnschecker.org/all-dns-records-of-domain.php?query=carejoa.kr

---

## 🔧 트러블슈팅

### 문제: DNS가 전파되지 않음
- 24시간 대기
- 로컬 DNS 캐시 플러시

### 문제: SSL 오류
- Cloudflare SSL/TLS 설정 확인
- Universal SSL 활성화 확인
- 최대 15분 대기

### 문제: "Too many redirects"
- SSL/TLS → Encryption mode를 "Full (strict)"로 변경

---

## 📞 예스닉 고객센터
- 전화: 1661-5300
- 평일: 09:00 ~ 18:00
- 토요일: 09:00 ~ 13:00

---

**다음 단계**: DNS 전파 완료 후 https://carejoa.kr 접속 테스트!

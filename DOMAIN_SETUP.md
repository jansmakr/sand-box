# 🌐 케어조아 커스텀 도메인 설정 가이드

## 📋 목차
1. [준비사항](#준비사항)
2. [방법 1: Cloudflare에서 도메인 관리 (권장)](#방법-1-cloudflare에서-도메인-관리-권장)
3. [방법 2: 외부 DNS 사용](#방법-2-외부-dns-사용)
4. [SSL/TLS 설정](#ssltls-설정)
5. [트러블슈팅](#트러블슈팅)

---

## 준비사항

### 필요한 것들
- ✅ 등록된 도메인 (예: carejoa.kr, carejoa.com)
- ✅ Cloudflare 계정
- ✅ Cloudflare API Token (이미 설정됨)
- ✅ 도메인 등록 업체 계정 접근 권한

### 현재 프로젝트 정보
- **프로젝트명**: `carejoa-webapp`
- **현재 URL**: https://cf35b893.carejoa-webapp.pages.dev
- **Cloudflare Pages**: 배포 완료

---

## 방법 1: Cloudflare에서 도메인 관리 (권장)

### 🎯 장점
- 자동 SSL/TLS 인증서
- 빠른 DNS 전파
- DDoS 보호
- 무료 CDN
- 쉬운 관리

### 📝 단계별 설정

#### 1단계: Cloudflare에 도메인 추가

**Cloudflare 대시보드에서:**
1. https://dash.cloudflare.com 로그인
2. "Add a Site" 클릭
3. 도메인 입력 (예: carejoa.kr)
4. Free 플랜 선택
5. 네임서버 정보 확인

**제공되는 네임서버 예시:**
```
amber.ns.cloudflare.com
finn.ns.cloudflare.com
```

#### 2단계: 도메인 등록업체에서 네임서버 변경

**가비아 (gabia.com):**
1. My 가비아 로그인
2. 서비스 관리 → 도메인 관리
3. 해당 도메인 선택 → 관리도구 → 네임서버 설정
4. Cloudflare 네임서버 입력
5. 저장

**후이즈 (whois.co.kr):**
1. 회원 로그인
2. 도메인 관리 → 네임서버 변경
3. Cloudflare 네임서버 입력
4. 변경 신청

**GoDaddy:**
1. 도메인 포트폴리오에서 도메인 선택
2. DNS 관리
3. 네임서버 → 변경
4. Cloudflare 네임서버 입력

⏰ **DNS 전파 시간**: 최대 24시간 (보통 1-2시간)

#### 3단계: Cloudflare Pages에 커스텀 도메인 연결

**명령줄에서 (wrangler 사용):**

```bash
cd /home/user/webapp

# 1. 루트 도메인 추가
npx wrangler pages domain add carejoa.kr --project-name=carejoa-webapp

# 2. www 서브도메인 추가 (선택사항)
npx wrangler pages domain add www.carejoa.kr --project-name=carejoa-webapp

# 3. 도메인 목록 확인
npx wrangler pages domain list --project-name=carejoa-webapp
```

**또는 Cloudflare 대시보드에서:**
1. https://dash.cloudflare.com 로그인
2. Workers & Pages → carejoa-webapp 선택
3. Custom domains 탭
4. "Set up a custom domain" 클릭
5. 도메인 입력 (예: carejoa.kr)
6. "Add Custom Domain" 클릭

#### 4단계: DNS 레코드 자동 생성 확인

Cloudflare가 자동으로 생성하는 DNS 레코드:

```
Type    Name              Content
CNAME   carejoa.kr        carejoa-webapp.pages.dev
CNAME   www.carejoa.kr    carejoa-webapp.pages.dev
```

자동 생성되지 않으면 수동으로 추가:
1. Cloudflare 대시보드 → DNS → Records
2. Add record 클릭
3. 위 정보 입력
4. Proxied (주황색 구름) 활성화

#### 5단계: SSL/TLS 설정 확인

1. Cloudflare 대시보드 → SSL/TLS
2. **Encryption mode**: Full (strict) 선택
3. Edge Certificates에서 Universal SSL 활성화 확인
4. Always Use HTTPS 활성화

---

## 방법 2: 외부 DNS 사용

Cloudflare에 도메인을 옮기지 않고 현재 DNS를 유지하는 방법

### 📝 설정 단계

#### 1단계: Cloudflare Pages에서 도메인 추가

```bash
npx wrangler pages domain add carejoa.kr --project-name=carejoa-webapp
```

실행 후 제공되는 DNS 레코드 정보를 메모하세요.

#### 2단계: 현재 DNS 제공업체에 레코드 추가

**가비아/후이즈/GoDaddy 등에서:**

**루트 도메인 (carejoa.kr):**
```
Type: A 또는 ALIAS
Name: @
Value: (Cloudflare에서 제공한 IP 주소)
```

또는

```
Type: CNAME
Name: @
Value: carejoa-webapp.pages.dev
```

**www 서브도메인 (www.carejoa.kr):**
```
Type: CNAME
Name: www
Value: carejoa-webapp.pages.dev
TTL: 3600 (1시간)
```

#### 3단계: DNS 전파 대기

⏰ 최대 24시간 (보통 1-2시간)

---

## SSL/TLS 설정

### 자동 SSL 인증서

Cloudflare Pages는 자동으로 SSL 인증서를 발급하고 갱신합니다:
- Let's Encrypt 인증서
- 자동 갱신 (90일마다)
- 무료
- 모든 커스텀 도메인 지원

### HTTPS 강제 적용

**Cloudflare 대시보드에서:**
1. SSL/TLS → Edge Certificates
2. "Always Use HTTPS" → On
3. "Automatic HTTPS Rewrites" → On

### HSTS (HTTP Strict Transport Security) 활성화

1. SSL/TLS → Edge Certificates
2. HSTS 섹션에서 "Enable HSTS" 클릭
3. 설정:
   - Max Age: 6개월 (권장)
   - Include subdomains: 체크
   - Preload: 체크 (선택사항)

---

## 도메인 확인

### DNS 전파 확인

```bash
# Linux/Mac
nslookup carejoa.kr
dig carejoa.kr

# Windows
nslookup carejoa.kr
```

### 온라인 도구
- https://www.whatsmydns.net/ - 전 세계 DNS 전파 상태 확인
- https://dnschecker.org/ - DNS 레코드 확인

### 사이트 접속 테스트

```bash
curl -I https://carejoa.kr
curl -I https://www.carejoa.kr
```

---

## 트러블슈팅

### 문제 1: DNS가 전파되지 않음

**해결책:**
- 24시간 대기 (DNS 캐시 만료 시간)
- 로컬 DNS 캐시 플러시:
  ```bash
  # Windows
  ipconfig /flushdns
  
  # Mac
  sudo dscacheutil -flushcache
  sudo killall -HUP mDNSResponder
  
  # Linux
  sudo systemd-resolve --flush-caches
  ```

### 문제 2: SSL 인증서 오류

**해결책:**
1. Cloudflare 대시보드 확인
2. SSL/TLS → Edge Certificates
3. Universal SSL 상태 확인
4. 최대 15분 대기 (인증서 발급 시간)

### 문제 3: "Too many redirects" 오류

**해결책:**
1. SSL/TLS → Overview
2. Encryption mode를 "Full" 또는 "Full (strict)"으로 변경

### 문제 4: 도메인이 연결되지 않음

**확인사항:**
1. Cloudflare Pages 프로젝트명 확인: `carejoa-webapp`
2. DNS 레코드 정확성 확인
3. Cloudflare Proxy 상태 확인 (주황색 구름)

```bash
# 도메인 목록 확인
npx wrangler pages domain list --project-name=carejoa-webapp

# 도메인 제거 후 재추가
npx wrangler pages domain remove carejoa.kr --project-name=carejoa-webapp
npx wrangler pages domain add carejoa.kr --project-name=carejoa-webapp
```

---

## 🎯 권장 설정 체크리스트

설정 완료 후 다음 항목들을 확인하세요:

- [ ] 도메인이 Cloudflare에 추가됨
- [ ] 네임서버가 Cloudflare로 변경됨
- [ ] DNS 레코드가 올바르게 설정됨
- [ ] Cloudflare Pages에 커스텀 도메인 추가됨
- [ ] SSL 인증서 발급 완료
- [ ] HTTPS로 정상 접속됨
- [ ] www와 non-www 모두 작동함
- [ ] Always Use HTTPS 활성화됨
- [ ] HSTS 설정 완료 (선택사항)

---

## 📞 추가 지원

### Cloudflare 문서
- https://developers.cloudflare.com/pages/configuration/custom-domains/
- https://developers.cloudflare.com/dns/

### Wrangler 문서
- https://developers.cloudflare.com/workers/wrangler/commands/#pages

---

## 🔗 유용한 링크

- Cloudflare 대시보드: https://dash.cloudflare.com
- DNS 전파 확인: https://www.whatsmydns.net/
- SSL 테스트: https://www.ssllabs.com/ssltest/

---

**참고**: 도메인 등록 후 README.md의 URL 섹션도 업데이트해주세요!

# 카카오맵 API 설정 가이드

## 📍 개요

케어조아 웹사이트의 "전국 요양시설 찾기" 기능에서 27,657개 시설을 지도에 표시하기 위해 Kakao Maps API를 사용합니다.

---

## 🔑 1단계: Kakao Developers 가입 및 앱 등록

### 1.1 Kakao Developers 접속
- URL: https://developers.kakao.com/
- 카카오 계정으로 로그인

### 1.2 애플리케이션 등록
1. 상단 메뉴에서 **"내 애플리케이션"** 클릭
2. **"애플리케이션 추가하기"** 버튼 클릭
3. 정보 입력:
   ```
   앱 이름: 케어조아
   사업자명: (선택사항, 개인은 빈 칸으로 둬도 됨)
   ```
4. **저장** 버튼 클릭

---

## 🌐 2단계: Web 플랫폼 등록

### 2.1 플랫폼 설정
1. 생성한 애플리케이션 클릭
2. 좌측 메뉴에서 **"앱 설정" → "플랫폼"** 선택
3. **"Web 플랫폼 등록"** 버튼 클릭

### 2.2 도메인 등록
**개발 환경 (localhost):**
```
http://localhost:3000
```

**프로덕션 환경 (실제 도메인):**
```
https://carejoa.kr
http://carejoa.kr
```

💡 **팁**: 여러 도메인을 등록할 수 있으니 개발/프로덕션 환경 모두 추가하세요.

---

## 🔐 3단계: JavaScript 키 발급

### 3.1 API 키 확인
1. 좌측 메뉴에서 **"앱 설정" → "앱 키"** 선택
2. **"JavaScript 키"** 복사
   ```
   예시: 1234567890abcdef1234567890abcdef
   ```

### 3.2 키 보안 설정 (권장)
1. 좌측 메뉴에서 **"앱 설정" → "보안"** 선택
2. **"Web 플랫폼 키 제한"** 활성화
   - 등록된 도메인에서만 API 사용 가능
   - 키 도용 방지

---

## ⚙️ 4단계: 프로젝트에 API 키 설정

### 4.1 로컬 개발 환경 (.dev.vars)

프로젝트 루트의 `.dev.vars` 파일을 열고 다음과 같이 수정:

```bash
# Kakao Maps API Key
KAKAO_MAPS_API_KEY=발급받은_JavaScript_키를_여기에_입력

# Admin Password (already configured)
ADMIN_PASSWORD=carejoa2024!secure
```

**예시:**
```bash
KAKAO_MAPS_API_KEY=1234567890abcdef1234567890abcdef
ADMIN_PASSWORD=carejoa2024!secure
```

### 4.2 프로덕션 환경 (Cloudflare Pages)

배포 후 프로덕션 환경에서 사용하려면:

```bash
# Cloudflare Pages에 환경 변수 추가
npx wrangler pages secret put KAKAO_MAPS_API_KEY --project-name=carejoa-webapp

# 프롬프트가 나오면 발급받은 JavaScript 키 입력
```

**또는 Cloudflare 대시보드에서 설정:**
1. Cloudflare Pages 대시보드 접속
2. 프로젝트 선택 (carejoa-webapp)
3. **Settings** → **Environment variables**
4. **Add variable** 클릭:
   - Variable name: `KAKAO_MAPS_API_KEY`
   - Value: 발급받은 JavaScript 키
   - Environment: Production (또는 Preview)

---

## 🚀 5단계: 빌드 및 실행

### 5.1 빌드
```bash
cd /home/user/webapp
npm run build
```

### 5.2 로컬 서버 실행
```bash
# PM2로 실행
pm2 restart carejoa-webapp

# 또는 직접 실행
npm run dev:sandbox
```

### 5.3 테스트
1. 브라우저에서 접속:
   ```
   http://localhost:3000/facilities
   ```

2. 확인사항:
   - ✅ 지도가 정상적으로 표시되는지
   - ✅ 검색 버튼 클릭 시 마커가 표시되는지
   - ✅ 시설 목록의 "지도" 버튼 클릭 시 해당 위치로 이동하는지

---

## 🗺️ 기능 설명

### 구현된 기능

1. **지도 초기화**
   - 서울 중심 좌표로 시작 (37.5665, 126.9780)
   - 확대 레벨: 8 (넓은 범위)

2. **마커 표시**
   - 검색 결과에 맞는 시설을 지도에 마커로 표시
   - 최대 100개 마커 (성능 최적화)
   - 마커 클릭 시 시설 정보 인포윈도우 표시

3. **인포윈도우**
   - 시설 유형 (색상 강조)
   - 시설명
   - 전체 주소

4. **시설 상세보기**
   - 시설 목록의 "지도" 버튼 클릭
   - 해당 시설로 지도 중심 이동 및 확대 (레벨 3)
   - 3초간 인포윈도우 자동 표시

---

## 🎨 사용자 경험

### 검색 플로우

1. **필터 선택**
   ```
   시/도: 서울특별시
   시/군/구: 강남구
   시설 유형: 요양원
   ```

2. **검색 실행**
   - 검색 버튼 클릭
   - 결과 카운트 업데이트
   - 지도에 마커 자동 표시
   - 첫 번째 시설로 지도 중심 이동

3. **시설 확인**
   - 우측 목록에서 시설 정보 확인
   - "지도" 버튼으로 해당 위치 확인
   - 지도 마커 클릭으로 상세 정보 확인

---

## ⚠️ 문제 해결 (Troubleshooting)

### 문제 1: 지도가 표시되지 않음

**증상:**
- 회색 빈 화면만 표시
- 콘솔에 "카카오맵 API가 로드되지 않았습니다" 에러

**해결 방법:**
1. `.dev.vars` 파일에서 `KAKAO_MAPS_API_KEY` 확인
2. API 키가 정확히 입력되었는지 확인
3. Kakao Developers에서 Web 플랫폼에 도메인이 등록되었는지 확인
4. 브라우저 개발자 도구 콘솔에서 에러 메시지 확인

### 문제 2: API 키 오류

**증상:**
- 콘솔에 "Kakao Maps API Key is invalid" 에러

**해결 방법:**
1. Kakao Developers에서 **JavaScript 키** (REST API 키 아님) 확인
2. 키를 복사할 때 공백이 포함되지 않았는지 확인
3. `.dev.vars` 파일 저장 후 서버 재시작:
   ```bash
   pm2 restart carejoa-webapp
   ```

### 문제 3: 마커가 표시되지 않음

**증상:**
- 지도는 표시되지만 마커가 없음

**해결 방법:**
1. 브라우저 개발자 도구 콘솔 확인:
   ```
   "로드된 시설 수: 27657" 메시지가 있는지 확인
   ```
2. CSV 파일 경로 확인:
   ```
   /home/user/webapp/public/static/facilities_data.csv
   ```
3. 검색 결과가 0개인지 확인 (필터 조건이 너무 엄격할 수 있음)

### 문제 4: 느린 로딩 속도

**증상:**
- 지도가 표시되는데 시간이 오래 걸림

**해결 방법:**
1. 5.7MB CSV 파일이 처음 로드 시 시간이 걸릴 수 있음
2. 브라우저 캐시를 활용하므로 두 번째 접속부터는 빠름
3. 필요시 서버 사이드 검색 API로 전환 고려

---

## 📊 API 사용량 모니터링

### Kakao Developers 대시보드
1. https://developers.kakao.com/ 접속
2. "내 애플리케이션" → 해당 앱 선택
3. 좌측 메뉴 → "통계"
4. API 호출 수 확인

### 무료 한도
- **300,000 호출/일**
- 케어조아 규모로는 충분함
- 지도 로드 시 1회 호출
- 마커 표시는 추가 호출 없음

---

## 🔄 대체 옵션: Naver Maps API

Kakao Maps가 마음에 들지 않으면 Naver Maps로 대체 가능:

### 장점
- 무료 한도가 더 큼
- 국내 지도 정확도 유사

### 단점
- 사업자 등록 필요할 수 있음
- API 문서가 Kakao보다 복잡

**변경 시 필요한 작업:**
- API 스크립트 URL 변경
- JavaScript 코드 수정 (API 메서드명 차이)
- 약 1-2시간 작업 소요

---

## ✅ 체크리스트

설정 완료 후 다음을 확인하세요:

- [ ] Kakao Developers에 애플리케이션 등록
- [ ] Web 플랫폼에 도메인 등록 (localhost + 실제 도메인)
- [ ] JavaScript 키 발급
- [ ] `.dev.vars` 파일에 API 키 입력
- [ ] 빌드 성공 (`npm run build`)
- [ ] 서버 재시작 (`pm2 restart carejoa-webapp`)
- [ ] 브라우저에서 `/facilities` 페이지 접속
- [ ] 지도 정상 표시 확인
- [ ] 검색 기능 테스트
- [ ] 마커 클릭 테스트
- [ ] "지도" 버튼 클릭 테스트

---

## 📞 지원

문제가 해결되지 않으면:

1. **Kakao Developers 고객센터**
   - https://devtalk.kakao.com/
   - 카카오 개발자 포럼

2. **프로젝트 로그 확인**
   ```bash
   pm2 logs carejoa-webapp --nostream
   ```

3. **브라우저 개발자 도구**
   - F12 → Console 탭
   - Network 탭에서 API 호출 확인

---

**작성일**: 2025-10-16  
**프로젝트**: 케어조아 (carejoa.kr)  
**작성자**: AI Assistant

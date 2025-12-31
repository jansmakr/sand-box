# 네이버 검색 등록 - 빠른 시작 가이드 (5분)

## 🚀 빠른 3단계

### 1단계: 네이버 서치어드바이저 가입 (1분)

1. https://searchadvisor.naver.com/ 접속
2. 네이버 계정으로 로그인
3. "웹마스터 도구" → "사이트 등록" 클릭
4. URL 입력: `https://carejoa.kr`

---

### 2단계: 사이트 소유 확인 (2분)

#### 방법 A: HTML 파일 업로드 (가장 쉬움) ✅

1. **네이버에서 HTML 파일 다운로드**
   - 파일명 예시: `naver1234567890abcdef.html`

2. **공유해주세요**
   - 다운로드한 파일을 제게 공유해주시면
   - 제가 바로 배포해드리겠습니다!

3. **또는 직접 배포**
   ```bash
   # 다운로드한 파일을 public 폴더에 복사
   cp ~/Downloads/naver*.html /home/user/webapp/public/
   
   cd /home/user/webapp
   npm run build
   npx wrangler pages deploy dist --project-name carejoa-kr-auto
   ```

4. **확인**: https://carejoa.kr/naver1234567890abcdef.html 접속 확인

5. **네이버에서 "소유 확인" 버튼 클릭**

#### 방법 B: DNS 레코드 (Cloudflare 사용 시)

1. Cloudflare 대시보드 → carejoa.kr 도메인 선택
2. DNS 탭 → Add record
3. Type: `TXT`, Name: `@`, Content: 네이버 제공 값
4. 저장 후 네이버에서 "소유 확인" 클릭

---

### 3단계: 사이트맵 제출 (1분)

1. **네이버 서치어드바이저**
   - 좌측 메뉴 → "요청" → "사이트맵 제출"

2. **URL 입력**
   ```
   https://carejoa.kr/sitemap.xml
   ```

3. **"확인" 버튼 클릭**

---

## ✅ 완료!

### 확인 사항
- [ ] 네이버 서치어드바이저에 사이트 등록됨
- [ ] 사이트 소유 확인 완료
- [ ] 사이트맵 제출 완료

### 다음 단계
- **1-2주 후**: 색인 시작
- **1-2개월 후**: 네이버 검색에 노출 시작

---

## 📞 도움이 필요하신가요?

- 자세한 가이드: [NAVER_SEARCHADVISOR_GUIDE.md](NAVER_SEARCHADVISOR_GUIDE.md)
- HTML 파일 업로드 도움이 필요하시면 파일을 공유해주세요!

---

## 💡 팁

1. **소유 확인 파일은 평생 유지해야 합니다**
   - 삭제하면 소유 확인이 풀립니다
   - public 폴더에 보관하세요

2. **RSS는 선택사항입니다**
   - 현재는 사이트맵만으로 충분합니다
   - 블로그 기능 추가 시 RSS 고려

3. **인내심을 가지세요**
   - 네이버 색인에는 1-2주 소요
   - 검색 노출에는 1-2개월 소요

---

**축하합니다! 네이버 검색 등록 완료! 🎉**

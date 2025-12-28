# 🗑️ procos 계정 리소스 수동 삭제 가이드

**작성일**: 2025-12-28  
**목적**: procos@hanmail.net 계정에 잘못 생성된 리소스 정리  

---

## ⚠️ **삭제해야 할 리소스**

### 1. **D1 데이터베이스**
```
이름: carejoa-webapp-db
Database ID: acae82af-3eb2-454a-ae79-1c495bdf42a5
상태: 비어 있음 (0 테이블, 0 데이터)
계정: procos@hanmail.net (cc288af45c58f325e3db84d4265f8ccb)
```

### 2. **Pages 프로젝트**
```
이름: carejoa-webapp
URL: carejoa-webapp.pages.dev
상태: 배포 없음
계정: procos@hanmail.net (cc288af45c58f325e3db84d4265f8ccb)
```

---

## 📋 **삭제 절차**

### Step 1: Cloudflare Dashboard 접속

```
1. https://dash.cloudflare.com 접속
2. procos@hanmail.net 계정으로 로그인
```

---

### Step 2: D1 데이터베이스 삭제

#### 2-1. D1 페이지 이동
```
왼쪽 사이드바:
Storage & Databases → D1
```

#### 2-2. 데이터베이스 찾기
```
목록에서 "carejoa-webapp-db" 찾기
```

#### 2-3. 삭제 실행
```
1. "carejoa-webapp-db" 행 클릭
2. Settings 탭 이동
3. 하단의 "Delete database" 버튼 클릭
4. 확인 팝업에서 데이터베이스 이름 입력: carejoa-webapp-db
5. "Delete" 버튼 클릭
```

**예상 결과:**
```
✅ Database successfully deleted
```

---

### Step 3: Pages 프로젝트 삭제

#### 3-1. Pages 페이지 이동
```
왼쪽 사이드바:
Workers & Pages
```

#### 3-2. 프로젝트 찾기
```
목록에서 "carejoa-webapp" 찾기
(타입: Pages 로 표시됨)
```

#### 3-3. 삭제 실행
```
1. "carejoa-webapp" 클릭하여 상세 페이지 진입
2. Settings 탭 이동
3. 페이지 하단의 "Delete project" 섹션 찾기
4. "Delete" 버튼 클릭
5. 확인 팝업에서 프로젝트 이름 입력: carejoa-webapp
6. "Delete Project" 버튼 클릭
```

**예상 결과:**
```
✅ Project successfully deleted
```

---

## ✅ **삭제 확인**

### D1 데이터베이스 확인
```
Storage & Databases → D1
→ "carejoa-webapp-db"가 목록에 없어야 함
```

### Pages 프로젝트 확인
```
Workers & Pages
→ "carejoa-webapp"가 목록에 없어야 함
```

---

## 💡 **삭제하지 말아야 할 것**

### ✅ **보존해야 할 리소스 (procos 계정)**

procos 계정에 다른 유용한 리소스가 있을 수 있습니다:

```
✅ 보존:
- momstere-readdy (Pages)
- beautyshot-webapp (Pages)
- beautycat-v2 (Pages)
- pposhop-ai (Pages/Workers)
- 기타 프로덕션 프로젝트

❌ 삭제:
- carejoa-webapp (Pages) → 사용 안 함
- carejoa-webapp-db (D1) → 비어 있음
```

---

## 🚨 **주의사항**

### ⚠️ **삭제 전 확인할 것**

1. **프로젝트 이름 재확인**
   ```
   삭제할 것: carejoa-webapp
   삭제하지 말 것: carejoa-kr, carejoa-kr-auto
   ```

2. **데이터베이스 이름 재확인**
   ```
   삭제할 것: carejoa-webapp-db (비어 있음)
   삭제하지 말 것: carejoa-production (7.5 MB 데이터)
   ```

3. **계정 확인**
   ```
   삭제 작업 계정: procos@hanmail.net
   프로덕션 계정: jansmakr@gmail.com (건드리지 말 것!)
   ```

---

## 📊 **삭제 후 상태**

### procos@hanmail.net 계정
```
❌ carejoa-webapp → 삭제됨
❌ carejoa-webapp-db → 삭제됨
✅ 다른 프로젝트들 → 정상 유지
```

### jansmakr@gmail.com 계정 (프로덕션)
```
✅ carejoa-kr-auto → 정상 운영 중
✅ carejoa-production (D1) → 정상 운영 중
✅ 모든 프로젝트 → 영향 없음
```

---

## 🎯 **삭제 이유**

### 왜 삭제해야 하나?

1. **비용 절감**
   - 사용하지 않는 리소스는 잠재적 비용 발생
   - 무료 플랜에서도 할당량 차지

2. **혼란 방지**
   - 잘못된 계정의 리소스로 인한 배포 오류
   - 관리 복잡도 증가

3. **깔끔한 정리**
   - 프로덕션 리소스만 유지
   - 명확한 리소스 구조

---

## ✅ **삭제 완료 체크리스트**

```
□ Cloudflare Dashboard 접속 (procos@hanmail.net)
□ D1 → carejoa-webapp-db 삭제
□ Workers & Pages → carejoa-webapp 삭제
□ 삭제 확인 (목록에서 사라짐)
□ 다른 프로젝트 정상 확인
```

---

## 📞 **문제 발생 시**

### 삭제할 수 없는 경우

**원인 1: 권한 부족**
```
해결: 계정 소유자로 로그인 확인
```

**원인 2: 다른 리소스가 의존**
```
해결: 의존성 제거 후 삭제 재시도
```

**원인 3: 프로젝트를 찾을 수 없음**
```
해결: 이미 삭제되었을 수 있음 (정상)
```

---

## 🎉 **완료 후**

삭제 완료 후:
```
✅ procos 계정: 불필요한 리소스 정리됨
✅ jansmakr 계정: 프로덕션 정상 운영 중
✅ 혼란 제거: 하나의 명확한 프로덕션 환경
```

---

**작성일**: 2025-12-28  
**난이도**: ⭐⭐ (쉬움)  
**소요 시간**: 5분  
**우선순위**: 🟡 중간 (선택사항)

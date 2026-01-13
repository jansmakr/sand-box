# 케어조아 관리자 시스템 가이드

## 📋 목차
1. [시스템 개요](#시스템-개요)
2. [기술 스택](#기술-스택)
3. [데이터베이스 구조](#데이터베이스-구조)
4. [핵심 기능](#핵심-기능)
5. [API 엔드포인트](#api-엔드포인트)
6. [프론트엔드 구조](#프론트엔드-구조)
7. [배포 및 운영](#배포-및-운영)
8. [코드 예제](#코드-예제)

---

## 시스템 개요

### 프로젝트 정보
- **프로젝트명**: 케어조아 (CareJoa)
- **목적**: 요양시설 중개 플랫폼 관리자 시스템
- **URL**: https://carejoa.kr
- **GitHub**: https://github.com/jansmakr/sand-box

### 주요 특징
- **엣지 컴퓨팅**: Cloudflare Workers/Pages 기반
- **서버리스 아키텍처**: D1 Database (SQLite) 사용
- **실시간 데이터**: 15,751개 시설 데이터 관리
- **반응형 UI**: 모바일/데스크톱 최적화
- **세션 기반 인증**: 쿠키 기반 관리자 인증

---

## 기술 스택

### 백엔드
```typescript
// Hono Framework (Cloudflare Workers)
import { Hono } from 'hono'
import { cors } from 'hono/cors'
import { serveStatic } from 'hono/cloudflare-workers'

const app = new Hono<{ Bindings: { DB: D1Database } }>()
```

**핵심 라이브러리**:
- **Hono**: 경량 웹 프레임워크 (Express.js 대체)
- **Cloudflare D1**: SQLite 기반 분산 데이터베이스
- **Wrangler**: Cloudflare CLI 도구

### 프론트엔드
```html
<!-- CDN 기반 라이브러리 (빌드 불필요) -->
<script src="https://cdn.tailwindcss.com"></script>
<script src="https://cdn.jsdelivr.net/npm/axios@1.6.0/dist/axios.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.0/css/all.min.css" rel="stylesheet">
```

**핵심 라이브러리**:
- **TailwindCSS**: 유틸리티 우선 CSS 프레임워크
- **Axios**: HTTP 클라이언트
- **FontAwesome**: 아이콘

### 데이터
- **정적 JSON**: 15,751개 시설 데이터 (4.87MB)
- **D1 Database**: 회원, 견적, 설정 데이터
- **메모리 캐시**: 자주 사용하는 데이터 임시 저장

---

## 데이터베이스 구조

### D1 Database (carejoa-production)

#### 1. users 테이블
```sql
CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  email TEXT UNIQUE NOT NULL,
  password_hash TEXT NOT NULL,
  name TEXT NOT NULL,
  phone TEXT,
  user_type TEXT NOT NULL,  -- 'customer', 'facility', 'admin'
  facility_type TEXT,
  region_sido TEXT,
  region_sigungu TEXT,
  address TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_users_type ON users(user_type);
```

#### 2. facility_settings 테이블 (대표시설)
```sql
CREATE TABLE facility_settings (
  facility_id INTEGER PRIMARY KEY,
  is_representative INTEGER DEFAULT 0,
  region_sido TEXT,
  region_sigungu TEXT,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_by TEXT
);

CREATE INDEX idx_facility_settings_representative 
  ON facility_settings(is_representative, region_sido, region_sigungu);
```

#### 3. quote_requests 테이블 (견적 요청)
```sql
CREATE TABLE quote_requests (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  quote_id TEXT UNIQUE NOT NULL,
  quote_type TEXT NOT NULL,
  applicant_name TEXT NOT NULL,
  applicant_phone TEXT NOT NULL,
  applicant_email TEXT NOT NULL,
  patient_name TEXT NOT NULL,
  patient_age INTEGER,
  patient_gender TEXT,
  care_grade TEXT,
  patient_condition TEXT,
  sido TEXT NOT NULL,
  sigungu TEXT NOT NULL,
  facility_type TEXT NOT NULL,
  room_type TEXT,
  budget_min INTEGER,
  budget_max INTEGER,
  additional_notes TEXT,
  status TEXT DEFAULT 'pending',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_quote_requests_email ON quote_requests(applicant_email);
CREATE INDEX idx_quote_requests_region ON quote_requests(sido, sigungu);
```

#### 4. quote_responses 테이블 (견적 응답)
```sql
CREATE TABLE quote_responses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  response_id TEXT UNIQUE NOT NULL,
  quote_id TEXT NOT NULL,
  partner_id INTEGER NOT NULL,
  estimated_price INTEGER,
  service_details TEXT,
  available_rooms TEXT,
  special_services TEXT,
  contact_person TEXT,
  contact_phone TEXT,
  status TEXT DEFAULT 'sent',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (quote_id) REFERENCES quote_requests(quote_id)
);

CREATE INDEX idx_quote_responses_quote ON quote_responses(quote_id);
```

#### 5. admin_sessions 테이블
```sql
CREATE TABLE admin_sessions (
  session_id TEXT PRIMARY KEY,
  user_email TEXT NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  expires_at DATETIME NOT NULL
);
```

### 정적 데이터 (facilities.json)
```json
[
  {
    "id": "1",
    "name": "북서울요양병원",
    "type": "요양병원",
    "sido": "서울특별시",
    "sigungu": "강북구",
    "address": "서울특별시 강북구 한천로 1002",
    "phone": "02-1234-5678",
    "zipcode": "01234",
    "lat": 37.123456,
    "lng": 127.123456
  }
  // ... 15,751개 시설
]
```

---

## 핵심 기능

### 1. 인증 시스템

#### 관리자 로그인
```typescript
// 로그인 API
app.post('/api/admin/login', async (c) => {
  const { email, password } = await c.req.json()
  
  // 관리자 계정 확인
  if (email === ADMIN_CONFIG.email && password === ADMIN_CONFIG.password) {
    const sessionId = generateSessionId()
    
    // D1에 세션 저장
    const db = c.env.DB
    if (db) {
      await db.prepare(`
        INSERT INTO admin_sessions (session_id, user_email, expires_at)
        VALUES (?, ?, datetime('now', '+7 days'))
      `).bind(sessionId, email).run()
    }
    
    // 쿠키 설정
    c.cookie(ADMIN_CONFIG.sessionKey, sessionId, {
      httpOnly: true,
      secure: true,
      maxAge: 60 * 60 * 24 * 7, // 7일
      path: '/'
    })
    
    return c.json({ success: true })
  }
  
  return c.json({ success: false, message: '인증 실패' }, 401)
})

// 인증 미들웨어
function isAdmin(c) {
  const sessionId = c.cookie(ADMIN_CONFIG.sessionKey)
  if (!sessionId) return false
  
  // 메모리 세션 확인 또는 D1 조회
  return sessions.has(sessionId)
}
```

#### 세션 관리
```typescript
// 세션 생성
function generateSessionId() {
  return 'session_' + Date.now() + '_' + Math.random().toString(36).substring(2)
}

// 로그아웃
app.post('/api/admin/logout', (c) => {
  const sessionId = c.cookie(ADMIN_CONFIG.sessionKey)
  if (sessionId) {
    sessions.delete(sessionId)
  }
  c.cookie(ADMIN_CONFIG.sessionKey, '', { maxAge: 0 })
  return c.json({ success: true })
})
```

### 2. 시설 관리

#### 시설 데이터 로드 (클라이언트)
```javascript
async function loadFacilities() {
  try {
    // D1 대표시설 정보 포함된 API 호출
    const response = await fetch('/api/facilities/with-representative')
    if (response.ok) {
      allFacilitiesData = await response.json()
    } else {
      // 폴백: 정적 JSON
      const fallbackResponse = await fetch('/static/facilities.json')
      allFacilitiesData = await fallbackResponse.json()
    }
    
    // 최신순 정렬 (신규 시설이 상단에)
    allFacilitiesData.sort((a, b) => {
      const idA = parseInt(a.id) || 0
      const idB = parseInt(b.id) || 0
      return idB - idA
    })
    
    window.allFacilitiesData = allFacilitiesData
    filteredFacilitiesData = [...allFacilitiesData]
    
    displayFacilities()
  } catch (error) {
    console.error('시설 데이터 로딩 오류:', error)
  }
}
```

#### 시설 검색 및 필터링
```javascript
function searchFacilities() {
  const searchName = document.getElementById('adminSearchName').value.toLowerCase()
  const filterSido = document.getElementById('adminFilterSido').value
  const filterSigungu = document.getElementById('adminFilterSigungu').value
  const filterType = document.getElementById('adminFilterType').value
  
  filteredFacilitiesData = allFacilitiesData.filter(f => {
    // 이름 검색
    if (searchName && !f.name.toLowerCase().includes(searchName)) {
      return false
    }
    
    // 시도 필터
    if (filterSido && f.sido !== filterSido) {
      return false
    }
    
    // 시군구 필터
    if (filterSigungu && f.sigungu !== filterSigungu) {
      return false
    }
    
    // 시설 유형 필터
    if (filterType && f.type !== filterType) {
      return false
    }
    
    return true
  })
  
  displayFacilities()
}
```

#### 시설 표시 (테이블)
```javascript
function displayFacilities() {
  const listEl = document.getElementById('facilitiesList')
  const countEl = document.getElementById('filteredCount')
  
  countEl.textContent = filteredFacilitiesData.length.toLocaleString()
  
  if (filteredFacilitiesData.length === 0) {
    listEl.innerHTML = '<tr><td colspan="9" class="px-4 py-8 text-center text-gray-500">검색 결과가 없습니다</td></tr>'
    return
  }
  
  // 최대 100개만 표시 (성능 최적화)
  const displayData = filteredFacilitiesData.slice(0, 100)
  
  listEl.innerHTML = displayData.map(f => {
    const isRepresentative = f.isRepresentative || false
    const repBadge = isRepresentative 
      ? '<span class="ml-2 px-2 py-1 bg-purple-100 text-purple-700 text-xs rounded-full font-bold"><i class="fas fa-crown mr-1"></i>대표</span>' 
      : ''
    
    return `
    <tr class="border-t hover:bg-gray-50">
      <td class="px-4 py-3 text-sm text-gray-600">${f.id}</td>
      <td class="px-4 py-3 font-medium text-gray-900">${f.name}${repBadge}</td>
      <td class="px-4 py-3 text-sm">
        <span class="px-2 py-1 bg-blue-100 text-blue-700 rounded text-xs">${f.type}</span>
      </td>
      <td class="px-4 py-3 text-sm text-gray-600">${f.sido}</td>
      <td class="px-4 py-3 text-sm text-gray-600">${f.sigungu}</td>
      <td class="px-4 py-3 text-sm">${f.phone || '<span class="text-red-500">미등록</span>'}</td>
      <td class="px-4 py-3 text-sm text-gray-600" title="${f.address}">${f.address.substring(0, 30)}...</td>
      <td class="px-4 py-3 text-center">
        <input 
          type="checkbox" 
          ${isRepresentative ? 'checked' : ''} 
          onchange="toggleRepresentative('${f.id}', this.checked, event)"
          class="w-4 h-4 text-purple-600 cursor-pointer"
        >
      </td>
      <td class="px-4 py-3">
        <div class="flex gap-2">
          <button 
            onclick="console.log('수정 버튼 클릭:', '${f.id}'); openEditModal('${f.id}')" 
            class="px-3 py-1 bg-blue-500 text-white text-xs rounded hover:bg-blue-600"
          >
            <i class="fas fa-edit"></i> 수정
          </button>
          <button 
            onclick="console.log('삭제 버튼 클릭:', '${f.id}'); deleteFacility('${f.id}')" 
            class="px-3 py-1 bg-red-500 text-white text-xs rounded hover:bg-red-600"
          >
            <i class="fas fa-trash"></i> 삭제
          </button>
        </div>
      </td>
    </tr>
    `
  }).join('')
}
```

### 3. 대표시설 지정

#### 대표시설 토글 (클라이언트)
```javascript
async function toggleRepresentative(id, isChecked, event) {
  console.log('🔄 대표시설 토글 시작:', { id, isChecked })
  
  // 전역 데이터에서 시설 찾기 (ID 타입 유연하게 비교)
  const facilities = window.allFacilitiesData || allFacilitiesData
  const facility = facilities.find(f => 
    f.id == id || String(f.id) === String(id) || Number(f.id) === Number(id)
  )
  
  if (!facility) {
    console.error('❌ 시설을 찾을 수 없습니다:', id)
    alert('시설을 찾을 수 없습니다.')
    event.target.checked = !isChecked
    return
  }
  
  console.log('✅ 시설 찾음:', facility.name)
  
  // 대표시설 지정 시 확인
  if (isChecked) {
    const existingRep = facilities.find(f => 
      f.isRepresentative && 
      f.sido === facility.sido && 
      f.sigungu === facility.sigungu &&
      f.id !== facility.id
    )
    
    if (existingRep) {
      const confirm = window.confirm(
        `${facility.sido} ${facility.sigungu} 지역에 이미 대표시설 "${existingRep.name}"이(가) 있습니다.\n\n` +
        `"${facility.name}"을(를) 새로운 대표시설로 지정하시겠습니까?\n` +
        `(기존 대표시설은 자동으로 해제됩니다.)`
      )
      if (!confirm) {
        event.target.checked = false
        return
      }
    }
  }
  
  try {
    console.log('📡 API 호출 시작: /api/admin/facility/set-representative')
    
    const response = await axios.post('/api/admin/facility/set-representative', {
      facilityId: id,
      isRepresentative: isChecked,
      sido: facility.sido,
      sigungu: facility.sigungu
    })
    
    console.log('✅ API 응답:', response.data)
    
    if (response.data.success) {
      // 메모리 데이터 업데이트
      facility.isRepresentative = isChecked
      
      // 같은 지역의 다른 대표시설 해제
      if (isChecked) {
        facilities.forEach(f => {
          if (f.id !== facility.id && 
              f.sido === facility.sido && 
              f.sigungu === facility.sigungu) {
            f.isRepresentative = false
          }
        })
      }
      
      alert(response.data.message)
      displayFacilities() // 화면 새로고침
    }
  } catch (error) {
    console.error('❌ 대표시설 설정 실패:', error)
    alert('대표시설 설정에 실패했습니다.')
    event.target.checked = !isChecked
  }
}
```

#### 대표시설 설정 API (서버)
```typescript
app.post('/api/admin/facility/set-representative', async (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const { facilityId, isRepresentative, sido, sigungu } = await c.req.json()
    const db = c.env.DB
    
    if (!db) {
      // D1 없으면 메모리에만 저장
      return c.json({ 
        success: true, 
        message: '대표시설로 지정되었습니다. (메모리 업데이트)',
        note: '서버 재시작 시 초기화됩니다.'
      })
    }
    
    // 트랜잭션 시작
    const batch = []
    
    if (isRepresentative) {
      // 1. 같은 지역의 기존 대표시설 해제
      batch.push(
        db.prepare(`
          UPDATE facility_settings 
          SET is_representative = 0, updated_at = CURRENT_TIMESTAMP
          WHERE region_sido = ? AND region_sigungu = ? AND is_representative = 1
        `).bind(sido, sigungu)
      )
      
      // 2. 새로운 대표시설 지정
      batch.push(
        db.prepare(`
          INSERT INTO facility_settings 
            (facility_id, is_representative, region_sido, region_sigungu, updated_at)
          VALUES (?, 1, ?, ?, CURRENT_TIMESTAMP)
          ON CONFLICT(facility_id) DO UPDATE SET
            is_representative = 1,
            region_sido = excluded.region_sido,
            region_sigungu = excluded.region_sigungu,
            updated_at = CURRENT_TIMESTAMP
        `).bind(facilityId, sido, sigungu)
      )
    } else {
      // 대표시설 해제
      batch.push(
        db.prepare(`
          UPDATE facility_settings 
          SET is_representative = 0, updated_at = CURRENT_TIMESTAMP
          WHERE facility_id = ?
        `).bind(facilityId)
      )
    }
    
    // 트랜잭션 실행
    await db.batch(batch)
    
    console.log(`✅ 대표시설 ${isRepresentative ? '지정' : '해제'} 완료:`, facilityId)
    
    return c.json({ 
      success: true, 
      message: isRepresentative 
        ? '대표시설로 지정되었습니다. (D1 영구 저장)' 
        : '대표시설이 해제되었습니다.'
    })
    
  } catch (error) {
    console.error('❌ 대표시설 설정 오류:', error)
    return c.json({ 
      success: false, 
      message: '대표시설 설정 실패',
      error: error.message 
    }, 500)
  }
})
```

#### 대표시설 정보 포함 API
```typescript
app.get('/api/facilities/with-representative', async (c) => {
  try {
    // 1. 정적 시설 데이터 로드
    const facilities = await loadFacilities()
    
    // 2. D1에서 대표시설 정보 조회
    const db = c.env.DB
    if (db) {
      const { results } = await db.prepare(`
        SELECT facility_id, is_representative 
        FROM facility_settings 
        WHERE is_representative = 1
      `).all()
      
      console.log('✅ 대표시설 로드:', results?.length || 0, '개')
      
      // 3. 시설 데이터에 대표시설 정보 병합
      if (results && results.length > 0) {
        const repMap = new Map(results.map(r => [String(r.facility_id), true]))
        facilities.forEach(f => {
          f.isRepresentative = repMap.has(String(f.id)) || false
        })
      }
    }
    
    return c.json(facilities)
  } catch (error) {
    console.error('❌ 시설 데이터 로드 오류:', error)
    
    // 폴백: 정적 JSON만 반환
    const facilities = await loadFacilities()
    return c.json(facilities)
  }
})
```

### 4. 일반고객 관리

#### 고객 목록 조회
```typescript
app.get('/api/admin/customers', async (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: '권한이 없습니다.' }, 403)
  }
  
  try {
    const db = c.env.DB
    if (!db) {
      console.log('⚠️ D1 데이터베이스가 없습니다.')
      return c.json([])
    }
    
    const { results } = await db.prepare(`
      SELECT id, email, name, phone, created_at 
      FROM users 
      WHERE user_type = 'customer' 
      ORDER BY created_at DESC
    `).all()
    
    console.log('✅ 일반고객 조회 성공:', results?.length || 0, '명')
    return c.json(results || [])
    
  } catch (error) {
    console.error('❌ 일반고객 목록 조회 오류:', error)
    return c.json({ error: '데이터 조회 실패', details: error.message }, 500)
  }
})
```

#### 고객 상세 정보 조회
```typescript
app.get('/api/admin/customers/:id', async (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: '권한이 없습니다.' }, 403)
  }
  
  try {
    const customerId = c.req.param('id')
    const db = c.env.DB
    
    if (!db) {
      return c.json({ error: 'D1 데이터베이스 없음' }, 500)
    }
    
    // 1. 고객 기본 정보 조회
    const { results: customers } = await db.prepare(`
      SELECT id, email, name, phone, created_at
      FROM users
      WHERE id = ? AND user_type = 'customer'
    `).bind(customerId).all()
    
    if (!customers || customers.length === 0) {
      return c.json({ error: '고객을 찾을 수 없습니다.' }, 404)
    }
    
    const customer = customers[0]
    
    // 2. 견적 요청 수 조회 (applicant_email로)
    const { results: quoteStats } = await db.prepare(`
      SELECT COUNT(*) as quote_count
      FROM quote_requests
      WHERE applicant_email = ?
    `).bind(customer.email).all()
    
    // 3. 받은 견적 응답 수 조회
    const { results: responseStats } = await db.prepare(`
      SELECT COUNT(DISTINCT qres.id) as response_count
      FROM quote_requests qr
      LEFT JOIN quote_responses qres ON qr.quote_id = qres.quote_id
      WHERE qr.applicant_email = ?
    `).bind(customer.email).all()
    
    // 4. 가입 일수 계산
    const joinDate = new Date(customer.created_at)
    const today = new Date()
    const daysSinceJoin = Math.floor((today - joinDate) / (1000 * 60 * 60 * 24))
    
    // 5. 정보 병합
    const customerDetail = {
      ...customer,
      quote_count: quoteStats[0]?.quote_count || 0,
      response_count: responseStats[0]?.response_count || 0,
      days_since_join: daysSinceJoin
    }
    
    console.log('✅ 고객 상세 정보 조회 성공:', customerId)
    return c.json(customerDetail)
    
  } catch (error) {
    console.error('❌ 고객 상세 정보 조회 오류:', error)
    return c.json({ error: '데이터 조회 실패', details: error.message }, 500)
  }
})
```

#### 고객 상세 보기 모달 (클라이언트)
```javascript
async function viewCustomer(customerId) {
  console.log('🔍 고객 상세 정보 조회:', customerId)
  
  try {
    // 1. 고객 기본 정보 및 통계 조회
    const response = await axios.get(`/api/admin/customers/${customerId}`)
    const customer = response.data
    
    // 2. 최근 견적 요청 목록 조회
    const quotesResponse = await axios.get(`/api/admin/customers/${customerId}/quotes`)
    const quotes = quotesResponse.data
    
    // 3. 모달 내용 구성
    const modalContent = `
      <div class="space-y-6">
        <!-- 기본 정보 -->
        <div class="grid grid-cols-2 gap-4">
          <div class="bg-gradient-to-br from-purple-50 to-blue-50 p-4 rounded-lg">
            <div class="text-sm text-gray-600 mb-1">고객 ID</div>
            <div class="text-lg font-bold text-gray-900">${customer.id}</div>
          </div>
          <div class="bg-gradient-to-br from-purple-50 to-blue-50 p-4 rounded-lg">
            <div class="text-sm text-gray-600 mb-1">이름</div>
            <div class="text-lg font-bold text-gray-900">${customer.name}</div>
          </div>
          <div class="bg-gradient-to-br from-purple-50 to-blue-50 p-4 rounded-lg">
            <div class="text-sm text-gray-600 mb-1">이메일</div>
            <div class="text-sm font-mono text-blue-600">${customer.email}</div>
          </div>
          <div class="bg-gradient-to-br from-purple-50 to-blue-50 p-4 rounded-lg">
            <div class="text-sm text-gray-600 mb-1">전화번호</div>
            <div class="text-lg text-gray-900">${customer.phone || '-'}</div>
          </div>
        </div>
        
        <!-- 활동 통계 -->
        <div class="grid grid-cols-3 gap-4">
          <div class="bg-gradient-to-br from-green-50 to-teal-50 p-4 rounded-lg text-center">
            <div class="text-2xl font-bold text-green-700">${customer.quote_count}</div>
            <div class="text-sm text-gray-600 mt-1">견적 요청</div>
          </div>
          <div class="bg-gradient-to-br from-green-50 to-teal-50 p-4 rounded-lg text-center">
            <div class="text-2xl font-bold text-teal-700">${customer.response_count}</div>
            <div class="text-sm text-gray-600 mt-1">받은 견적</div>
          </div>
          <div class="bg-gradient-to-br from-green-50 to-teal-50 p-4 rounded-lg text-center">
            <div class="text-2xl font-bold text-blue-700">${customer.days_since_join}</div>
            <div class="text-sm text-gray-600 mt-1">가입 일수</div>
          </div>
        </div>
        
        <!-- 최근 견적 요청 -->
        <div class="bg-gray-50 p-4 rounded-lg">
          <h4 class="font-bold text-gray-800 mb-3">📋 최근 견적 요청</h4>
          ${quotes.length > 0 ? `
            <div class="space-y-2">
              ${quotes.map(q => `
                <div class="bg-white p-3 rounded border hover:shadow-sm transition-shadow">
                  <div class="flex justify-between items-start">
                    <div>
                      <div class="font-medium text-gray-900">${q.facility_type}</div>
                      <div class="text-sm text-gray-600">${q.sido} ${q.sigungu}</div>
                      <div class="text-xs text-gray-500 mt-1">견적 ID: ${q.quote_id}</div>
                    </div>
                    <div class="text-right">
                      <div class="text-lg font-bold ${q.response_count > 0 ? 'text-green-600' : 'text-gray-400'}">
                        ${q.response_count}개
                      </div>
                      <div class="text-xs text-gray-500">받은 견적</div>
                    </div>
                  </div>
                  <div class="flex justify-between items-center mt-2 text-xs">
                    <span class="text-gray-500">${new Date(q.created_at).toLocaleDateString('ko-KR')}</span>
                    <span class="px-2 py-1 rounded text-xs ${
                      q.status === 'completed' ? 'bg-green-100 text-green-700' :
                      q.status === 'received' ? 'bg-blue-100 text-blue-700' :
                      'bg-yellow-100 text-yellow-700'
                    }">
                      ${q.status === 'completed' ? '완료' : q.status === 'received' ? '견적 받음' : '대기중'}
                    </span>
                  </div>
                </div>
              `).join('')}
            </div>
          ` : `
            <div class="text-center text-gray-500 py-8">
              <i class="fas fa-inbox text-4xl mb-2"></i>
              <div>견적 요청 내역이 없습니다</div>
            </div>
          `}
        </div>
      </div>
    `
    
    // 4. 모달 표시
    showModal('고객 상세 정보', modalContent)
    
  } catch (error) {
    console.error('❌ 고객 상세 정보 로드 실패:', error)
    alert('고객 정보를 불러오는데 실패했습니다.')
  }
}
```

### 5. 견적 모니터링

#### 견적 수발신 현황 API
```typescript
app.get('/api/admin/quote-monitoring', async (c) => {
  if (!isAdmin(c)) {
    return c.json({ error: 'Unauthorized' }, 401)
  }
  
  try {
    const db = c.env.DB
    if (!db) {
      return c.json({ success: false, message: 'D1 데이터베이스 없음' }, 500)
    }
    
    console.log('📊 견적 모니터링 데이터 조회 시작...')
    
    // JOIN으로 견적 요청과 응답 정보 결합
    const { results: quotes } = await db.prepare(`
      SELECT 
        qr.id as request_id,
        qr.quote_id,
        qr.applicant_name,
        qr.patient_name,
        qr.sido,
        qr.sigungu,
        qr.facility_type,
        qr.status as request_status,
        qr.created_at as requested_at,
        COUNT(qres.id) as response_count,
        GROUP_CONCAT(qres.partner_id) as responder_ids
      FROM quote_requests qr
      LEFT JOIN quote_responses qres ON qr.quote_id = qres.quote_id
      GROUP BY qr.id
      ORDER BY qr.created_at DESC
      LIMIT 100
    `).all()
    
    console.log('✅ 견적 모니터링 조회 성공:', quotes?.length || 0, '개')
    console.log('📋 샘플 데이터:', quotes?.slice(0, 3).map(q => ({
      quote_id: q.quote_id,
      applicant: q.applicant_name,
      responses: q.response_count
    })))
    
    return c.json({ 
      success: true, 
      data: quotes || [] 
    })
    
  } catch (error) {
    console.error('❌ 견적서 모니터링 조회 오류:', error)
    return c.json({ 
      success: false, 
      message: '조회 실패',
      error: error.message 
    }, 500)
  }
})
```

#### 견적 모니터링 UI (클라이언트)
```javascript
async function loadQuoteMonitoring() {
  try {
    console.log('📡 견적 모니터링 데이터 로드 시작...')
    const response = await axios.get('/api/admin/quote-monitoring')
    console.log('📥 API 응답:', response.data)
    
    if (!response.data.success) {
      throw new Error(response.data.message || '데이터 로드 실패')
    }
    
    allQuotes = response.data.data || []
    console.log('✅ 견적 데이터:', allQuotes.length, '개')
    
    // 통계 업데이트
    document.getElementById('quoteRequestsCount').textContent = allQuotes.length
    
    const totalResponses = allQuotes.reduce((sum, q) => sum + (q.response_count || 0), 0)
    const responseRate = allQuotes.length > 0 
      ? Math.round((allQuotes.filter(q => q.response_count > 0).length / allQuotes.length) * 100)
      : 0
    document.getElementById('quoteResponseRate').textContent = `${responseRate}%`
    console.log('📊 응답률:', responseRate, '%', '(총 응답:', totalResponses, '개)')
    
    renderQuotes(allQuotes)
  } catch (error) {
    console.error('❌ 견적서 모니터링 로드 실패:', error)
    document.getElementById('quoteMonitoringList').innerHTML = 
      '<tr><td colspan="9" class="px-4 py-8 text-center text-red-500">데이터 로드 실패: ' + error.message + '</td></tr>'
  }
}

function renderQuotes(quotes) {
  const list = document.getElementById('quoteMonitoringList')
  
  if (quotes.length === 0) {
    list.innerHTML = '<tr><td colspan="9" class="px-4 py-8 text-center text-gray-500">견적 요청 내역이 없습니다</td></tr>'
    return
  }
  
  list.innerHTML = quotes.map((quote, index) => {
    const status = quote.request_status || 'pending'
    const statusText = status === 'completed' ? '완료' : 
                     status === 'received' ? '견적 받음' : 
                     '대기중'
    const statusColor = status === 'completed' ? 'bg-green-100 text-green-700' : 
                      status === 'received' ? 'bg-blue-100 text-blue-700' : 
                      'bg-yellow-100 text-yellow-700'
    
    const region = quote.sido && quote.sigungu ? `${quote.sido} ${quote.sigungu}` : '-'
    const responseCount = quote.response_count || 0
    const responseColor = responseCount > 0 ? 'text-green-600 font-bold' : 'text-gray-400'
    
    const requestedDate = quote.requested_at 
      ? new Date(quote.requested_at).toLocaleString('ko-KR', {
          year: 'numeric',
          month: '2-digit',
          day: '2-digit',
          hour: '2-digit',
          minute: '2-digit'
        })
      : '-'
    
    return `
    <tr class="border-t hover:bg-gray-50">
      <td class="px-4 py-3 text-center text-gray-700">${index + 1}</td>
      <td class="px-4 py-3 font-mono text-sm text-gray-600">${quote.quote_id || '-'}</td>
      <td class="px-4 py-3 text-gray-900">${quote.applicant_name || '-'}</td>
      <td class="px-4 py-3 text-gray-700">${quote.patient_name || '-'}</td>
      <td class="px-4 py-3 text-sm text-gray-600">${quote.facility_type || '-'}</td>
      <td class="px-4 py-3 text-sm text-gray-600">${region}</td>
      <td class="px-4 py-3 text-center">
        <span class="${responseColor}">${responseCount}개</span>
      </td>
      <td class="px-4 py-3">
        <span class="inline-flex px-3 py-1 rounded-full text-xs font-semibold ${statusColor}">
          ${statusText}
        </span>
      </td>
      <td class="px-4 py-3 text-sm text-gray-600">${requestedDate}</td>
    </tr>
    `
  }).join('')
}
```

---

## API 엔드포인트

### 인증 관련
```typescript
POST   /api/admin/login          // 관리자 로그인
POST   /api/admin/logout         // 관리자 로그아웃
GET    /api/admin/session        // 세션 확인
```

### 시설 관리
```typescript
GET    /api/facilities/with-representative  // 대표시설 포함 시설 목록
POST   /api/admin/facility/set-representative  // 대표시설 지정/해제
POST   /api/admin/facility/update  // 시설 정보 수정
POST   /api/admin/facility/delete  // 시설 삭제
GET    /api/admin/facilities/representative-info  // 대표시설 정보만
```

### 고객 관리
```typescript
GET    /api/admin/customers      // 일반고객 목록
GET    /api/admin/customers/:id  // 고객 상세 정보
GET    /api/admin/customers/:id/quotes  // 고객 견적 요청 목록
```

### 견적 관리
```typescript
GET    /api/admin/quote-monitoring  // 견적 수발신 현황
GET    /api/admin/data             // 대시보드 통계 데이터
```

### 공개 API
```typescript
GET    /api/representative-facilities  // 대표시설 목록 (공개)
GET    /api/regions                   // 지역 목록 (공개)
```

---

## 프론트엔드 구조

### 페이지 구조
```
/admin                  - 관리자 로그인
/admin/dashboard        - 관리자 대시보드
/admin/facilities       - 시설 관리
/admin/customers        - 일반고객 관리
```

### 주요 컴포넌트

#### 1. 모달 시스템
```javascript
// 공통 모달 표시 함수
function showModal(title, content) {
  const modal = document.getElementById('detailModal')
  const modalTitle = document.getElementById('modalTitle')
  const modalBody = document.getElementById('modalBody')
  
  modalTitle.innerHTML = title
  modalBody.innerHTML = content
  modal.classList.remove('hidden')
  
  // ESC 키로 닫기
  document.addEventListener('keydown', function escHandler(e) {
    if (e.key === 'Escape') {
      closeModal()
      document.removeEventListener('keydown', escHandler)
    }
  })
}

function closeModal() {
  document.getElementById('detailModal').classList.add('hidden')
}

// 모달 외부 클릭 시 닫기
document.getElementById('detailModal').addEventListener('click', function(e) {
  if (e.target === this) {
    closeModal()
  }
})
```

#### 2. 테이블 정렬 및 페이지네이션
```javascript
// 정렬 상태
let sortColumn = null
let sortDirection = 'asc'

function sortTable(column) {
  if (sortColumn === column) {
    sortDirection = sortDirection === 'asc' ? 'desc' : 'asc'
  } else {
    sortColumn = column
    sortDirection = 'asc'
  }
  
  filteredFacilitiesData.sort((a, b) => {
    let aVal = a[column]
    let bVal = b[column]
    
    // 문자열 비교
    if (typeof aVal === 'string') {
      return sortDirection === 'asc' 
        ? aVal.localeCompare(bVal) 
        : bVal.localeCompare(aVal)
    }
    
    // 숫자 비교
    return sortDirection === 'asc' ? aVal - bVal : bVal - aVal
  })
  
  displayFacilities()
}

// 페이지네이션
let currentPage = 1
const itemsPerPage = 100

function displayPage(page) {
  currentPage = page
  const start = (page - 1) * itemsPerPage
  const end = start + itemsPerPage
  const pageData = filteredFacilitiesData.slice(start, end)
  
  displayFacilities(pageData)
  updatePagination()
}

function updatePagination() {
  const totalPages = Math.ceil(filteredFacilitiesData.length / itemsPerPage)
  const paginationEl = document.getElementById('pagination')
  
  paginationEl.innerHTML = `
    <button ${currentPage === 1 ? 'disabled' : ''} onclick="displayPage(${currentPage - 1})">
      이전
    </button>
    <span>페이지 ${currentPage} / ${totalPages}</span>
    <button ${currentPage === totalPages ? 'disabled' : ''} onclick="displayPage(${currentPage + 1})">
      다음
    </button>
  `
}
```

#### 3. 실시간 검색
```javascript
// Debounce 함수
function debounce(func, wait) {
  let timeout
  return function executedFunction(...args) {
    const later = () => {
      clearTimeout(timeout)
      func(...args)
    }
    clearTimeout(timeout)
    timeout = setTimeout(later, wait)
  }
}

// 실시간 검색 (300ms 디바운스)
const debouncedSearch = debounce(searchFacilities, 300)

document.getElementById('adminSearchName').addEventListener('input', debouncedSearch)
```

---

## 배포 및 운영

### Cloudflare Pages 배포

#### 1. 초기 설정
```bash
# 프로젝트 생성
npm create -y hono@latest webapp -- --template cloudflare-pages --install --pm npm

# 이동
cd webapp

# Git 초기화
git init
git add .
git commit -m "Initial commit"
```

#### 2. wrangler.jsonc 설정
```jsonc
{
  "$schema": "node_modules/wrangler/config-schema.json",
  "name": "carejoa-kr-auto",
  "main": "src/index.tsx",
  "compatibility_date": "2024-01-01",
  "compatibility_flags": ["nodejs_compat"],
  "pages_build_output_dir": "./dist",
  
  "d1_databases": [
    {
      "binding": "DB",
      "database_name": "carejoa-production",
      "database_id": "your-database-id"
    }
  ]
}
```

#### 3. 빌드 및 배포
```bash
# 빌드
npm run build

# 프로젝트 생성 (최초 1회)
npx wrangler pages project create carejoa-kr-auto \
  --production-branch main \
  --compatibility-date 2024-01-01

# 배포
npx wrangler pages deploy dist --project-name carejoa-kr-auto
```

#### 4. D1 데이터베이스 설정
```bash
# D1 데이터베이스 생성
npx wrangler d1 create carejoa-production

# 마이그레이션 적용 (로컬)
npx wrangler d1 migrations apply carejoa-production --local

# 마이그레이션 적용 (프로덕션)
npx wrangler d1 migrations apply carejoa-production --remote

# 데이터 확인
npx wrangler d1 execute carejoa-production --remote \
  --command="SELECT COUNT(*) FROM users"
```

### 환경 변수 설정

#### .dev.vars (로컬 개발)
```bash
ADMIN_EMAIL=admin@carejoa.com
ADMIN_PASSWORD=your-secure-password
SESSION_SECRET=your-session-secret
```

#### Cloudflare Secrets (프로덕션)
```bash
npx wrangler pages secret put ADMIN_EMAIL --project-name carejoa-kr-auto
npx wrangler pages secret put ADMIN_PASSWORD --project-name carejoa-kr-auto
npx wrangler pages secret put SESSION_SECRET --project-name carejoa-kr-auto
```

### 도메인 연결
```bash
# 커스텀 도메인 추가
npx wrangler pages domain add carejoa.kr --project-name carejoa-kr-auto

# DNS 설정 (Cloudflare 대시보드에서)
# CNAME: @ -> carejoa-kr-auto.pages.dev
# CNAME: www -> carejoa-kr-auto.pages.dev
```

---

## 코드 예제

### 전체 시스템 초기화 (클라이언트)
```javascript
// 페이지 로드 시 초기화
document.addEventListener('DOMContentLoaded', async function() {
  console.log('🚀 시스템 초기화 시작...')
  
  // 1. 인증 확인
  const isAuthenticated = await checkAuthentication()
  if (!isAuthenticated && window.location.pathname !== '/admin') {
    window.location.href = '/admin'
    return
  }
  
  // 2. 데이터 로드
  await Promise.all([
    loadFacilities(),
    loadCustomers(),
    loadQuoteMonitoring()
  ])
  
  // 3. 이벤트 리스너 등록
  registerEventListeners()
  
  // 4. 자동 새로고침 (30초마다)
  setInterval(loadQuoteMonitoring, 30000)
  
  console.log('✅ 시스템 초기화 완료')
})

async function checkAuthentication() {
  try {
    const response = await axios.get('/api/admin/session')
    return response.data.authenticated
  } catch (error) {
    return false
  }
}

function registerEventListeners() {
  // 검색
  document.getElementById('adminSearchName')?.addEventListener('input', 
    debounce(searchFacilities, 300))
  
  // 필터
  document.getElementById('adminFilterSido')?.addEventListener('change', 
    updateSigunguOptions)
  
  // 로그아웃
  document.getElementById('logoutBtn')?.addEventListener('click', 
    handleLogout)
}

async function handleLogout() {
  if (confirm('로그아웃 하시겠습니까?')) {
    try {
      await axios.post('/api/admin/logout')
      window.location.href = '/admin'
    } catch (error) {
      console.error('로그아웃 실패:', error)
    }
  }
}
```

### 에러 핸들링 패턴
```typescript
// 서버 측 에러 핸들링
app.onError((err, c) => {
  console.error('❌ 서버 에러:', err)
  
  // 개발 환경
  if (c.env.ENVIRONMENT === 'development') {
    return c.json({
      error: err.message,
      stack: err.stack
    }, 500)
  }
  
  // 프로덕션 환경
  return c.json({
    error: '서버 오류가 발생했습니다.'
  }, 500)
})

// 404 핸들러
app.notFound((c) => {
  return c.html(`
    <html>
      <head><title>404 Not Found</title></head>
      <body>
        <h1>페이지를 찾을 수 없습니다</h1>
        <a href="/">홈으로 돌아가기</a>
      </body>
    </html>
  `, 404)
})
```

```javascript
// 클라이언트 측 에러 핸들링
async function safeApiCall(apiFunc, errorMessage) {
  try {
    return await apiFunc()
  } catch (error) {
    console.error('❌ API 호출 실패:', error)
    
    // 401: 인증 오류
    if (error.response?.status === 401) {
      alert('인증이 만료되었습니다. 다시 로그인해주세요.')
      window.location.href = '/admin'
      return null
    }
    
    // 403: 권한 오류
    if (error.response?.status === 403) {
      alert('권한이 없습니다.')
      return null
    }
    
    // 404: 데이터 없음
    if (error.response?.status === 404) {
      alert(errorMessage || '데이터를 찾을 수 없습니다.')
      return null
    }
    
    // 500: 서버 오류
    if (error.response?.status === 500) {
      alert('서버 오류가 발생했습니다. 잠시 후 다시 시도해주세요.')
      return null
    }
    
    // 기타 오류
    alert(errorMessage || '오류가 발생했습니다.')
    return null
  }
}

// 사용 예
async function loadCustomers() {
  const customers = await safeApiCall(
    () => axios.get('/api/admin/customers'),
    '고객 목록을 불러오는데 실패했습니다.'
  )
  
  if (customers) {
    displayCustomers(customers.data)
  }
}
```

### 성능 최적화

#### 1. 데이터 캐싱
```javascript
// 메모리 캐시
const cache = new Map()

async function getCachedData(key, fetchFunc, ttl = 60000) {
  const cached = cache.get(key)
  
  // 캐시 히트
  if (cached && Date.now() - cached.timestamp < ttl) {
    console.log('✅ 캐시 히트:', key)
    return cached.data
  }
  
  // 캐시 미스 - 새로 가져오기
  console.log('⚠️ 캐시 미스:', key)
  const data = await fetchFunc()
  
  cache.set(key, {
    data,
    timestamp: Date.now()
  })
  
  return data
}

// 사용 예
async function loadFacilities() {
  return getCachedData('facilities', async () => {
    const response = await fetch('/api/facilities/with-representative')
    return response.json()
  }, 60000) // 1분 TTL
}
```

#### 2. 가상 스크롤링 (대량 데이터)
```javascript
class VirtualScroll {
  constructor(container, data, renderItem, itemHeight) {
    this.container = container
    this.data = data
    this.renderItem = renderItem
    this.itemHeight = itemHeight
    this.scrollTop = 0
    this.containerHeight = container.clientHeight
    
    this.init()
  }
  
  init() {
    // 컨테이너 높이 설정
    this.container.style.height = `${this.data.length * this.itemHeight}px`
    this.container.style.position = 'relative'
    
    // 스크롤 이벤트
    this.container.addEventListener('scroll', () => {
      this.scrollTop = this.container.scrollTop
      this.render()
    })
    
    this.render()
  }
  
  render() {
    const startIndex = Math.floor(this.scrollTop / this.itemHeight)
    const endIndex = Math.min(
      startIndex + Math.ceil(this.containerHeight / this.itemHeight) + 1,
      this.data.length
    )
    
    // 보이는 영역만 렌더링
    const visibleItems = this.data.slice(startIndex, endIndex)
    
    this.container.innerHTML = visibleItems.map((item, index) => {
      const actualIndex = startIndex + index
      const top = actualIndex * this.itemHeight
      
      return `
        <div style="position: absolute; top: ${top}px; width: 100%;">
          ${this.renderItem(item, actualIndex)}
        </div>
      `
    }).join('')
  }
}

// 사용 예
const virtualScroll = new VirtualScroll(
  document.getElementById('facilitiesList'),
  allFacilitiesData,
  (facility, index) => `
    <div class="facility-item">
      ${facility.name} - ${facility.sido}
    </div>
  `,
  60 // 행 높이
)
```

#### 3. 이미지 지연 로딩
```javascript
// Intersection Observer를 이용한 이미지 지연 로딩
const imageObserver = new IntersectionObserver((entries, observer) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      const img = entry.target
      img.src = img.dataset.src
      img.classList.add('loaded')
      observer.unobserve(img)
    }
  })
})

// 사용 예
document.querySelectorAll('img[data-src]').forEach(img => {
  imageObserver.observe(img)
})
```

---

## 보안 고려사항

### 1. 인증 보안
```typescript
// 세션 만료 시간 설정
const SESSION_EXPIRY = 7 * 24 * 60 * 60 * 1000 // 7일

// 세션 검증
async function validateSession(sessionId, db) {
  const { results } = await db.prepare(`
    SELECT * FROM admin_sessions 
    WHERE session_id = ? AND expires_at > datetime('now')
  `).bind(sessionId).all()
  
  return results && results.length > 0
}

// 비밀번호 해싱 (회원가입 시)
import bcrypt from 'bcryptjs'

async function hashPassword(password) {
  return bcrypt.hash(password, 10)
}

async function verifyPassword(password, hash) {
  return bcrypt.compare(password, hash)
}
```

### 2. CORS 설정
```typescript
import { cors } from 'hono/cors'

app.use('/api/*', cors({
  origin: ['https://carejoa.kr', 'https://www.carejoa.kr'],
  credentials: true,
  maxAge: 86400
}))
```

### 3. Rate Limiting
```typescript
// 간단한 Rate Limiter
const rateLimiter = new Map()

function checkRateLimit(ip, limit = 100, window = 60000) {
  const now = Date.now()
  const userRequests = rateLimiter.get(ip) || []
  
  // 윈도우 외 요청 제거
  const recentRequests = userRequests.filter(time => now - time < window)
  
  if (recentRequests.length >= limit) {
    return false
  }
  
  recentRequests.push(now)
  rateLimiter.set(ip, recentRequests)
  return true
}

// 미들웨어로 사용
app.use('/api/*', async (c, next) => {
  const ip = c.req.header('CF-Connecting-IP') || 'unknown'
  
  if (!checkRateLimit(ip)) {
    return c.json({ error: 'Too many requests' }, 429)
  }
  
  await next()
})
```

### 4. SQL Injection 방지
```typescript
// ✅ 올바른 방법: Prepared Statement
const { results } = await db.prepare(`
  SELECT * FROM users WHERE email = ?
`).bind(email).all()

// ❌ 잘못된 방법: 문자열 연결
const { results } = await db.prepare(`
  SELECT * FROM users WHERE email = '${email}'
`).all() // SQL Injection 취약!
```

### 5. XSS 방지
```javascript
// HTML 이스케이프 함수
function escapeHtml(unsafe) {
  return unsafe
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;")
    .replace(/"/g, "&quot;")
    .replace(/'/g, "&#039;")
}

// 사용 예
function displayFacility(facility) {
  return `
    <div class="facility-name">
      ${escapeHtml(facility.name)}
    </div>
  `
}
```

---

## 모니터링 및 로깅

### 1. 구조화된 로깅
```typescript
// 로그 레벨
enum LogLevel {
  DEBUG = 'DEBUG',
  INFO = 'INFO',
  WARN = 'WARN',
  ERROR = 'ERROR'
}

// 로거 클래스
class Logger {
  log(level: LogLevel, message: string, data?: any) {
    const timestamp = new Date().toISOString()
    const logEntry = {
      timestamp,
      level,
      message,
      data
    }
    
    console.log(JSON.stringify(logEntry))
  }
  
  info(message: string, data?: any) {
    this.log(LogLevel.INFO, message, data)
  }
  
  error(message: string, data?: any) {
    this.log(LogLevel.ERROR, message, data)
  }
  
  warn(message: string, data?: any) {
    this.log(LogLevel.WARN, message, data)
  }
  
  debug(message: string, data?: any) {
    this.log(LogLevel.DEBUG, message, data)
  }
}

const logger = new Logger()

// 사용 예
app.get('/api/admin/customers', async (c) => {
  logger.info('고객 목록 조회 시작')
  
  try {
    const customers = await getCustomers(c.env.DB)
    logger.info('고객 목록 조회 성공', { count: customers.length })
    return c.json(customers)
  } catch (error) {
    logger.error('고객 목록 조회 실패', { 
      error: error.message,
      stack: error.stack 
    })
    return c.json({ error: '조회 실패' }, 500)
  }
})
```

### 2. 성능 모니터링
```typescript
// 실행 시간 측정 미들웨어
app.use('*', async (c, next) => {
  const start = Date.now()
  await next()
  const duration = Date.now() - start
  
  console.log(`⏱️ ${c.req.method} ${c.req.path} - ${duration}ms`)
  
  // 느린 요청 경고 (1초 이상)
  if (duration > 1000) {
    console.warn(`⚠️ 느린 요청: ${c.req.path} took ${duration}ms`)
  }
})
```

### 3. 에러 추적
```typescript
// 에러 추적 서비스 연동 (예: Sentry)
app.onError((err, c) => {
  // Sentry에 에러 보고
  if (c.env.SENTRY_DSN) {
    // Sentry.captureException(err)
  }
  
  logger.error('서버 에러', {
    error: err.message,
    stack: err.stack,
    path: c.req.path,
    method: c.req.method
  })
  
  return c.json({ error: '서버 오류' }, 500)
})
```

---

## 유지보수 및 업데이트

### Git 워크플로우
```bash
# 기능 개발
git checkout -b feature/new-feature
git add .
git commit -m "feat: Add new feature"
git push origin feature/new-feature

# 프로덕션 배포
git checkout main
git merge feature/new-feature
git push origin main

# Cloudflare Pages 자동 배포 트리거
```

### 데이터베이스 마이그레이션
```bash
# 새 마이그레이션 생성
# migrations/0014_add_new_table.sql
CREATE TABLE new_table (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

# 로컬 테스트
npx wrangler d1 migrations apply carejoa-production --local

# 프로덕션 적용
npx wrangler d1 migrations apply carejoa-production --remote
```

### 백업 전략
```bash
# D1 데이터 백업 (정기적으로)
npx wrangler d1 execute carejoa-production --remote \
  --command=".dump" > backup_$(date +%Y%m%d).sql

# 복원
npx wrangler d1 execute carejoa-production --remote \
  --file=backup_20240115.sql
```

---

## 트러블슈팅

### 일반적인 문제 해결

#### 1. ID 타입 불일치
```javascript
// 문제: facilities.json의 ID는 숫자, HTML에서 전달되는 ID는 문자열

// ❌ 엄격한 비교 (작동 안 함)
const facility = facilities.find(f => f.id === id)

// ✅ 유연한 비교 (작동함)
const facility = facilities.find(f => 
  f.id == id || String(f.id) === String(id) || Number(f.id) === Number(id)
)
```

#### 2. DOM 요소 ID 오타
```javascript
// 문제: quoteRequestCount vs quoteRequestsCount

// ❌ 잘못된 ID
document.getElementById('quoteRequestCount')

// ✅ 올바른 ID
document.getElementById('quoteRequestsCount')
```

#### 3. customer_id 컬럼 없음
```typescript
// 문제: quote_requests 테이블에 customer_id 컬럼이 없음

// ❌ 작동 안 함
WHERE customer_id = ?

// ✅ applicant_email 사용
WHERE applicant_email = ?
```

#### 4. 대표시설 중복
```typescript
// 문제: 같은 지역에 여러 대표시설 지정

// ✅ 해결: 트랜잭션으로 기존 해제 후 새로 지정
await db.batch([
  db.prepare(`UPDATE facility_settings SET is_representative = 0 
             WHERE region_sido = ? AND region_sigungu = ?`).bind(sido, sigungu),
  db.prepare(`INSERT OR REPLACE INTO facility_settings (...) 
             VALUES (...)`).bind(...)
])
```

---

## 참고 자료

### 공식 문서
- **Hono**: https://hono.dev
- **Cloudflare Workers**: https://developers.cloudflare.com/workers
- **Cloudflare D1**: https://developers.cloudflare.com/d1
- **Wrangler**: https://developers.cloudflare.com/workers/wrangler

### 관련 링크
- **프로덕션**: https://carejoa.kr
- **GitHub**: https://github.com/jansmakr/sand-box
- **Cloudflare 대시보드**: https://dash.cloudflare.com

---

## 마치며

이 가이드는 케어조아 관리자 시스템의 핵심 기능과 구조를 다루고 있습니다. 
새로운 프로젝트에서 참고할 때는:

1. **기술 스택 선택**: Hono + Cloudflare는 서버리스 아키텍처에 최적
2. **데이터 구조**: D1 Database 스키마를 프로젝트에 맞게 조정
3. **인증 시스템**: 세션 기반 인증을 JWT로 변경 가능
4. **UI 컴포넌트**: TailwindCSS 기반 컴포넌트 재사용
5. **API 설계**: RESTful API 패턴 유지

**핵심 성공 요소**:
- ✅ ID 타입 유연한 비교
- ✅ D1 데이터베이스 영구 저장
- ✅ 상세한 로깅 및 에러 핸들링
- ✅ 클라이언트-서버 데이터 동기화
- ✅ 반응형 UI 및 사용자 경험

문의사항이나 추가 정보가 필요하면 언제든지 연락 주세요!

#!/usr/bin/env node

/**
 * API를 통한 대량 시설 상세정보 삽입
 */

const fs = require('fs')
const path = require('path')
const https = require('https')

const API_BASE = process.argv[2] || 'https://carejoa.kr'
const JSON_FILE = path.join(__dirname, '../migrations/generated_details.json')
const ADMIN_EMAIL = 'admin@carejoa.kr'
const ADMIN_PASSWORD = 'admin1234!'

console.log('🚀 대량 데이터 삽입 시작...')
console.log(`   API: ${API_BASE}`)
console.log(`   JSON: ${JSON_FILE}\n`)

// JSON 파일 로드
if (!fs.existsSync(JSON_FILE)) {
  console.error('❌ JSON 파일을 찾을 수 없습니다:', JSON_FILE)
  process.exit(1)
}

const details = JSON.parse(fs.readFileSync(JSON_FILE, 'utf8'))
console.log(`✅ 총 ${details.length}개 시설 데이터 로드 완료\n`)

// API 호출 함수
function apiCall(method, path, data, cookie) {
  return new Promise((resolve, reject) => {
    const url = new URL(path, API_BASE)
    const isHttps = url.protocol === 'https:'
    const lib = isHttps ? require('https') : require('http')
    
    const postData = data ? JSON.stringify(data) : ''
    
    const options = {
      hostname: url.hostname,
      port: url.port || (isHttps ? 443 : 80),
      path: url.pathname + url.search,
      method: method,
      headers: {
        'Content-Type': 'application/json',
        'Content-Length': Buffer.byteLength(postData)
      }
    }
    
    if (cookie) {
      options.headers['Cookie'] = cookie
    }
    
    const req = lib.request(options, (res) => {
      let body = ''
      res.on('data', (chunk) => body += chunk)
      res.on('end', () => {
        try {
          const result = {
            statusCode: res.statusCode,
            headers: res.headers,
            body: body ? JSON.parse(body) : null
          }
          resolve(result)
        } catch (e) {
          resolve({
            statusCode: res.statusCode,
            headers: res.headers,
            body: body
          })
        }
      })
    })
    
    req.on('error', reject)
    if (postData) req.write(postData)
    req.end()
  })
}

async function main() {
  try {
    // 1. 로그인
    console.log('🔐 로그인 중...')
    const loginRes = await apiCall('POST', '/api/admin/login', {
      email: ADMIN_EMAIL,
      password: ADMIN_PASSWORD
    })
    
    if (loginRes.statusCode !== 200 || !loginRes.body?.success) {
      console.error('❌ 로그인 실패:', loginRes.body)
      process.exit(1)
    }
    
    const cookie = loginRes.headers['set-cookie']?.join('; ')
    console.log('✅ 로그인 성공\n')
    
    // 2. 대량 삽입
    console.log('📦 대량 데이터 삽입 중...')
    const insertRes = await apiCall('POST', '/api/admin/bulk-insert-details', details, cookie)
    
    if (insertRes.statusCode !== 200) {
      console.error('❌ 삽입 실패:', insertRes.body)
      process.exit(1)
    }
    
    const result = insertRes.body
    console.log('\n✅ 대량 삽입 완료!')
    console.log(`   총 시설: ${result.total}`)
    console.log(`   성공: ${result.successCount}`)
    console.log(`   실패: ${result.failCount}`)
    console.log(`   성공률: ${result.successRate}`)
    
    if (result.errors && result.errors.length > 0) {
      console.log('\n⚠️  에러 샘플 (첫 10개):')
      result.errors.forEach((err, i) => {
        console.log(`   ${i + 1}. 시설 ${err.facility_id}: ${err.error}`)
      })
    }
    
    console.log('\n🎉 모든 작업 완료!')
  } catch (error) {
    console.error('❌ 오류 발생:', error)
    process.exit(1)
  }
}

main()

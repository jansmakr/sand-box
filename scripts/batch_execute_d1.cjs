#!/usr/bin/env node

/**
 * D1 배치 실행 스크립트
 * 큰 SQL 파일을 작은 배치로 나누어 실행
 */

const fs = require('fs')
const { execSync } = require('child_process')
const path = require('path')

const SQL_FILE = path.join(__dirname, '../migrations/9999_auto_generated_facility_details.sql')
const BATCH_SIZE = 500 // 한 번에 500개씩
const DB_NAME = 'carejoa-production'
const IS_REMOTE = process.argv.includes('--remote')

console.log('🚀 D1 배치 실행 시작...')
console.log(`   데이터베이스: ${DB_NAME}`)
console.log(`   모드: ${IS_REMOTE ? 'REMOTE (프로덕션)' : 'LOCAL (테스트)'}`)
console.log(`   배치 크기: ${BATCH_SIZE}개\n`)

// SQL 파일 읽기
const sqlContent = fs.readFileSync(SQL_FILE, 'utf8')
const lines = sqlContent.split('\n')

// INSERT 문만 추출
const insertStatements = lines.filter(line => line.trim().startsWith('INSERT'))
const totalInserts = insertStatements.length

console.log(`📊 총 INSERT 문: ${totalInserts}개`)
console.log(`📦 배치 수: ${Math.ceil(totalInserts / BATCH_SIZE)}개\n`)

if (totalInserts === 0) {
  console.error('❌ INSERT 문을 찾을 수 없습니다.')
  process.exit(1)
}

// 배치별 실행
let successCount = 0
let failCount = 0

for (let i = 0; i < totalInserts; i += BATCH_SIZE) {
  const batchNum = Math.floor(i / BATCH_SIZE) + 1
  const batch = insertStatements.slice(i, i + BATCH_SIZE)
  const batchSQL = batch.join('\n')
  
  console.log(`📦 배치 ${batchNum}/${Math.ceil(totalInserts / BATCH_SIZE)} (${i + 1}~${Math.min(i + BATCH_SIZE, totalInserts)})...`)
  
  // 임시 파일 생성
  const tempFile = path.join(__dirname, `../migrations/temp_batch_${batchNum}.sql`)
  fs.writeFileSync(tempFile, batchSQL, 'utf8')
  
  try {
    // wrangler 실행
    const remoteFlag = IS_REMOTE ? '--remote' : '--local'
    const cmd = `npx wrangler d1 execute ${DB_NAME} ${remoteFlag} --file=${tempFile}`
    
    execSync(cmd, { 
      stdio: 'pipe',
      cwd: path.join(__dirname, '..')
    })
    
    successCount += batch.length
    console.log(`   ✅ 성공 (${batch.length}개)\n`)
  } catch (error) {
    failCount += batch.length
    console.error(`   ❌ 실패: ${error.message}\n`)
  } finally {
    // 임시 파일 삭제
    if (fs.existsSync(tempFile)) {
      fs.unlinkSync(tempFile)
    }
  }
  
  // 진행률 표시
  const progress = Math.round((i + batch.length) / totalInserts * 100)
  console.log(`📈 진행률: ${progress}% (${successCount}/${totalInserts})\n`)
}

// 결과 출력
console.log('=' .repeat(50))
console.log('✅ 배치 실행 완료!')
console.log(`   성공: ${successCount}개`)
console.log(`   실패: ${failCount}개`)
console.log(`   성공률: ${(successCount / totalInserts * 100).toFixed(1)}%`)
console.log('=' .repeat(50))

if (failCount > 0) {
  console.error('\n⚠️  일부 배치가 실패했습니다. 로그를 확인해주세요.')
  process.exit(1)
}

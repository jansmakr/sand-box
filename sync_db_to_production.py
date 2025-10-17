#!/usr/bin/env python3
"""
로컬 D1 데이터베이스의 데이터를 Production D1으로 동기화하는 스크립트
"""

import sqlite3
import json
import subprocess
import sys
import time

# 로컬 D1 데이터베이스 경로
LOCAL_DB_PATH = '/home/user/webapp/.wrangler/state/v3/d1/miniflare-D1DatabaseObject/6bb51315d9914e62a9814cc19a5b23ed.sqlite'

# Cloudflare API Token
CLOUDFLARE_API_TOKEN = 'yqCOOuJqZcOpwbf3tYSEt4mLGaVEa8_HuYOYWmh0'
DATABASE_NAME = 'carejoa-production'

def read_local_data():
    """로컬 SQLite 데이터베이스에서 데이터 읽기"""
    print("📖 로컬 D1 데이터베이스에서 데이터 읽는 중...")
    
    try:
        conn = sqlite3.connect(LOCAL_DB_PATH)
        conn.row_factory = sqlite3.Row  # 딕셔너리 형태로 반환
        cursor = conn.cursor()
        
        cursor.execute("SELECT COUNT(*) as count FROM facilities")
        total = cursor.fetchone()[0]
        print(f"   총 {total:,}개 시설 발견")
        
        cursor.execute("""
            SELECT id, facility_type, name, postal_code, address, phone, 
                   latitude, longitude, sido, sigungu, created_at
            FROM facilities
            ORDER BY id
        """)
        
        facilities = []
        for row in cursor:
            facilities.append({
                'id': row['id'],
                'facility_type': row['facility_type'],
                'name': row['name'],
                'postal_code': row['postal_code'] or '',
                'address': row['address'],
                'phone': row['phone'] or '',
                'latitude': row['latitude'] or 0,
                'longitude': row['longitude'] or 0,
                'sido': row['sido'],
                'sigungu': row['sigungu'],
                'created_at': row['created_at']
            })
        
        conn.close()
        print(f"✅ {len(facilities):,}개 시설 데이터 로드 완료")
        return facilities
        
    except Exception as e:
        print(f"❌ 로컬 데이터 읽기 실패: {e}")
        sys.exit(1)

def upload_batch_to_production(batch, batch_num, total_batches):
    """배치 데이터를 Production D1에 업로드"""
    
    # SQL VALUES 생성 (UTF-8 인코딩 보장)
    values_list = []
    for f in batch:
        # 작은따옴표 이스케이프
        facility_type = f['facility_type'].replace("'", "''")
        name = f['name'].replace("'", "''")
        postal_code = f['postal_code'].replace("'", "''")
        address = f['address'].replace("'", "''")
        phone = f['phone'].replace("'", "''")
        sido = f['sido'].replace("'", "''")
        sigungu = f['sigungu'].replace("'", "''")
        
        values_list.append(
            f"('{facility_type}', '{name}', '{postal_code}', '{address}', "
            f"'{phone}', {f['latitude']}, {f['longitude']}, '{sido}', '{sigungu}')"
        )
    
    values_str = ", ".join(values_list)
    
    sql_command = f"""
    INSERT INTO facilities (facility_type, name, postal_code, address, phone, latitude, longitude, sido, sigungu)
    VALUES {values_str}
    """
    
    try:
        # wrangler 명령 실행
        cmd = [
            'npx', 'wrangler', 'd1', 'execute', DATABASE_NAME,
            '--remote',
            '--command', sql_command
        ]
        
        env = {
            'CLOUDFLARE_API_TOKEN': CLOUDFLARE_API_TOKEN,
            'PATH': '/usr/local/bin:/usr/bin:/bin'
        }
        
        result = subprocess.run(
            cmd,
            cwd='/home/user/webapp',
            env=env,
            capture_output=True,
            text=True,
            timeout=120
        )
        
        if result.returncode == 0:
            print(f"   ✅ 배치 {batch_num}/{total_batches} 완료 ({len(batch)}개)")
            return True
        else:
            print(f"   ❌ 배치 {batch_num}/{total_batches} 실패")
            print(f"      에러: {result.stderr}")
            return False
            
    except Exception as e:
        print(f"   ❌ 배치 {batch_num}/{total_batches} 실패: {e}")
        return False

def main():
    print("=" * 60)
    print("🚀 로컬 D1 → Production D1 데이터 동기화 시작")
    print("=" * 60)
    print()
    
    # 1. 로컬 데이터 읽기
    facilities = read_local_data()
    
    if not facilities:
        print("❌ 동기화할 데이터가 없습니다.")
        sys.exit(1)
    
    print()
    print("=" * 60)
    print("📤 Production D1에 업로드 시작")
    print("=" * 60)
    
    # 2. 배치 업로드 (100개씩)
    BATCH_SIZE = 100
    total_batches = (len(facilities) + BATCH_SIZE - 1) // BATCH_SIZE
    success_count = 0
    fail_count = 0
    
    print(f"   총 {total_batches}개 배치 ({len(facilities):,}개 시설)")
    print()
    
    for i in range(0, len(facilities), BATCH_SIZE):
        batch = facilities[i:i + BATCH_SIZE]
        batch_num = (i // BATCH_SIZE) + 1
        
        if upload_batch_to_production(batch, batch_num, total_batches):
            success_count += len(batch)
        else:
            fail_count += len(batch)
        
        # 진행률 표시
        progress = min(i + len(batch), len(facilities))
        percentage = (progress / len(facilities)) * 100
        print(f"   진행률: {progress:,} / {len(facilities):,} ({percentage:.1f}%)")
        
        # API 요청 제한 방지 (0.5초 대기)
        time.sleep(0.5)
    
    print()
    print("=" * 60)
    print("✅ 동기화 완료!")
    print("=" * 60)
    print(f"   성공: {success_count:,}개")
    print(f"   실패: {fail_count:,}개")
    print(f"   전체: {len(facilities):,}개")
    print()

if __name__ == '__main__':
    main()

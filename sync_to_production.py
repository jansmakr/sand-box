#!/usr/bin/env python3
"""
로컬 D1 데이터를 Production D1로 동기화 (SQL 배치 업로드)
"""

import sqlite3
import subprocess
import sys
import time

LOCAL_DB_PATH = '/home/user/webapp/.wrangler/state/v3/d1/miniflare-D1DatabaseObject/f984b4a70fef7a895996004e43b002e0b8452a7bd9984138a20f069c8ef2a773.sqlite'
CLOUDFLARE_API_TOKEN = 'yqCOOuJqZcOpwbf3tYSEt4mLGaVEa8_HuYOYWmh0'
DATABASE_NAME = 'carejoa-production'

def read_local_facilities():
    """로컬 D1에서 시설 데이터 읽기"""
    print("📖 로컬 D1에서 데이터 읽는 중...")
    
    try:
        conn = sqlite3.connect(LOCAL_DB_PATH)
        conn.row_factory = sqlite3.Row
        cursor = conn.cursor()
        
        cursor.execute("SELECT COUNT(*) as count FROM facilities")
        total = cursor.fetchone()['count']
        print(f"   총 {total:,}개 시설 발견")
        
        cursor.execute("""
            SELECT facility_type, name, postal_code, address, phone, 
                   latitude, longitude, sido, sigungu
            FROM facilities
            ORDER BY id
        """)
        
        facilities = []
        for row in cursor:
            facilities.append({
                'facility_type': row['facility_type'],
                'name': row['name'],
                'postal_code': row['postal_code'] or '',
                'address': row['address'],
                'phone': row['phone'] or '',
                'latitude': row['latitude'] or 0,
                'longitude': row['longitude'] or 0,
                'sido': row['sido'],
                'sigungu': row['sigungu']
            })
        
        conn.close()
        print(f"✅ {len(facilities):,}개 시설 로드 완료")
        return facilities
        
    except Exception as e:
        print(f"❌ 로컬 데이터 읽기 실패: {e}")
        sys.exit(1)

def upload_batch(batch, batch_num, total_batches):
    """배치를 Production D1에 업로드"""
    
    values_list = []
    for f in batch:
        # SQL 이스케이프
        ft = f['facility_type'].replace("'", "''")
        nm = f['name'].replace("'", "''")
        pc = f['postal_code'].replace("'", "''")
        ad = f['address'].replace("'", "''")
        ph = f['phone'].replace("'", "''")
        sd = f['sido'].replace("'", "''")
        sg = f['sigungu'].replace("'", "''")
        
        values_list.append(
            f"('{ft}', '{nm}', '{pc}', '{ad}', '{ph}', {f['latitude']}, {f['longitude']}, '{sd}', '{sg}')"
        )
    
    sql = f"INSERT INTO facilities (facility_type, name, postal_code, address, phone, latitude, longitude, sido, sigungu) VALUES {', '.join(values_list)}"
    
    try:
        result = subprocess.run(
            ['npx', 'wrangler', 'd1', 'execute', DATABASE_NAME, '--remote', '--command', sql],
            cwd='/home/user/webapp',
            env={'CLOUDFLARE_API_TOKEN': CLOUDFLARE_API_TOKEN, 'PATH': '/usr/local/bin:/usr/bin:/bin', 'HOME': '/home/user'},
            capture_output=True,
            text=True,
            timeout=120
        )
        
        if result.returncode == 0:
            return True, len(batch)
        else:
            print(f"\n      ❌ 에러: {result.stderr[:200]}")
            return False, 0
            
    except Exception as e:
        print(f"\n      ❌ 예외: {e}")
        return False, 0

def main():
    print("=" * 70)
    print("🚀 로컬 D1 → Production D1 동기화")
    print("=" * 70)
    print()
    
    facilities = read_local_facilities()
    
    if not facilities:
        print("❌ 동기화할 데이터가 없습니다.")
        sys.exit(1)
    
    print()
    print("=" * 70)
    print("📤 Production D1에 업로드 중...")
    print("=" * 70)
    print()
    
    BATCH_SIZE = 100
    total_batches = (len(facilities) + BATCH_SIZE - 1) // BATCH_SIZE
    success_count = 0
    fail_count = 0
    
    print(f"   총 {total_batches}개 배치 ({len(facilities):,}개 시설)")
    print(f"   배치 크기: {BATCH_SIZE}개\n")
    
    for i in range(0, len(facilities), BATCH_SIZE):
        batch = facilities[i:i + BATCH_SIZE]
        batch_num = (i // BATCH_SIZE) + 1
        
        progress = min(i + len(batch), len(facilities))
        percentage = (progress / len(facilities)) * 100
        
        print(f"   [{batch_num:3d}/{total_batches}] {progress:5,}/{len(facilities):,} ({percentage:5.1f}%)", end=' ', flush=True)
        
        success, count = upload_batch(batch, batch_num, total_batches)
        
        if success:
            print("✅")
            success_count += count
        else:
            print("❌")
            fail_count += len(batch)
        
        # API 제한 방지
        if batch_num < total_batches:
            time.sleep(0.5)
    
    print()
    print("=" * 70)
    print("✅ 동기화 완료!")
    print("=" * 70)
    print(f"   성공: {success_count:,}개")
    print(f"   실패: {fail_count:,}개")
    print(f"   전체: {len(facilities):,}개")
    print(f"   성공률: {(success_count/len(facilities)*100):.1f}%")
    print()

if __name__ == '__main__':
    main()

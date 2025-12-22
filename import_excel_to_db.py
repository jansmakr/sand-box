#!/usr/bin/env python3
"""
Excel 파일을 읽어서 Production D1 데이터베이스에 업로드하는 스크립트
"""

import openpyxl
import subprocess
import sys
import time

# 파일 경로
EXCEL_FILE = '/home/user/webapp/요양시설_최종250630.xlsx'

# Cloudflare 설정
CLOUDFLARE_API_TOKEN = 'yqCOOuJqZcOpwbf3tYSEt4mLGaVEa8_HuYOYWmh0'
DATABASE_NAME = 'carejoa-production'

def parse_excel_file(file_path):
    """Excel 파일을 파싱하여 시설 데이터 리스트 반환"""
    print("📖 Excel 파일 읽는 중...")
    
    try:
        wb = openpyxl.load_workbook(file_path, read_only=True)
        ws = wb.active
        
        print(f"   시트명: {ws.title}")
        
        facilities = []
        row_num = 0
        
        for row in ws.iter_rows(values_only=True):
            row_num += 1
            
            # 헤더 스킵
            if row_num == 1:
                print(f"   헤더: {row[:7]}")
                continue
            
            # 빈 행 스킵
            if not row or not row[0]:
                continue
            
            try:
                # 컬럼 추출
                facility_type = str(row[0]).strip() if row[0] else ''
                name = str(row[1]).strip() if row[1] else ''
                postal_code = str(row[2]).strip() if row[2] else ''
                address = str(row[3]).strip() if row[3] else ''
                latitude = float(row[4]) if row[4] else 0.0
                longitude = float(row[5]) if row[5] else 0.0
                
                # 필수 필드 검증
                if not name or not address:
                    continue
                
                # 시도/시군구 추출 (주소에서)
                addr_parts = address.split()
                sido = addr_parts[0] if len(addr_parts) > 0 else ''
                sigungu = addr_parts[1] if len(addr_parts) > 1 else ''
                
                # 전화번호는 없으므로 빈 문자열
                phone = ''
                
                facilities.append({
                    'facility_type': facility_type,
                    'name': name,
                    'postal_code': postal_code,
                    'address': address,
                    'phone': phone,
                    'latitude': latitude,
                    'longitude': longitude,
                    'sido': sido,
                    'sigungu': sigungu
                })
                
            except Exception as e:
                print(f"   ⚠️  행 {row_num} 파싱 실패: {e}")
                continue
        
        wb.close()
        print(f"✅ {len(facilities):,}개 시설 데이터 파싱 완료")
        return facilities
        
    except Exception as e:
        print(f"❌ Excel 파일 읽기 실패: {e}")
        sys.exit(1)

def delete_all_facilities():
    """Production D1에서 모든 시설 데이터 삭제"""
    print("\n🗑️  기존 시설 데이터 삭제 중...")
    
    try:
        result = subprocess.run(
            ['npx', 'wrangler', 'd1', 'execute', DATABASE_NAME, '--remote', 
             '--command', 'DELETE FROM facilities'],
            cwd='/home/user/webapp',
            env={
                'CLOUDFLARE_API_TOKEN': CLOUDFLARE_API_TOKEN,
                'PATH': '/usr/local/bin:/usr/bin:/bin',
                'HOME': '/home/user'
            },
            capture_output=True,
            text=True,
            timeout=60
        )
        
        if result.returncode == 0:
            print("✅ 기존 데이터 삭제 완료")
            return True
        else:
            print(f"❌ 삭제 실패: {result.stderr}")
            return False
            
    except Exception as e:
        print(f"❌ 삭제 중 오류: {e}")
        return False

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
            env={
                'CLOUDFLARE_API_TOKEN': CLOUDFLARE_API_TOKEN,
                'PATH': '/usr/local/bin:/usr/bin:/bin',
                'HOME': '/home/user'
            },
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
    print("🚀 Excel → Production D1 업로드")
    print("=" * 70)
    print()
    
    # 1. Excel 파일 파싱
    facilities = parse_excel_file(EXCEL_FILE)
    
    if not facilities:
        print("❌ 업로드할 데이터가 없습니다.")
        sys.exit(1)
    
    # 2. 기존 데이터 삭제
    if not delete_all_facilities():
        print("❌ 기존 데이터 삭제 실패")
        sys.exit(1)
    
    print()
    print("=" * 70)
    print("📤 Production D1에 업로드 중...")
    print("=" * 70)
    print()
    
    # 3. 배치 업로드 (100개씩)
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
    print("✅ 업로드 완료!")
    print("=" * 70)
    print(f"   성공: {success_count:,}개")
    print(f"   실패: {fail_count:,}개")
    print(f"   전체: {len(facilities):,}개")
    print(f"   성공률: {(success_count/len(facilities)*100):.1f}%")
    print()

if __name__ == '__main__':
    main()

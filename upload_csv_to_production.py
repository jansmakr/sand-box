#!/usr/bin/env python3
"""
CSV 파일을 읽어서 Production D1 데이터베이스에 직접 업로드하는 스크립트
CP949/EUC-KR 인코딩 처리 포함
"""

import csv
import json
import subprocess
import sys
import time

# 파일 경로
CSV_FILE = '/home/user/webapp/최종요양시설18708_251017.csv'

# Cloudflare 설정
CLOUDFLARE_API_TOKEN = 'yqCOOuJqZcOpwbf3tYSEt4mLGaVEa8_HuYOYWmh0'
DATABASE_NAME = 'carejoa-production'

def read_csv_with_multiple_encodings(file_path):
    """여러 인코딩을 시도하여 CSV 파일 읽기"""
    encodings = ['utf-8', 'cp949', 'euc-kr', 'utf-8-sig']
    
    for encoding in encodings:
        try:
            print(f"   시도 중: {encoding} 인코딩...")
            with open(file_path, 'r', encoding=encoding, errors='ignore') as f:
                # 첫 줄만 테스트
                first_line = f.readline()
                if '시설' in first_line or 'ID' in first_line:
                    print(f"   ✅ {encoding} 인코딩으로 성공!")
                    return encoding
        except Exception as e:
            print(f"   ❌ {encoding} 실패: {e}")
            continue
    
    # 기본값
    print(f"   ⚠️  기본값 cp949 사용")
    return 'cp949'

def parse_csv_file(file_path):
    """CSV 파일을 파싱하여 시설 데이터 리스트 반환"""
    print("📖 CSV 파일 읽는 중...")
    
    # 인코딩 자동 감지
    encoding = read_csv_with_multiple_encodings(file_path)
    
    facilities = []
    
    try:
        with open(file_path, 'r', encoding=encoding, errors='ignore') as f:
            lines = f.readlines()
            
        print(f"   총 {len(lines):,}줄 발견 (헤더 포함)")
        
        # 헤더 스킵하고 데이터 파싱
        for i, line in enumerate(lines[1:], start=2):
            line = line.strip()
            if not line:
                continue
            
            # CSV 파싱 (따옴표 처리)
            parts = []
            current = ''
            in_quotes = False
            
            for char in line:
                if char == '"':
                    in_quotes = not in_quotes
                elif char == ',' and not in_quotes:
                    parts.append(current)
                    current = ''
                else:
                    current += char
            parts.append(current)  # 마지막 필드
            
            # 최소 9개 필드 필요
            if len(parts) < 9:
                continue
            
            # 필드 추출 (인덱스 기반)
            try:
                facility_type = parts[1].strip().strip('"') if len(parts) > 1 else ''
                name = parts[2].strip().strip('"') if len(parts) > 2 else ''
                postal_code = parts[3].strip().strip('"') if len(parts) > 3 else ''
                address = parts[4].strip().strip('"') if len(parts) > 4 else ''
                phone = parts[5].strip().strip('"') if len(parts) > 5 else ''
                lat_str = parts[6].strip().strip('"') if len(parts) > 6 else '0'
                lng_str = parts[7].strip().strip('"') if len(parts) > 7 else '0'
                sido = parts[8].strip().strip('"') if len(parts) > 8 else ''
                sigungu = parts[9].strip().strip('"') if len(parts) > 9 else ''
                
                # 필수 필드 검증
                if not name or not address or not sido or not sigungu:
                    continue
                
                # 좌표 변환
                try:
                    latitude = float(lat_str) if lat_str else 0.0
                    longitude = float(lng_str) if lng_str else 0.0
                except:
                    latitude = 0.0
                    longitude = 0.0
                
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
                print(f"   ⚠️  라인 {i} 파싱 실패: {e}")
                continue
        
        print(f"✅ {len(facilities):,}개 시설 데이터 파싱 완료")
        return facilities
        
    except Exception as e:
        print(f"❌ CSV 파일 읽기 실패: {e}")
        sys.exit(1)

def upload_batch_to_production(batch, batch_num, total_batches):
    """배치 데이터를 Production D1에 업로드"""
    
    # SQL VALUES 생성 (UTF-8 인코딩 보장)
    values_list = []
    for f in batch:
        # 작은따옴표 이스케이프 및 UTF-8 인코딩 보장
        facility_type = str(f['facility_type']).replace("'", "''")
        name = str(f['name']).replace("'", "''")
        postal_code = str(f['postal_code']).replace("'", "''")
        address = str(f['address']).replace("'", "''")
        phone = str(f['phone']).replace("'", "''")
        sido = str(f['sido']).replace("'", "''")
        sigungu = str(f['sigungu']).replace("'", "''")
        
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
            'PATH': '/usr/local/bin:/usr/bin:/bin',
            'HOME': '/home/user'
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
            return True, len(batch)
        else:
            print(f"      에러: {result.stderr[:200]}")
            return False, 0
            
    except subprocess.TimeoutExpired:
        print(f"      타임아웃!")
        return False, 0
    except Exception as e:
        print(f"      예외: {e}")
        return False, 0

def main():
    print("=" * 70)
    print("🚀 CSV → Production D1 데이터 업로드 시작")
    print("=" * 70)
    print()
    
    # 1. CSV 파일 파싱
    facilities = parse_csv_file(CSV_FILE)
    
    if not facilities:
        print("❌ 업로드할 데이터가 없습니다.")
        sys.exit(1)
    
    print()
    print("=" * 70)
    print("📤 Production D1에 업로드 시작")
    print("=" * 70)
    
    # 2. 배치 업로드 (100개씩)
    BATCH_SIZE = 100
    total_batches = (len(facilities) + BATCH_SIZE - 1) // BATCH_SIZE
    success_count = 0
    fail_count = 0
    
    print(f"   총 {total_batches}개 배치 ({len(facilities):,}개 시설)")
    print(f"   배치 크기: {BATCH_SIZE}개")
    print()
    
    for i in range(0, len(facilities), BATCH_SIZE):
        batch = facilities[i:i + BATCH_SIZE]
        batch_num = (i // BATCH_SIZE) + 1
        
        # 진행률 표시
        progress = min(i + len(batch), len(facilities))
        percentage = (progress / len(facilities)) * 100
        
        print(f"   배치 {batch_num}/{total_batches}: {progress:,}/{len(facilities):,} ({percentage:.1f}%)", end=' ')
        
        success, count = upload_batch_to_production(batch, batch_num, total_batches)
        
        if success:
            print("✅")
            success_count += count
        else:
            print("❌")
            fail_count += len(batch)
        
        # API 요청 제한 방지 (0.5초 대기)
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

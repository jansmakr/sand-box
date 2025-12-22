#!/usr/bin/env python3
"""
CSV 파일을 로컬 D1 데이터베이스에 임포트하는 스크립트
"""

import sqlite3
import sys

# 파일 경로
CSV_FILE = '/home/user/webapp/최종요양시설18708_251017.csv'
LOCAL_DB_PATH = '/home/user/webapp/.wrangler/state/v3/d1/miniflare-D1DatabaseObject/f984b4a70fef7a895996004e43b002e0b8452a7bd9984138a20f069c8ef2a773.sqlite'

def parse_csv_file(file_path):
    """CSV 파일을 파싱하여 시설 데이터 리스트 반환"""
    print("📖 CSV 파일 읽는 중...")
    
    # 여러 인코딩 시도
    encodings = ['utf-8', 'cp949', 'euc-kr']
    lines = []
    
    for encoding in encodings:
        try:
            with open(file_path, 'r', encoding=encoding, errors='ignore') as f:
                lines = f.readlines()
                if '시설' in lines[0] or 'ID' in lines[0]:
                    print(f"   ✅ {encoding} 인코딩으로 읽기 성공")
                    break
        except:
            continue
    
    facilities = []
    
    print(f"   총 {len(lines):,}줄 (헤더 포함)")
    
    for i, line in enumerate(lines[1:], start=2):
        line = line.strip()
        if not line:
            continue
        
        # CSV 파싱
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
        parts.append(current)
        
        if len(parts) < 9:
            continue
        
        try:
            facility_type = parts[1].strip().strip('"')
            name = parts[2].strip().strip('"')
            postal_code = parts[3].strip().strip('"')
            address = parts[4].strip().strip('"')
            phone = parts[5].strip().strip('"')
            lat_str = parts[6].strip().strip('"')
            lng_str = parts[7].strip().strip('"')
            sido = parts[8].strip().strip('"')
            sigungu = parts[9].strip().strip('"')
            
            if not name or not address or not sido or not sigungu:
                continue
            
            try:
                latitude = float(lat_str) if lat_str else 0.0
                longitude = float(lng_str) if lng_str else 0.0
            except:
                latitude = 0.0
                longitude = 0.0
            
            facilities.append((
                facility_type, name, postal_code, address, phone,
                latitude, longitude, sido, sigungu
            ))
            
        except Exception as e:
            continue
    
    print(f"✅ {len(facilities):,}개 시설 데이터 파싱 완료")
    return facilities

def import_to_local_db(facilities):
    """로컬 SQLite 데이터베이스에 임포트"""
    print("\n📥 로컬 D1 데이터베이스에 임포트 중...")
    
    try:
        conn = sqlite3.connect(LOCAL_DB_PATH)
        cursor = conn.cursor()
        
        # 기존 데이터 삭제
        cursor.execute("DELETE FROM facilities")
        print("   ✅ 기존 데이터 삭제 완료")
        
        # 배치 삽입
        cursor.executemany("""
            INSERT INTO facilities (facility_type, name, postal_code, address, phone, latitude, longitude, sido, sigungu)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
        """, facilities)
        
        conn.commit()
        
        # 확인
        cursor.execute("SELECT COUNT(*) FROM facilities")
        count = cursor.fetchone()[0]
        
        conn.close()
        
        print(f"✅ {count:,}개 시설 임포트 완료")
        return count
        
    except Exception as e:
        print(f"❌ 임포트 실패: {e}")
        sys.exit(1)

def main():
    print("=" * 60)
    print("🚀 CSV → 로컬 D1 임포트")
    print("=" * 60)
    print()
    
    facilities = parse_csv_file(CSV_FILE)
    
    if not facilities:
        print("❌ 임포트할 데이터가 없습니다.")
        sys.exit(1)
    
    count = import_to_local_db(facilities)
    
    print("\n" + "=" * 60)
    print("✅ 완료!")
    print("=" * 60)
    print(f"   임포트된 시설: {count:,}개")
    print()

if __name__ == '__main__':
    main()

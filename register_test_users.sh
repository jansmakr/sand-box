#!/bin/bash

BASE_URL="http://localhost:3000"

echo "========================================="
echo "테스트 사용자 등록"
echo "========================================="
echo ""

# 1. 고객 등록
echo "1️⃣ 고객 계정 등록..."
CUSTOMER_REG=$(curl -s -X POST "$BASE_URL/api/auth/register" \
  -H "Content-Type: application/json" \
  -d '{
    "email": "customer@test.com",
    "password": "1234",
    "name": "김철수",
    "userType": "customer",
    "phone": "010-1234-5678"
  }')
echo "결과: $CUSTOMER_REG"
echo ""

# 2. 시설 등록 (요양병원 - 서울 강남구)
echo "2️⃣ 시설(요양병원) 계정 등록..."
FACILITY1_REG=$(curl -s -X POST "$BASE_URL/api/auth/register" \
  -H "Content-Type: application/json" \
  -d '{
    "email": "hospital@test.com",
    "password": "1234",
    "name": "서울요양병원",
    "userType": "facility",
    "facilityType": "요양병원",
    "address": "서울특별시 강남구",
    "phone": "02-1234-5678"
  }')
echo "결과: $FACILITY1_REG"
echo ""

# 3. 시설 등록 (요양원 - 경기 성남시)
echo "3️⃣ 시설(요양원) 계정 등록..."
FACILITY2_REG=$(curl -s -X POST "$BASE_URL/api/auth/register" \
  -H "Content-Type: application/json" \
  -d '{
    "email": "care@test.com",
    "password": "1234",
    "name": "행복요양원",
    "userType": "facility",
    "facilityType": "요양원",
    "address": "경기도 성남시",
    "phone": "031-1234-5678"
  }')
echo "결과: $FACILITY2_REG"
echo ""

# 4. 시설 등록 (주야간보호 - 서울 송파구)
echo "4️⃣ 시설(주야간보호) 계정 등록..."
FACILITY3_REG=$(curl -s -X POST "$BASE_URL/api/auth/register" \
  -H "Content-Type: application/json" \
  -d '{
    "email": "daycare@test.com",
    "password": "1234",
    "name": "사랑주야간보호센터",
    "userType": "facility",
    "facilityType": "주야간보호",
    "address": "서울특별시 송파구",
    "phone": "02-2345-6789"
  }')
echo "결과: $FACILITY3_REG"
echo ""

echo "========================================="
echo "✅ 테스트 사용자 등록 완료!"
echo "========================================="

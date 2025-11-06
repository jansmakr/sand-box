// 지역별 대표시설 자동 지정 스크립트
// 각 시군구별로 유형별 1개씩 임의로 선택하여 지정

const ADMIN_PASSWORD = '5874';
const BASE_URL = 'https://31cdf461.carejoa-kr.pages.dev';

// 시설 유형 목록
const FACILITY_TYPES = ['요양병원', '요양원', '재가복지센터', '주야간보호'];

async function getAllRegions() {
  console.log('📍 전체 시도/시군구 목록 가져오는 중...');
  
  // 관리자 API에서 전체 시설 가져와서 고유한 시도/시군구 추출
  const allFacilities = [];
  let page = 1;
  let hasMore = true;
  
  while (hasMore && page <= 500) { // 최대 500페이지 (25,000개 시설)
    const url = new URL(`${BASE_URL}/api/admin/facilities`);
    url.searchParams.append('page', page.toString());
    url.searchParams.append('limit', '50');
    
    const response = await fetch(url, {
      headers: {
        'X-Admin-Password': ADMIN_PASSWORD
      }
    });
    const data = await response.json();
    
    if (data.facilities && data.facilities.length > 0) {
      allFacilities.push(...data.facilities);
      hasMore = data.facilities.length === 50;
      page++;
      
      if (page % 10 === 0) {
        console.log(`  진행중: ${allFacilities.length}개 시설 로딩...`);
      }
    } else {
      hasMore = false;
    }
  }
  
  console.log(`  ✅ 총 ${allFacilities.length}개 시설 로딩 완료`);
  
  // 고유한 시도/시군구 조합 추출
  const regionSet = new Set();
  allFacilities.forEach(facility => {
    if (facility.sido && facility.sigungu) {
      regionSet.add(JSON.stringify({ sido: facility.sido, sigungu: facility.sigungu }));
    }
  });
  
  const regions = Array.from(regionSet).map(str => JSON.parse(str));
  console.log(`  ✅ 고유 지역 ${regions.length}개 발견`);
  
  return regions;
}

async function getFacilitiesByRegionAndType(sido, sigungu, facilityType) {
  const url = new URL(`${BASE_URL}/api/admin/facilities`);
  url.searchParams.append('sido', sido);
  url.searchParams.append('sigungu', sigungu);
  url.searchParams.append('type', facilityType);
  url.searchParams.append('limit', '10'); // 각 타입별로 최대 10개만 가져옴
  
  const response = await fetch(url, {
    headers: {
      'X-Admin-Password': ADMIN_PASSWORD
    }
  });
  const data = await response.json();
  return data.facilities || [];
}

async function assignRegionalCenter(facilityId, facilityName, facilityType, sido, sigungu) {
  const regionKey = `${sido}_${sigungu}`;
  const partnerId = `partner_${Date.now()}_${Math.random().toString(36).substr(2, 9)}`;
  
  const response = await fetch(`${BASE_URL}/api/admin/regional-centers`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'X-Admin-Password': ADMIN_PASSWORD
    },
    body: JSON.stringify({
      facility_id: facilityId,
      region_key: regionKey,
      partner_id: partnerId,
      facility_name: facilityName,
      facility_type: facilityType,
      manager_name: '자동지정',
      manager_phone: '000-0000-0000'
    })
  });
  
  const result = await response.json();
  return result;
}

async function main() {
  console.log('🚀 지역별 대표시설 자동 지정 시작\n');
  
  // 1. 전체 지역 목록 가져오기
  const regions = await getAllRegions();
  console.log(`✅ 총 ${regions.length}개 지역 발견\n`);
  
  let totalAssigned = 0;
  let errors = 0;
  
  // 2. 각 지역별로 처리
  for (const region of regions) {
    const { sido, sigungu } = region;
    console.log(`\n📌 처리중: ${sido} ${sigungu}`);
    
    // 3. 각 유형별로 처리
    for (const facilityType of FACILITY_TYPES) {
      try {
        // 해당 지역의 해당 유형 시설 가져오기
        const facilities = await getFacilitiesByRegionAndType(sido, sigungu, facilityType);
        
        if (facilities.length === 0) {
          console.log(`  ⚠️  ${facilityType}: 시설 없음`);
          continue;
        }
        
        // 첫 번째 시설을 대표시설로 지정 (임의 선택)
        const selectedFacility = facilities[0];
        
        // 대표시설 지정
        const result = await assignRegionalCenter(
          selectedFacility.id,
          selectedFacility.name,
          facilityType,
          sido,
          sigungu
        );
        
        if (result.success) {
          console.log(`  ✅ ${facilityType}: ${selectedFacility.name} (ID: ${selectedFacility.id})`);
          totalAssigned++;
        } else {
          console.log(`  ❌ ${facilityType}: 지정 실패 - ${result.error || '알 수 없는 오류'}`);
          errors++;
        }
        
        // API 부하 방지를 위한 짧은 대기
        await new Promise(resolve => setTimeout(resolve, 100));
        
      } catch (error) {
        console.log(`  ❌ ${facilityType}: 오류 - ${error.message}`);
        errors++;
      }
    }
  }
  
  console.log('\n' + '='.repeat(60));
  console.log('🎉 작업 완료!');
  console.log(`✅ 성공: ${totalAssigned}개 대표시설 지정`);
  console.log(`❌ 실패: ${errors}개`);
  console.log('='.repeat(60));
}

// 스크립트 실행
main().catch(error => {
  console.error('❌ 치명적 오류:', error);
  process.exit(1);
});

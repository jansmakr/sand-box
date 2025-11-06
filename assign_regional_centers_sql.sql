-- 지역별 대표시설 자동 지정 SQL
-- 각 시군구별로 유형별 1개씩 첫 번째 시설을 대표시설로 지정

-- 기존 대표시설 확인 (삭제하지 않고 유지)
-- SELECT COUNT(*) as existing_count FROM regional_centers;

-- 각 시도/시군구/유형별로 첫 번째 시설 선택하여 대표시설로 지정
INSERT INTO regional_centers (id, region_key, partner_id, facility_id, facility_name, facility_type, manager_name, manager_phone, created_at)
SELECT 
  'rc_' || f.sido || '_' || f.sigungu || '_' || f.facility_type || '_' || f.id as id,
  f.sido || '_' || f.sigungu as region_key,
  'partner_auto_' || f.id as partner_id,
  f.id as facility_id,
  f.name as facility_name,
  f.facility_type,
  '자동지정' as manager_name,
  '000-0000-0000' as manager_phone,
  CURRENT_TIMESTAMP as created_at
FROM facilities f
WHERE f.id IN (
  -- 각 시도/시군구/유형별 조합에서 ID가 가장 작은(첫 번째) 시설 선택
  SELECT MIN(id)
  FROM facilities
  WHERE sido IS NOT NULL 
    AND sigungu IS NOT NULL 
    AND facility_type IN ('요양병원', '요양원', '재가복지센터', '주야간보호')
  GROUP BY sido, sigungu, facility_type
)
-- 이미 대표시설로 지정된 시설은 제외 (중복 방지)
AND f.id NOT IN (SELECT facility_id FROM regional_centers WHERE facility_id IS NOT NULL);

-- 결과 확인
SELECT 
  '총 대표시설 수' as metric,
  COUNT(*) as count
FROM regional_centers
UNION ALL
SELECT 
  '유형별 분포: ' || facility_type as metric,
  COUNT(*) as count
FROM regional_centers
WHERE facility_id IS NOT NULL
GROUP BY facility_type
UNION ALL
SELECT 
  '지역별 대표시설 현황' as metric,
  COUNT(DISTINCT region_key) as count
FROM regional_centers
WHERE facility_id IS NOT NULL;

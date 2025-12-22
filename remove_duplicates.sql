-- 중복된 시설 중 가장 최근 것만 남기고 삭제
-- (name, address, facility_type) 조합이 동일한 경우 id가 큰 것만 유지

DELETE FROM facilities
WHERE id NOT IN (
  SELECT MAX(id)
  FROM facilities
  GROUP BY name, address, facility_type
);

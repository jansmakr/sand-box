-- NULL 필드 현황 체크
SELECT 
  'total_facilities' as metric,
  COUNT(*) as count
FROM facilities
UNION ALL
SELECT 
  'null_latitude',
  COUNT(*) 
FROM facilities 
WHERE latitude IS NULL
UNION ALL
SELECT 
  'null_longitude',
  COUNT(*) 
FROM facilities 
WHERE longitude IS NULL
UNION ALL
SELECT 
  'null_phone',
  COUNT(*) 
FROM facilities 
WHERE phone IS NULL OR phone = ''
UNION ALL
SELECT 
  'null_admin_sym',
  COUNT(*) 
FROM facilities 
WHERE admin_sym IS NULL
UNION ALL
SELECT 
  'null_available_rooms',
  COUNT(*) 
FROM facilities 
WHERE available_rooms IS NULL;

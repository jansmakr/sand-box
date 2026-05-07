import { Hono } from 'hono';
import type { Bindings } from '../../types';

const app = new Hono<{ Bindings: Bindings }>();

// 공공데이터포털 API 설정
const PUBLIC_DATA_API = {
  baseUrl: 'http://apis.data.go.kr/B551011/LtcrInsttInfoService',
  endpoints: {
    list: '/getLtcrInsttList',      // 시설 목록
    detail: '/getLtcrInsttDetail'    // 시설 상세 (평가등급 포함)
  }
};

/**
 * 전체 시설 정보 동기화 (평가등급 포함)
 * POST /api/admin/public-data/sync-all
 */
app.post('/sync-all', async (c) => {
  const { DB } = c.env;
  const { serviceKey, pageSize = 100, maxPages = 10 } = await c.req.json();

  if (!serviceKey) {
    return c.json({ error: 'serviceKey가 필요합니다.' }, 400);
  }

  const startTime = Date.now();
  let totalProcessed = 0;
  let totalSuccess = 0;
  let totalErrors = 0;

  try {
    // 페이지별로 시설 목록 가져오기
    for (let page = 1; page <= maxPages; page++) {
      const listUrl = `${PUBLIC_DATA_API.baseUrl}${PUBLIC_DATA_API.endpoints.list}` +
        `?serviceKey=${serviceKey}` +
        `&numOfRows=${pageSize}` +
        `&pageNo=${page}` +
        `&MobileOS=ETC` +
        `&MobileApp=CareJoa` +
        `&_type=json`;

      const listResponse = await fetch(listUrl);
      const listData = await listResponse.json();

      if (!listData.response?.body?.items?.item) {
        console.log(`페이지 ${page}: 데이터 없음`);
        break;
      }

      const items = Array.isArray(listData.response.body.items.item)
        ? listData.response.body.items.item
        : [listData.response.body.items.item];

      console.log(`페이지 ${page}/${maxPages}: ${items.length}개 시설 처리 중...`);

      // 각 시설별 상세 정보 가져오기 (평가등급 포함)
      for (const item of items) {
        try {
          // 상세 정보 API 호출 (평가등급 정보 포함)
          const detailUrl = `${PUBLIC_DATA_API.baseUrl}${PUBLIC_DATA_API.endpoints.detail}` +
            `?serviceKey=${serviceKey}` +
            `&adminSym=${item.adminSym}` +
            `&MobileOS=ETC` +
            `&MobileApp=CareJoa` +
            `&_type=json`;

          const detailResponse = await fetch(detailUrl);
          const detailData = await detailResponse.json();

          let detailItem = item;
          if (detailData.response?.body?.items?.item) {
            detailItem = Array.isArray(detailData.response.body.items.item)
              ? detailData.response.body.items.item[0]
              : detailData.response.body.items.item;
          }

          // 시설 기본 정보
          const facilityName = detailItem.ltcoNm || item.ltcoNm || '';
          const facilityType = detailItem.ltcoClsfNm || item.ltcoClsfNm || '요양원';
          const sido = detailItem.siDoNm || item.siDoNm || '';
          const sigungu = detailItem.siGunGuNm || item.siGunGuNm || '';
          const address = detailItem.roadAddr || item.roadAddr || '';
          const phone = detailItem.telNo || item.telNo || '';
          const latitude = parseFloat(detailItem.latitude || item.latitude || '37.5665');
          const longitude = parseFloat(detailItem.longitude || item.longitude || '126.9780');

          // 평가등급 정보
          const gradeYear = detailItem.gradYear || null;
          const gradeValue = detailItem.gradValue || null; // A~E 등급
          
          // 정원/현원 정보
          const totalCapacity = parseInt(detailItem.toprPsncpa || '0');
          const currentOccupancy = parseInt(detailItem.nowPsncpa || '0');
          const availableBeds = totalCapacity - currentOccupancy;

          // 인력 정보
          const nurseStaff = parseInt(detailItem.nurseStaff || '0');
          const caregiverStaff = parseInt(detailItem.caregiverStaff || '0');
          const staffRatio = detailItem.staffRatio || null;

          // 시설 면적
          const facilityArea = parseFloat(detailItem.facilArea || '0');

          // facilities 테이블에 저장/업데이트
          const facilityResult = await DB.prepare(`
            INSERT INTO facilities (
              name, facility_type, address, phone,
              sido, sigungu, latitude, longitude,
              admin_sym, created_at, updated_at
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)
            ON CONFLICT(admin_sym) DO UPDATE SET
              name = excluded.name,
              facility_type = excluded.facility_type,
              address = excluded.address,
              phone = excluded.phone,
              sido = excluded.sido,
              sigungu = excluded.sigungu,
              latitude = excluded.latitude,
              longitude = excluded.longitude,
              updated_at = CURRENT_TIMESTAMP
          `).bind(
            facilityName, facilityType, address, phone,
            sido, sigungu, latitude, longitude,
            item.adminSym
          ).run();

          // facility_id 가져오기
          const facilityIdResult = await DB.prepare(`
            SELECT id FROM facilities WHERE admin_sym = ?
          `).bind(item.adminSym).first();

          const facilityId = facilityIdResult?.id;

          if (facilityId) {
            // facility_capacity 테이블에 정원/현원 저장
            await DB.prepare(`
              INSERT INTO facility_capacity (
                facility_id, total_capacity, current_occupancy, available_beds,
                data_source, last_updated, last_synced_at, public_data_admin_sym
              ) VALUES (?, ?, ?, ?, 'public_api', datetime('now'), datetime('now'), ?)
              ON CONFLICT(facility_id) DO UPDATE SET
                total_capacity = excluded.total_capacity,
                current_occupancy = excluded.current_occupancy,
                available_beds = excluded.available_beds,
                last_updated = datetime('now'),
                last_synced_at = datetime('now')
            `).bind(
              facilityId, totalCapacity, currentOccupancy, availableBeds,
              item.adminSym
            ).run();

            // 평가등급 및 추가 정보 저장 (새 테이블)
            await DB.prepare(`
              INSERT INTO facility_public_data (
                facility_id, admin_sym,
                grade_year, grade_value,
                nurse_staff, caregiver_staff, staff_ratio,
                facility_area,
                last_updated
              ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, datetime('now'))
              ON CONFLICT(facility_id) DO UPDATE SET
                grade_year = excluded.grade_year,
                grade_value = excluded.grade_value,
                nurse_staff = excluded.nurse_staff,
                caregiver_staff = excluded.caregiver_staff,
                staff_ratio = excluded.staff_ratio,
                facility_area = excluded.facility_area,
                last_updated = datetime('now')
            `).bind(
              facilityId, item.adminSym,
              gradeYear, gradeValue,
              nurseStaff, caregiverStaff, staffRatio,
              facilityArea
            ).run();
          }

          totalSuccess++;
        } catch (itemError) {
          console.error(`시설 ${item.adminSym} 처리 오류:`, itemError);
          totalErrors++;
        }

        totalProcessed++;

        // API 호출 제한 (초당 1회)
        await new Promise(resolve => setTimeout(resolve, 1000));
      }
    }

    const executionTime = Date.now() - startTime;

    // 데이터 수집 로그 저장
    await DB.prepare(`
      INSERT INTO data_collection_logs (
        source, action, status, records_processed,
        execution_time_ms, created_at
      ) VALUES (?, ?, ?, ?, ?, datetime('now'))
    `).bind(
      'public_data_portal',
      'sync_all_facilities',
      totalErrors === 0 ? 'success' : 'partial_success',
      totalSuccess,
      executionTime
    ).run();

    return c.json({
      success: true,
      message: '전체 시설 정보 동기화 완료',
      stats: {
        processed: totalProcessed,
        success: totalSuccess,
        errors: totalErrors,
        executionTimeMs: executionTime,
        executionTimeMin: (executionTime / 60000).toFixed(1)
      }
    });

  } catch (error) {
    console.error('Sync all facilities error:', error);
    return c.json({
      error: 'Failed to sync all facilities',
      message: error.message,
      processed: totalProcessed
    }, 500);
  }
});

/**
 * 평가등급별 시설 조회
 * GET /api/admin/public-data/facilities-by-grade?grade=A
 */
app.get('/facilities-by-grade', async (c) => {
  const { DB } = c.env;
  const grade = c.req.query('grade') || 'A';

  try {
    const facilities = await DB.prepare(`
      SELECT 
        f.id,
        f.name,
        f.sido,
        f.sigungu,
        f.address,
        f.phone,
        fpd.grade_year,
        fpd.grade_value,
        fpd.nurse_staff,
        fpd.caregiver_staff,
        fpd.staff_ratio,
        fc.total_capacity,
        fc.current_occupancy,
        fc.available_beds
      FROM facilities f
      JOIN facility_public_data fpd ON f.id = fpd.facility_id
      LEFT JOIN facility_capacity fc ON f.id = fc.facility_id
      WHERE fpd.grade_value = ?
      ORDER BY f.name
      LIMIT 100
    `).bind(grade).all();

    return c.json({
      success: true,
      grade: grade,
      count: facilities.results.length,
      facilities: facilities.results
    });

  } catch (error) {
    console.error('Facilities by grade query error:', error);
    return c.json({ error: 'Failed to get facilities', message: error.message }, 500);
  }
});

/**
 * 시설 상세 정보 조회 (평가등급 포함)
 * GET /api/admin/public-data/facility/:id
 */
app.get('/facility/:id', async (c) => {
  const { DB } = c.env;
  const facilityId = c.req.param('id');

  try {
    const facility = await DB.prepare(`
      SELECT 
        f.*,
        fpd.grade_year,
        fpd.grade_value,
        fpd.nurse_staff,
        fpd.caregiver_staff,
        fpd.staff_ratio,
        fpd.facility_area,
        fc.total_capacity,
        fc.current_occupancy,
        fc.available_beds,
        fc.last_updated as capacity_updated
      FROM facilities f
      LEFT JOIN facility_public_data fpd ON f.id = fpd.facility_id
      LEFT JOIN facility_capacity fc ON f.id = fc.facility_id
      WHERE f.id = ?
    `).bind(facilityId).first();

    if (!facility) {
      return c.json({ error: '시설을 찾을 수 없습니다.' }, 404);
    }

    return c.json({
      success: true,
      facility: facility
    });

  } catch (error) {
    console.error('Facility detail query error:', error);
    return c.json({ error: 'Failed to get facility', message: error.message }, 500);
  }
});

export default app;

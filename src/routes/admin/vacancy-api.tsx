import { Hono } from 'hono';
import type { Bindings } from '../../types';

const app = new Hono<{ Bindings: Bindings }>();

// 공공데이터포털 API 설정
const PUBLIC_DATA_API = {
  baseUrl: 'http://apis.data.go.kr/B551011/LtcrInsttInfoService',
  endpoints: {
    list: '/getLtcrInsttList', // 장기요양기관 목록
    detail: '/getLtcrInsttDetail' // 장기요양기관 상세
  }
};

// 공실/병상 데이터 동기화 API
app.post('/sync-capacity', async (c) => {
  const { DB } = c.env;
  const { serviceKey } = await c.req.json();

  if (!serviceKey) {
    return c.json({ error: 'serviceKey가 필요합니다.' }, 400);
  }

  const startTime = Date.now();
  let processedCount = 0;
  let successCount = 0;
  let errorCount = 0;

  try {
    // 1. 시설 목록 가져오기 (페이지네이션)
    const facilities = await DB.prepare(`
      SELECT id, admin_sym FROM facilities 
      WHERE admin_sym IS NOT NULL 
      LIMIT 100
    `).all();

    // 2. 각 시설의 정원/현원 데이터 가져오기
    for (const facility of facilities.results) {
      try {
        // 공공데이터포털 API 호출
        const apiUrl = `${PUBLIC_DATA_API.baseUrl}${PUBLIC_DATA_API.endpoints.detail}` +
          `?serviceKey=${serviceKey}` +
          `&adminSym=${facility.admin_sym}` +
          `&numOfRows=1` +
          `&pageNo=1` +
          `&MobileOS=ETC` +
          `&MobileApp=CareJoa` +
          `&_type=json`;

        const response = await fetch(apiUrl);
        const data = await response.json();

        if (data.response?.body?.items?.item) {
          const item = Array.isArray(data.response.body.items.item) 
            ? data.response.body.items.item[0] 
            : data.response.body.items.item;

          // 정원/현원 데이터 추출
          const totalCapacity = parseInt(item.toprPsncpa || '0'); // 정원
          const currentOccupancy = parseInt(item.nowPsncpa || '0'); // 현원
          const availableBeds = totalCapacity - currentOccupancy; // 공실

          // facility_capacity 테이블에 저장
          await DB.prepare(`
            INSERT INTO facility_capacity (
              facility_id, total_capacity, current_occupancy, available_beds,
              data_source, last_updated, last_synced_at,
              public_data_admin_sym
            ) VALUES (?, ?, ?, ?, 'public_api', datetime('now'), datetime('now'), ?)
            ON CONFLICT(facility_id) DO UPDATE SET
              total_capacity = ?,
              current_occupancy = ?,
              available_beds = ?,
              last_updated = datetime('now'),
              last_synced_at = datetime('now')
          `).bind(
            facility.id,
            totalCapacity,
            currentOccupancy,
            availableBeds,
            facility.admin_sym,
            totalCapacity,
            currentOccupancy,
            availableBeds
          ).run();

          // vacancy_history에 기록
          await DB.prepare(`
            INSERT INTO vacancy_history (
              facility_id, available_beds, total_capacity,
              occupancy_rate, data_source, recorded_at
            ) VALUES (?, ?, ?, ?, 'public_api', datetime('now'))
          `).bind(
            facility.id,
            availableBeds,
            totalCapacity,
            totalCapacity > 0 ? (currentOccupancy / totalCapacity) : 0
          ).run();

          successCount++;
        }

        processedCount++;
      } catch (itemError) {
        console.error(`시설 ${facility.id} 처리 오류:`, itemError);
        errorCount++;
      }

      // API 호출 제한 (초당 1회)
      await new Promise(resolve => setTimeout(resolve, 1000));
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
      'sync_capacity',
      errorCount === 0 ? 'success' : 'partial_success',
      successCount,
      executionTime
    ).run();

    return c.json({
      success: true,
      message: '공실 데이터 동기화 완료',
      stats: {
        processed: processedCount,
        success: successCount,
        errors: errorCount,
        executionTimeMs: executionTime
      }
    });

  } catch (error) {
    // 오류 로그 저장
    await DB.prepare(`
      INSERT INTO data_collection_logs (
        source, action, status, records_processed,
        error_message, execution_time_ms, created_at
      ) VALUES (?, ?, ?, ?, ?, ?, datetime('now'))
    `).bind(
      'public_data_portal',
      'sync_capacity',
      'failed',
      processedCount,
      error.message,
      Date.now() - startTime
    ).run();

    console.error('Capacity sync error:', error);
    return c.json({ 
      error: 'Failed to sync capacity data', 
      message: error.message,
      processed: processedCount
    }, 500);
  }
});

// 시설별 공실 조회 API
app.get('/capacity/:facilityId', async (c) => {
  const { DB } = c.env;
  const facilityId = c.req.param('facilityId');

  try {
    const capacity = await DB.prepare(`
      SELECT 
        fc.*,
        f.name as facility_name,
        f.city,
        f.district
      FROM facility_capacity fc
      JOIN facilities f ON fc.facility_id = f.id
      WHERE fc.facility_id = ?
    `).bind(facilityId).first();

    if (!capacity) {
      return c.json({ error: '공실 데이터가 없습니다.' }, 404);
    }

    return c.json({
      success: true,
      capacity: capacity,
      lastUpdated: capacity.last_updated
    });

  } catch (error) {
    console.error('Capacity query error:', error);
    return c.json({ error: 'Failed to get capacity data', message: error.message }, 500);
  }
});

// 공실 있는 시설 목록 API
app.get('/available-facilities', async (c) => {
  const { DB } = c.env;
  const city = c.req.query('city');
  const district = c.req.query('district');
  const minBeds = parseInt(c.req.query('minBeds') || '1');

  try {
    let query = `
      SELECT 
        f.id,
        f.name,
        f.city,
        f.district,
        f.address,
        f.phone,
        fc.total_capacity,
        fc.current_occupancy,
        fc.available_beds,
        fc.last_updated
      FROM facilities f
      JOIN facility_capacity fc ON f.id = fc.facility_id
      WHERE fc.available_beds >= ?
    `;

    const params = [minBeds];

    if (city) {
      query += ` AND f.city = ?`;
      params.push(city);
    }

    if (district) {
      query += ` AND f.district = ?`;
      params.push(district);
    }

    query += ` ORDER BY fc.available_beds DESC LIMIT 50`;

    const facilities = await DB.prepare(query).bind(...params).all();

    return c.json({
      success: true,
      facilities: facilities.results,
      count: facilities.results.length
    });

  } catch (error) {
    console.error('Available facilities query error:', error);
    return c.json({ error: 'Failed to get available facilities', message: error.message }, 500);
  }
});

// 공실 통계 API
app.get('/stats', async (c) => {
  const { DB } = c.env;

  try {
    const stats = await DB.prepare(`
      SELECT 
        COUNT(*) as total_facilities,
        SUM(total_capacity) as total_beds,
        SUM(current_occupancy) as total_occupied,
        SUM(available_beds) as total_available,
        AVG(available_beds) as avg_available,
        ROUND(AVG(CAST(current_occupancy AS REAL) / NULLIF(total_capacity, 0)) * 100, 2) as avg_occupancy_rate
      FROM facility_capacity
      WHERE total_capacity > 0
    `).first();

    // 지역별 통계
    const regionalStats = await DB.prepare(`
      SELECT 
        f.city,
        COUNT(*) as facility_count,
        SUM(fc.available_beds) as total_available,
        AVG(fc.available_beds) as avg_available
      FROM facility_capacity fc
      JOIN facilities f ON fc.facility_id = f.id
      WHERE fc.available_beds > 0
      GROUP BY f.city
      ORDER BY total_available DESC
      LIMIT 10
    `).all();

    return c.json({
      success: true,
      overall: stats,
      byRegion: regionalStats.results
    });

  } catch (error) {
    console.error('Stats query error:', error);
    return c.json({ error: 'Failed to get stats', message: error.message }, 500);
  }
});

export default app;

import { Hono } from 'hono';
import type { Bindings } from '../../types';

const app = new Hono<{ Bindings: Bindings }>();

// 데이터 분석 대시보드
app.get('/', async (c) => {
  const { DB } = c.env;

  try {
    // 1. 일별 사용자 활동 (최근 30일)
    const dailyActivity = await DB.prepare(`
      SELECT 
        DATE(created_at) as date,
        COUNT(DISTINCT user_id) as unique_users,
        COUNT(*) as total_sessions,
        AVG(page_views) as avg_page_views,
        AVG(time_on_site) as avg_time_on_site
      FROM ai_user_sessions
      WHERE created_at >= datetime('now', '-30 days')
      GROUP BY DATE(created_at)
      ORDER BY date DESC
    `).all();

    // 2. 디바이스/브라우저 분포
    const deviceStats = await DB.prepare(`
      SELECT 
        device_type,
        browser,
        COUNT(*) as count,
        ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM ai_user_sessions), 2) as percentage
      FROM ai_user_sessions
      WHERE device_type IS NOT NULL
      GROUP BY device_type, browser
      ORDER BY count DESC
    `).all();

    // 3. 지역별 검색 현황
    const regionStats = await DB.prepare(`
      SELECT 
        f.city,
        COUNT(DISTINCT umf.user_id) as unique_users,
        COUNT(*) as search_count,
        AVG(umf.satisfaction_score) as avg_satisfaction
      FROM user_matching_feedback umf
      JOIN facilities f ON umf.final_selected_facility_id = f.id
      WHERE f.city IS NOT NULL
      GROUP BY f.city
      ORDER BY search_count DESC
      LIMIT 10
    `).all();

    // 4. 전환 퍼널 분석
    const funnelStats = await DB.prepare(`
      SELECT 
        COUNT(DISTINCT user_id) as total_visitors,
        COUNT(DISTINCT CASE WHEN clicked_facilities IS NOT NULL THEN user_id END) as clicked_users,
        COUNT(DISTINCT CASE WHEN quote_requested_facilities IS NOT NULL THEN user_id END) as quote_users,
        COUNT(DISTINCT CASE WHEN final_selected_facility_id IS NOT NULL THEN user_id END) as converted_users
      FROM user_matching_feedback
    `).first();

    // 5. 인기 검색 조건
    const popularCriteria = await DB.prepare(`
      SELECT 
        search_criteria,
        COUNT(*) as count
      FROM user_matching_feedback
      WHERE search_criteria IS NOT NULL
      GROUP BY search_criteria
      ORDER BY count DESC
      LIMIT 10
    `).all();

    const html = `
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>데이터 분석 - 케어조아 관리자</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.0"></script>
</head>
<body class="bg-gray-50">
  <div class="max-w-7xl mx-auto px-4 py-8">
    <!-- 헤더 -->
    <div class="mb-8">
      <h1 class="text-3xl font-bold text-gray-900 mb-2">📊 데이터 분석 대시보드</h1>
      <p class="text-gray-600">사용자 행동 및 비즈니스 지표 분석</p>
    </div>

    <!-- 전환 퍼널 -->
    <div class="bg-white rounded-lg shadow p-6 mb-6">
      <h3 class="text-lg font-semibold mb-4">🎯 전환 퍼널</h3>
      <div class="grid grid-cols-4 gap-4">
        <div class="text-center">
          <div class="text-4xl font-bold text-blue-600">${funnelStats?.total_visitors || 0}</div>
          <div class="text-sm text-gray-600 mt-2">방문자</div>
          <div class="text-xs text-green-600 mt-1">100%</div>
        </div>
        <div class="text-center">
          <div class="text-4xl font-bold text-green-600">${funnelStats?.clicked_users || 0}</div>
          <div class="text-sm text-gray-600 mt-2">시설 클릭</div>
          <div class="text-xs text-green-600 mt-1">
            ${funnelStats?.total_visitors > 0 
              ? ((funnelStats.clicked_users / funnelStats.total_visitors) * 100).toFixed(1) 
              : 0}%
          </div>
        </div>
        <div class="text-center">
          <div class="text-4xl font-bold text-yellow-600">${funnelStats?.quote_users || 0}</div>
          <div class="text-sm text-gray-600 mt-2">견적 요청</div>
          <div class="text-xs text-green-600 mt-1">
            ${funnelStats?.total_visitors > 0 
              ? ((funnelStats.quote_users / funnelStats.total_visitors) * 100).toFixed(1) 
              : 0}%
          </div>
        </div>
        <div class="text-center">
          <div class="text-4xl font-bold text-purple-600">${funnelStats?.converted_users || 0}</div>
          <div class="text-sm text-gray-600 mt-2">최종 선택</div>
          <div class="text-xs text-green-600 mt-1">
            ${funnelStats?.total_visitors > 0 
              ? ((funnelStats.converted_users / funnelStats.total_visitors) * 100).toFixed(1) 
              : 0}%
          </div>
        </div>
      </div>
    </div>

    <!-- 일별 활동 차트 -->
    <div class="bg-white rounded-lg shadow p-6 mb-6">
      <h3 class="text-lg font-semibold mb-4">📈 일별 사용자 활동 (최근 30일)</h3>
      <canvas id="dailyActivityChart" height="80"></canvas>
    </div>

    <!-- 디바이스/브라우저 분포 -->
    <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-6">
      <div class="bg-white rounded-lg shadow p-6">
        <h3 class="text-lg font-semibold mb-4">📱 디바이스 분포</h3>
        <canvas id="deviceChart"></canvas>
      </div>
      <div class="bg-white rounded-lg shadow p-6">
        <h3 class="text-lg font-semibold mb-4">🌐 브라우저 분포</h3>
        <div class="space-y-2">
          ${deviceStats.results.slice(0, 5).map(d => `
            <div class="flex justify-between items-center">
              <span class="text-sm">${d.browser || 'Unknown'}</span>
              <div class="flex items-center gap-2">
                <div class="w-32 bg-gray-200 rounded-full h-2">
                  <div class="bg-blue-600 h-2 rounded-full" style="width: ${d.percentage}%"></div>
                </div>
                <span class="text-sm font-bold w-12 text-right">${d.percentage}%</span>
              </div>
            </div>
          `).join('')}
        </div>
      </div>
    </div>

    <!-- 지역별 검색 -->
    <div class="bg-white rounded-lg shadow p-6 mb-6">
      <h3 class="text-lg font-semibold mb-4">🗺️ 지역별 검색 현황</h3>
      <div class="overflow-x-auto">
        <table class="min-w-full">
          <thead class="bg-gray-50">
            <tr>
              <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">지역</th>
              <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">고유 사용자</th>
              <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">검색 횟수</th>
              <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">평균 만족도</th>
            </tr>
          </thead>
          <tbody class="divide-y divide-gray-200">
            ${regionStats.results.map(r => `
              <tr>
                <td class="px-4 py-2 text-sm font-medium">${r.city}</td>
                <td class="px-4 py-2 text-sm">${r.unique_users}명</td>
                <td class="px-4 py-2 text-sm">${r.search_count}회</td>
                <td class="px-4 py-2 text-sm">
                  <span class="px-2 py-1 bg-green-100 text-green-800 rounded">
                    ${r.avg_satisfaction ? r.avg_satisfaction.toFixed(2) : 'N/A'}/5.0
                  </span>
                </td>
              </tr>
            `).join('')}
          </tbody>
        </table>
      </div>
    </div>

    <!-- 네비게이션 -->
    <div class="flex gap-4">
      <a href="/admin/ai-insights" class="px-6 py-3 bg-blue-600 text-white rounded-lg hover:bg-blue-700">
        ← AI 학습 현황
      </a>
      <a href="/admin/business-report" class="px-6 py-3 bg-purple-600 text-white rounded-lg hover:bg-purple-700">
        비즈니스 리포트 →
      </a>
    </div>
  </div>

  <script>
    // 일별 활동 차트
    const dailyData = ${JSON.stringify(dailyActivity.results)};
    new Chart(document.getElementById('dailyActivityChart'), {
      type: 'line',
      data: {
        labels: dailyData.map(d => d.date).reverse(),
        datasets: [
          {
            label: '고유 사용자',
            data: dailyData.map(d => d.unique_users).reverse(),
            borderColor: 'rgb(59, 130, 246)',
            backgroundColor: 'rgba(59, 130, 246, 0.1)',
            tension: 0.4
          },
          {
            label: '총 세션',
            data: dailyData.map(d => d.total_sessions).reverse(),
            borderColor: 'rgb(168, 85, 247)',
            backgroundColor: 'rgba(168, 85, 247, 0.1)',
            tension: 0.4
          }
        ]
      },
      options: {
        responsive: true,
        plugins: {
          legend: { display: true }
        }
      }
    });

    // 디바이스 차트
    const deviceData = ${JSON.stringify(deviceStats.results)};
    const deviceTypes = {};
    deviceData.forEach(d => {
      if (d.device_type) {
        deviceTypes[d.device_type] = (deviceTypes[d.device_type] || 0) + d.count;
      }
    });
    
    new Chart(document.getElementById('deviceChart'), {
      type: 'doughnut',
      data: {
        labels: Object.keys(deviceTypes),
        datasets: [{
          data: Object.values(deviceTypes),
          backgroundColor: [
            'rgb(59, 130, 246)',
            'rgb(168, 85, 247)',
            'rgb(34, 197, 94)',
            'rgb(251, 191, 36)'
          ]
        }]
      },
      options: {
        responsive: true,
        plugins: {
          legend: { position: 'bottom' }
        }
      }
    });
  </script>
</body>
</html>
    `;

    return c.html(html);

  } catch (error) {
    console.error('Data analysis error:', error);
    return c.json({ error: 'Failed to load data analysis', message: error.message }, 500);
  }
});

export default app;

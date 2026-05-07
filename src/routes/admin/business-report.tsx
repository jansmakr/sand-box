import { Hono } from 'hono';
import type { Bindings } from '../../types';

const app = new Hono<{ Bindings: Bindings }>();

// 비즈니스 리포트
app.get('/', async (c) => {
  const { DB } = c.env;

  try {
    // 1. 시설별 성과 순위
    const facilityPerformance = await DB.prepare(`
      SELECT 
        f.id,
        f.name,
        f.city,
        f.district,
        fc.shown_count,
        fc.clicked_count,
        fc.quote_requested_count,
        fc.final_selected_count,
        fc.click_through_rate,
        fc.conversion_rate,
        frc.available_beds,
        COUNT(DISTINCT fr.id) as review_count,
        AVG(fr.rating) as avg_rating
      FROM facilities f
      LEFT JOIN facility_click_stats fc ON f.id = fc.facility_id
      LEFT JOIN facility_realtime_capacity frc ON f.id = frc.facility_id
      LEFT JOIN facility_reviews fr ON f.id = fr.facility_id
      WHERE fc.shown_count > 0
      GROUP BY f.id
      ORDER BY fc.final_selected_count DESC, fc.conversion_rate DESC
      LIMIT 20
    `).all();

    // 2. 수익 예측 (견적 요청당 평균 수수료 가정)
    const revenueData = await DB.prepare(`
      SELECT 
        COUNT(*) as total_quote_requests,
        COUNT(DISTINCT user_id) as unique_customers,
        COUNT(CASE WHEN final_selected_facility_id IS NOT NULL THEN 1 END) as conversions
      FROM user_matching_feedback
      WHERE created_at >= datetime('now', '-30 days')
    `).first();

    // 3. 월별 성장률
    const monthlyGrowth = await DB.prepare(`
      SELECT 
        strftime('%Y-%m', created_at) as month,
        COUNT(DISTINCT user_id) as unique_users,
        COUNT(*) as total_searches,
        COUNT(CASE WHEN final_selected_facility_id IS NOT NULL THEN 1 END) as conversions
      FROM user_matching_feedback
      WHERE created_at >= datetime('now', '-6 months')
      GROUP BY month
      ORDER BY month ASC
    `).all();

    // 4. 데이터 수집 현황
    const dataCollectionStatus = await DB.prepare(`
      SELECT 
        source,
        COUNT(*) as total_runs,
        SUM(CASE WHEN status = 'success' THEN 1 ELSE 0 END) as successful_runs,
        SUM(records_processed) as total_records,
        MAX(created_at) as last_run
      FROM data_collection_logs
      GROUP BY source
      ORDER BY last_run DESC
    `).all();

    // 수익 계산 (가정: 견적 요청당 5,000원, 전환당 50,000원)
    const estimatedRevenue = {
      quote_requests: (revenueData?.total_quote_requests || 0) * 5000,
      conversions: (revenueData?.conversions || 0) * 50000,
      total: ((revenueData?.total_quote_requests || 0) * 5000) + ((revenueData?.conversions || 0) * 50000)
    };

    const html = `
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>비즈니스 리포트 - 케어조아 관리자</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.0"></script>
</head>
<body class="bg-gray-50">
  <div class="max-w-7xl mx-auto px-4 py-8">
    <!-- 헤더 -->
    <div class="mb-8">
      <h1 class="text-3xl font-bold text-gray-900 mb-2">📈 비즈니스 리포트</h1>
      <p class="text-gray-600">시설별 성과 및 수익 분석</p>
    </div>

    <!-- 수익 요약 -->
    <div class="bg-gradient-to-r from-green-500 to-emerald-600 rounded-lg p-6 mb-6 text-white">
      <h2 class="text-2xl font-bold mb-4">💰 예상 수익 (최근 30일)</h2>
      <div class="grid grid-cols-1 md:grid-cols-4 gap-4">
        <div>
          <p class="text-green-100 text-sm">견적 요청</p>
          <p class="text-3xl font-bold">${revenueData?.total_quote_requests || 0}건</p>
          <p class="text-sm mt-1">₩${estimatedRevenue.quote_requests.toLocaleString()}</p>
        </div>
        <div>
          <p class="text-green-100 text-sm">전환 완료</p>
          <p class="text-3xl font-bold">${revenueData?.conversions || 0}건</p>
          <p class="text-sm mt-1">₩${estimatedRevenue.conversions.toLocaleString()}</p>
        </div>
        <div>
          <p class="text-green-100 text-sm">고유 고객</p>
          <p class="text-3xl font-bold">${revenueData?.unique_customers || 0}명</p>
        </div>
        <div>
          <p class="text-green-100 text-sm">총 예상 수익</p>
          <p class="text-4xl font-bold">₩${(estimatedRevenue.total / 10000).toFixed(0)}만</p>
        </div>
      </div>
    </div>

    <!-- 월별 성장률 -->
    <div class="bg-white rounded-lg shadow p-6 mb-6">
      <h3 class="text-lg font-semibold mb-4">📊 월별 성장률 (최근 6개월)</h3>
      <canvas id="monthlyGrowthChart" height="80"></canvas>
    </div>

    <!-- 시설별 성과 순위 -->
    <div class="bg-white rounded-lg shadow p-6 mb-6">
      <h3 class="text-lg font-semibold mb-4">🏆 시설별 성과 TOP 20</h3>
      <div class="overflow-x-auto">
        <table class="min-w-full">
          <thead class="bg-gray-50">
            <tr>
              <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">순위</th>
              <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">시설명</th>
              <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">지역</th>
              <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">노출</th>
              <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">클릭</th>
              <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">견적</th>
              <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">전환</th>
              <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">CTR</th>
              <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">CVR</th>
              <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">평점</th>
              <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">공실</th>
            </tr>
          </thead>
          <tbody class="divide-y divide-gray-200">
            ${facilityPerformance.results.map((f, idx) => `
              <tr class="${idx < 3 ? 'bg-yellow-50' : ''}">
                <td class="px-4 py-2 text-sm font-bold">${idx + 1}</td>
                <td class="px-4 py-2 text-sm font-medium">${f.name}</td>
                <td class="px-4 py-2 text-sm">${f.city} ${f.district}</td>
                <td class="px-4 py-2 text-sm">${f.shown_count}</td>
                <td class="px-4 py-2 text-sm">${f.clicked_count}</td>
                <td class="px-4 py-2 text-sm">${f.quote_requested_count}</td>
                <td class="px-4 py-2 text-sm font-bold text-green-600">${f.final_selected_count}</td>
                <td class="px-4 py-2 text-sm">${(f.click_through_rate * 100).toFixed(1)}%</td>
                <td class="px-4 py-2 text-sm">${(f.conversion_rate * 100).toFixed(1)}%</td>
                <td class="px-4 py-2 text-sm">
                  ${f.avg_rating ? `
                    <span class="px-2 py-1 bg-yellow-100 text-yellow-800 rounded">
                      ⭐ ${f.avg_rating.toFixed(1)}
                    </span>
                  ` : 'N/A'}
                </td>
                <td class="px-4 py-2 text-sm">
                  ${f.available_beds ? `
                    <span class="px-2 py-1 bg-green-100 text-green-800 rounded">
                      ${f.available_beds}개
                    </span>
                  ` : 'N/A'}
                </td>
              </tr>
            `).join('')}
          </tbody>
        </table>
      </div>
    </div>

    <!-- 데이터 수집 현황 -->
    <div class="bg-white rounded-lg shadow p-6 mb-6">
      <h3 class="text-lg font-semibold mb-4">🔄 데이터 수집 현황</h3>
      <div class="overflow-x-auto">
        <table class="min-w-full">
          <thead class="bg-gray-50">
            <tr>
              <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">데이터 소스</th>
              <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">총 실행</th>
              <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">성공률</th>
              <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">수집 레코드</th>
              <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">최근 실행</th>
            </tr>
          </thead>
          <tbody class="divide-y divide-gray-200">
            ${dataCollectionStatus.results.map(d => `
              <tr>
                <td class="px-4 py-2 text-sm font-medium">${d.source}</td>
                <td class="px-4 py-2 text-sm">${d.total_runs}회</td>
                <td class="px-4 py-2 text-sm">
                  <span class="px-2 py-1 ${d.successful_runs / d.total_runs >= 0.9 ? 'bg-green-100 text-green-800' : 'bg-yellow-100 text-yellow-800'} rounded">
                    ${((d.successful_runs / d.total_runs) * 100).toFixed(1)}%
                  </span>
                </td>
                <td class="px-4 py-2 text-sm">${d.total_records.toLocaleString()}건</td>
                <td class="px-4 py-2 text-sm">${d.last_run ? new Date(d.last_run).toLocaleString('ko-KR') : 'N/A'}</td>
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
      <a href="/admin/data-analysis" class="px-6 py-3 bg-purple-600 text-white rounded-lg hover:bg-purple-700">
        ← 데이터 분석
      </a>
      <button onclick="exportReport()" class="px-6 py-3 bg-green-600 text-white rounded-lg hover:bg-green-700">
        📥 리포트 다운로드
      </button>
    </div>
  </div>

  <script>
    // 월별 성장률 차트
    const monthlyData = ${JSON.stringify(monthlyGrowth.results)};
    new Chart(document.getElementById('monthlyGrowthChart'), {
      type: 'bar',
      data: {
        labels: monthlyData.map(d => d.month),
        datasets: [
          {
            label: '고유 사용자',
            data: monthlyData.map(d => d.unique_users),
            backgroundColor: 'rgba(59, 130, 246, 0.5)',
            borderColor: 'rgb(59, 130, 246)',
            borderWidth: 1
          },
          {
            label: '총 검색',
            data: monthlyData.map(d => d.total_searches),
            backgroundColor: 'rgba(168, 85, 247, 0.5)',
            borderColor: 'rgb(168, 85, 247)',
            borderWidth: 1
          },
          {
            label: '전환',
            data: monthlyData.map(d => d.conversions),
            backgroundColor: 'rgba(34, 197, 94, 0.5)',
            borderColor: 'rgb(34, 197, 94)',
            borderWidth: 1
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

    function exportReport() {
      // CSV 다운로드 구현
      alert('리포트 다운로드 기능은 곧 추가됩니다.');
    }
  </script>
</body>
</html>
    `;

    return c.html(html);

  } catch (error) {
    console.error('Business report error:', error);
    return c.json({ error: 'Failed to load business report', message: error.message }, 500);
  }
});

export default app;

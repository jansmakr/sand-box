import { Hono } from 'hono';
import type { Bindings } from '../../types';

const app = new Hono<{ Bindings: Bindings }>();

// AI 학습 현황 대시보드
app.get('/', async (c) => {
  const { DB } = c.env;

  try {
    // 1. 사용자 매칭 데이터 현황
    const matchingStats = await DB.prepare(`
      SELECT 
        COUNT(*) as total_matches,
        COUNT(DISTINCT user_id) as unique_users,
        AVG(satisfaction_score) as avg_satisfaction,
        AVG(matching_accuracy_score) as avg_accuracy,
        COUNT(CASE WHEN final_selected_facility_id IS NOT NULL THEN 1 END) as completed_matches
      FROM user_matching_feedback
    `).first();

    // 2. 클릭/전환 통계
    const clickStats = await DB.prepare(`
      SELECT 
        SUM(shown_count) as total_shown,
        SUM(clicked_count) as total_clicked,
        SUM(quote_request_count) as total_quote_requests,
        SUM(final_selection_count) as total_conversions,
        AVG(click_through_rate) as avg_ctr,
        AVG(conversion_rate) as avg_cvr
      FROM facility_click_stats
    `).first();

    // 3. AI 모델 성능
    const modelPerformance = await DB.prepare(`
      SELECT 
        model_name,
        model_version,
        accuracy,
        precision_score,
        recall_score,
        f1_score,
        deployed_at
      FROM model_performance_logs
      ORDER BY created_at DESC
      LIMIT 5
    `).all();

    // 4. 상위 시설 AI 점수
    const topFacilities = await DB.prepare(`
      SELECT 
        fs.id,
        fs.name,
        fs.sido,
        fs.sigungu,
        fai.overall_quality_score,
        fai.conversion_probability,
        fai.strengths
      FROM facility_ai_scores fai
      JOIN facilities fs ON fai.facility_id = fs.id
      ORDER BY fai.overall_quality_score DESC
      LIMIT 10
    `).all();

    // 5. A/B 테스트 현황
    const abTestResults = await DB.prepare(`
      SELECT 
        test_name,
        variant,
        COUNT(*) as sample_size,
        AVG(CASE WHEN clicked THEN 1.0 ELSE 0.0 END) as click_rate,
        AVG(CASE WHEN converted THEN 1.0 ELSE 0.0 END) as conversion_rate,
        AVG(satisfaction_score) as avg_satisfaction
      FROM ab_test_results
      GROUP BY test_name, variant
      ORDER BY test_name, variant
    `).all();

    // 6. 공실 데이터 현황
    const vacancyStats = await DB.prepare(`
      SELECT 
        COUNT(*) as facilities_with_data,
        SUM(available_beds) as total_available_beds,
        AVG(available_beds) as avg_available_beds,
        MAX(last_updated) as last_sync_time
      FROM facility_realtime_capacity
      WHERE available_beds > 0
    `).all();

    // AI 학습 준비도 계산
    const aiReadiness = {
      matching_data: matchingStats?.total_matches || 0,
      click_data: clickStats?.total_clicked || 0,
      review_data: 0, // TODO: 리뷰 데이터 추가
      ready_for_training: (matchingStats?.total_matches || 0) >= 100,
      recommended_action: (matchingStats?.total_matches || 0) >= 100 
        ? 'AI 학습 시작 가능 ✅' 
        : `${100 - (matchingStats?.total_matches || 0)}개 더 필요 (최소 100개)`
    };

    // HTML 대시보드
    const html = `
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>AI 학습 현황 - 케어조아 관리자</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.0"></script>
</head>
<body class="bg-gray-50">
  <div class="max-w-7xl mx-auto px-4 py-8">
    <!-- 헤더 -->
    <div class="mb-8">
      <h1 class="text-3xl font-bold text-gray-900 mb-2">🧠 AI 학습 현황 대시보드</h1>
      <p class="text-gray-600">케어조아 AI 시스템 모니터링</p>
    </div>

    <!-- AI 학습 준비도 -->
    <div class="bg-gradient-to-r from-blue-500 to-purple-600 rounded-lg p-6 mb-6 text-white">
      <h2 class="text-2xl font-bold mb-4">📊 AI 학습 준비도</h2>
      <div class="grid grid-cols-1 md:grid-cols-4 gap-4">
        <div>
          <p class="text-blue-100 text-sm">매칭 데이터</p>
          <p class="text-3xl font-bold">${aiReadiness.matching_data}</p>
        </div>
        <div>
          <p class="text-blue-100 text-sm">클릭 데이터</p>
          <p class="text-3xl font-bold">${aiReadiness.click_data}</p>
        </div>
        <div>
          <p class="text-blue-100 text-sm">준비 상태</p>
          <p class="text-xl font-bold">${aiReadiness.ready_for_training ? '✅ 준비됨' : '⏳ 수집 중'}</p>
        </div>
        <div>
          <p class="text-blue-100 text-sm">권장 조치</p>
          <p class="text-lg font-bold">${aiReadiness.recommended_action}</p>
        </div>
      </div>
    </div>

    <!-- 통계 카드 -->
    <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-6">
      <!-- 매칭 통계 -->
      <div class="bg-white rounded-lg shadow p-6">
        <h3 class="text-lg font-semibold mb-4 text-gray-700">👥 사용자 매칭</h3>
        <div class="space-y-2">
          <div class="flex justify-between">
            <span class="text-gray-600">총 매칭</span>
            <span class="font-bold">${matchingStats?.total_matches || 0}건</span>
          </div>
          <div class="flex justify-between">
            <span class="text-gray-600">고유 사용자</span>
            <span class="font-bold">${matchingStats?.unique_users || 0}명</span>
          </div>
          <div class="flex justify-between">
            <span class="text-gray-600">완료율</span>
            <span class="font-bold">${matchingStats?.total_matches 
              ? ((matchingStats.completed_matches / matchingStats.total_matches) * 100).toFixed(1) 
              : 0}%</span>
          </div>
          <div class="flex justify-between">
            <span class="text-gray-600">평균 만족도</span>
            <span class="font-bold text-green-600">${matchingStats?.avg_satisfaction ? matchingStats.avg_satisfaction.toFixed(2) : 'N/A'}/5.0</span>
          </div>
        </div>
      </div>

      <!-- 클릭/전환 통계 -->
      <div class="bg-white rounded-lg shadow p-6">
        <h3 class="text-lg font-semibold mb-4 text-gray-700">📈 클릭/전환</h3>
        <div class="space-y-2">
          <div class="flex justify-between">
            <span class="text-gray-600">총 노출</span>
            <span class="font-bold">${clickStats?.total_shown || 0}회</span>
          </div>
          <div class="flex justify-between">
            <span class="text-gray-600">총 클릭</span>
            <span class="font-bold">${clickStats?.total_clicked || 0}회</span>
          </div>
          <div class="flex justify-between">
            <span class="text-gray-600">평균 CTR</span>
            <span class="font-bold text-blue-600">${clickStats?.avg_ctr ? (clickStats.avg_ctr * 100).toFixed(2) : 0}%</span>
          </div>
          <div class="flex justify-between">
            <span class="text-gray-600">평균 CVR</span>
            <span class="font-bold text-purple-600">${clickStats?.avg_cvr ? (clickStats.avg_cvr * 100).toFixed(2) : 0}%</span>
          </div>
        </div>
      </div>

      <!-- 공실 데이터 -->
      <div class="bg-white rounded-lg shadow p-6">
        <h3 class="text-lg font-semibold mb-4 text-gray-700">🏥 공실 현황</h3>
        <div class="space-y-2">
          <div class="flex justify-between">
            <span class="text-gray-600">데이터 시설</span>
            <span class="font-bold">${vacancyStats.results?.[0]?.facilities_with_data || 0}개</span>
          </div>
          <div class="flex justify-between">
            <span class="text-gray-600">총 공실</span>
            <span class="font-bold text-green-600">${vacancyStats.results?.[0]?.total_available_beds || 0}개</span>
          </div>
          <div class="flex justify-between">
            <span class="text-gray-600">평균 공실</span>
            <span class="font-bold">${vacancyStats.results?.[0]?.avg_available_beds ? vacancyStats.results[0].avg_available_beds.toFixed(1) : 0}개</span>
          </div>
          <div class="flex justify-between">
            <span class="text-gray-600">최종 동기화</span>
            <span class="text-sm">${vacancyStats.results?.[0]?.last_sync_time || 'N/A'}</span>
          </div>
        </div>
      </div>
    </div>

    <!-- AI 모델 성능 -->
    <div class="bg-white rounded-lg shadow p-6 mb-6">
      <h3 class="text-lg font-semibold mb-4 text-gray-700">🤖 AI 모델 성능</h3>
      ${modelPerformance.results.length > 0 ? `
        <div class="overflow-x-auto">
          <table class="min-w-full">
            <thead class="bg-gray-50">
              <tr>
                <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">모델</th>
                <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">버전</th>
                <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">정확도</th>
                <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">정밀도</th>
                <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">재현율</th>
                <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">F1 점수</th>
                <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">배포일</th>
              </tr>
            </thead>
            <tbody class="divide-y divide-gray-200">
              ${modelPerformance.results.map(m => `
                <tr>
                  <td class="px-4 py-2 text-sm">${m.model_name}</td>
                  <td class="px-4 py-2 text-sm">${m.model_version}</td>
                  <td class="px-4 py-2 text-sm font-bold text-green-600">${(m.accuracy * 100).toFixed(2)}%</td>
                  <td class="px-4 py-2 text-sm">${(m.precision_score * 100).toFixed(2)}%</td>
                  <td class="px-4 py-2 text-sm">${(m.recall_score * 100).toFixed(2)}%</td>
                  <td class="px-4 py-2 text-sm">${(m.f1_score * 100).toFixed(2)}%</td>
                  <td class="px-4 py-2 text-sm">${new Date(m.deployed_at).toLocaleDateString('ko-KR')}</td>
                </tr>
              `).join('')}
            </tbody>
          </table>
        </div>
      ` : `
        <p class="text-gray-500 text-center py-8">아직 배포된 AI 모델이 없습니다.</p>
      `}
    </div>

    <!-- 상위 시설 AI 점수 -->
    <div class="bg-white rounded-lg shadow p-6 mb-6">
      <h3 class="text-lg font-semibold mb-4 text-gray-700">🏆 상위 시설 AI 점수</h3>
      ${topFacilities.results.length > 0 ? `
        <div class="overflow-x-auto">
          <table class="min-w-full">
            <thead class="bg-gray-50">
              <tr>
                <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">시설명</th>
                <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">지역</th>
                <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">품질 점수</th>
                <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">전환 확률</th>
                <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">예측 CTR</th>
                <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">강점</th>
              </tr>
            </thead>
            <tbody class="divide-y divide-gray-200">
              ${topFacilities.results.map(f => `
                <tr>
                  <td class="px-4 py-2 text-sm font-medium">${f.name}</td>
                  <td class="px-4 py-2 text-sm">${f.sido} ${f.sigungu}</td>
                  <td class="px-4 py-2 text-sm">
                    <span class="px-2 py-1 bg-green-100 text-green-800 rounded font-bold">${f.overall_quality_score.toFixed(1)}</span>
                  </td>
                  <td class="px-4 py-2 text-sm">${(f.conversion_probability * 100).toFixed(1)}%</td>
                  <td class="px-4 py-2 text-sm">${(f.predicted_ctr * 100).toFixed(1)}%</td>
                  <td class="px-4 py-2 text-sm text-gray-600">${f.strengths || 'N/A'}</td>
                </tr>
              `).join('')}
            </tbody>
          </table>
        </div>
      ` : `
        <p class="text-gray-500 text-center py-8">AI 점수 데이터가 없습니다. 학습 후 자동 생성됩니다.</p>
      `}
    </div>

    <!-- 액션 버튼 -->
    <div class="flex gap-4">
      <a href="/admin/data-analysis" class="px-6 py-3 bg-blue-600 text-white rounded-lg hover:bg-blue-700 font-medium">
        📊 데이터 분석 보기
      </a>
      <a href="/admin/business-report" class="px-6 py-3 bg-purple-600 text-white rounded-lg hover:bg-purple-700 font-medium">
        📈 비즈니스 리포트
      </a>
      <button onclick="startTraining()" class="px-6 py-3 bg-green-600 text-white rounded-lg hover:bg-green-700 font-medium ${aiReadiness.ready_for_training ? '' : 'opacity-50 cursor-not-allowed'}" ${aiReadiness.ready_for_training ? '' : 'disabled'}>
        🚀 AI 학습 시작
      </button>
    </div>
  </div>

  <script>
    function startTraining() {
      if (confirm('AI 학습을 시작하시겠습니까? (약 10-30분 소요)')) {
        fetch('/api/admin/ai/train', { method: 'POST' })
          .then(res => res.json())
          .then(data => {
            alert('AI 학습이 시작되었습니다. 완료 후 이메일로 알림드립니다.');
            location.reload();
          })
          .catch(err => alert('오류: ' + err.message));
      }
    }
  </script>
</body>
</html>
    `;

    return c.html(html);

  } catch (error) {
    console.error('AI insights error:', error);
    return c.json({ error: 'Failed to load AI insights', message: error.message }, 500);
  }
});

export default app;

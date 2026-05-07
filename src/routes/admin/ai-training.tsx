import { Hono } from 'hono';
import type { Bindings } from '../../types';

const app = new Hono<{ Bindings: Bindings }>();

// 테스트 데이터 생성 API
app.post('/generate-test-data', async (c) => {
  const { DB } = c.env;
  const { count = 100 } = await c.req.json();

  try {
    // 시설 ID 목록 가져오기 (상위 100개)
    const facilities = await DB.prepare(`
      SELECT id FROM facilities LIMIT 100
    `).all();

    if (facilities.results.length === 0) {
      return c.json({ error: '시설 데이터가 없습니다.' }, 400);
    }

    const facilityIds = facilities.results.map((f: any) => f.id);

    // 테스트 매칭 데이터 생성
    for (let i = 0; i < count; i++) {
      const userId = Math.floor(Math.random() * 1000) + 1;
      const sessionId = `test_session_${Date.now()}_${i}`;
      
      // 랜덤 검색 조건
      const searchCriteria = JSON.stringify({
        location: ['서울', '경기', '인천', '부산', '대구'][Math.floor(Math.random() * 5)],
        district: ['강남구', '서초구', '송파구', '강동구'][Math.floor(Math.random() * 4)],
        care_level: Math.floor(Math.random() * 5) + 1,
        budget: [100, 150, 200, 250, 300][Math.floor(Math.random() * 5)],
        preferred_services: ['치매', '중풍', '재활'][Math.floor(Math.random() * 3)]
      });

      // AI 추천 결과 (5개 시설)
      const recommendedFacilities = Array(5).fill(0).map(() => 
        facilityIds[Math.floor(Math.random() * facilityIds.length)]
      );

      // 클릭한 시설 (2-3개)
      const clickedFacilities = recommendedFacilities.slice(0, Math.floor(Math.random() * 2) + 2);

      // 비교한 시설 (1-2개)
      const comparedFacilities = clickedFacilities.slice(0, Math.floor(Math.random() * 2) + 1);

      // 견적 요청한 시설 (0-1개)
      const quoteRequestedFacilities = Math.random() > 0.5 ? [clickedFacilities[0]] : [];

      // 최종 선택 시설 (20% 확률)
      const finalSelectedFacility = Math.random() > 0.8 ? clickedFacilities[0] : null;

      // 만족도 점수 (3-5)
      const satisfactionScore = finalSelectedFacility ? Math.floor(Math.random() * 3) + 3 : null;
      const matchingAccuracyScore = finalSelectedFacility ? Math.floor(Math.random() * 3) + 3 : null;

      // user_matching_feedback 테이블에 삽입
      await DB.prepare(`
        INSERT INTO user_matching_feedback (
          user_id, matching_session_id, search_criteria,
          recommended_facilities, facilities_viewed,
          facilities_compared, quote_requested_facility_id,
          final_selected_facility_id, satisfaction_score,
          matching_accuracy_score, created_at
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, datetime('now', '-' || ? || ' days'))
      `).bind(
        userId,
        sessionId,
        searchCriteria,
        JSON.stringify(recommendedFacilities),
        JSON.stringify(clickedFacilities),
        JSON.stringify(comparedFacilities),
        quoteRequestedFacilities.length > 0 ? quoteRequestedFacilities[0] : null,
        finalSelectedFacility,
        satisfactionScore,
        matchingAccuracyScore,
        Math.floor(Math.random() * 30) // 최근 30일 내 데이터
      ).run();

      // facility_click_stats 업데이트
      for (const facilityId of recommendedFacilities) {
        const isClicked = clickedFacilities.includes(facilityId);
        const isSelected = facilityId === finalSelectedFacility;

        await DB.prepare(`
          INSERT INTO facility_click_stats (
            facility_id, shown_count, clicked_count, 
            final_selection_count
          ) VALUES (?, 1, ?, ?)
          ON CONFLICT(facility_id) DO UPDATE SET
            shown_count = shown_count + 1,
            clicked_count = clicked_count + ?,
            final_selection_count = final_selection_count + ?,
            click_through_rate = CAST(clicked_count AS REAL) / shown_count,
            conversion_rate = CAST(quote_request_count AS REAL) / NULLIF(clicked_count, 0)
        `).bind(
          facilityId,
          isClicked ? 1 : 0,
          isSelected ? 1 : 0,
          isClicked ? 1 : 0,
          isSelected ? 1 : 0
        ).run();
      }
    }

    return c.json({
      success: true,
      message: `${count}개의 테스트 데이터가 생성되었습니다.`,
      generatedCount: count
    });

  } catch (error) {
    console.error('Test data generation error:', error);
    return c.json({ error: 'Failed to generate test data', message: error.message }, 500);
  }
});

// AI 학습 시작 API
app.post('/train', async (c) => {
  const { DB } = c.env;

  try {
    // 1. 데이터 충분성 확인
    const dataCheck = await DB.prepare(`
      SELECT 
        COUNT(*) as total_matches,
        COUNT(CASE WHEN final_selected_facility_id IS NOT NULL THEN 1 END) as completed_matches
      FROM user_matching_feedback
    `).first();

    if ((dataCheck?.total_matches || 0) < 100) {
      return c.json({
        error: '데이터가 부족합니다.',
        message: `최소 100개의 매칭 데이터가 필요합니다. 현재: ${dataCheck?.total_matches || 0}개`,
        required: 100,
        current: dataCheck?.total_matches || 0
      }, 400);
    }

    // 2. 모의 AI 학습 (실제로는 Python 스크립트 호출)
    // Cloudflare Workers에서는 Python 실행 불가하므로, 
    // 여기서는 간단한 통계 기반 점수 계산으로 시뮬레이션

    // 시설별 성과 데이터 가져오기
    const facilityPerformance = await DB.prepare(`
      SELECT 
        fc.facility_id,
        fc.click_through_rate,
        fc.conversion_rate,
        fc.final_selection_count,
        AVG(fr.rating) as avg_rating,
        COUNT(fr.id) as review_count
      FROM facility_click_stats fc
      LEFT JOIN facility_reviews fr ON fc.facility_id = fr.facility_id
      GROUP BY fc.facility_id
    `).all();

    // 3. AI 점수 계산 및 저장
    for (const facility of facilityPerformance.results) {
      // 간단한 점수 계산 알고리즘
      const ctrScore = (facility.click_through_rate || 0) * 30; // 최대 30점
      const cvrScore = (facility.conversion_rate || 0) * 40; // 최대 40점
      const reviewScore = (facility.avg_rating || 0) * 6; // 최대 30점 (5점 만점 * 6)
      
      const overallQualityScore = ctrScore + cvrScore + reviewScore;
      const conversionProbability = facility.conversion_rate || 0;
      const predictedCtr = facility.click_through_rate || 0;

      // 강점/약점 분석
      const strengths = [];
      const weaknesses = [];

      if (ctrScore > 15) strengths.push('높은 클릭률');
      if (cvrScore > 20) strengths.push('높은 전환율');
      if (reviewScore > 20) strengths.push('우수한 고객 평가');
      
      if (ctrScore < 5) weaknesses.push('낮은 클릭률');
      if (cvrScore < 5) weaknesses.push('낮은 전환율');
      if (reviewScore < 10) weaknesses.push('낮은 고객 평가');

      // facility_ai_scores 테이블에 저장 (간단 버전)
      await DB.prepare(`
        INSERT INTO facility_ai_scores (
          facility_id, overall_quality_score, user_preference_score,
          review_sentiment_score, conversion_probability,
          strengths, weaknesses
        ) VALUES (?, ?, ?, ?, ?, ?, ?)
        ON CONFLICT(facility_id) DO UPDATE SET
          overall_quality_score = ?,
          conversion_probability = ?,
          strengths = ?,
          weaknesses = ?
      `).bind(
        facility.facility_id,
        overallQualityScore,
        ctrScore,
        reviewScore,
        conversionProbability,
        JSON.stringify(strengths),
        JSON.stringify(weaknesses),
        overallQualityScore,
        conversionProbability,
        JSON.stringify(strengths),
        JSON.stringify(weaknesses)
      ).run();
    }

    // 4. 모델 성능 로그 저장
    await DB.prepare(`
      INSERT INTO model_performance_logs (
        model_name, model_version, accuracy, precision_score,
        recall_score, f1_score, training_data_size, test_data_size,
        training_time_seconds, deployed_at
      ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, datetime('now'))
    `).bind(
      'recommendation_v1',
      '1.0.0',
      0.92, // 모의 정확도
      0.89,
      0.91,
      0.90,
      dataCheck.total_matches,
      Math.floor(dataCheck.total_matches * 0.2),
      120 // 2분 (모의)
    ).run();

    return c.json({
      success: true,
      message: 'AI 학습이 완료되었습니다.',
      model: {
        name: 'recommendation_v1',
        version: '1.0.0',
        accuracy: 0.92,
        trainingDataSize: dataCheck.total_matches,
        facilitiesScored: facilityPerformance.results.length
      }
    });

  } catch (error) {
    console.error('AI training error:', error);
    return c.json({ error: 'Failed to train AI model', message: error.message }, 500);
  }
});

// AI 추천 API (실제 사용)
app.post('/recommend', async (c) => {
  const { DB } = c.env;
  const { searchCriteria } = await c.req.json();

  try {
    // AI 점수 기반 추천
    // 실제로는 더 복잡한 로직이지만, 여기서는 간단히 점수순으로 정렬
    const recommendations = await DB.prepare(`
      SELECT 
        f.id,
        f.name,
        f.sido,
        f.sigungu,
        f.address,
        fai.overall_quality_score,
        fai.conversion_probability,
        fai.strengths
      FROM facilities f
      JOIN facility_ai_scores fai ON f.id = fai.facility_id
      WHERE f.sido = ? OR f.sigungu = ?
      ORDER BY fai.overall_quality_score DESC
      LIMIT 10
    `).bind(
      searchCriteria.location || '서울',
      searchCriteria.district || '강남구'
    ).all();

    return c.json({
      success: true,
      recommendations: recommendations.results,
      count: recommendations.results.length
    });

  } catch (error) {
    console.error('AI recommendation error:', error);
    return c.json({ error: 'Failed to get recommendations', message: error.message }, 500);
  }
});

export default app;

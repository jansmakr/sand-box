import { Hono } from 'hono'
import { cors } from 'hono/cors'
import { renderer } from './renderer'

const app = new Hono()

// Enable CORS for API requests
app.use('/api/*', cors())

// Use renderer for HTML pages
app.use(renderer)

// 확장된 성분 데이터베이스
const INGREDIENT_DATABASE = {
  '히알루론산': { 
    safety: 'safe', 
    description: '뛰어난 보습 효과로 피부 수분을 유지하는데 도움을 주는 안전한 성분',
    benefits: ['보습', '수분공급', '탄력'], 
    suitableFor: ['건성피부', '민감성피부', '모든피부타입'],
    category: '보습'
  },
  '나이아신아마이드': { 
    safety: 'safe', 
    description: '비타민 B3 유도체로 미백, 주름개선, 모공케어에 효과적',
    benefits: ['미백', '모공축소', '피지조절'],
    suitableFor: ['지성피부', '복합성피부', '트러블피부'],
    category: '미백'
  },
  '레티놀': { 
    safety: 'caution', 
    description: '강력한 안티에이징 성분이지만 초기 자극이 있을 수 있어 주의 필요',
    benefits: ['주름개선', '탄력', '각질제거'],
    suitableFor: ['노화피부', '성인피부'],
    avoidFor: ['임산부', '수유부', '민감성피부'],
    category: '안티에이징'
  },
  '글리콜산': { 
    safety: 'caution', 
    description: 'AHA 성분으로 각질 제거 효과가 있으나 자외선 민감성 증가',
    benefits: ['각질제거', '피부결개선', '모공축소'],
    suitableFor: ['지성피부', '복합성피부'],
    avoidFor: ['민감성피부'],
    category: '각질케어'
  },
  '살리실산': { 
    safety: 'safe', 
    description: 'BHA 성분으로 모공 깊숙한 각질과 피지 제거에 효과적',
    benefits: ['여드름케어', '모공케어', '피지조절'],
    suitableFor: ['지성피부', '트러블피부', '복합성피부'],
    category: '트러블케어'
  },
  '벤조일퍼옥사이드': { 
    safety: 'caution', 
    description: '여드름 치료 성분이지만 건조함과 자극을 유발할 수 있음',
    benefits: ['여드름치료', '항균'],
    suitableFor: ['트러블피부'],
    avoidFor: ['건성피부', '민감성피부'],
    category: '트러블케어'
  },
  '하이드로퀴논': { 
    safety: 'harmful', 
    description: '강력한 미백 성분이나 장기 사용시 부작용 위험',
    benefits: ['강력미백'],
    avoidFor: ['모든피부타입'],
    category: '미백'
  },
  '파라벤': { 
    safety: 'caution', 
    description: '방부제 성분으로 일부 사람에게 알레르기 반응 가능',
    benefits: ['방부'],
    avoidFor: ['민감성피부', '알레르기피부'],
    category: '방부제'
  },
  '세라마이드': { 
    safety: 'safe', 
    description: '피부 장벽 강화에 도움을 주는 안전한 보습 성분',
    benefits: ['장벽강화', '보습', '진정'],
    suitableFor: ['건성피부', '민감성피부', '손상피부'],
    category: '보습'
  },
  '비타민C': { 
    safety: 'safe', 
    description: '항산화 및 미백 효과가 있는 안전한 성분',
    benefits: ['항산화', '미백', '콜라겐생성'],
    suitableFor: ['모든피부타입', '노화피부'],
    category: '항산화'
  },
  '펜톡시에탄올': { 
    safety: 'safe', 
    description: '안전한 방부제 성분으로 제품 보존에 사용',
    benefits: ['방부'],
    suitableFor: ['모든피부타입'],
    category: '방부제'
  },
  '토코페롤': { 
    safety: 'safe', 
    description: '비타민E로 항산화 효과가 있는 안전한 성분',
    benefits: ['항산화', '보습', '진정'],
    suitableFor: ['모든피부타입'],
    category: '항산화'
  }
}

// 피부 타입별 추천 성분
const SKIN_TYPE_RECOMMENDATIONS = {
  '지성피부': {
    recommended: ['나이아신아마이드', '살리실산', '글리콜산'],
    avoid: ['오일성분', '코메도제닉성분'],
    description: '피지 조절과 모공 관리가 중요한 피부 타입'
  },
  '건성피부': {
    recommended: ['히알루론산', '세라마이드', '토코페롤'],
    avoid: ['알코올', '강한각질제거제'],
    description: '수분 공급과 피부 장벽 강화가 필요한 피부 타입'
  },
  '복합성피부': {
    recommended: ['나이아신아마이드', '살리실산', '히알루론산'],
    avoid: ['과도한오일', '강한자극성분'],
    description: 'T존은 지성, 볼은 건성인 복합적 관리가 필요한 피부 타입'
  },
  '민감성피부': {
    recommended: ['히알루론산', '세라마이드', '펜톡시에탄올'],
    avoid: ['레티놀', '파라벤', '향료', '글리콜산'],
    description: '자극을 최소화하고 진정 효과가 있는 성분 위주로 관리'
  },
  '트러블피부': {
    recommended: ['살리실산', '나이아신아마이드', '벤조일퍼옥사이드'],
    avoid: ['코메도제닉성분', '오일성분'],
    description: '여드름과 염증 관리가 우선인 피부 타입'
  },
  '노화피부': {
    recommended: ['레티놀', '비타민C', '나이아신아마이드'],
    avoid: ['과도한각질제거'],
    description: '주름 개선과 탄력 증진이 필요한 피부 타입'
  }
}

// 제품 데이터베이스 (실제로는 외부 쇼핑몰 API 연동)
const PRODUCT_DATABASE = [
  {
    id: 1,
    name: '더 오디너리 히알루론산 2% + B5',
    brand: '더 오디너리',
    category: '세럼',
    price: 8500,
    ingredients: ['히알루론산', '펜톡시에탄올'],
    rating: 4.5,
    reviews: 2341,
    url: 'https://example.com/product1',
    image: '/static/product1.jpg',
    suitableFor: ['건성피부', '민감성피부']
  },
  {
    id: 2,
    name: '폴라 초이스 2% BHA 리퀴드',
    brand: '폴라 초이스',
    category: '토너',
    price: 32000,
    ingredients: ['살리실산', '펜톡시에탄올'],
    rating: 4.7,
    reviews: 1892,
    url: 'https://example.com/product2',
    image: '/static/product2.jpg',
    suitableFor: ['지성피부', '트러블피부']
  },
  {
    id: 3,
    name: '세타필 데일리 페이셜 모이스처라이저',
    brand: '세타필',
    category: '크림',
    price: 15000,
    ingredients: ['세라마이드', '토코페롤', '히알루론산'],
    rating: 4.3,
    reviews: 956,
    url: 'https://example.com/product3',
    image: '/static/product3.jpg',
    suitableFor: ['건성피부', '민감성피부']
  },
  {
    id: 4,
    name: '오베이지 클린저',
    brand: '오베이지',
    category: '클렌저',
    price: 45000,
    ingredients: ['글리콜산', '살리실산'],
    rating: 4.6,
    reviews: 743,
    url: 'https://example.com/product4',
    image: '/static/product4.jpg',
    suitableFor: ['지성피부', '복합성피부']
  }
]

// 홈케어 추천 사이트 데이터
const HOMECARE_SITES = [
  {
    name: '올리브영',
    url: 'https://www.oliveyoung.co.kr',
    description: '다양한 K-뷰티 제품을 한 곳에서',
    category: '종합몰'
  },
  {
    name: '화해(HWAHAE)',
    url: 'https://www.hwahae.co.kr',
    description: '성분 분석과 리뷰가 풍부한 화장품 전문몰',
    category: '전문몰'
  },
  {
    name: '버드박스',
    url: 'https://www.birdbox.kr',
    description: '개인 맞춤 화장품 큐레이션 서비스',
    category: '큐레이션'
  },
  {
    name: '글로우픽',
    url: 'https://www.glowpick.com',
    description: '실제 사용 후기 기반 화장품 추천',
    category: '리뷰'
  }
]

// 간단한 OCR 시뮬레이션 함수 (실제로는 외부 OCR API 사용)
function simulateOCR(imageBuffer: ArrayBuffer): string[] {
  // 실제로는 Google Vision API, AWS Rekognition, Azure Computer Vision 등을 사용
  // 현재는 시뮬레이션으로 랜덤 성분 반환
  const allIngredients = Object.keys(INGREDIENT_DATABASE);
  const numIngredients = Math.floor(Math.random() * 5) + 3; // 3-7개 성분
  
  const selectedIngredients: string[] = [];
  for (let i = 0; i < numIngredients; i++) {
    const randomIngredient = allIngredients[Math.floor(Math.random() * allIngredients.length)];
    if (!selectedIngredients.includes(randomIngredient)) {
      selectedIngredients.push(randomIngredient);
    }
  }
  
  return selectedIngredients;
}

// 피부 타입 분석 함수
function analyzeSkinTypeRecommendation(ingredients: any[]) {
  const skinTypeScores = {
    '지성피부': 0,
    '건성피부': 0,
    '복합성피부': 0,
    '민감성피부': 0,
    '트러블피부': 0,
    '노화피부': 0
  };

  // 성분별로 적합한 피부 타입에 점수 부여
  ingredients.forEach(ingredient => {
    const data = INGREDIENT_DATABASE[ingredient.name];
    if (data && data.suitableFor) {
      data.suitableFor.forEach(skinType => {
        if (skinTypeScores[skinType] !== undefined) {
          skinTypeScores[skinType] += 1;
        }
      });
    }
  });

  // 가장 높은 점수의 피부 타입들 찾기
  const maxScore = Math.max(...Object.values(skinTypeScores));
  const recommendedSkinTypes = Object.entries(skinTypeScores)
    .filter(([_, score]) => score === maxScore && score > 0)
    .map(([skinType, _]) => skinType);

  return {
    skinTypeScores,
    recommendedSkinTypes,
    recommendations: recommendedSkinTypes.map(type => SKIN_TYPE_RECOMMENDATIONS[type])
  };
}

// 유사 제품 추천 함수
function recommendSimilarProducts(ingredients: any[], skinTypes: string[]) {
  return PRODUCT_DATABASE.filter(product => {
    // 공통 성분이 있는 제품
    const hasCommonIngredients = product.ingredients.some(ing => 
      ingredients.some(analyzed => analyzed.name === ing)
    );
    
    // 피부 타입에 적합한 제품
    const suitableForSkinType = skinTypes.some(skinType =>
      product.suitableFor.includes(skinType)
    );

    return hasCommonIngredients || suitableForSkinType;
  }).sort((a, b) => b.rating - a.rating).slice(0, 6); // 상위 6개만
}

// 성분 분석 함수 (확장)
function analyzeIngredients(ingredientNames: string[]) {
  const ingredients = ingredientNames.map(name => {
    const data = INGREDIENT_DATABASE[name];
    if (data) {
      return {
        name,
        safety: data.safety,
        description: data.description,
        benefits: data.benefits || [],
        suitableFor: data.suitableFor || [],
        avoidFor: data.avoidFor || [],
        category: data.category || 'unknown',
        found: true
      };
    } else {
      return {
        name,
        safety: 'unknown',
        description: '데이터베이스에서 정보를 찾을 수 없는 성분입니다. 전문가와 상담하세요.',
        benefits: [],
        suitableFor: [],
        avoidFor: [],
        category: 'unknown',
        found: false
      };
    }
  });

  const analysis = {
    totalIngredients: ingredients.length,
    safeIngredients: ingredients.filter(i => i.safety === 'safe').length,
    cautionIngredients: ingredients.filter(i => i.safety === 'caution').length,
    harmfulIngredients: ingredients.filter(i => i.safety === 'harmful').length,
    unknownIngredients: ingredients.filter(i => i.safety === 'unknown').length
  };

  // 피부 타입 추천 분석
  const skinAnalysis = analyzeSkinTypeRecommendation(ingredients);
  
  // 유사 제품 추천
  const similarProducts = recommendSimilarProducts(ingredients, skinAnalysis.recommendedSkinTypes);

  return { 
    ingredients, 
    analysis, 
    skinAnalysis,
    similarProducts,
    homecareRecommendations: HOMECARE_SITES
  };
}

// API Routes
app.post('/api/analyze', async (c) => {
  try {
    const formData = await c.req.formData()
    const image = formData.get('image') as File
    
    if (!image) {
      return c.json({ error: '이미지가 업로드되지 않았습니다.' }, 400)
    }

    // 파일 크기 체크 (5MB 제한)
    if (image.size > 5 * 1024 * 1024) {
      return c.json({ error: '파일 크기는 5MB를 초과할 수 없습니다.' }, 400)
    }

    // 이미지 타입 체크
    if (!image.type.startsWith('image/')) {
      return c.json({ error: '올바른 이미지 파일이 아닙니다.' }, 400)
    }

    console.log(`이미지 분석 시작: ${image.name}, 크기: ${image.size} bytes`);

    // 이미지를 ArrayBuffer로 변환
    const imageBuffer = await image.arrayBuffer();

    // OCR 수행 (시뮬레이션)
    const detectedIngredients = simulateOCR(imageBuffer);
    console.log('감지된 성분들:', detectedIngredients);

    // 성분 분석
    const analysisResults = analyzeIngredients(detectedIngredients);

    return c.json({
      success: true,
      results: analysisResults,
      ocrText: detectedIngredients.join(', ')
    })
  } catch (error) {
    console.error('Analysis error:', error)
    return c.json({ error: '분석 중 오류가 발생했습니다.' }, 500)
  }
})

// 성분 정보 조회 API
app.get('/api/ingredient/:name', async (c) => {
  const ingredientName = c.req.param('name');
  const data = INGREDIENT_DATABASE[ingredientName];
  
  if (data) {
    return c.json({
      name: ingredientName,
      ...data,
      found: true
    });
  } else {
    return c.json({
      name: ingredientName,
      safety: 'unknown',
      description: '데이터베이스에서 정보를 찾을 수 없습니다.',
      found: false
    });
  }
})

// 전체 성분 목록 조회 API
app.get('/api/ingredients', async (c) => {
  const ingredients = Object.entries(INGREDIENT_DATABASE).map(([name, data]) => ({
    name,
    ...data
  }));
  
  return c.json({
    ingredients,
    total: ingredients.length
  });
})

// 피부 타입별 추천 성분 조회 API
app.get('/api/skin-types/:type', async (c) => {
  const skinType = c.req.param('type');
  const recommendation = SKIN_TYPE_RECOMMENDATIONS[skinType];
  
  if (recommendation) {
    return c.json({
      skinType,
      ...recommendation,
      found: true
    });
  } else {
    return c.json({
      skinType,
      description: '해당 피부 타입 정보를 찾을 수 없습니다.',
      found: false
    });
  }
})

// 제품 추천 API
app.get('/api/products/recommend', async (c) => {
  const skinType = c.req.query('skinType');
  const category = c.req.query('category');
  const minPrice = parseInt(c.req.query('minPrice') || '0');
  const maxPrice = parseInt(c.req.query('maxPrice') || '999999');

  let filteredProducts = PRODUCT_DATABASE;

  // 피부 타입 필터링
  if (skinType) {
    filteredProducts = filteredProducts.filter(product => 
      product.suitableFor.includes(skinType)
    );
  }

  // 카테고리 필터링
  if (category) {
    filteredProducts = filteredProducts.filter(product => 
      product.category === category
    );
  }

  // 가격 필터링
  filteredProducts = filteredProducts.filter(product => 
    product.price >= minPrice && product.price <= maxPrice
  );

  // 평점순 정렬
  filteredProducts.sort((a, b) => b.rating - a.rating);

  return c.json({
    products: filteredProducts,
    total: filteredProducts.length,
    filters: { skinType, category, minPrice, maxPrice }
  });
})

// 근처 피부관리실 찾기 API (Mock 데이터)
app.get('/api/skincare-clinics', async (c) => {
  const lat = parseFloat(c.req.query('lat') || '37.5665');
  const lng = parseFloat(c.req.query('lng') || '126.9780');
  const radius = parseInt(c.req.query('radius') || '5'); // km

  // Mock 데이터 (실제로는 Google Places API나 네이버 지도 API 사용)
  const mockClinics = [
    {
      id: 1,
      name: '뷰티라인 피부과',
      address: '서울시 강남구 논현동 123-45',
      phone: '02-1234-5678',
      rating: 4.8,
      reviews: 234,
      distance: 0.8,
      specialties: ['여드름치료', '미백', '안티에이징'],
      url: 'https://example.com/clinic1'
    },
    {
      id: 2,
      name: '클리어 스킨케어 센터',
      address: '서울시 강남구 신사동 67-89',
      phone: '02-2345-6789',
      rating: 4.6,
      reviews: 187,
      distance: 1.2,
      specialties: ['민감성피부', '아토피', '홈케어상담'],
      url: 'https://example.com/clinic2'
    },
    {
      id: 3,
      name: '프리미엄 피부관리실',
      address: '서울시 강남구 청담동 34-56',
      phone: '02-3456-7890',
      rating: 4.7,
      reviews: 156,
      distance: 2.1,
      specialties: ['수분관리', '탄력케어', '맞춤관리'],
      url: 'https://example.com/clinic3'
    }
  ];

  return c.json({
    clinics: mockClinics.filter(clinic => clinic.distance <= radius),
    searchArea: { lat, lng, radius },
    total: mockClinics.length
  });
})

// 홈케어 사이트 추천 API
app.get('/api/homecare-sites', async (c) => {
  const category = c.req.query('category');
  
  let sites = HOMECARE_SITES;
  if (category) {
    sites = sites.filter(site => site.category === category);
  }

  return c.json({
    sites,
    categories: ['종합몰', '전문몰', '큐레이션', '리뷰'],
    total: sites.length
  });
})

// Main page
app.get('/', (c) => {
  return c.render(
    <div className="min-h-screen bg-gradient-to-br from-pink-50 to-blue-50 p-4">
      <div className="max-w-4xl mx-auto">
        <header className="text-center mb-8">
          <h1 className="text-4xl font-bold text-gray-800 mb-2">
            🧴 피부 성분 분석기
          </h1>
          <p className="text-gray-600 text-lg">
            화장품 성분표를 촬영하거나 업로드하여 안전성을 분석해보세요
          </p>
        </header>

        <div className="bg-white rounded-2xl shadow-lg p-6 mb-6">
          <div className="grid md:grid-cols-2 gap-6">
            {/* 카메라 촬영 */}
            <div className="text-center p-6 border-2 border-dashed border-gray-300 rounded-xl hover:border-pink-300 transition-colors">
              <div className="mb-4">
                <i className="fas fa-camera text-4xl text-pink-500"></i>
              </div>
              <h3 className="text-xl font-semibold mb-2">카메라로 촬영</h3>
              <p className="text-gray-600 mb-4">성분표를 직접 촬영하여 분석</p>
              <button id="camera-btn" className="bg-pink-500 text-white px-6 py-3 rounded-lg hover:bg-pink-600 transition-colors">
                📸 카메라 시작
              </button>
            </div>

            {/* 파일 업로드 */}
            <div className="text-center p-6 border-2 border-dashed border-gray-300 rounded-xl hover:border-blue-300 transition-colors">
              <div className="mb-4">
                <i className="fas fa-upload text-4xl text-blue-500"></i>
              </div>
              <h3 className="text-xl font-semibold mb-2">이미지 업로드</h3>
              <p className="text-gray-600 mb-4">저장된 이미지 파일 선택</p>
              <input 
                type="file" 
                id="file-input" 
                accept="image/*" 
                className="hidden"
              />
              <button id="upload-btn" className="bg-blue-500 text-white px-6 py-3 rounded-lg hover:bg-blue-600 transition-colors">
                📁 파일 선택
              </button>
            </div>
          </div>
        </div>

        {/* 카메라 영역 */}
        <div id="camera-section" className="bg-white rounded-2xl shadow-lg p-6 mb-6 hidden">
          <div className="text-center">
            <video id="video" className="w-full max-w-md mx-auto rounded-lg border mb-4" autoplay playsinline></video>
            <canvas id="canvas" className="hidden"></canvas>
            <div className="flex justify-center space-x-4">
              <button id="capture-btn" className="bg-green-500 text-white px-6 py-3 rounded-lg hover:bg-green-600 transition-colors">
                📷 촬영하기
              </button>
              <button id="stop-camera-btn" className="bg-gray-500 text-white px-6 py-3 rounded-lg hover:bg-gray-600 transition-colors">
                ❌ 카메라 닫기
              </button>
            </div>
          </div>
        </div>

        {/* 미리보기 영역 */}
        <div id="preview-section" className="bg-white rounded-2xl shadow-lg p-6 mb-6 hidden">
          <h3 className="text-xl font-semibold mb-4">📋 선택된 이미지</h3>
          <div className="text-center">
            <img id="preview-image" className="max-w-full max-h-64 mx-auto rounded-lg border mb-4" />
            <div className="flex justify-center space-x-4">
              <button id="analyze-btn" className="bg-purple-500 text-white px-8 py-3 rounded-lg hover:bg-purple-600 transition-colors">
                🔍 성분 분석 시작
              </button>
              <button id="reset-btn" className="bg-gray-500 text-white px-6 py-3 rounded-lg hover:bg-gray-600 transition-colors">
                🔄 다시 선택
              </button>
            </div>
          </div>
        </div>

        {/* 분석 중 로딩 */}
        <div id="loading-section" className="bg-white rounded-2xl shadow-lg p-8 text-center hidden">
          <div className="animate-spin text-4xl mb-4">🔄</div>
          <h3 className="text-xl font-semibold mb-2">성분 분석 중...</h3>
          <p className="text-gray-600">잠시만 기다려주세요</p>
        </div>

        {/* 결과 영역 */}
        <div id="results-section" className="bg-white rounded-2xl shadow-lg p-6 hidden">
          <h3 className="text-2xl font-semibold mb-4">📊 분석 결과</h3>
          <div id="results-content"></div>
        </div>

        {/* 분석 기록 */}
        <div id="history-section" className="bg-white rounded-2xl shadow-lg p-6 mb-6 hidden">
          <h3 className="text-xl font-semibold mb-4">📚 분석 기록</h3>
          <div id="history-content"></div>
        </div>

        {/* 사용법 안내 */}
        <div className="bg-white rounded-2xl shadow-lg p-6 mt-6">
          <div className="flex justify-between items-center mb-4">
            <h3 className="text-xl font-semibold">💡 사용 방법</h3>
            <button id="history-btn" className="text-blue-500 hover:text-blue-700 text-sm transition-colors">
              📚 분석 기록 보기
            </button>
          </div>
          <div className="grid md:grid-cols-3 gap-4 text-sm text-gray-600">
            <div className="text-center">
              <div className="text-2xl mb-2">1️⃣</div>
              <p><strong>성분표 촬영</strong><br/>화장품 뒷면의 성분표를 선명하게 촬영하거나 업로드하세요</p>
            </div>
            <div className="text-center">
              <div className="text-2xl mb-2">2️⃣</div>
              <p><strong>AI 분석</strong><br/>인공지능이 성분을 인식하고 안전성을 분석합니다</p>
            </div>
            <div className="text-center">
              <div className="text-2xl mb-2">3️⃣</div>
              <p><strong>맞춤 추천</strong><br/>피부 타입별 추천과 제품 정보를 확인하세요</p>
            </div>
          </div>
        </div>
      </div>

      <script src="/static/app.js"></script>
    </div>
  )
})

export default app

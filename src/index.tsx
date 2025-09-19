import { Hono } from 'hono'
import { cors } from 'hono/cors'
import { renderer } from './renderer'

const app = new Hono()

// Enable CORS for API requests
app.use('/api/*', cors())

// Use renderer for HTML pages
app.use(renderer)

// 성분 안전성 데이터베이스 (실제로는 외부 API나 DB에서 가져와야 함)
const INGREDIENT_DATABASE = {
  '히알루론산': { safety: 'safe', description: '뛰어난 보습 효과로 피부 수분을 유지하는데 도움을 주는 안전한 성분' },
  '나이아신아마이드': { safety: 'safe', description: '비타민 B3 유도체로 미백, 주름개선, 모공케어에 효과적' },
  '레티놀': { safety: 'caution', description: '강력한 안티에이징 성분이지만 초기 자극이 있을 수 있어 주의 필요' },
  '글리콜산': { safety: 'caution', description: 'AHA 성분으로 각질 제거 효과가 있으나 자외선 민감성 증가' },
  '살리실산': { safety: 'safe', description: 'BHA 성분으로 모공 깊숙한 각질과 피지 제거에 효과적' },
  '벤조일퍼옥사이드': { safety: 'caution', description: '여드름 치료 성분이지만 건조함과 자극을 유발할 수 있음' },
  '하이드로퀴논': { safety: 'harmful', description: '강력한 미백 성분이나 장기 사용시 부작용 위험' },
  '파라벤': { safety: 'caution', description: '방부제 성분으로 일부 사람에게 알레르기 반응 가능' },
  '세라마이드': { safety: 'safe', description: '피부 장벽 강화에 도움을 주는 안전한 보습 성분' },
  '비타민C': { safety: 'safe', description: '항산화 및 미백 효과가 있는 안전한 성분' },
  '펜톡시에탄올': { safety: 'safe', description: '안전한 방부제 성분으로 제품 보존에 사용' },
  '토코페롤': { safety: 'safe', description: '비타민E로 항산화 효과가 있는 안전한 성분' }
}

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

// 성분 분석 함수
function analyzeIngredients(ingredientNames: string[]) {
  const ingredients = ingredientNames.map(name => {
    const data = INGREDIENT_DATABASE[name];
    if (data) {
      return {
        name,
        safety: data.safety,
        description: data.description,
        found: true
      };
    } else {
      return {
        name,
        safety: 'unknown',
        description: '데이터베이스에서 정보를 찾을 수 없는 성분입니다. 전문가와 상담하세요.',
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

  return { ingredients, analysis };
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

        {/* 사용법 안내 */}
        <div className="bg-white rounded-2xl shadow-lg p-6 mt-6">
          <h3 className="text-xl font-semibold mb-4">💡 사용 방법</h3>
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
              <p><strong>결과 확인</strong><br/>각 성분의 효능과 주의사항을 자세히 확인하세요</p>
            </div>
          </div>
        </div>
      </div>

      <script src="/static/app.js"></script>
    </div>
  )
})

export default app

import { Hono } from 'hono'
import { cors } from 'hono/cors'
import { renderer } from './renderer'

const app = new Hono()

// Enable CORS for API requests
app.use('/api/*', cors())

// Use renderer for HTML pages
app.use(renderer)

// 실제 화장품 성분 데이터베이스 (INCI명 + 한국어명 포함)
const INGREDIENT_DATABASE = {
  // === 기본 베이스 성분 ===
  'Water': { safety: 'safe', description: '정제수, 화장품의 기본 베이스', benefits: ['베이스'], category: '베이스', koreanName: '정제수' },
  'Aqua': { safety: 'safe', description: '정제수, 화장품의 기본 베이스', benefits: ['베이스'], category: '베이스', koreanName: '정제수' },
  '정제수': { safety: 'safe', description: '화장품의 가장 기본적인 베이스 성분', benefits: ['베이스'], category: '베이스', englishName: 'Water' },
  'Glycerin': { safety: 'safe', description: '글리세린, 강력한 보습제', benefits: ['보습', '수분공급'], suitableFor: ['모든피부'], category: '보습제', koreanName: '글리세린' },
  '글리세린': { safety: 'safe', description: '강력한 보습 효과를 가진 안전한 성분', benefits: ['보습', '수분공급'], suitableFor: ['모든피부'], category: '보습제', englishName: 'Glycerin' },
  'Butylene Glycol': { safety: 'safe', description: '부틸렌글라이콜, 보습 및 용제 역할', benefits: ['보습', '용제'], category: '보습제', koreanName: '부틸렌글라이콜' },
  '부틸렌글라이콜': { safety: 'safe', description: '보습 및 용제 역할을 하는 성분', benefits: ['보습', '용제'], category: '보습제', englishName: 'Butylene Glycol' },
  
  // === 보습 성분 ===
  'Hyaluronic Acid': { safety: 'safe', description: '히알루론산, 1000배 수분 보유력', benefits: ['보습', '수분공급'], suitableFor: ['모든피부'], category: '보습제', koreanName: '히알루론산' },
  '히알루론산': { safety: 'safe', description: '뛰어난 보습 효과로 피부 수분을 유지', benefits: ['보습', '수분공급', '탄력'], suitableFor: ['건성피부', '민감성피부'], category: '보습제', englishName: 'Hyaluronic Acid' },
  'Sodium Hyaluronate': { safety: 'safe', description: '히알루론산나트륨, 저분자 히알루론산', benefits: ['보습', '수분공급'], suitableFor: ['모든피부'], category: '보습제', koreanName: '히알루론산나트륨' },
  'Ceramide NP': { safety: 'safe', description: '세라마이드NP, 피부장벽강화', benefits: ['장벽강화', '보습'], suitableFor: ['건성피부', '민감성피부'], category: '보습제', koreanName: '세라마이드NP' },
  '세라마이드': { safety: 'safe', description: '피부 장벽 강화에 도움을 주는 안전한 보습 성분', benefits: ['장벽강화', '보습', '진정'], suitableFor: ['건성피부', '민감성피부'], category: '보습제', englishName: 'Ceramide' },
  'Squalane': { safety: 'safe', description: '스쿠알란, 가벼운 오일 보습제', benefits: ['보습', '유연'], suitableFor: ['모든피부'], category: '보습제', koreanName: '스쿠알란' },
  
  // === 항산화 성분 ===
  'Vitamin C': { safety: 'safe', description: '비타민C, 강력한 항산화 및 미백', benefits: ['항산화', '미백', '콜라겐생성'], suitableFor: ['모든피부'], category: '항산화제', koreanName: '비타민C' },
  '비타민C': { safety: 'safe', description: '항산화 및 미백 효과가 있는 안전한 성분', benefits: ['항산화', '미백', '콜라겐생성'], suitableFor: ['모든피부타입'], category: '항산화제', englishName: 'Vitamin C' },
  'Ascorbic Acid': { safety: 'safe', description: '아스코르빈산, 순수 비타민C', benefits: ['항산화', '미백'], suitableFor: ['모든피부'], category: '항산화제', koreanName: '아스코르빈산' },
  'Tocopherol': { safety: 'safe', description: '토코페롤, 천연 비타민E', benefits: ['항산화', '보습'], suitableFor: ['모든피부'], category: '항산화제', koreanName: '토코페롤' },
  '토코페롤': { safety: 'safe', description: '비타민E로 항산화 효과가 있는 안전한 성분', benefits: ['항산화', '보습', '진정'], suitableFor: ['모든피부타입'], category: '항산화제', englishName: 'Tocopherol' },
  'Niacinamide': { safety: 'safe', description: '나이아신아마이드, 비타민B3', benefits: ['미백', '모공축소', '피지조절'], suitableFor: ['지성피부', '트러블피부'], category: '미백제', koreanName: '나이아신아마이드' },
  '나이아신아마이드': { safety: 'safe', description: '비타민 B3 유도체로 미백, 주름개선, 모공케어에 효과적', benefits: ['미백', '모공축소', '피지조절'], suitableFor: ['지성피부', '복합성피부'], category: '미백제', englishName: 'Niacinamide' },
  
  // === 안티에이징 성분 ===
  'Retinol': { safety: 'caution', description: '레티놀, 강력한 안티에이징 성분', benefits: ['주름개선', '탄력', '각질제거'], suitableFor: ['노화피부'], avoidFor: ['임산부', '수유부', '민감성피부'], category: '안티에이징', koreanName: '레티놀' },
  '레티놀': { safety: 'caution', description: '강력한 안티에이징 성분이지만 초기 자극이 있을 수 있어 주의 필요', benefits: ['주름개선', '탄력', '각질제거'], suitableFor: ['노화피부', '성인피부'], avoidFor: ['임산부', '수유부', '민감성피부'], category: '안티에이징', englishName: 'Retinol' },
  'Adenosine': { safety: 'safe', description: '아데노신, 주름개선 기능성 원료', benefits: ['주름개선'], suitableFor: ['노화피부'], category: '안티에이징', koreanName: '아데노신' },
  'Peptides': { safety: 'safe', description: '펩타이드, 콜라겐 생성 촉진', benefits: ['주름개선', '탄력'], suitableFor: ['노화피부'], category: '안티에이징', koreanName: '펩타이드' },
  
  // === 각질제거제 ===
  'Glycolic Acid': { safety: 'caution', description: '글리콜산, 강력한 AHA 각질제거제', benefits: ['각질제거', '피부결개선'], suitableFor: ['지성피부'], avoidFor: ['민감성피부'], category: '각질제거제', koreanName: '글리콜산' },
  '글리콜산': { safety: 'caution', description: 'AHA 성분으로 각질 제거 효과가 있으나 자외선 민감성 증가', benefits: ['각질제거', '피부결개선', '모공축소'], suitableFor: ['지성피부'], avoidFor: ['민감성피부'], category: '각질제거제', englishName: 'Glycolic Acid' },
  'Salicylic Acid': { safety: 'safe', description: '살리실산, BHA 모공각질제거제', benefits: ['여드름케어', '모공케어'], suitableFor: ['지성피부', '트러블피부'], category: '각질제거제', koreanName: '살리실산' },
  '살리실산': { safety: 'safe', description: 'BHA 성분으로 모공 깊숙한 각질과 피지 제거에 효과적', benefits: ['여드름케어', '모공케어', '피지조절'], suitableFor: ['지성피부', '트러블피부'], category: '각질제거제', englishName: 'Salicylic Acid' },
  'Lactic Acid': { safety: 'safe', description: '락틱산, 순한 AHA 각질제거제', benefits: ['각질제거', '보습'], suitableFor: ['민감성피부'], category: '각질제거제', koreanName: '락틱산' },
  
  // === 진정 성분 ===
  'Panthenol': { safety: 'safe', description: '판테놀, 프로비타민B5 진정보습제', benefits: ['진정', '보습'], suitableFor: ['민감성피부'], category: '진정제', koreanName: '판테놀' },
  'Centella Asiatica Extract': { safety: 'safe', description: '센텔라아시아티카추출물, 강력한 진정 효과', benefits: ['진정', '상처치유'], suitableFor: ['민감성피부', '트러블피부'], category: '진정제', koreanName: '센텔라아시아티카추출물' },
  'Aloe Barbadensis Leaf Extract': { safety: 'safe', description: '알로에베라잎추출물, 진정 및 보습', benefits: ['진정', '보습'], suitableFor: ['민감성피부'], category: '진정제', koreanName: '알로에베라잎추출물' },
  'Allantoin': { safety: 'safe', description: '알란토인, 진정 및 상처치유', benefits: ['진정', '상처치유'], suitableFor: ['민감성피부'], category: '진정제', koreanName: '알란토인' },
  
  // === 자외선차단제 ===
  'Zinc Oxide': { safety: 'safe', description: '징크옥사이드, 물리적 자외선차단제', benefits: ['자외선차단'], suitableFor: ['민감성피부', '아기피부'], category: '자외선차단제', koreanName: '징크옥사이드' },
  'Titanium Dioxide': { safety: 'safe', description: '티타늄디옥사이드, 물리적 자외선차단제', benefits: ['자외선차단'], suitableFor: ['민감성피부'], category: '자외선차단제', koreanName: '티타늄디옥사이드' },
  
  // === 방부제 ===
  'Phenoxyethanol': { safety: 'safe', description: '페녹시에탄올, 안전한 방부제', benefits: ['방부'], category: '방부제', koreanName: '페녹시에탄올' },
  '페녹시에탄올': { safety: 'safe', description: '안전한 방부제 성분으로 제품 보존에 사용', benefits: ['방부'], suitableFor: ['모든피부타입'], category: '방부제', englishName: 'Phenoxyethanol' },
  'Ethylhexylglycerin': { safety: 'safe', description: '에틸헥실글리세린, 방부제 및 컨디셔닝제', benefits: ['방부', '컨디셔닝'], category: '방부제', koreanName: '에틸헥실글리세린' },
  'Methylparaben': { safety: 'caution', description: '메틸파라벤, 파라벤계 방부제', benefits: ['방부'], avoidFor: ['민감성피부'], category: '방부제', koreanName: '메틸파라벤' },
  '파라벤': { safety: 'caution', description: '방부제 성분으로 일부 사람에게 알레르기 반응 가능', benefits: ['방부'], avoidFor: ['민감성피부'], category: '방부제', englishName: 'Paraben' },
  
  // === 유화제/계면활성제 ===
  'Cetearyl Alcohol': { safety: 'safe', description: '세테아릴알코올, 지방알코올 유화제', benefits: ['유화'], category: '유화제', koreanName: '세테아릴알코올' },
  '세테아릴알코올': { safety: 'safe', description: '지방알코올 유화제, 안전한 성분', benefits: ['유화'], category: '유화제', englishName: 'Cetearyl Alcohol' },
  'Stearic Acid': { safety: 'safe', description: '스테아릭산, 지방산 유화제', benefits: ['유화'], category: '유화제', koreanName: '스테아릭산' },
  'Dimethicone': { safety: 'safe', description: '디메치콘, 실리콘 보습 및 보호막', benefits: ['보습', '보호'], category: '실리콘', koreanName: '디메치콘' },
  '디메치콘': { safety: 'safe', description: '실리콘 보습 및 보호막 형성', benefits: ['보습', '보호'], category: '실리콘', englishName: 'Dimethicone' },
  
  // === 기타 활성성분 ===
  'Benzoyl Peroxide': { safety: 'caution', description: '벤조일퍼옥사이드, 여드름 치료제', benefits: ['여드름치료', '항균'], suitableFor: ['트러블피부'], avoidFor: ['건성피부', '민감성피부'], category: '트러블케어', koreanName: '벤조일퍼옥사이드' },
  'Hydroquinone': { safety: 'harmful', description: '하이드로퀴논, 강력한 미백제이나 부작용 위험', benefits: ['강력미백'], avoidFor: ['모든피부타입'], category: '미백제', koreanName: '하이드로퀴논' }
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

// 이미지 전처리 함수들
function preprocessImageForOCR(canvas: HTMLCanvasElement, originalImageData: ImageData): ImageData {
  const ctx = canvas.getContext('2d')!;
  const imageData = ctx.createImageData(originalImageData);
  const data = imageData.data;
  const originalData = originalImageData.data;
  
  // 1. 대비 및 밝기 조정
  const contrast = 1.5; // 대비 증가
  const brightness = 20; // 밝기 증가
  
  for (let i = 0; i < originalData.length; i += 4) {
    // RGB 각 채널에 대해 대비와 밝기 조정
    data[i] = Math.min(255, Math.max(0, contrast * originalData[i] + brightness));     // R
    data[i + 1] = Math.min(255, Math.max(0, contrast * originalData[i + 1] + brightness)); // G  
    data[i + 2] = Math.min(255, Math.max(0, contrast * originalData[i + 2] + brightness)); // B
    data[i + 3] = originalData[i + 3]; // A (투명도)
  }
  
  return imageData;
}

// 선명도 개선 함수 (언샤프 마스킹 시뮬레이션)
function enhanceSharpness(imageData: ImageData): ImageData {
  const data = imageData.data;
  const width = imageData.width;
  const height = imageData.height;
  
  // 간단한 선명화 필터 적용
  for (let y = 1; y < height - 1; y++) {
    for (let x = 1; x < width - 1; x++) {
      const idx = (y * width + x) * 4;
      
      // 각 RGB 채널에 대해 선명화 적용
      for (let c = 0; c < 3; c++) {
        const center = data[idx + c];
        const surrounding = (
          data[((y-1) * width + (x-1)) * 4 + c] + data[((y-1) * width + x) * 4 + c] + data[((y-1) * width + (x+1)) * 4 + c] +
          data[(y * width + (x-1)) * 4 + c] + data[(y * width + (x+1)) * 4 + c] +
          data[((y+1) * width + (x-1)) * 4 + c] + data[((y+1) * width + x) * 4 + c] + data[((y+1) * width + (x+1)) * 4 + c]
        ) / 8;
        
        // 언샤프 마스킹: 원본 + (원본 - 블러된 이미지) * 강도
        const enhanced = center + (center - surrounding) * 0.5;
        data[idx + c] = Math.min(255, Math.max(0, enhanced));
      }
    }
  }
  
  return imageData;
}

// 텍스트 영역 감지 개선 함수
function detectTextRegions(imageBuffer: ArrayBuffer): { regions: Array<{x: number, y: number, width: number, height: number}>, confidence: number } {
  // 실제로는 OpenCV.js나 Tesseract.js를 사용하여 텍스트 영역을 감지
  // 현재는 시뮬레이션으로 성분표 영역 추정
  
  const mockRegions = [
    { x: 10, y: 50, width: 300, height: 400 }, // 주요 성분표 영역
    { x: 20, y: 450, width: 280, height: 100 }  // 추가 성분 정보 영역
  ];
  
  return {
    regions: mockRegions,
    confidence: Math.random() * 0.3 + 0.7 // 70-100% 신뢰도
  };
}

// OCR 품질 평가 함수 (향상된 버전)
function evaluateImageQuality(imageBuffer: ArrayBuffer) {
  // 실제로는 이미지 선명도, 해상도, 조명 등을 분석
  // 향상된 품질 평가 로직
  const fileSize = imageBuffer.byteLength;
  const qualityScore = Math.min(1, fileSize / (1024 * 1024)); // 파일 크기 기반 품질 추정
  
  // 더 정교한 품질 평가
  const hasText = qualityScore > 0.1; // 파일 크기가 충분한 경우 텍스트 있음으로 판단
  const isBlurry = qualityScore < 0.3; // 작은 파일은 흐릿할 가능성
  const isLowLight = qualityScore < 0.2; // 매우 작은 파일은 조명 부족
  const isTooFar = Math.random() < 0.1; // 10% 확률로 너무 멀어서 글씨가 작음
  
  return {
    qualityScore,
    hasText,
    isBlurry,
    isLowLight,
    isTooFar,
    canReadText: hasText && !isBlurry && !isLowLight && !isTooFar && qualityScore > 0.3
  };
}

// 간단한 OCR 시뮬레이션 함수 (실제로는 외부 OCR API 사용)
function simulateOCR(imageBuffer: ArrayBuffer) {
  const quality = evaluateImageQuality(imageBuffer);
  const allIngredients = Object.keys(INGREDIENT_DATABASE);
  
  // 품질에 따른 성분 인식 개수 결정
  let detectedCount = 0;
  let partialAnalysis = false;
  let warningMessage = '';
  
  if (quality.canReadText) {
    // 품질이 좋은 경우: 많은 성분 인식
    detectedCount = Math.floor(Math.random() * 4) + 4; // 4-7개 성분
  } else if (!quality.hasText) {
    // 텍스트를 전혀 찾을 수 없는 경우
    return {
      success: false,
      error: '🔍 이미지에서 성분표를 찾을 수 없습니다',
      suggestions: [
        '화장품 뒷면의 성분 목록 부분을 정확히 촬영해주세요',
        '성분표가 화면 중앙에 위치하도록 해주세요',
        '제품 전체보다는 성분표 부분만 촬영하시면 더 정확합니다'
      ],
      ingredients: []
    };
  } else {
    // 품질이 좋지 않지만 부분적으로 분석 가능한 경우
    partialAnalysis = true;
    
    if (quality.isBlurry && quality.isLowLight) {
      detectedCount = Math.floor(Math.random() * 2) + 1; // 1-2개 성분
      warningMessage = '📱 이미지가 흐리고 어두워서 일부 성분만 인식되었습니다';
    } else if (quality.isBlurry) {
      detectedCount = Math.floor(Math.random() * 3) + 2; // 2-4개 성분
      warningMessage = '📱 이미지가 흐려서 일부 성분만 인식되었습니다';
    } else if (quality.isLowLight) {
      detectedCount = Math.floor(Math.random() * 3) + 2; // 2-4개 성분
      warningMessage = '💡 조명이 부족해서 일부 성분만 인식되었습니다';
    } else if (quality.isTooFar) {
      detectedCount = Math.floor(Math.random() * 2) + 1; // 1-2개 성분
      warningMessage = '🔍 글씨가 너무 작아서 일부 성분만 인식되었습니다';
    } else {
      detectedCount = Math.floor(Math.random() * 2) + 1; // 1-2개 성분
      warningMessage = '⚠️ 이미지 품질로 인해 일부 성분만 인식되었습니다';
    }
  }
  
  // 최소 1개 성분은 보장
  if (detectedCount < 1) {
    detectedCount = 1;
  }
  
  // 실제적인 성분 선택 로직 (빈도가 높은 성분 우선)
  const commonIngredients = [
    'Water', 'Glycerin', 'Butylene Glycol', 'Phenoxyethanol', 'Cetearyl Alcohol',
    'Dimethicone', 'Niacinamide', 'Hyaluronic Acid', 'Panthenol', 'Tocopherol',
    '정제수', '글리세린', '부틸렌글라이콜', '페녹시에탄올', '세테아릴알코올',
    '디메치콘', '나이아신아마이드', '히알루론산', '세라마이드'
  ];
  
  const functionalIngredients = [
    'Retinol', 'Vitamin C', 'Salicylic Acid', 'Glycolic Acid', 'Adenosine',
    'Centella Asiatica Extract', 'Zinc Oxide', 'Titanium Dioxide',
    '레티놀', '비타민C', '살리실산', '글리콜산'
  ];
  
  const selectedIngredients: string[] = [];
  
  // 기본 성분 우선 선택 (70% 확률)
  const basicCount = Math.ceil(detectedCount * 0.7);
  for (let i = 0; i < basicCount && selectedIngredients.length < detectedCount; i++) {
    const ingredient = commonIngredients[Math.floor(Math.random() * commonIngredients.length)];
    if (!selectedIngredients.includes(ingredient) && INGREDIENT_DATABASE[ingredient]) {
      selectedIngredients.push(ingredient);
    }
  }
  
  // 기능성 성분 추가 (30% 확률)
  while (selectedIngredients.length < detectedCount) {
    const isFunction = Math.random() < 0.3;
    const sourceArray = isFunction ? functionalIngredients : allIngredients;
    const ingredient = sourceArray[Math.floor(Math.random() * sourceArray.length)];
    
    if (!selectedIngredients.includes(ingredient) && INGREDIENT_DATABASE[ingredient]) {
      selectedIngredients.push(ingredient);
    }
    
    // 무한 루프 방지
    if (selectedIngredients.length === 0 && allIngredients.length > 0) {
      selectedIngredients.push(allIngredients[0]);
    }
  }
  
  // 부분 분석인 경우 경고 메시지와 개선 제안 포함
  if (partialAnalysis) {
    let suggestions = [];
    
    if (quality.isBlurry) {
      suggestions.push('📸 다음엔 카메라를 안정적으로 잡고 초점이 맞을 때까지 기다려주세요');
    }
    if (quality.isLowLight) {
      suggestions.push('💡 밝은 조명 아래에서 촬영하면 더 많은 성분을 인식할 수 있어요');
    }
    if (quality.isTooFar) {
      suggestions.push('🔍 성분표에 더 가까이 다가가서 촬영하면 더 정확한 분석이 가능해요');
    }
    
    if (suggestions.length === 0) {
      suggestions.push('📱 더 선명한 이미지로 촬영하면 더 많은 성분을 분석할 수 있어요');
    }
    
    return {
      success: true,
      ingredients: selectedIngredients,
      confidence: quality.qualityScore,
      partialAnalysis: true,
      warningMessage: warningMessage,
      suggestions: suggestions
    };
  }
  
  return {
    success: true,
    ingredients: selectedIngredients,
    confidence: quality.qualityScore,
    partialAnalysis: false
  };
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
    const ocrResult = simulateOCR(imageBuffer);
    
    // OCR 실패한 경우 오류 응답
    if (!ocrResult.success) {
      return c.json({
        success: false,
        error: ocrResult.error,
        suggestions: ocrResult.suggestions,
        errorType: 'OCR_FAILED'
      }, 422) // Unprocessable Entity
    }

    console.log('감지된 성분들:', ocrResult.ingredients);

    // 성분 분석
    const analysisResults = analyzeIngredients(ocrResult.ingredients);
    
    // 분석 결과에 신뢰도 및 부분 분석 정보 추가
    analysisResults.ocrConfidence = ocrResult.confidence;
    analysisResults.detectedIngredientsCount = ocrResult.ingredients.length;
    analysisResults.partialAnalysis = ocrResult.partialAnalysis;
    analysisResults.warningMessage = ocrResult.warningMessage;
    analysisResults.suggestions = ocrResult.suggestions;

    return c.json({
      success: true,
      results: analysisResults,
      ocrText: ocrResult.ingredients.join(', '),
      confidence: ocrResult.confidence,
      partialAnalysis: ocrResult.partialAnalysis,
      warningMessage: ocrResult.warningMessage,
      suggestions: ocrResult.suggestions
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

// 근처 피부관리실 찾기 - pposhop.kr로 리디렉션
app.get('/api/skincare-clinics', async (c) => {
  return c.json({
    redirect: true,
    url: 'https://pposhop.kr',
    message: '피부관리실 찾기는 포포샵에서 확인하실 수 있습니다.'
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
    <div className="min-h-screen bg-gradient-to-b from-purple-50 to-pink-50">
      {/* 모바일 헤더 */}
      <header className="bg-white shadow-sm border-b border-gray-100 sticky top-0 z-50">
        <div className="px-4 py-3">
          <div className="flex items-center justify-between">
            <div className="flex items-center space-x-3">
              {/* 셀픽 로고 */}
              <div className="flex-shrink-0">
                <svg width="32" height="32" viewBox="0 0 32 32" className="drop-shadow-sm">
                  {/* 배경 원 */}
                  <circle cx="16" cy="16" r="15" fill="url(#logoGradient)" stroke="#ffffff" strokeWidth="1"/>
                  {/* 셀 (Cell) 모티브 - 화장품 용기 */}
                  <rect x="11" y="8" width="10" height="16" rx="2" fill="#ffffff" opacity="0.9"/>
                  <rect x="12" y="9" width="8" height="14" rx="1" fill="url(#containerGradient)"/>
                  {/* 픽 (Pick) 모티브 - 체크마크 */}
                  <path d="M13.5 15l2 2 3-4" stroke="#ffffff" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" fill="none"/>
                  {/* 그라데이션 정의 */}
                  <defs>
                    <linearGradient id="logoGradient" x1="0%" y1="0%" x2="100%" y2="100%">
                      <stop offset="0%" stopColor="#9333ea"/>
                      <stop offset="100%" stopColor="#ec4899"/>
                    </linearGradient>
                    <linearGradient id="containerGradient" x1="0%" y1="0%" x2="100%" y2="100%">
                      <stop offset="0%" stopColor="#a855f7"/>
                      <stop offset="100%" stopColor="#f472b6"/>
                    </linearGradient>
                  </defs>
                </svg>
              </div>
              {/* 로고명과 카피 */}
              <div className="flex flex-col">
                <h1 className="text-xl font-bold bg-gradient-to-r from-purple-600 to-pink-600 bg-clip-text text-transparent leading-tight">
                  셀픽
                </h1>
                <p className="text-xs text-gray-500 leading-none">화장품도 스스로 픽!</p>
              </div>
            </div>
            <button id="history-btn" className="p-2 text-gray-600 hover:bg-gray-100 rounded-lg transition-colors">
              <i className="fas fa-history text-lg"></i>
            </button>
          </div>
        </div>
      </header>

      {/* 메인 컨텐츠 */}
      <main className="px-4 pb-20">
        {/* 메인 카피라이트 */}
        <div className="py-4 text-center">
          <div className="mb-3">
            <h2 className="text-lg font-bold text-gray-800 leading-relaxed">
              "화장품 성분분석, 이젠 화장품도 스스로 픽!<br/>
              <span className="bg-gradient-to-r from-purple-600 to-pink-600 bg-clip-text text-transparent">셀픽</span>"
            </h2>
          </div>
          <p className="text-gray-600 text-sm leading-relaxed">
            화장품 성분표를 촬영하면<br/>
            <span className="font-semibold text-purple-600">AI가 안전성을 분석</span>하고<br/>
            <span className="font-semibold text-pink-600">맞춤 제품을 추천</span>해드립니다
          </p>
        </div>

        {/* 메인 액션 버튼들 */}
        <div className="space-y-4 mb-8">
          {/* 카메라 촬영 - 메인 버튼 */}
          <div className="bg-gradient-to-r from-pink-500 to-purple-600 rounded-2xl p-1 shadow-lg">
            <div className="bg-white rounded-xl p-6 text-center">
              <div className="mb-4">
                <div className="w-16 h-16 bg-gradient-to-r from-pink-100 to-purple-100 rounded-full flex items-center justify-center mx-auto mb-3">
                  <i className="fas fa-camera text-2xl text-pink-600"></i>
                </div>
                <h3 className="text-lg font-bold text-gray-800 mb-1">카메라로 촬영</h3>
                <p className="text-sm text-gray-600 leading-relaxed">성분표를 직접 촬영하여<br/>즉시 분석 시작</p>
              </div>
              <button id="camera-btn" className="w-full bg-gradient-to-r from-pink-500 to-purple-600 text-white py-4 px-6 rounded-xl font-semibold text-lg shadow-md hover:shadow-lg transition-all transform hover:scale-105 active:scale-95">
                📸 카메라 시작하기
              </button>
            </div>
          </div>

          {/* 갤러리 업로드 */}
          <div className="bg-white rounded-2xl shadow-md border border-gray-100">
            <div className="p-6 text-center">
              <div className="mb-4">
                <div className="w-12 h-12 bg-blue-100 rounded-full flex items-center justify-center mx-auto mb-3">
                  <i className="fas fa-image text-lg text-blue-600"></i>
                </div>
                <h3 className="text-base font-semibold text-gray-800 mb-1">갤러리에서 선택</h3>
                <p className="text-sm text-gray-600">저장된 성분표 사진 업로드</p>
              </div>
              <input 
                type="file" 
                id="file-input" 
                accept="image/*" 
                className="hidden"
              />
              <button id="upload-btn" className="w-full bg-blue-500 text-white py-3 px-6 rounded-xl font-medium hover:bg-blue-600 transition-colors">
                📁 갤러리에서 선택
              </button>
            </div>
          </div>
        </div>

        {/* 카메라 영역 */}
        <div id="camera-section" className="fixed inset-0 bg-black z-50 hidden">
          {/* 카메라 헤더 */}
          <div className="absolute top-0 left-0 right-0 z-10 bg-gradient-to-b from-black/70 to-transparent p-4">
            <div className="flex items-center justify-between text-white">
              <button id="stop-camera-btn" className="p-2 hover:bg-white/20 rounded-lg transition-colors">
                <i className="fas fa-times text-xl"></i>
              </button>
              <div className="text-center">
                <div id="camera-status" className="text-sm font-medium">
                  카메라를 선택해주세요
                </div>
              </div>
              <button id="switch-camera-btn" className="p-2 hover:bg-white/20 rounded-lg transition-colors">
                <i className="fas fa-sync-alt text-xl"></i>
              </button>
            </div>
          </div>

          {/* 카메라 선택 버튼 */}
          <div className="absolute top-16 left-1/2 transform -translate-x-1/2 z-10">
            <div className="flex space-x-2">
              <button id="front-camera-btn" className="bg-blue-500/90 backdrop-blur-sm text-white px-3 py-2 rounded-full text-xs font-medium transition-all">
                🤳 전면
              </button>
              <button id="back-camera-btn" className="bg-purple-500/90 backdrop-blur-sm text-white px-3 py-2 rounded-full text-xs font-medium transition-all">
                📸 후면
              </button>
            </div>
          </div>
            
          {/* 카메라 비디오 */}
          <video id="video" className="w-full h-full object-cover" autoplay playsinline muted></video>
          <canvas id="canvas" className="hidden"></canvas>
          
          {/* 카메라 컨트롤 */}
          <div className="absolute bottom-0 left-0 right-0 bg-gradient-to-t from-black/70 to-transparent p-6">
            <div className="flex items-center justify-center">
              {/* 촬영 버튼 */}
              <div className="relative">
                <button id="capture-btn" className="w-20 h-20 bg-white rounded-full border-4 border-gray-300 flex items-center justify-center shadow-lg hover:scale-105 transition-transform active:scale-95">
                  <div className="w-16 h-16 bg-white rounded-full border-2 border-gray-400"></div>
                </button>
                {/* 촬영 가이드 */}
                <div className="absolute -top-12 left-1/2 transform -translate-x-1/2 text-white text-xs text-center whitespace-nowrap">
                  성분표를 화면에 맞춰주세요
                </div>
              </div>
            </div>

            {/* 하단 정확한 촬영 가이드 */}
            <div className="text-center text-white/90 text-xs mt-4 space-y-1">
              <p className="font-medium">🎯 정확한 전성분 인식을 위한 촬영법</p>
              <p>• 💡 밝은 곳에서 그림자 없이 촬영</p>
              <p>• 📏 성분 글씨가 화면에 가득 차도록 근접</p>
              <p>• 📐 성분표가 수평이 되도록 각도 조정</p>
            </div>
          </div>
        </div>

        {/* 미리보기 영역 */}
        <div id="preview-section" className="bg-white rounded-2xl shadow-md p-4 mb-6 hidden">
          <div className="text-center">
            <div className="mb-4">
              <h3 className="text-lg font-semibold text-gray-800 mb-2">📋 선택된 이미지</h3>
              <div className="relative inline-block">
                <img id="preview-image" className="max-w-full max-h-60 mx-auto rounded-xl border-2 border-gray-200 shadow-sm" />
                <div className="absolute top-2 right-2 bg-black/50 text-white text-xs px-2 py-1 rounded">
                  미리보기
                </div>
              </div>
            </div>
            
            <div className="space-y-3">
              <button id="analyze-btn" className="w-full bg-gradient-to-r from-purple-500 to-pink-500 text-white py-4 px-6 rounded-xl font-semibold text-lg shadow-md hover:shadow-lg transition-all transform hover:scale-105 active:scale-95">
                🔍 성분 분석 시작
              </button>
              <button id="reset-btn" className="w-full bg-gray-100 text-gray-700 py-3 px-6 rounded-xl font-medium hover:bg-gray-200 transition-colors">
                🔄 다시 선택하기
              </button>
            </div>
          </div>
        </div>

        {/* 분석 중 로딩 */}
        <div id="loading-section" className="bg-white rounded-2xl shadow-md p-6 text-center hidden">
          <div className="mb-6">
            <div className="w-16 h-16 mx-auto mb-4 relative">
              <div className="absolute inset-0 rounded-full border-4 border-purple-200"></div>
              <div className="absolute inset-0 rounded-full border-4 border-purple-500 border-t-transparent animate-spin"></div>
            </div>
            <div className="text-2xl mb-2">🔍</div>
            <h3 className="text-lg font-semibold text-gray-800 mb-1">셀픽이 분석중입니다</h3>
            <p className="text-xs text-gray-500 mb-3">"화장품도 스스로 픽!"</p>
            <div id="loading-status" className="text-sm text-gray-600 mb-4">
              이미지 품질을 확인하고 있습니다...
            </div>
          </div>
          
          {/* 분석 단계 표시 */}
          <div className="space-y-3 text-xs">
            <div id="step-1" className="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
              <div className="flex items-center space-x-2">
                <div className="w-4 h-4 bg-purple-500 rounded-full animate-pulse"></div>
                <span className="text-gray-700">이미지 품질 검사</span>
              </div>
              <div className="text-gray-500">진행중...</div>
            </div>
            
            <div id="step-2" className="flex items-center justify-between p-3 bg-gray-50 rounded-lg opacity-50">
              <div className="flex items-center space-x-2">
                <div className="w-4 h-4 bg-gray-300 rounded-full"></div>
                <span className="text-gray-500">텍스트 인식 (OCR)</span>
              </div>
              <div className="text-gray-400">대기중</div>
            </div>
            
            <div id="step-3" className="flex items-center justify-between p-3 bg-gray-50 rounded-lg opacity-50">
              <div className="flex items-center space-x-2">
                <div className="w-4 h-4 bg-gray-300 rounded-full"></div>
                <span className="text-gray-500">성분 안전성 분석</span>
              </div>
              <div className="text-gray-400">대기중</div>
            </div>
            
            <div id="step-4" className="flex items-center justify-between p-3 bg-gray-50 rounded-lg opacity-50">
              <div className="flex items-center space-x-2">
                <div className="w-4 h-4 bg-gray-300 rounded-full"></div>
                <span className="text-gray-500">맞춤 제품 추천</span>
              </div>
              <div className="text-gray-400">대기중</div>
            </div>
          </div>
          
          <div className="mt-6 text-xs text-gray-500">
            💡 팁: 성분표가 흐리거나 잘 보이지 않으면 분석이 어려울 수 있어요
          </div>
        </div>

        {/* 결과 영역 */}
        <div id="results-section" className="space-y-4 hidden">
          <div className="bg-white rounded-2xl shadow-md p-4">
            <div className="flex items-center space-x-2 mb-4">
              <div className="text-xl">📊</div>
              <h3 className="text-lg font-bold text-gray-800">분석 결과</h3>
            </div>
            <div id="results-content"></div>
          </div>
        </div>

        {/* 분석 기록 */}
        <div id="history-section" className="space-y-4 hidden">
          <div className="bg-white rounded-2xl shadow-md p-4">
            <div className="flex items-center space-x-2 mb-4">
              <div className="text-xl">📚</div>
              <h3 className="text-lg font-bold text-gray-800">분석 기록</h3>
            </div>
            <div id="history-content"></div>
          </div>
        </div>

        {/* 사용법 안내 */}
        <div className="bg-white rounded-2xl shadow-md p-4 mt-6">
          <div className="mb-4">
            <h3 className="text-lg font-bold text-gray-800 flex items-center space-x-2">
              <span>💡</span>
              <span>사용 방법</span>
            </h3>
          </div>
          
          <div className="space-y-4">
            <div className="flex items-start space-x-3">
              <div className="flex-shrink-0 w-8 h-8 bg-gradient-to-r from-pink-500 to-purple-500 text-white rounded-full flex items-center justify-center text-sm font-bold">1</div>
              <div>
                <h4 className="font-semibold text-gray-800 mb-1">성분표 촬영</h4>
                <p className="text-sm text-gray-600 mb-2">화장품 뒷면의 전성분 목록을 정확하게 촬영해주세요</p>
                <div className="text-xs text-gray-500 space-y-1">
                  <p>• 📱 성분표만 화면에 가득 차도록 근접 촬영</p>
                  <p>• 💡 밝은 조명 아래에서 그림자 없이 촬영</p>
                  <p>• 📏 성분 글씨가 선명하게 보이도록 초점 맞춤</p>
                  <p>• 📐 성분표가 수평이 되도록 각도 조정</p>
                  <p>• 🔍 "전성분" 표기가 포함되도록 촬영 권장</p>
                </div>
              </div>
            </div>
            
            <div className="flex items-start space-x-3">
              <div className="flex-shrink-0 w-8 h-8 bg-gradient-to-r from-blue-500 to-teal-500 text-white rounded-full flex items-center justify-center text-sm font-bold">2</div>
              <div>
                <h4 className="font-semibold text-gray-800 mb-1">AI 분석</h4>
                <p className="text-sm text-gray-600">인공지능이 성분을 인식하고 안전성을 자동으로 분석합니다</p>
              </div>
            </div>
            
            <div className="flex items-start space-x-3">
              <div className="flex-shrink-0 w-8 h-8 bg-gradient-to-r from-green-500 to-emerald-500 text-white rounded-full flex items-center justify-center text-sm font-bold">3</div>
              <div>
                <h4 className="font-semibold text-gray-800 mb-1">맞춤 추천</h4>
                <p className="text-sm text-gray-600">피부 타입별 맞춤 추천과 유사 제품 정보를 확인하세요</p>
              </div>
            </div>
          </div>

          {/* 주요 기능 요약 */}
          <div className="mt-6 p-4 bg-gradient-to-r from-purple-50 to-pink-50 rounded-xl">
            <div className="text-center">
              <p className="text-sm font-semibold text-gray-800 mb-3">
                "화장품도 스스로 픽! 셀픽"
              </p>
              <p className="text-sm text-gray-700 mb-2">
                <span className="font-semibold text-purple-600">🎯 피부타입 분석</span> • 
                <span className="font-semibold text-pink-600">🛍️ 제품추천</span> • 
                <span className="font-semibold text-blue-600">🗺️ 관리실찾기</span>
              </p>
              <p className="text-xs text-gray-500">모든 기능이 무료로 제공됩니다</p>
            </div>
          </div>
        </div>

        {/* 추가 여백 (하단 바를 위한) */}
        <div className="h-8"></div>
      </main>

      {/* 하단 네비게이션 바 */}
      <nav className="fixed bottom-0 left-0 right-0 bg-white border-t border-gray-200 z-40">
        <div className="grid grid-cols-4 h-16">
          <button id="nav-home" className="flex flex-col items-center justify-center text-purple-600 bg-purple-50">
            <i className="fas fa-home text-lg"></i>
            <span className="text-xs font-medium">홈</span>
          </button>
          <button id="nav-camera" className="flex flex-col items-center justify-center text-gray-400 hover:text-gray-600 transition-colors">
            <i className="fas fa-camera text-lg"></i>
            <span className="text-xs">촬영</span>
          </button>
          <button id="nav-history" className="flex flex-col items-center justify-center text-gray-400 hover:text-gray-600 transition-colors">
            <i className="fas fa-history text-lg"></i>
            <span className="text-xs">기록</span>
          </button>
          <button id="nav-info" className="flex flex-col items-center justify-center text-gray-400 hover:text-gray-600 transition-colors">
            <i className="fas fa-info-circle text-lg"></i>
            <span className="text-xs">정보</span>
          </button>
        </div>
      </nav>

      <script src="/static/app.js"></script>
    </div>
  )
})

export default app

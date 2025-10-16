-- 요양시설 데이터 테이블 생성 (샘플)
CREATE TABLE IF NOT EXISTS facilities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  facility_type TEXT NOT NULL,
  facility_name TEXT NOT NULL,
  postal_code TEXT,
  address TEXT NOT NULL,
  sido TEXT,
  sigungu TEXT,
  latitude REAL,
  longitude REAL,
  created_at TEXT NOT NULL
);

-- 인덱스 생성
CREATE INDEX IF NOT EXISTS idx_facilities_sido ON facilities(sido);
CREATE INDEX IF NOT EXISTS idx_facilities_sigungu ON facilities(sigungu);
CREATE INDEX IF NOT EXISTS idx_facilities_type ON facilities(facility_type);
CREATE INDEX IF NOT EXISTS idx_facilities_name ON facilities(facility_name);

-- 샘플 데이터 삽입
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '북서울요양병원', '1058', '서울특별시 강북구 한천로 1002, 북서울요양병원 (번동)', '서울특별시', '강북구', 37.6381346270653, 127.030017007593, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '효성요양병원', '1173', '서울특별시 강북구 삼양로 204 (미아동, 효성요양병원)', '서울특별시', '강북구', 37.6220309133259, 127.020454038954, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '꿈의숲요양병원', '1231', '서울특별시 강북구 월계로 183 (번동)', '서울특별시', '강북구', 37.6205757158557, 127.044900910895, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '경희늘푸른노인전문병원', '1316', '서울특별시 도봉구 시루봉로 137 (방학동)', '서울특별시', '도봉구', 37.6631947626947, 127.027370255997, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '팔팔요양병원', '1349', '서울특별시 도봉구 시루봉로 310, 화성빌딩 (도봉동)', '서울특별시', '도봉구', 37.6710214264697, 127.04348189855, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '스카이요양병원', '1384', '서울특별시 도봉구 방학로 177 (방학동)', '서울특별시', '도봉구', 37.6620238284166, 127.032422411787, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 행복나눔의료재단 사랑요양병원', '1605', '서울특별시 노원구 동일로243길 45 (상계동, 사랑요양병원)', '서울특별시', '노원구', 37.6784494401778, 127.052600258604, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '선의요양병원', '1689', '서울특별시 노원구 동일로 1419, 9층~11층 (상계동)', '서울특별시', '노원구', 37.6553094384019, 127.059846120108, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '그레이스힐 요양병원', '1691', '서울특별시 노원구 노원로 461, 대감프라자빌딩 3,4,5,6층 (상계동)', '서울특별시', '노원구', 37.657441877009, 127.06561735906, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '희망요양병원', '1698', '서울특별시 노원구 상계로26길 7 (상계동)', '서울특별시', '노원구', 37.6582410583107, 127.070893536187, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '한강요양병원', '10018', '경기도 김포시 통진읍 조강로36번길 12-10, 가동', '경기도', '김포시', 37.6896708535537, 126.60208443076, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '김포다올요양병원', '10071', '경기도 김포시 김포한강10로133번길 67, 지1-2층 (구래동)', '경기도', '김포시', 37.6410835181517, 126.619120539736, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인동행의료재단보리수요양병원', '10072', '경기도 김포시 김포한강11로331번길 259, 보리수요양병원 (운양동)', '경기도', '김포시', 37.6642936099537, 126.676090481372, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '김포 서울 대효요양병원', '10126', '경기도 김포시 고촌읍 장차로5번길 5-17, 중원빌딩 B1,1~2,4층 6~12층호', '경기도', '김포시', 37.6029032322446, 126.768902811743, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '무지개요양병원', '10228', '경기도 고양시 일산서구 덕이로 212 (덕이동, 백송프라자 3,4층 일부)', '경기도', '고양시', 37.6966919370521, 126.739334577762, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '다스람요양병원', '10250', '경기도 고양시 일산동구 성현로29번길 28-9, 지하1층, 1층~4층 (성석동)', '경기도', '고양시', 37.7119927991389, 126.791200443368, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인두영의료재단 정안요양병원', '10258', '경기도 고양시 일산동구 성현로377번길 128-4 (문봉동)', '경기도', '고양시', 37.7004458629132, 126.833190273724, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인에덴재단행복한요양병원', '10264', '경기도 고양시 덕양구 내유길 146-19 (내유동)', '경기도', '고양시', 37.7231702725354, 126.86444351457, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '자향요양병원', '10300', '경기도 고양시 일산동구 백마로 490 (풍동)', '경기도', '고양시', 37.661762841432, 126.803252202618, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '일산현대요양병원', '10302', '경기도 고양시 일산동구 무궁화로 346, 지하1~2층,1~3층 (풍동)', '경기도', '고양시', 37.6765563173027, 126.79804803845, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '인천제2시립노인치매요양병원', '21002', '인천광역시 계양구 드림로 852, 노인치매요양병원 (갈현동)', '인천광역시', '계양구', 37.5748520307657, 126.729058950179, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 샬롬의료재단 브니엘요양병원', '21059', '인천광역시 계양구 주부토로 494, 비101호, 비102호, 101호, 102호, 201호, 301호, 401호, 501호, 601호 (계산동)', '인천광역시', '계양구', 37.5382390114439, 126.72838700572, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '효성요양병원', '21097', '인천광역시 계양구 안남로 538 (효성동)', '인천광역시', '계양구', 37.5309499568215, 126.711267342576, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '성로요양병원', '21128', '인천광역시 계양구 아나지로 378(작전동)', '인천광역시', '계양구', 37.5251773265089, 126.734049441254, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '재단법인 자연재단 더필잎요양병원', '21356', '인천광역시 부평구 장제로 175, 지하1(일부)층, 1(일부)층, 2층~8층 전체 (부평동)', '인천광역시', '부평구', 37.5012585723841, 126.730372661454, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '부평세연요양병원', '21360', '인천광역시 부평구 부흥로 329, 7층 (부평동, 로얄프라자)', '인천광역시', '부평구', 37.4985591346104, 126.728588466721, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '새올요양병원', '21376', '인천광역시 부평구 마장로 246, 새올 요양병원 (산곡동)', '인천광역시', '부평구', 37.499970665601, 126.703303508047, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '올리브요양병원', '21392', '인천광역시 부평구 장제로 129 (부평동)', '인천광역시', '부평구', 37.4970902760186, 126.72990669854, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '백운요양병원', '21405', '인천광역시 부평구 마장로 68 (십정동, K빌딩, 지하1층,지상1층(일부),지상2~8층)', '인천광역시', '부평구', 37.484925427731, 126.708515569353, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '행복마을요양병원', '21508', '인천광역시 남동구 백범로 398, 새마을금고중앙회 (간석동)', '인천광역시', '남동구', 37.4677517538098, 126.707189036371, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '철원요양병원', '24020', '강원특별자치도 철원군 동송읍 금학로157번길 23-17 ( )', '강원특별자치도', '철원군', 38.2011767801202, 127.220353730281, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '춘천요양병원', '24210', '강원특별자치도 춘천시 동면 춘천로 527-34', '강원특별자치도', '춘천시', 37.8981632508329, 127.764313419163, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '춘천시노인전문병원', '24216', '강원특별자치도 춘천시 동면 세실로 252', '강원특별자치도', '춘천시', 37.8801857843592, 127.756238834258, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '춘천호반요양병원', '24239', '강원특별자치도 춘천시 옛경춘로 663-  (삼천동,663)', '강원특별자치도', '춘천시', 37.8568256385719, 127.70712092016, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '영인요양병원', '24273', '강원특별자치도 춘천시 중앙로 60-0 (중앙로2가, (중앙로2가))', '강원특별자치도', '춘천시', 37.8799740167197, 127.726884081719, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '토마스요양병원', '24416', '강원특별자치도 춘천시 영서로 1925-9 (석사동,춘천한방병원)', '강원특별자치도', '춘천시', 37.8466830872059, 127.754828337772, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '춘천새윤요양병원', '24427', '강원특별자치도 춘천시 퇴계공단길 40-  (퇴계동,40)', '강원특별자치도', '춘천시', 37.8445514079449, 127.735836472348, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '암스트롱요양병원', '24463', '강원특별자치도 춘천시 서면 율장길 328-  ( )', '강원특별자치도', '춘천시', 37.8664499408865, 127.584020446043, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '춘천태동요양병원', '24468', '강원특별자치도 춘천시 남면 박암관천길 821-0 ( )', '강원특별자치도', '춘천시', 37.7244681327556, 127.517214823931, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인지산의료재단 현인요양병원', '24657', '강원특별자치도 인제군 기린면 내린천로 3760', '강원특별자치도', '인제군', 37.9337194824784, 128.311932607769, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '단양군립노인요양병원', '27010', '충청북도 단양군 단양읍 별곡6길 10-0 (단양군노인요양전문병원)', '충청북도', '단양군', 36.9870651579216, 128.36881636636, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 솔트의료재단 예성요양병원', '27147', '충청북도 제천시 용두천로 333-0 (청전동)', '충청북도', '제천시', 37.1546819887542, 128.217609841296, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인정석의료재단제천하나요양병원', '27169', '충청북도 제천시 풍양로 89-0 (중앙로1가, (중앙로1가))', '충청북도', '제천시', 37.1379030041111, 128.209808338507, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 창민의료재단 제천노인전문요양병원', '27191', '충청북도 제천시 북부로13길 94-0 (천남동, (천남동))', '충청북도', '제천시', 37.1234182230646, 128.182874332283, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '제천은혜요양병원', '27194', '충청북도 제천시 의림대로 17-0 (영천동)', '충청북도', '제천시', 37.1297830224347, 128.205857547793, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '청풍호노인사랑병원', '27207', '충청북도 제천시 금성면 청풍호로 1147-0', '충청북도', '제천시', 37.0588208824611, 128.175443532017, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 목민의료재단 충주성모요양병원', '27302', '충청북도 충주시 앙성면 산전장수2길 55-0', '충청북도', '충주시', 37.1004929570484, 127.790285700765, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 현오의료재단 늘푸른요양병원', '27303', '충청북도 충주시 앙성면 용당1길 29-0', '충청북도', '충주시', 37.1077471270867, 127.757195004582, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '충주현대요양병원', '27347', '충청북도 충주시 연수상가3길 14-0 (연수동)', '충청북도', '충주시', 36.9885818128129, 127.930712306875, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 문화의료재단 문화실버요양병원', '27406', '충청북도 충주시 국원대로 6-0 (문화동, (문화동))', '충청북도', '충주시', 36.9731377993731, 127.923996133895, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '운주산성요양병원', '30009', '세종특별자치시 전동면 모산고개길 96-25', '세종특별자치시', '', 36.6687952210924, 127.224462819176, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 선은의료재단 중앙요양병원', '30016', '세종특별자치시 조치원읍 섭골길 37', '세종특별자치시', '', 36.6137652164847, 127.288274848216, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '한마음효요양병원', '30016', '세종특별자치시 조치원읍 금이로 53-11', '세종특별자치시', '', 36.6328359011141, 127.283001282303, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '조치원노인전문병원', '30042', '세종특별자치시 연서면 도신고복로 789-17', '세종특별자치시', '', 36.6133520491206, 127.237724585722, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '다나힐요양병원', '31029', '충청남도 천안시 서북구 직산읍 석양길 4', '충청남도', '천안시', 36.8861568468681, 127.107216829903, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '천안시립노인전문병원', '31064', '충청남도 천안시 동남구 목천읍 삼방로 735 (천안시립노인전문병원)', '충청남도', '천안시', 36.825419550702, 127.226194914722, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '메디움천안요양병원', '31068', '충청남도 천안시 동남구 유량로 180 (유량동, 메디움천안요양병원)', '충청남도', '천안시', 36.810989351516, 127.178318205438, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '선한이웃요양병원', '31070', '충청남도 천안시 동남구 정골2길 91 (구성동)', '충청남도', '천안시', 36.7994234118994, 127.177476554622, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '천안퍼스트힐요양병원', '31097', '충청남도 천안시 서북구 백석로 99, 1층~4층 (백석동)', '충청남도', '천안시', 36.8239735891266, 127.122742038924, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '천안성심요양병원', '31107', '충청남도 천안시 서북구 원두정3길 37, 4층,5층 (두정동)', '충청남도', '천안시', 36.8335382459996, 127.137145348787, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 백석의료재단 한사랑요양병원', '31129', '충청남도 천안시 동남구 대흥로 228 (대흥동, 삼영빌딩)', '충청남도', '천안시', 36.8083800152749, 127.148108413247, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '참조은요양병원', '31133', '충청남도 천안시 서북구 동서대로 110-23 (성정동)', '충청남도', '천안시', 36.8240597277935, 127.1352895328, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '큰사랑요양병원', '31139', '충청남도 천안시 서북구 도원4길 7 (성정동)', '충청남도', '천안시', 36.8197307902322, 127.1329826897, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '백석요양병원', '31159', '충청남도 천안시 서북구 백석5길 4 (백석동)', '충청남도', '천안시', 36.8214142792697, 127.127603145313, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '테크노요양병원', '34028', '대전광역시 유성구 테크노7로 31-0 (용산동,해성빌딩)', '대전광역시', '유성구', 36.4245746694839, 127.400794696932, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '벤조인요양병원', '34077', '대전광역시 유성구 지족로364번길 19-0 (지족동, 2층 (지족동))', '대전광역시', '유성구', 36.386149072484, 127.317963263089, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인고운손의료재단고운마음요양병원', '34098', '대전광역시 유성구 송림로 58-0 (하기동, (하기동))', '대전광역시', '유성구', 36.3867772387333, 127.324213913348, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '대전광역시립제1노인전문병원', '34101', '대전광역시 유성구 유성대로 1422 (방현동,1422)', '대전광역시', '유성구', 36.4051346426414, 127.373471574267, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '큰우리요양병원', '34159', '대전광역시 유성구 학하서로 99-0 (덕명동)', '대전광역시', '유성구', 36.3463827904226, 127.298710993507, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인비에스의료재단 브레인요양병원', '34179', '대전광역시 유성구 도안대로567번길 26-0 (봉명동, 0동 (봉명동))', '대전광역시', '유성구', 36.3515605892368, 127.338686334083, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '대전연세요양병원', '34184', '대전광역시 유성구 한밭대로492번길 26-30 (봉명동, (봉명동))', '대전광역시', '유성구', 36.3587939908248, 127.350888161025, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의)밝은마음의료재단 유성한가족요양병원', '34186', '대전광역시 유성구 온천동로 43-0 (봉명동,본관4~9층/신관1층,4~9층)', '대전광역시', '유성구', 36.3553668632141, 127.350659538596, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 나우리의료재단 나우리요양병원', '34227', '대전광역시 유성구 진잠로 164 (원내동, (원내동))', '대전광역시', '유성구', 36.3037946911717, 127.31951757941, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 원전의료재단보니파시오요양병원', '34330', '대전광역시 대덕구 덕암로 225-0 (덕암동, (덕암동))', '대전광역시', '대덕구', 36.4406738826976, 127.423719632404, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '풍기성심요양병원', '36042', '경상북도 영주시 풍기읍 소백로1916번길 6', '경상북도', '영주시', 36.8674640501926, 128.536203406714, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '영주시립노인전문요양병원', '36051', '경상북도 영주시 안정면 장안로 697', '경상북도', '영주시', 36.8301564270377, 128.564909839612, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인기호의료재단 청하요양병원', '36056', '경상북도 영주시 신재로24번길 91 (가흥동)', '경상북도', '영주시', 36.8351262346441, 128.609025211275, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 영주의료재단 명품요양병원', '36059', '경상북도 영주시 반지미로 265 (가흥동)', '경상북도', '영주시', 36.824809034954, 128.597597508385, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '봉화군립노인전문요양병원', '36239', '경상북도 봉화군 봉화읍 보밑길 9', '경상북도', '봉화군', 36.8917490647685, 128.733785762077, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '울진군의료원요양병원', '36324', '경상북도 울진군 울진읍 현내항길 71', '경상북도', '울진군', 36.9922486661329, 129.409992603894, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인동제의료재단 오차드요양병원', '36370', '경상북도 울진군 후포면 동해대로 441', '경상북도', '울진군', 36.6793010715701, 129.435768512032, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '영덕제일요양병원', '36439', '경상북도 영덕군 영덕읍 우곡길 52-0', '경상북도', '영덕군', 36.4085553976826, 129.372807876248, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 영덕의료재단 영덕효요양병원', '36441', '경상북도 영덕군 영덕읍 영덕로 72-12', '경상북도', '영덕군', 36.4010043158008, 129.373347823157, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인인덕의료재단 복주요양병원', '36622', '경상북도 안동시 풍산읍 함백이길 154', '경상북도', '안동시', 36.5795343871576, 128.667919387097, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '이시아요양병원', '41005', '대구광역시 동구 파계로6길 16 (지묘동)', '대구광역시', '동구', 35.9391815073591, 128.64064454105, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '안심요양병원', '41113', '대구광역시 동구 안심로41길 50 (서호동)', '대구광역시', '동구', 35.8705347506929, 128.708865152253, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '열경요양병원', '41157', '대구광역시 동구 동촌로 146 (검사동)', '대구광역시', '동구', 35.8844433320796, 128.656462062941, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '동대구요양병원', '41218', '대구광역시 동구 신암남로 159 (신암동)', '대구광역시', '동구', 35.8836597142916, 128.631282538529, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '아리채요양병원', '41407', '대구광역시 북구 노본길 15-3 (학정동)', '대구광역시', '북구', 35.9589301458941, 128.566419989218, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '햇살요양병원', '41423', '대구광역시 북구 팔거천동로 224 (동천동)', '대구광역시', '북구', 35.9438869156379, 128.558705932595, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '문요양병원', '41468', '대구광역시 북구 칠곡중앙대로 215, 지하2층, 1층~7층 (태전동)', '대구광역시', '북구', 35.9153662752314, 128.547996815031, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '센트럴요양병원', '41539', '대구광역시 북구 연암로 111, 지하1층,지상1~6층 (산격동)', '대구광역시', '북구', 35.8944150511478, 128.594016862942, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '한솔요양병원', '41559', '대구광역시 북구 침산로 167 (침산동)', '대구광역시', '북구', 35.8910785061895, 128.589889876723, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '첨단요양병원', '41567', '대구광역시 북구 대현로 19 (대현동)', '대구광역시', '북구', 35.8864090227586, 128.602887313048, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '상록수요양병원', '44044', '울산광역시 동구 진성8길 94, 상록수요양병원 (전하동)', '울산광역시', '동구', 35.5093690539837, 129.429759131416, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 정흡의료재단 효림요양병원', '44053', '울산광역시 동구 방어진순환도로 693-1 (일산동)', '울산광역시', '동구', 35.5036854411781, 129.429107183842, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '방어진마린요양병원', '44109', '울산광역시 동구 중진길 60(방어동)', '울산광역시', '동구', 35.4827251809261, 129.424615719056, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '정안요양병원', '44200', '울산광역시 북구 관문길 251 (천곡동)', '울산광역시', '북구', 35.6543018162282, 129.313429034344, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 옐림의료재단 농소요양병원', '44208', '울산광역시 북구 아진로 78 (상안동)', '울산광역시', '북구', 35.6304266292859, 129.340320777073, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '복음요양병원', '44224', '울산광역시 북구 제내1길 6 (신천동)', '울산광역시', '북구', 35.6314176893725, 129.351788771164, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '세나요양병원', '44227', '울산광역시 북구 호계로 296 (호계동, 세나병원)', '울산광역시', '북구', 35.629424550738, 129.351476632455, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '위너스자연요양병원', '44416', '울산광역시 중구 함월20길 89 (성안동, 위너스자연요양병원)', '울산광역시', '중구', 35.5814527089639, 129.323433162072, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 청남의료재단  세민에스요양병원', '44505', '울산광역시 중구 내황4길 11 (반구동)', '울산광역시', '중구', 35.5528054637489, 129.341683311162, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 우아의료재단 길메리요양병원', '44513', '울산광역시 중구 서원1길 106 (반구동)', '울산광역시', '중구', 35.5588560100352, 129.339634829448, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '현대요양병원', '46058', '부산광역시 기장군 기장읍 반송로 1555', '부산광역시', '기장군', 35.2488256153082, 129.209985744975, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '기장연세요양병원', '46063', '부산광역시 기장군 기장읍 반송로 1644', '부산광역시', '기장군', 35.2507985620548, 129.217821883489, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '평거요양병원', '46073', '부산광역시 기장군 기장읍 대청로36번길 11-33', '부산광역시', '기장군', 35.2372970630264, 129.216136437342, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인뵈뵈의료재단복있는요양병원', '46079', '부산광역시 기장군 기장읍 대변로 117-2', '부산광역시', '기장군', 35.2279728672412, 129.225970018045, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 천지의료재단 금샘요양병원', '46201', '부산광역시 금정구 남산냇길 111 (청룡동)', '부산광역시', '금정구', 35.276848459264, 129.088281808077, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인좋은사람들의료재단 관자재요양병원', '46215', '부산광역시 금정구 금단로 140-2 (남산동)', '부산광역시', '금정구', 35.2615827348193, 129.093740039213, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '금정형주요양병원', '46224', '부산광역시 금정구 금강로 638 (남산동)', '부산광역시', '금정구', 35.2641996234765, 129.088894960806, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '보람요양병원', '46229', '부산광역시 금정구 중앙대로 1961 (구서동)', '부산광역시', '금정구', 35.2593885462558, 129.091072822078, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '푸른숲요양병원', '46229', '부산광역시 금정구 금강로 592, 지1,1,3-7층 (구서동)', '부산광역시', '금정구', 35.2603413403053, 129.087999583574, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인나눔의료재단 행림요양병원', '46230', '부산광역시 금정구 중앙대로 1905 (구서동)', '부산광역시', '금정구', 35.2544487795899, 129.091044989253, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '성은효요양병원', '50138', '경상남도 거창군 거창읍 거창대로 55 (성은주상복합빌딩)', '경상남도', '거창군', 35.6865388556086, 127.915986437471, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인아람의료재단덕유산자연사랑요양병원', '50141', '경상남도 거창군 거창읍 거안로 1266-77', '경상남도', '거창군', 35.6849502719804, 127.887233421714, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '합천요양병원', '50230', '경상남도 합천군 합천읍 신소양2길 40', '경상남도', '합천군', 35.5813405691832, 128.16748681186, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '합천고려요양병원', '50239', '경상남도 합천군 대양면 대야로 737-20, 1호', '경상남도', '합천군', 35.553040357383, 128.161280718235, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '프라임요양병원', '50315', '경상남도 창녕군 고암면 상대2길 16, 더케이서드에이지', '경상남도', '창녕군', 35.5781335895387, 128.512664189895, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인창녕성산의료재단창녕효요양병원', '50318', '경상남도 창녕군 대지면 효정직교길 119', '경상남도', '창녕군', 35.5421329178424, 128.480699571237, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 창녕서울의료재단 창녕서울요양병원', '50322', '경상남도 창녕군 창녕읍 창녕대로 122', '경상남도', '창녕군', 35.5344210447272, 128.497802560549, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인창녕성산의료재단 영산요양병원', '50348', '경상남도 창녕군 영산면 영산도천로 430', '경상남도', '창녕군', 35.4419370005629, 128.519947518747, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 케이엔의료재단 경남요양병원', '50356', '경상남도 창녕군 남지읍 남지중앙로 45', '경상남도', '창녕군', 35.3911308170255, 128.474716170385, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '남지요양병원', '50358', '경상남도 창녕군 남지읍 동포로 15', '경상남도', '창녕군', 35.3906089006608, 128.48125041748, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 원광의료재단 군산원광효도요양병원', '54078', '전라북도 군산시 조촌4길 11 (조촌동, (조촌동))', '전라북도', '군산시', 35.9675759791963, 126.735654659236, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '참사랑요양병원', '54078', '전라북도 군산시 조촌로 21 (조촌동,(조촌동))', '전라북도', '군산시', 35.9659935236187, 126.737430945614, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 성곡의료재단 군산효자요양병원', '54112', '전라북도 군산시 청소년회관로 45 (송풍동,(송풍동))', '전라북도', '군산시', 35.9794366349862, 126.699887960691, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '군산제일요양병원', '54115', '전라북도 군산시 대학로 183 (문화동, (문화동))', '전라북도', '군산시', 35.9754261038605, 126.702985677069, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 구암의료재단 군산요양병원', '54130', '전라북도 군산시 하나운3길 18 (나운동,(나운동))', '전라북도', '군산시', 35.9635794667295, 126.695470752639, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '은파요양병원', '54142', '전라북도 군산시 대학로 375-0 (나운동, (나운동))', '전라북도', '군산시', 35.9606574023037, 126.692014240609, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '새희망요양병원', '54172', '전라북도 군산시 옥구읍 옥구남로 152-0 ( 1동 (희망요양병원))', '전라북도', '군산시', 35.9141131723606, 126.69268022653, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 한빛의료재단 행복한요양병원', '54172', '전라북도 군산시 옥구읍 수산길 71-21', '전라북도', '군산시', 35.9070590592451, 126.703691581896, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '미래요양병원', '54339', '전라북도 김제시 금구면 낙산1길 72', '전라북도', '김제시', 35.8077982474897, 127.001461796088, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 백상의료재단 가족사랑요양병원', '54366', '전라북도 김제시 하동1길 13 (하동,(하동))', '전라북도', '김제시', 35.8167836203123, 126.891787812555, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '영광군공립요양병원', '57035', '전라남도 영광군 영광읍 와룡로 3-1', '전라남도', '영광군', 35.2848713700183, 126.499967509691, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '함평군공립요양병원', '57158', '전라남도 함평군 학교면 학교화산길 16-19', '전라남도', '함평군', 35.0486986715899, 126.536663877344, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '장성공립노인전문요양병원', '57221', '전라남도 장성군 장성읍 강변안길 100', '전라남도', '장성군', 35.3023174556176, 126.777449932946, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인해상의료재단 백양요양병원', '57236', '전라남도 장성군 삼계면 능성로 29-1', '전라남도', '장성군', 35.27038801575, 126.698183805215, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '인애요양병원', '57318', '전라남도 담양군 수북면 추성1로 736-0', '전라남도', '담양군', 35.3016604185944, 126.931964576853, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '차오름요양병원', '57352', '전라남도 담양군 금성면 덕성길 11-58', '전라남도', '담양군', 35.3559569516808, 127.054172090097, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '명문요양병원', '57381', '전라남도 담양군 대덕면 창평현로 1063', '전라남도', '담양군', 35.2501087333528, 127.049155510962, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '창평한마음요양병원', '57383', '전라남도 담양군 창평면 화양길 64-14', '전라남도', '담양군', 35.2517895395539, 127.000681041658, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '백담의료재단 한울요양병원', '57389', '전라남도 담양군 창평면 의병로 196', '전라남도', '담양군', 35.2405491519598, 127.021201555097, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인무등산의료재단 무등산생태요양병원', '57393', '전라남도 담양군 남면 백아로 2640', '전라남도', '담양군', 35.1311137956287, 127.08136647799, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '일곡요양병원', '61040', '광주광역시 북구 양일로 313 (일곡동)', '광주광역시', '북구', 35.2029050493303, 126.897878996005, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '일곡양지요양병원', '61047', '광주광역시 북구 우치로422번길 32, 지1.1-4층 (삼각동, 양지병원)', '광주광역시', '북구', 35.2023333984555, 126.902791369717, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '헤아림요양병원', '61068', '광주광역시 북구 하서로 290-51 (일곡동)', '광주광역시', '북구', 35.2016029533691, 126.880721330159, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '다움요양병원', '61074', '광주광역시 북구 하서로 387 (양산동)', '광주광역시', '북구', 35.2095936772288, 126.873494872992, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '첨단THE선요양병원', '61089', '광주광역시 북구 첨단연신로 25-0 (연제동)', '광주광역시', '북구', 35.2001933263771, 126.863082324059, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '해피니스요양병원', '61155', '광주광역시 북구 삼정로 142 (두암동)', '광주광역시', '북구', 35.1718990504264, 126.933299452536, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '늘푸른요양병원', '61212', '광주광역시 북구 우치로 20 (중흥동)', '광주광역시', '북구', 35.1693307319242, 126.911135844434, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '에이치요양병원', '61219', '광주광역시 북구 서암대로 187 (신안동)', '광주광역시', '북구', 35.1688386922552, 126.904746170256, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '효드림요양병원', '61223', '광주광역시 북구 들재매길 101 (신안동)', '광주광역시', '북구', 35.1689767196036, 126.899429662458, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '엄마요양병원', '61250', '광주광역시 북구 중흥로91번길 2 (신안동)', '광주광역시', '북구', 35.1638639904907, 126.904612133476, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인평촌의료재단 제주대림요양병원', '63026', '제주특별자치도 제주시 한림읍 한수풀로 58', '제주특별자치도', '제주시', 33.4181446840362, 126.269065185831, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '제주제일요양병원', '63118', '제주특별자치도 제주시 연삼로 16 (연동)', '제주특별자치도', '제주시', 33.4934468045745, 126.49402228131, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '늘봄재활요양병원', '63168', '제주특별자치도 제주시 관덕로 30 (삼도이동)', '제주특별자치도', '제주시', 33.5129816723766, 126.522417582529, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '지오요양병원', '63186', '제주특별자치도 제주시 서광로 222 (삼도일동)', '제주특별자치도', '제주시', 33.4996083143082, 126.52025587964, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '토마토요양병원', '63213', '제주특별자치도 제주시 동광로 42 (이도이동)', '제주특별자치도', '제주시', 33.5022745418032, 126.533320617813, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '사회복지법인인효원제주복지요양병원', '63214', '제주특별자치도 제주시 동광로 96, 동부빌딩 지하2, 지상3층 (이도이동)', '제주특별자치도', '제주시', 33.5052181842575, 126.538262730308, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '아라요양병원', '63241', '제주특별자치도 제주시 한북로 309 (아라일동)', '제주특별자치도', '제주시', 33.4565299843003, 126.546875156863, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '제주의료원부속요양병원', '63243', '제주특별자치도 제주시 산천단남길 10 (아라일동, 제주의료원)', '제주특별자치도', '제주시', 33.4448911815459, 126.560846900382, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '제주사랑요양병원', '63335', '제주특별자치도 제주시 조천읍 신조로 203', '제주특별자치도', '제주시', 33.5186437775632, 126.640563051974, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '드림힐 요양병원', '63344', '제주특별자치도 제주시 조천읍 번영로 957', '제주특별자치도', '제주시', 33.4759685465673, 126.639045638796, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '운주산성요양병원', '30009', '세종특별자치시 전동면 모산고개길 96-25', '세종특별자치시', '', 36.6687952210924, 127.224462819176, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '의료법인 선은의료재단 중앙요양병원', '30016', '세종특별자치시 조치원읍 섭골길 37', '세종특별자치시', '', 36.6137652164847, 127.288274848216, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '한마음효요양병원', '30016', '세종특별자치시 조치원읍 금이로 53-11', '세종특별자치시', '', 36.6328359011141, 127.283001282303, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '조치원노인전문병원', '30042', '세종특별자치시 연서면 도신고복로 789-17', '세종특별자치시', '', 36.6133520491206, 127.237724585722, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '이원건강의료기 전북대병원점', '54907', '전북특별자치도 전주시 덕진구 건지2길 9 (금암동 광명빌)', '전북특별자치도', '전주시', 35.8441610341596, 127.141241649383, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양병원', '정읍아산병원', '56153', '전북특별자치도 정읍시 충정로 606-22 (용계동)', '전북특별자치도', '정읍시', 35.5883888987011, 126.824555763502, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양원', '세종실버타운 평강요양원', '30009', '세종특별자치시 전동면 솔티로 361-15 (전동면)', '세종특별자치시', '', 36.6293576592624, 127.215972021836, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양원', '세종행복요양원', '30012', '세종특별자치시 전동면 운주산로 316 (전동면)', '세종특별자치시', '', 36.6512428646217, 127.270133590112, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양원', '로뎀요양원', '54013', '전북특별자치도 군산시 소룡안1길 28 (소룡동)', '전북특별자치도', '군산시', 35.969828551901, 126.680197710952, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양원', '보현노인전문요양원', '54015', '전북특별자치도 군산시 설림길 30 (소룡동)', '전북특별자치도', '군산시', 35.9730830985144, 126.684800263054, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양원', '엘림요양원', '54037', '전북특별자치도 군산시 서래내길 72 (경암동)', '전북특별자치도', '군산시', 35.9807636367934, 126.725570755979, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양원', '사랑마을요양원', '54045', '전북특별자치도 군산시 나포면 서왕길 84-9 (나포면)', '전북특별자치도', '군산시', 36.0169338084449, 126.792547672276, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양원', '살고싶은집 삼마요양원', '54045', '전북특별자치도 군산시 나포면 철새로 342 (나포면)', '전북특별자치도', '군산시', 36.0236341476361, 126.787233725586, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양원', '사랑마을요양원', '54045', '전북특별자치도 군산시 나포면 서왕길 84-9 (나포면)', '전북특별자치도', '군산시', 36.0169338084449, 126.792547672276, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양원', '군산소망요양원', '54048', '전북특별자치도 군산시 나포면 미루매길 127 (나포면)', '전북특별자치도', '군산시', 36.0434362070024, 126.846637021862, '2025-10-16T00:00:00.000Z');
INSERT INTO facilities (facility_type, facility_name, postal_code, address, sido, sigungu, latitude, longitude, created_at)
VALUES ('요양원', '성모전문요양원', '54051', '전북특별자치도 군산시 서수면 외무장길 87-8 (서수면)', '전북특별자치도', '군산시', 36.0067596005699, 126.859889002419, '2025-10-16T00:00:00.000Z');

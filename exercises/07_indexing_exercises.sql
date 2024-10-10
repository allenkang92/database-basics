
-- 1. '학생' 테이블의 '이름' 열에 인덱스를 생성하세요.
CREATE INDEX idx_학생_이름 ON 학생(이름);

-- 2. EXPLAIN QUERY PLAN을 사용하여 인덱스 생성 전후의 쿼리 실행 계획을 비교해보세요.
-- 인덱스 생성 전
EXPLAIN QUERY PLAN
SELECT * FROM 학생 WHERE 이름 = '김철수';

-- 인덱스 생성 후
EXPLAIN QUERY PLAN
SELECT * FROM 학생 WHERE 이름 = '김철수';

-- 3. '직원' 테이블에서 '부서'와 '연봉'에 대한 복합 인덱스를 생성하고, 이를 활용하는 쿼리를 작성해보세요.
CREATE INDEX idx_직원_부서_연봉 ON 직원(부서, 연봉);

EXPLAIN QUERY PLAN
SELECT * FROM 직원 WHERE 부서 = '개발부' AND 연봉 > 55000;


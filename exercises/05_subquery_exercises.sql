
-- 1. 가장 높은 학년의 학생 이름 찾기
SELECT 이름
FROM 학생
WHERE 학년 = (SELECT MAX(학년) FROM 학생);

-- 2. '컴퓨터공학' 학과에 속한 학생들의 이름 조회
SELECT 이름
FROM 학생
WHERE 학과 = (SELECT 학과명 FROM 학과 WHERE 학과명 = '컴퓨터공학');

-- 3. 평균 연봉보다 높은 연봉을 받는 직원의 이름과 부서 조회
SELECT 이름, 부서
FROM 직원
WHERE 연봉 > (SELECT AVG(연봉) FROM 직원);

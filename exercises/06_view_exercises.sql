
-- 1. '고연봉직원' 뷰 생성 (연봉이 55,000 이상인 직원)
CREATE VIEW 고연봉직원 AS
SELECT 사원번호, 이름, 부서, 연봉
FROM 직원
WHERE 연봉 >= 55000;

-- 2. '고연봉직원' 뷰 조회
SELECT * FROM 고연봉직원;

-- 3. '학과별학생수' 뷰 생성
CREATE VIEW 학과별학생수 AS
SELECT 학과, COUNT(*) AS 학생수
FROM 학생
WHERE 학과 IS NOT NULL
GROUP BY 학과;

-- '학과별학생수' 뷰 조회
SELECT * FROM 학과별학생수;

-- 보너스: '학생정보' 뷰 생성 (학생과 학과 정보 결합)
CREATE VIEW 학생정보 AS
SELECT 학생.학번, 학생.이름, 학생.학과, 학과.학과명, 학생.학년
FROM 학생
LEFT JOIN 학과 ON 학생.학과 = 학과.학과명;

-- '학생정보' 뷰 조회
SELECT * FROM 학생정보;

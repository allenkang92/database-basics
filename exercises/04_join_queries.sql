
-- 1. INNER JOIN 실행
SELECT 학생.이름, 학과.학과명
FROM 학생
INNER JOIN 학과 ON 학생.학과 = 학과.학과명;

-- 2. LEFT OUTER JOIN 실행
SELECT 학생.이름, 학과.학과명
FROM 학생
LEFT OUTER JOIN 학과 ON 학생.학과 = 학과.학과명;

-- 3. 학과가 없는 학생 추가
INSERT INTO 학생 (이름, 학과, 학년) VALUES ('정다훈', NULL, 2);

-- 4. LEFT OUTER JOIN 다시 실행
SELECT 학생.이름, 학과.학과명
FROM 학생
LEFT OUTER JOIN 학과 ON 학생.학과 = 학과.학과명;

-- 5. 결과 비교 및 분석
-- 각 쿼리의 결과를 비교하고, 차이점을 기록해보세요.
-- INNER JOIN과 LEFT OUTER JOIN의 결과가 어떻게 다른지, 특히 학과가 없는 학생의 처리에 주목하세요.

-- 6. 추가 실습: 학과별 학생 수 조회
SELECT 학과.학과명, COUNT(학생.이름) as 학생수
FROM 학과
LEFT OUTER JOIN 학생 ON 학과.학과명 = 학생.학과
GROUP BY 학과.학과명;

-- 이 쿼리의 결과를 분석하고, LEFT OUTER JOIN을 사용한 이유를 생각해보세요.

-- 7. 토론 주제:
-- - INNER JOIN과 LEFT OUTER JOIN의 주요 차이점은 무엇인가요?
-- - 어떤 상황에서 LEFT OUTER JOIN이 INNER JOIN보다 유용할 수 있을까요?
-- - 실제 업무에서 이러한 JOIN들을 어떻게 활용할 수 있을지 예를 들어 설명해보세요.

-- 새로운 학생 추가
INSERT INTO 학생 (이름, 학과, 학년) VALUES ('홍길동', '영문학', 1);

-- 모든 학생 조회
SELECT * FROM 학생;

-- 이영희의 학년을 4학년으로 변경
UPDATE 학생 SET 학년 = 4 WHERE 이름 = '이영희';

-- 학년이 4인 학생 조회
SELECT * FROM 학생 WHERE 학년 = 4;

-- 학번이 3인 학생 삭제
DELETE FROM 학생 WHERE 학번 = 3;

-- 최종 학생 목록 조회
SELECT * FROM 학생;
-- 테이블 생성
CREATE TABLE 직원 (
    사원번호 INTEGER PRIMARY KEY,
    이름 TEXT NOT NULL,
    부서 TEXT,
    입사일 DATE
);

-- 데이터 삽입
INSERT INTO 직원 (이름, 부서, 입사일) VALUES ('김철수', '개발부', '2023-01-15');
INSERT INTO 직원 (이름, 부서, 입사일) VALUES ('이영희', '인사부', '2022-11-01');

-- 데이터 조회
SELECT * FROM 직원;

-- 테이블 구조 변경 (열 추가)
ALTER TABLE 직원 ADD COLUMN 연봉 INTEGER;

-- 데이터 수정
UPDATE 직원 SET 연봉 = 60000 WHERE 이름 = '김철수';
UPDATE 직원 SET 연봉 = 55000 WHERE 이름 = '이영희';

-- 수정된 데이터 조회
SELECT * FROM 직원;

-- 데이터 삭제
DELETE FROM 직원 WHERE 이름 = '이영희';

-- 최종 데이터 조회
SELECT * FROM 직원;
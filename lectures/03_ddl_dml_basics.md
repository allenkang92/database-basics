# SQLite DDL과 DML 기본 명령어

## 1. DDL (Data Definition Language)

DDL은 데이터베이스 구조를 정의하는 언어입니다.

### CREATE

새로운 테이블을 생성합니다.

```sql
CREATE TABLE 직원 (
    사원번호 INTEGER PRIMARY KEY,
    이름 TEXT NOT NULL,
    부서 TEXT,
    입사일 DATE
);
```

### ALTER

기존 테이블의 구조를 변경합니다. SQLite에서는 제한적인 ALTER TABLE 기능을 제공합니다.

```sql
ALTER TABLE 직원 ADD COLUMN 연봉 INTEGER;
```

### DROP

테이블을 삭제합니다.

```sql
DROP TABLE 직원;
```

## 2. DML (Data Manipulation Language)

DML은 데이터를 조작하는 언어입니다.

### SELECT

데이터를 조회합니다.

```sql
SELECT 이름, 부서 FROM 직원 WHERE 연봉 > 50000;
```

### INSERT

새로운 데이터를 삽입합니다.

```sql
INSERT INTO 직원 (이름, 부서, 입사일) VALUES ('김철수', '개발부', '2023-01-15');
```

### UPDATE

기존 데이터를 수정합니다.

```sql
UPDATE 직원 SET 부서 = '영업부' WHERE 사원번호 = 1;
```

### DELETE

데이터를 삭제합니다.

```sql
DELETE FROM 직원 WHERE 사원번호 = 1;
```

## 실습

SQLite에서 다음 SQL 문을 순서대로 실행해보세요:

```sql
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
```

이 실습을 통해 DDL과 DML 명령어의 기본적인 사용법을 SQLite 환경에서 익힐 수 있습니다.
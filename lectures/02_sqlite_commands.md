# SQLite 기본 명령어

## 1. SELECT 문

SQLite에서 데이터를 조회하는 데 사용됩니다.

기본 구문:
```sql
SELECT column1, column2, ... FROM table_name WHERE condition;
```

예제:
```sql
SELECT 이름, 학과 FROM 학생 WHERE 학년 = 3;
```

## 2. INSERT 문

새로운 레코드를 테이블에 삽입합니다.

기본 구문:
```sql
INSERT INTO table_name (column1, column2, ...) VALUES (value1, value2, ...);
```

예제:
```sql
INSERT INTO 학생 (이름, 학과, 학년) VALUES ('홍길동', '영문학', 1);
```

## 3. UPDATE 문

기존 레코드를 수정합니다.

기본 구문:
```sql
UPDATE table_name SET column1 = value1, column2 = value2, ... WHERE condition;
```

예제:
```sql
UPDATE 학생 SET 학년 = 4 WHERE 이름 = '이영희';
```

## 4. DELETE 문

테이블에서 레코드를 삭제합니다.

기본 구문:
```sql
DELETE FROM table_name WHERE condition;
```

예제:
```sql
DELETE FROM 학생 WHERE 학번 = 3;
```

## 실습

SQLite에서 다음 명령어를 순서대로 실행해보세요:

```sql
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
```

이 실습을 통해 INSERT, SELECT, UPDATE, DELETE 명령어의 기본적인 사용법을 익힐 수 있습니다.
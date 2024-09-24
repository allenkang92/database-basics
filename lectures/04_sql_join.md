# SQL JOIN: INNER JOIN과 OUTER JOIN

## 1. JOIN의 개념

JOIN은 두 개 이상의 테이블에서 관련된 데이터를 결합하는 SQL 연산입니다. JOIN을 사용하면 여러 테이블에 분산된 데이터를 하나의 결과 집합으로 가져올 수 있습니다.

## 2. INNER JOIN

INNER JOIN은 가장 기본적인 JOIN 유형입니다. 두 테이블에서 조건이 일치하는 행만 결과에 포함됩니다.

### 구문:

```sql
SELECT columns
FROM table1
INNER JOIN table2
ON table1.column = table2.column;
```

### 예제:

```sql
SELECT 학생.이름, 학과.학과명
FROM 학생
INNER JOIN 학과 ON 학생.학과 = 학과.학과명;
```

이 쿼리는 학생 테이블과 학과 테이블을 학과명을 기준으로 연결하여, 각 학생의 이름과 해당 학과명을 보여줍니다.

## 3. LEFT OUTER JOIN

LEFT OUTER JOIN은 왼쪽 테이블의 모든 행을 포함하고, 오른쪽 테이블에서 일치하는 행을 가져옵니다. 일치하는 행이 없으면 NULL 값으로 채워집니다.

### 구문:

```sql
SELECT columns
FROM table1
LEFT OUTER JOIN table2
ON table1.column = table2.column;
```

### 예제:

```sql
SELECT 학생.이름, 학과.학과명
FROM 학생
LEFT OUTER JOIN 학과 ON 학생.학과 = 학과.학과명;
```

이 쿼리는 모든 학생을 보여주며, 학과가 없는 학생의 경우 학과명이 NULL로 표시됩니다.

## 실습:

실습 내용은 별도의 '04_join_queries.sql' 파일에서 진행합니다.
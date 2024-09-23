# 데이터베이스와 SQLite 기초

## 1. 데이터베이스란 무엇인가?

데이터베이스는 조직화된 데이터의 집합입니다. 주요 예시로는:

- 은행: 계좌 정보, 거래 내역
- 대학교: 학생 정보, 수강 신청 내역
- 온라인 쇼핑몰: 상품 목록, 주문 내역

### 데이터베이스의 주요 특징:
- 실시간 접근성
- 지속적인 변화
- 동시 공유

## 2. SQLite 소개

SQLite는 서버리스, 설정이 필요 없는 경량 데이터베이스 엔진입니다.

## 3. SQLite 기본 명령어

SQLite 시작:
```
sqlite3 mydatabase.db
```

테이블 생성:
```sql
CREATE TABLE 학생 (
    학번 INTEGER PRIMARY KEY,
    이름 TEXT NOT NULL,
    학과 TEXT,
    학년 INTEGER
);
```

데이터 삽입:
```sql
INSERT INTO 학생 (이름, 학과, 학년) VALUES ('김철수', '컴퓨터공학', 3);
```

데이터 조회:
```sql
SELECT * FROM 학생;
```

## 실습

1. SQLite 시작:
```
sqlite3 university.db
```

2. 학생 테이블 생성:
```sql
CREATE TABLE 학생 (
    학번 INTEGER PRIMARY KEY,
    이름 TEXT NOT NULL,
    학과 TEXT,
    학년 INTEGER
);
```

3. 데이터 삽입:
```sql
INSERT INTO 학생 (이름, 학과, 학년) VALUES ('김철수', '컴퓨터공학', 3);
INSERT INTO 학생 (이름, 학과, 학년) VALUES ('이영희', '경제학', 2);
INSERT INTO 학생 (이름, 학과, 학년) VALUES ('박민수', '물리학', 4);
```

4. 데이터 조회:
```sql
SELECT * FROM 학생;
```

이 실습을 통해 SQLite 데이터베이스 생성, 테이블 생성, 데이터 삽입, 조회의 기본 작업을 경험할 수 있습니다.
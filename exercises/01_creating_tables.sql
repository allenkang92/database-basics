
CREATE TABLE 학생 (
    학번 INTEGER PRIMARY KEY,
    이름 TEXT NOT NULL,
    학과 TEXT,
    학년 INTEGER
);

INSERT INTO 학생 (이름, 학과, 학년) VALUES ('김철수', '컴퓨터공학', 3);
INSERT INTO 학생 (이름, 학과, 학년) VALUES ('이영희', '경제학', 2);
INSERT INTO 학생 (이름, 학과, 학년) VALUES ('박민수', '물리학', 4);

SELECT * FROM 학생;

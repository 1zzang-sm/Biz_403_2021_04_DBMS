use db_school;

select * from tbl_student;
select * from tbl_score;
CREATE TABLE tbl_score (
/*
TABLE에 INSERT INTO ON DUPLICATE KEY UPDATE를 
실행하기 위해서는 PK설정을 변경해야 한다.
tbl_score는 두개의 칼럼을 기준으로 
	DELETE, UPDATE를 수행하는 문제가 발생한다.
가장 좋은 설계는 UPDATE, DELETE를 수행할때 
	한개의 칼럼으로 구성된 PK를 기준으로 수행하는 것이다.
*/
	-- sc_seq BIGINT AUTO_INCREMENT PRIMARY KEY,
	sc_stnum CHAR(8) NOT NULL,
	sc_sbcode CHAR(4) NOT NULL,
	sc_score INT NOT NULL,
    PRIMARY KEY(sc_stnum, sc_sbcode)
);
/*
PK는 그대로 살려두고
두개의 칼럼을 묶어 UNIQUE로 설정
두개 칼럼의 동시에 값이 같은 경우는 추가하지 말라는 제약조건설정 
*/
CREATE TABLE tbl_score(
	sc_stnum CHAR(8) NOT NULL,
	sc_sbcode CHAR(4) NOT NULL,
	sc_score INT NOT NULL,
    UNIQUE(sc_stnum, sc_sbcode)
);
DROP TABLE tbl_score;

SELECT * FROM tbl_subject;
select * from tbl_student;
select * from tbl_score;

-- 한학생 세과목의 점수를 개별적으로 INSERT하기
INSERT INTO tbl(sc_stnum, sc_sbcode, sc_score)
VALUES ('20210003', 'S001',90);
INSERT INTO tbl(sc_stnum, sc_sbcode, sc_score)
VALUES ('20210003', 'S002',90);
INSERT INTO tbl(sc_stnum, sc_sbcode, sc_score)
VALUES ('20210003', 'S003',90);
 
INSERT INTO tbl_score(sc_stnum, sc_sbcode, sc_score)
VALUES('20210002','S001',90),
('20210002','S002',97),
('20210002','S003',70),
('20210002','S004',80),
('20210002','S005',65);

SELECT * FROM tbl_score;

create database myLibs;
use myLibs;








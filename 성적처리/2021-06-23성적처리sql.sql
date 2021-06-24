create database mydb;
use mydb;
create table tbl_books (
	bk_isbn char(13) primary key,
    bk_title varchar(125) not null,
    bk_ccode char(5) not null,
    bk_acode char(5) not null,
    bk_date varchar(10),
    bk_price int ,
    bk_pages int
);

create table tbl_company (
	cp_code char(5) primary key,
    cp_title varchar(125) not null,
    cp_ceo varchar(20),
    cp_tel varchar(20),
    cp_addr varchar(125),
    cp_genre varchar(30)
);

create table tbl_author (
	au_code char(5) primary key,
    au_name varchar(50) not null,
    au_tel varchar(20),
    au_addr varchar(125),
    au_genre varchar(30)
);

create table tbl_user(
	u_username varchar(50) not null,
    u_password varchar(50) not null,
    u_name varchar(30) not null,
    u_nname varchar(30) not null,
    u_email varchar(50),
    u_tel varchar(20),
    u_addr varchar(125)
);

DESC tbl_books;
use mydb;

CREATE DATABASE db_school;
use db_school;

CREATE TABLE tbl_student(
	st_num CHAR(8) PRIMARY KEY,
	st_name VARCHAR(20) NOT NULL,
	st_dept VARCHAR(20) NOT NULL,
	st_grade INT NOT NULL,
	st_tel VARCHAR(15) NOT NULL,
	st_addr VARCHAR(125)
);

INSERT INTO tbl_student(st_num, st_name, st_dept, st_grade, st_tel)
VALUES ('2021001' ,'홍길동' ,'컴공과',3,'010-111-1234');

SELECT * FROM tbl_student;

COMMIT;

CREATE TABLE tbl_score (
	sc_seq BIGINT AUTO_INCREMENT PRIMARY KEY,
	sc_stnum CHAR(8) NOT NULL,
	sc_sbcode CHAR(4) NOT NULL,
	sc_score INT NOT NULL
);
DROP TABLE tbl_score;
INSERT INTO tbl_score(sc_stnum, sc_sbcode, sc_score)
VALUES ('2021001', 'S001', 67);
INSERT INTO tbl_score(sc_stnum, sc_sbcode, sc_score)
VALUES ('2021001', 'S002', 80);
INSERT INTO tbl_score(sc_stnum, sc_sbcode, sc_score)
VALUES ('2021001', 'S003', 90);
INSERT INTO tbl_score(sc_stnum, sc_sbcode, sc_score)
VALUES ('2021001', 'S004', 75);
INSERT INTO tbl_score(sc_stnum, sc_sbcode, sc_score)
VALUES ('2021001', 'S005', 70);

SELECT * FROM tbl_score;

CREATE TABLE tbl_subject(
	sb_code	CHAR(4),
	sb_name	VARCHAR(20)	NOT NULL,
	sb_prof	VARCHAR(20)
);
DROP TABLE tbl_subject;
INSERT INTO tbl_subject( sb_code, sb_name, sb_prof)
VALUES ('S001', '국어', '홍길동');
INSERT INTO tbl_subject( sb_code, sb_name)
VALUES ('S002', '수학');
INSERT INTO tbl_subject( sb_code, sb_name, sb_prof)
VALUES ('S003', '영어', '성춘향');
INSERT INTO tbl_subject( sb_code, sb_name)
VALUES ('S004', '음악');
INSERT INTO tbl_subject( sb_code, sb_name, sb_prof)
VALUES ('S005', '과학', '아인슈타인');


SELECT * FROM tbl_subject;




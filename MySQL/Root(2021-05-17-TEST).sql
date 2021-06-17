-- 현재 존재하는 DataBase를 보여달라
-- sakila는 예제 , mysql 데이터저장
show databases;
-- 지금부터 MYSQL DataBase를 사용하겠다.
-- 사용자와 연관이 없이 기본적으로 사용할 Database를 선언하여 사용할 준비
USE MYSQL;
-- 현재 접속한 DataBase(mysql)에 있는 모든 table을 보여달라
SHOW tables;
-- myDB라는 DataBase(데이터 저장소) 생성
CREATE DATABASE myDB;
-- 생성된 저장소 확인
SHOW DATABASES;
USE myDB;
-- 현재 DB를 보여달라
SHOW TABLES;
CREATE TABLE tbl_test(
	id BIGINT PRIMARY KEY 
			AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    tel VARCHAR(50),
    addr VARCHAR(125)
);
SHOW TABLES;

-- MySQL은 Linux 철학을 유지하고 있기 때문에 
-- 명령이 정상으로 수행되면 아무런 메세지도 보이지 않는다.
CREATE TABLE tbl_books (
	bk_isbn	CHAR(13) PRIMARY KEY,
	bk_title VARCHAR(125) NOT NULL,
	bk_code	VARCHAR(5) NOT NULL,
	bk_acode VARCHAR(5) NOT NULL,
	bk_date	VARCHAR(10),
	bk_price	INT,
	bk_pages	INT

);
SHOW TABLES;
DESC tbl_books;

-- MySQL 에서는 일련번호와 관련된 칼럼에 
-- auto_increment 옵션을 설정하면 
-- insert 할때 값을 지정하지 않아도 
-- 자동으로 ID, SEQ 값을 생성하여 칼럼에 추가하여 준다.
DESC tbl_test;
INSERT INTO tbl_test(name, tel, addr)
VALUES('홍길동','010-111-1111','서울시');

SELECT * FROM tbl_books;

DROP TABLE tbl_books;

SELECT COUNT(*)
FROM tbl_books;

-- 도서 가격이 25000원 이상인 데이터 
SELECT *
FROM tbl_books
WHERE bk_price >= 25000;

-- 도서 가격이 만원 이상 2만원 이하
SELECT * 
FROM tbl_books
WHERE bk_price BETWEEN 10000 AND 20000;

SELECT * 
FROM tbl_books
WHERE bk_price >= 10000 AND bk_price <= 20000;

-- 도서명에 '왕' 문자열이 있는 데이터
SELECT * 
FROM tbl_books
WHERE bk_title LIKE '%왕%';

-- java에서 사용할때는 %를 바로 사용할 수 없어서 아래와 같이 
-- Java 등 코딩에서 중간 문자열 검색
-- oracle : '%' || '왕' || '%'
-- MySQL : ConCat('%','왕','%')
SELECT *
FROM tbl_books
WHERE bk_title LIKE CONCAT('%', '왕', '%');

-- 날짜 칼럼의 앞에 4글자만 보여라
SELECT LEFT(bk_date, 4)
FROM tbl_books;

-- 발행일이 2018년인 도서들
SELECT *
FROM tbl_books
WHERE LEFT(bk_date,4) = '2018';

-- 발행일순으로 정렬하여 보여라
SELECT *
FROM tbl_books
ORDER BY bk_date;

-- 도서명으로 역순으로 정렬하여 보여라
SELECT * 
FROM tbl_books
ORDER BY bk_title DESC;

-- 처음 3개의 데이터만 보여라
SELECT *
FROM tbl_books
LIMIT 3;

-- 4번째(0부터 시작하여 3번)데이터부터 2개를 보여라
-- 게시판 등 코딩에서 pagination 을 구현할때 사용하는 코딩
SELECT *
FROM tbl_books
LIMIT 3, 2;

CREATE DATABASE bookRent;
USE BookRent;

CREATE TABLE tbl_books(
	bk_isbn	CHAR(13),
	bk_title	VARCHAR(125)	NOT NULL,
	bk_code	VARCHAR(5)	NOT NULL,
	bk_acode	VARCHAR(5)	NOT NULL,
	bk_date	VARCHAR(10)	,
	bk_price	INT	,
	bk_pages	INT	
);

CREATE TABLE tbl_company(
cp_code	CHAR(5)		PRIMARY KEY,
cp_title VARCHAR(125)	NOT NULL,
cp_ceo	VARCHAR(20),
cp_tel	VARCHAR(20),	
cp_addr	VARCHAR(125),		
cp_genre VARCHAR(30)		
);
DROP TABLE tbl_author;
CREATE TABLE tbl_author (
	au_code	CHAR(5)		PRIMARY KEY,
	au_name	VARCHAR(50)	NOT NULL,	
	au_tel	VARCHAR(20)	,	
	au_addr	VARCHAR(125),		
	au_genre VARCHAR(30)		
);

CREATE TABLE tbl_buyer(
bu_code CHAR(5),
bu_name VARCHAR(50),
bu_birth INT NOT NULL,
bu_tel VARCHAR(20),
bu_addr VARCHAR(125)
);

CREATE TABLE tbl_book_rent(
br_seq BIGINT PRIMARY KEY AUTO_INCREMENT,
br_sdate VARCHAR(10) NOT NULL,
br_isbn  CHAR(13) NOT NULL,
br_bcode CHAR(5) NOT NULL,
br_edate VARCHAR(10),
br_price INT
);

SELECT COUNT(*) FROM tbl_buyer;

CREATE DATABASE
GuestBook;
CREATE USER gbUser@localhost;

CREATE USER
gbUser@'192.168.0.%';

GRANT
ALL privileges ON *.* TO
'gbUser'@'192.168.0.%';

UPDATE USER
SET password=password('1234')
WHERE user='gbUser';

ALTER USER
'gbUser'@'localhost'
identified WITH
mysql_native_password
BY '12345';

USE mydb;

use bookrent;
SELECT * FROM tbl_company;
CREATE TABLE tbl_todolist (
	td_seq bigint auto_increment PRIMARY KEY,
    td_sdate VARCHAR(10) NOT NULL, -- 추가된 날짜
    td_stime VARCHAR(10) NOT NULL, -- 추가된 시간 
    td_doit VARCHAR(300) NOT NULL, 
    td_edate VARCHAR(10) DEFAULT '', 
    td_etime VARCHAR(10) DEFAULT ''
);

SELECT * FROM tbl_todolist;

use mydb;
SELECT * FROM tbl_company;


CREATE DATABASE mybook;
use mybook;


CREATE TABLE tbl_books (
	bk_isbn		CHAR(13)		PRIMARY KEY,
	bk_title	VARCHAR(125)	NOT NULL,	
	bk_ccode	CHAR(5)			NOT NULL,	
	bk_acode	CHAR(5)			NOT NULL,	
	bk_date		VARCHAR(10),		
	bk_price	INT,		
	bk_pages	INT		
);

CREATE TABLE tbl_company (
	cp_code		CHAR(5)			PRIMARY KEY,
	cp_title	VARCHAR(125)	NOT NULL,
	cp_ceo		VARCHAR(20),		
	cp_tel		VARCHAR(20),		
	cp_addr		VARCHAR(125),		
	cp_genre	VARCHAR(30)		
);

CREATE TABLE tbl_author (
	au_code		CHAR(5)			PRIMARY KEY,
	au_name		VARCHAR(50)		NOT NULL,	
	au_tel		VARCHAR(20),		
	au_addr		VARCHAR(125),		
	au_genre	VARCHAR(30)		
);
SELECT * FROM tbl_company;
DELETE FROM tbl_companytbl_author
WHERE cp_code = "C041";

use mybook;
select * from tbl_company;

CREATE TABLE tbl_member (
	m_username VARCHAR(20) PRIMARY KEY,
	m_password VARCHAR(30) NOT NULL,
	m_name VARCHAR(10) NOT NULL,
	m_nname VARCHAR(30) NOT NULL,
	m_email VARCHAR(50)	,
	m_tel VARCHAR(20),
	m_addr VARCHAR(125)
);
DROP TABLE tbl_member;
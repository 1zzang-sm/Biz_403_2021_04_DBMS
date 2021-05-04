-- 여기는 bookuser 접속

-- 1. USER 삭제 : DROP USER bookuser CASCADE;
-- 2. TABLESPACE 삭제 
--      DROP TABLESPACE RentBookDB
--      INCLUDING CONTENTS AND DATAFILES
--      CASCADE CONSTRAINTS;
-- 3. TableSpace 명 : RentBookDB
--      DataFile 명 : C:/oraclexe/data/rentbook.dbf
--      Size : 1MByte, 자동 증가 1KByte 씩
-- 4. User 명 : bookuser, PW : bookuser
--      Default TableSpace : RentBookDB
--      DBA 권한 부여, 접속 Profile 작성

DROP USER bookuser
CASCADE;

DROP TABLESPACE RentBookDB
INCLUDING CONTENTS AND DATAFILES
CASCADE CONSTRAINTS;

CREATE TABLESPACE RentBookDB
DATAFILE 'C:/oraclexe/data/rentbook.dbf'
SIZE 1M AUTOEXTEND ON NEXT 1K;

CREATE USER bookuser IDENTIFIED BY bookuser
DEFAULT TABLESPACE RentBookDB;

GRANT DBA TO bookuser;


CREATE TABLE tbl_books(
    bk_isbn	CHAR(13) PRIMARY KEY,
    bk_title nVARCHAR2(125)	NOT NULL,	
    bk_code	CHAR(5)	NOT NULL,
    bk_acode CHAR(5)	NOT NULL,
    bk_date	VARCHAR2(10),
    bk_price NUMBER,	
    bk_pages NUMBER		
);

CREATE TABLE tbl_company(
    cp_code	CHAR(5)	PRIMARY KEY,
    cp_title	nVARCHAR2(125)	NOT NULL,
    cp_ceo	nVARCHAR2(20),
    cp_tel	VARCHAR2(20),		
    cp_addr	nVARCHAR2(125),		
    cp_genre	nVARCHAR2(30)		
);

CREATE TABLE tbl_author(
    au_code	CHAR(5)	PRIMARY KEY,
    au_name	nVARCHAR2(50) NOT NULL,
    au_tel	VARCHAR2(20),
    au_addr	nVARCHAR2(125),	
    au_genre nVARCHAR2(30)
);

DROP TABLE tbl_author;
DROP TABLE tbl_company;
DROP TABLE tbl_books;





















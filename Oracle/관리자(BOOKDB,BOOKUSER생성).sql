-- 여기는 관리자접속

-- 1. TableSapce 명 : RentBookDB
--      DataFile 명 : C:/oraclexe/data/rentbook.dbf
--      Size : 1MByte, 자동 증가 1KByte 씩
-- 2. User 명 : bookuser, PW : bookuser
--      Default TableSpace : RentBookDB
--      DBA 권한 부여
--      생성된 사용자 정보를 사용하여 접속 Profile 작성, Test

CREATE TABLESPACE RentBookDB
DATAFILE 'C:/oraclexe/data/rentbook.dbf'
SIZE 1M AUTOEXTEND ON NEXT 1K;

CREATE USER bookuser IDENTIFIED BY bookuser
DEFAULT TABLESPACE RentBookDB;

GRANT CREATE SESSION TO bookuser;
GRANT DBA TO bookuser;
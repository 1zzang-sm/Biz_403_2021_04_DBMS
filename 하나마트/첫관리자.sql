-- 1. iouser, iolistDB TableSpace를 삭제한 후 다시 작성
-- 2. TAbleSpace 명 : IolistDB
--      Datafile명 : C:/oralcexe/data/iolist.dbf
--      size : 1M 자동증가 : 1K
-- 3. user명 : iouser, pw : iouser
--  defalut tablespace : iolistDB
--  DBA권한 부여, "하나마트"접속 profile 작성 

DROP USER iouser CASCADE;
DROP TABLESPACE iolistDB
INCLUDING CONTENTS AND DATAFILES
CASCADE CONSTRAINTS;

CREATE TABLESPACE IolistDB
DATAFILE 'C:/oraclexe/data/iolist.dbf'
SIZE 1M AUTOEXTEND ON NEXT 1K;

CREATE USER iouser IDENTIFIED BY iouser
DEFAULT TABLESPACE IolistDB;

GRANT DBA TO iouser;

-- 시스템에 작성된 TableSpace를 확인하기
SELECT * FROM DBA_TABLESPACE;

-- 오라클의 sYSTEM값
SELECT * FROM DBA_PROFILES;

-- 오라클에 새로 등록된 사용자의 Password 만료일자
-- 기본값이 180으로 되어 있어서 
-- 새로운 사용자 등록 후 비번을 변경하지 않으면 
-- 180일 후 접속이 불가능해 진다.
SELECT * FROM DBA_PROFILES
WHERE RESOURCE_NAME = 'PASSWORD_LIFE_TIME';

-- 사용자의 Password 만료일자를 무제한으로 변경
ALTER PROFILE DEFAULT LIMIT PASSWORD_LIFE_TIME UNLIMITED;









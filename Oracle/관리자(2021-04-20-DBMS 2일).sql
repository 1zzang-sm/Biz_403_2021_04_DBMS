-- DBMS에서 사용자 계정
-- DBMS는 사용자에게 권한등급을 부여하여
--  데이터생성, 조회, 삭제, 변경 등을 세부적으로 지정할 수 있다.
-- 세부적인 항목은 회사, 조직마다 별도로 정책을
-- 만들어 사용하기 때문에
-- 규칙이 정해진 것은 없다
-- 보통 DBMS에서 새로운 사용자 계정을 등록하면
-- 일반적인 명령을 수행할 수 있도록 허용하는데
-- Oracle은 새로운 사용자 계정을 생성하면
-- 아무것도 할 수 없는 상태이다.
-- 관리자(SYSDBA)는 새로 생성된 계정이 무언가
--   명령을 수행할 수 있도록
--   권한을 부여하는 명령을 수행해 주어야한다.
--   오라클은 새로 생성된 사용자 계정은
--   DBMS에 접속하는 것 조차 막아놓는다.
--   때문에 접속 Profile을 만들어도
--   접속 Test에서 오류가 발생한다.

-- DCL(Data Controll Lang. 데이터 제어어)
-- 보안과 관련된 명령
-- scuser 사용자에게 CREATE SESSION 권한을 부여
-- CREATE SESSION : DBMS 서버에 접속(logon)을 할 수 있는 권한
-- GRANT ** TO user : user에게 ** 권한을 부여한다.
GRANT CREATE SESSION TO scuser;
-- REVOKE ** FROM user : user에게서 ** 권한을 제거하기
REVOKE CREATE SESSION FROM scuser;

-- tbl_school TABLE에 데이터를 추가(insert)하는 권한을 scuser에게 부여한다.
GRANT INSERT ON tbl_school TO scuser;
-- tbl_school TABLE의 데이터를 조회(select)할 수 있는 권한을 scuser에게부여한다.
GRANT SELECT ON tbl_school TO scuser;

-- 원칙은 사용자에게 권한을 일일이 지정하여
--      세부적으로 관리해야 한다.
--      하지만 학습(실습)하는 입장에서 
--      일일이 세부적으로 지정하기는 매우 불편함이 있다.
--      사용등록하고 DBA(DB관리자) 권한을 부여하여
--      실습에 용이하도록 사용하겠다.
GRANT DBA TO scUser;









-- 여기는 SCUSER
SELECT * FROM view_성적정보; 

-- Sub Query
-- SQL 명령문 내에 또 다른 SQL명령문을 포함하는 코드
-- JOIN 대신 사용하는 코드이고
-- Sub Query의 99% JOIN을 사용하여 대체할 수 있다.
SELECT st_num AS 학번,
(
SELECT st_num
FROM tbl_student
WHERE st_num = st_num
) AS 이름,
(
SELECT st_dept
FROM tbl_student
WHERE sc_num = st_num
) AS 학과
FROM tbl_score;

/*
 tbl_score 테이블은 학번, 국어, 영어, 수학 칼럼으로 구성되어 있다.
 이 테이블을 사용하던 중 과목의 수가 추가가 되면
 기존 사용하던 table을 변경해야 하는 상황이 발생한다.
 테이블을 변경하는 것은 많은 데이터가 담겨있는 경우
 매우 위험한 실행이 될 수 있다.
 테이블이 변경되는 동안에는 테이블에 Lock이 걸리고
 그 동안은 해당 테이블에 어떠한 쿼리도 적용할 수 없다.
 경우에 따라 기존 데이터가 손상되는 경우 있다.
 때문에 어쩔수 없는 상황 아니면 table을 변경하는 것은
 별로 좋지 않다.
 
 하지만 지금 설계된 tbl_score는 과목의 변동이 발생하면
 어쩔 수 없이 테이블을 변경해야한다.
 이러한 테이블은 설계 단계부터 잘못된 설계이다.

*/


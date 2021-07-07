use mylibs;
drop table tbl_gallery;
drop table tbl_files;

DESC tbl_gallery;

INSERT INTO tbl_files (file_gseq, file_origin, file_upname)
VALUES 
(1, 'title', 'uuid-title'),
(1, 'title', 'uuid-title'),
(1, 'title', 'uuid-title');

-- insert를 수행할때 
-- AUTO_INCREMENT 로 설정된 칼럼에 
-- 0 또는 null, '' 등을 설정하면 
-- auto_increment가 작동된다.
INSERT INTO tbl_gallery
( g_seq, g_writer, g_date, g_time, g_subject, g_content )
VALUES
( 0, '1zzang', '2021', '00:00', '제목', '내용');


SELECT * FROM tbl_files;
select * from tbl_gallery;

-- EQ JOIN
-- 카티션 곱 : 두개의 테이블을 JOIN 하여 table1 개수 * table2 개수 만큼 list 출력 
select * from tbl_gallery G , tbl_files F 
where G.g_seq = F.file_gseq
    and G.g_seq = 1;

create view view_갤러리 
AS (
select 
G.g_seq AS g_seq, 
G.g_writer AS g_writer, 
G.g_date AS g_date, G.g_time AS g_time,
G.g_subject AS g_subject,
G.g_content AS g_content, 
G.g_image AS g_image,
F.file_seq AS f_seq, 
F.file_original AS f_original, 
F.file_upname AS f_upname
from tbl_gallery G , tbl_files F 
where G.g_seq = F.file_gseq
);
DESC view_갤러리;
SELECT * FROM view_갤러리;

-- 기존의 외래키 설정된 테이블에서 데이터를 삭제할려하면 오류가 발생한다.
-- forgin key 설정의 on delete -> cascade : 기존의 데이터 삭제시 참조하던 테이블의 데이터도 삭제한다.
-- 알아서 찾아서 해줌
use yhdb;
select * from series;
delete from series
where id = 1;

select *from reviews;
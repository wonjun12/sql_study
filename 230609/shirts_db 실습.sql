-- 모든 셔츠의 article과 color를 가져오시오
select article, color
from shirts;

-- medium 사이즈의 셔츠에서 shrit_id만 빼고 전체 컬럼 가지고 오시오
select article, color, shirt_size, last_worn
from shirts
where shirt_size = 'M';

-- polo 셔츠의 사이즈를 L로 변경하세오
update shirts
set shirt_size = 'L'
where article = 'polo shirt';

-- last worn이 15인 데이터를 0으로 변경하라
update shirts
set last_worn = 0
where last_worn = 15;

-- blue 셔츠의 사이즈는 XS로, 컬러는 off white로 변경하세요.
select * from shirts where color = 'Blue';

update shirts
set shirt_size = 'XS', color = 'off white'
where color = 'Blue';

-- last worn 200일이 지난 셔츠를 삭제하세요.
delete from shirts
where last_worn = 200;

-- 유행이 지난, tank tops는 삭제합니다.
select article
from shirts;

delete from shirts
where article = 'tank top';

-- 셔츠 테이블의 모든 데이터를 삭제하세요.
delete from shirts;

-- 셔츠테이블을 삭제하라
drop table shirts;
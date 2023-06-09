SELECT * FROM yhdb.cats3;

-- 고양이 이름이 Jackon인 고양이의 데이터를 가져오시오.
select * 
from yhdb.cats3
where name='Jackson';


-- 고양이 이름이 Jackon인 고양이의 이름과 나이를 가져오시오.
select name, age
from yhdb.cats3
where name='Jackson';

-- 데이터를 수정하는 방법
update cats3
set name = 'Jack'
where name = 'Jackson';

-- Ringo 라는 이름의 고양이 데이터를 가져오시오.
select *
from cats3
where name = 'Ringo';

-- Ringo 라는 이름의 고양이 나이를 12로 변경하라
update cats3
set age = 12
where name = 'Ringo';

-- breed가 Coon인 고양이의 아이디와 이름, 나이를 가져오시오
select id, name, age
from cats3
where breed = 'Coon';

-- breed가 Coon인 고양이의 나이와 이름을 가져오시오
select age, name
from cats3
where breed = 'Coon';

-- breed가 Coon인 고양이의, 나이를 15으로 바꿔라
update cats3
set age = 15
where breed = 'Coon';

-- 고양이 나이가 7세 이상인 고양이의 데이터를 가져오시오
select *
from cats3
where age >= 7;

-- 고양이의 breed가 Tabby인 고양이의 이름은 Hello로 , 나이는 3으로 변경해주세요
update cats3
set name='Hello', age = 3
where breed = 'Tabby';

-- 데이터 삭제하는 방법
-- 이름이 Egg인 고양이의 데이터를 삭제하시오.
delete from cats3
where name = 'Egg';

-- 전체 데이터 삭제
delete from cats3;
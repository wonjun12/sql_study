select *
from books
where released_year between 1990 and 2015;


-- 년도 별 을 하는 방법
-- having
select avg(stock_quantity) as avg_stock
from books
group by released_year having avg_stock >= 70;
 -- group by 로 생겨난 조건을 having으로 한번더 조건을 둠
 
-- 출간년도가 2000년 이상인 책들을 '최근책'
-- 아닌것 들을 '예전책' 이라고 하는 type 컬럼을 만들자.
select *, 
	case
		when released_year >= 2000 then '최근책'
        else '예전책'
    end as type
from books; 

-- 조건이 2개인 경우, if 함수를 사용해도 된다.
select *,
	if(released_year >= 2000, '최근책', '예전책') as type
from books;

-- stock_quantity에 NULL이 있으면 0으로 셋팅하라.
-- ifnull() 함수
select *,
	ifnull(stock_quantity, 0)
from books;
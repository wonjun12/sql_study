
insert into orders
(order_date, amount, customer_id)
values
(curdate(), 10.5, 3);


select * from customers;
select * from orders;


-- 2개 테이블을, 하나로 합쳐서 가져오시오.
select * 
from orders
join customers
on orders.customer_id = customers.id;

-- 테이블의 이름을 줄여서 사용하는 방법
select * 
from orders as o 
join customers as c
on o.customer_id = c.id;

-- 중복된 컬럼이름을 변경해야 한다.
select o.id as orders_id, order_date, amount, o.created_at, c.id as customers_id, first_name, last_name, email
from orders as o 
join customers as c
on o.customer_id = c.id;

-- 위의 조인
-- 두 개의 테이블에, 공통으로 들어있는 데이터만 합쳐서 가져온 것이다.

-- 모든 고객 데이터를 가져오되, 주문 정보가 없는 고객도 나타나도록 가져오는 방법
-- left join, right join
select *
from customers c
left join orders o
on c.id = o.customer_id;

-- 주문 금액이 600달러보다 큰 데이터를 가져오시오.
-- 그 사람의 이메일 주소와 이름을 확인해야함
select * 
from customers c
join orders o
on c.id = o.customer_id
where amount > 600;

-- 고객 아이디가 36인 사람의 주문 내역을 가져오시오
select o.*
from customers c
join orders o
on c.id = o.customer_id
where c.id = 36;

-- 주문금액이 300 이상이고, 500이하인 주문내역을 가져오시오.
-- 단, 주문한 사람의 이메일 정보도 같이 나와야함
select *
from orders o
	join customers c
    on o.customer_id = c.id
where o.amount between 300 and 500;

-- 각 고객별로, 주문수를 나타내시오
select c.id, c.first_name, c.last_name, count(o.id) as 주문수
							-- count(*)로  하면, 주문이 없어도 1이상으로 표시될수 있다.
from customers c
	join orders o 
    on c.id = o.customer_id
group by c.id;


-- 각 고객별 주문금액 평균이
-- 300달러 이상인 데이터만 가져와라.
select c.id, c.first_name, avg(o.amount) as avgs
from customers c
	join orders o
    on c.id = o.customer_id
group by c.id having avgs > 300;

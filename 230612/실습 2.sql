
-- 제목에 stories가 포함된 데이터를 제목만 조회
select title
from books
where title like '%stories%';

-- 페이지 수가 가장 긴 책을 찾아서, 제목과 페이지수를 조회하시오.
select title, pages
from books
order by pages desc
limit 1;

-- 가장 최근에 발간된 책 3권을 찾아서, 책의 제목과 발간년도를 조회하되, 
-- -을 붙여서 조회하시오 
select concat_ws(' - ', title, released_year) as summary
from books
order by released_year desc
limit 3;

-- author_lname 에 공백이 들어있는 사람의 책제목과 author_lname을 조회
select title, author_lname
from books
where author_lname like '% %';

-- 가장 stock_quantity가 적은 책 3권의 title, year, stock_quantity를 조회하시오
select title, released_year, stock_quantity
from books
order by stock_quantity
limit 3;

-- author_lname과 title로 정렬한 후, 
-- title과 author_lname을 조회하시오
select title, author_lname
from books
order by author_lname, title;

-- author_lname으로 정렬하되, My favorite author is 를 붙여서 조회
select upper(concat('My favorite author is ', author_fname, ' ' ,author_lname , '!'))
from books
order by author_lname;

-- 1980년 이전에 발행된 책을 가져오시오
select title
from books
where released_year <= 1980;

select *
from books;
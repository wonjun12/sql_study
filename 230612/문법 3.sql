-- sub query 하는 방법
select max(pages)
from books;

select *
from books
where pages = 634;


select *
from books
where pages = (
	select max(pages)
	from books);
    

select title, author_fname, author_lname
from books
where stock_quantity = (
	select min(stock_quantity)
    from books);
    
-- 각 작가의 full name 별로,
-- 해당 작가의 최초 책 발간한 년도는 언제?
select author_fname, author_lname , min(released_year)
from books
group by author_fname, author_lname;

-- 각 작가별(풀 네임별), 자신이 쓴 책 중 가장 긴책의 페이지수를 보여달라
select max(pages), author_fname
from books
group by author_fname, author_lname;


-- 값을 모두 더해주는 함수
-- sum()
select sum(pages)
from books;

-- 평균을 구하는 함수 
-- avg()
select avg(pages)
from books;
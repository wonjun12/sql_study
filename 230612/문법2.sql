-- 데이터를 유니크 하게 가져오는 키워드
-- distinct
select distinct author_lname
from books;

-- 풀네임으로 중복제거
select distinct concat(author_fname, author_lname)
from books;

-- 데이터 정렬 방법 order by 키워드
-- order by
select author_lname
from books
order by author_lname asc;

select author_lname
from books
order by author_lname desc;

-- 데이터를끊어서 가져오는 방법
-- limit 키와드와 (offset)
select *
from books
limit 0,  5;

select *
from books
limit 5;

-- 갯수를 세는 함수 count()
select count(*)
from books;


-- 출간년도 내림차순으로 정렬하고, 처음부터 7개 데이터 가져오기
select *
from books
order by released_year desc
limit 7;

-- 문자열 안에, 원하는 문자열이 들어있는지 검색
-- like 키워드
select *
from books
where title like '%the%';
-- % 기호 사용

-- stock_quantity 의 숫자가, 2자리인 데이터 찾기
select *
from books
where stock_quantity like '__';

-- 집계하는 방법
-- ~ 별로 묶어서
-- group by 키워드
select author_lname, count(*)
from books
group by author_lname;


-- 최대 값 구하는 함수 max()
select max(pages)
from books;

-- 최소 값 구하는 함수 min()
select min(pages)
from books;


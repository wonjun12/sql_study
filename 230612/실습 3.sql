use yhdb;
-- Eggers Chabon이 쓴 책을 가져오시오
select title
from books
where author_lname like 'Eggers' or author_lname like 'Chabon';

select *
from books
where author_lname in ('Eggers', 'Chabon');

-- Lahiri가 썻고, 2000년 이후에 발행된 책을 가져오시오
select title
from books
where author_lname = 'Lahiri' and released_year >= 2000;

-- 페이지 수가 100부터 200까지인 책들을 가져오시오
select title
from books
where pages between 100 and 200;

-- lname이 C나 S로 시작하는 작가가 쓴 책을 가져오시오
select title
from books
where author_lname like 'C%shirts' or author_lname like 'S%';



select title, author_lname,
	case
		when title like '%stories%' then 'Short Stories'
        when title like '%Just Kids%' or title like '%A Heartbreaking Work%' then 'Memoir'
        else 'Novel'
    end as TYPE
from books;


-- 그룹바이로 만들어진 컬럼끼리는 실행시에 정보를 알수가 없어서 참조할 수 없다.
select  title, author_lname, 
	concat(count(*), if(count(*) > 1, ' books', ' book')) as COUNT
from books
group by author_lname
order by author_lname;
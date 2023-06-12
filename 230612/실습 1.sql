-- 실습 

-- 타이틀의 공백을 '->' 로 바꿔서 나오도록 조회 
select replace(title, ' ', '->') as title
from books;

-- reverse()사용하기
select author_lname as forwards, reverse(author_lname) as backwards
from books;

-- 이름을 합치되 대문자로 합쳐서 조회
select upper(concat_ws(' ', author_fname, author_lname) ) as 'full name in caps'
from books;

-- 타이틀 컬럼과 년도 컬럼을 합치되 was released in 이 들어가도록 합쳐서 조회하시오
select concat_ws(' was released in ', title, released_year) as blurb
from books;

-- 타이틀과, 타이틀에 적힌 글자의 갯수가 나오도록 조회
select title, char_length(title) as 'character count'
from books;

-- 숏타이틀은 앞에서 10글자만 나오고 뒤에 ...이 나오도록 만들고, author 는 이름 2개 컬럼을 합치고,
-- quantity는 원래 숫자에 in stock이 붙도록 조회 하시오.
select concat(substr(title, 1, 10), '...') as 'short title', concat_ws(',',author_lname, author_fname ) as author, 
concat(stock_quantity, ' in stock') as quantity
from books;

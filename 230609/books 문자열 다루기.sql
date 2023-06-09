-- 문자열 데이터 다루기

select *
from books;

-- fname, lname이 분리되어 있음 합쳐서 full_name으로 가져오고 싶음
-- concat 함수 > 문자열 합치는 함수
select concat(author_fname, ' ', author_lname) as full_name
from books;

-- 책제목 : 작가 풀네임으로 나오도록 concat 사용
select concat(title, ' : ', author_fname, ' ', author_lname) as '책 : 작가'
from books;

-- 합칠때 자동으로 공백을 들어가게 해주는 함수
-- concat_ws()
-- 첫번째 파라미터에 넣은 값이 변수끼리의 중간에 들어갈 값이 정하는 것이다.
select concat_ws(' ', author_fname, author_lname)
from books;

-- 문자열 데이터의 일부분만 가져오는 함수
-- substring() 함수
-- 책 제목을 10글자만 보여주려한다.
select substring(title, 1, 10) as short_title
from books;

-- 제목을 맨 뒤에서 7번째 글자부터 끝까지 가져오시오
select substr(title, -7)
from books;
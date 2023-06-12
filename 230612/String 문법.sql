use yhdb;

-- 문자열 자르기 replace()
select replace(title, 'The', '')
from books;

-- 문자열의 순서를 역순으로 바꿔주는 함수
-- reverse()
select reverse( title )
from books;

-- 책 제목을 맨 앞부터 10글자만 가져오고,
-- 뒷부분은 ... 을 붙여서 가져오시오.
select concat(substr(title, 1, 10), '...')
from books;

-- 문자열의 갯수(길이)를 구하는 함수
-- char_length()
select char_length(title)
from books;

-- 원래의 테이블에 책제목의 길이를 구한 컬럼까지 함꼐 보여달라.
select title, char_length(title)
from books;

-- 대소문자 처리 함수
-- upper(), lower()
select upper(title), lower(title)
from books;
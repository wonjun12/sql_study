select * from user;
select * from movie;
select * from review;

-- 메인 화면
-- 영화명, 리뷰 갯수, 별점 평균 정보를 보여준다.
-- 하트 즐겨찾기
select m.title, count(r.id) as review_count, avg(r.rating) as review_avg, count(h.movie_id) as hart_save
from movie m
	join review r
    on r.movie_id = m.id
    left join hart_save h
    on h.movie_id = m.id
group by m.id;

-- 정렬 조건 리뷰 갯수 내림차순 정렬
select m.title, count(r.id) as review_count, ifnull(avg(r.rating), 0) as review_avg, count(h.movie_id) as hart_save
from movie m
	left join review r
    on r.movie_id = m.id
    left join hart_save h
    on h.movie_id = m.id
group by m.id
order by review_count desc;

-- 정렬 조건 별점 평군 내림 차순 정렬
select m.title, count(r.id) as review_count, ifnull(avg(r.rating), 0) as review_avg, count(h.movie_id) as hart_save
from movie m
	left join review r
    on r.movie_id = m.id
    left join hart_save h
    on h.movie_id = m.id
group by m.id
order by review_avg desc;

-- 영화 상세 정보 화면
select m.*, count(r.id) as review_count, ifnull(avg(r.rating), 0) as review_rating
from movie m
	left join review r
    on r.movie_id = m.id
where m.id = 3
group by m.id;

-- 영화 리뷰 정보 보여주기
select r.content, r.rating, u.name, r.created_at
from review r
	join user u
    on r.user_id = u.id
where r.movie_id = 3
order by r.created_at desc
limit 0, 25;

-- 검색 화면
-- 검색에 입력한 글자 저장 (내가 과거에 검색했던 단어들이 나옴)
-- 테이블 생성 후 검색
select content
from search_movie
where user_id = 1
order by created_at desc;

-- 내 정보 화면
select id, email, name, gender
from user
where id = 1;
-- 내 리뷰 리스트 전부 가져오기
select m.title, r.rating
from user u
	left join review r
    on u.id = r.user_id
    join movie m
    on m.id = r.movie_id
where u.id = 1;


-- 즐겨 찾기 찾기 기능
select m.title, count(r.id) as review_count, ifnull(avg(r.rating), 0) as review_avg
from hart_save h
	join movie m
    on h.movie_id = m.id
    left join review r
    on r.movie_id = m.id
where h.user_id = 3
group by h.movie_id;


-- 사진, 유저 이름, 유저 id, likes, tags 들고와서 클라이언트에게 주기

-- 우선 첫번째로 줄 데이터를 정렬한다.
-- tag의 이름들이 갯수가 많아서 따로 넘겨줄 예정
select p.*, u.username, count(l.id) as like_count
from photos p
	join users u
    on p.user_id = u.id
    join likes l
    on l.photo_id = p.id
where p.id = 1;

-- 다르게 만들어 넘겨주자.
select tag_name
from photos p
	join photo_tags pt
    on pt.photo_id = p.id
    join tags t
    on pt.tag_id = t.id
where p.id = 1;

-- 꼭 한개의 컬럼안에 모든것을 넣어서 할 필요는 없다.

-- 특정 사진의 댓글과 작성자 이름을 가져오자.
select c.id as comment_id, c.comment_text,c.create_ad, u.id as user_id, u.username
from comments c
	join users u
    on c.user_id = u.id
where photo_id = 1
order by c.create_ad desc;
    
    
-- 작성 갯수, follwers 갯수, following 갯수 구하자.
-- 한번의 컬럼으로는 구하지 못함.
select count(*) as posts_total
from photos
where user_id = 1;

select count(*) as follower_total
from follows
where follower_id = 1;

select count(*) as followee_total
from follows
where followee_id = 1;
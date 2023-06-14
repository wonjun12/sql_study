
-- 가장 오래된 회원 5명 찾으시오
select *
from users
order by created_at
limit 5;

-- 회원가입을 가장 많이 하는 요일은?
select dayname(created_at) as create_user_week,
 count(*) as COUNT
from users
group by create_user_week
order by COUNT desc;


-- 회원가입은 했지만, 사진은 한번도 올리지 않은, 유령회원들의 데이터를 가져오시오
select u.id, u.username, u.created_at
from users u
	left join photos p
    on u.id = p.user_id
where p.id is null;


-- 가장 유명한 사진은 무엇인지 찾아서,
-- 그 사진의 유저이름, image_url,, 좋아요 수를 나타내시오.
select u.username as username, p.image_url as image_url, count(photo_id) as COUNT
from likes l
    join photos p
    on p.id = l.photo_id
    join users u
    on p.user_id = u.id
group by photo_id
order by COUNT desc
limit 1;

-- 가장 많이 사용된 해시태그의 이름은 무엇이며, 
-- 몇개가 사용되었는지, 나타내시오.
select  tag_name ,count(tag_id) as count
from photo_tags pt
	join tags t
    on t.id = pt.tag_id
group by tag_id
order by count desc
limit 1;

insert into users
(email, pwd, nickname)
values
('a1@naver.com', '1234', '테스트 1'),
('a2@naver.com', '1234', '테스트 2'),
('a3@naver.com', '1234', '테스트 3'),
('a4@naver.com', '1234', '테스트 4'),
('a5@naver.com', '1234', '테스트 5'),
('a6@naver.com', '1234', '테스트 6'),
('a7@naver.com', '1234', '테스트 7'),
('a8@naver.com', '1234', '테스트 8'),
('a9@naver.com', '1234', '테스트 9'),
('a10@naver.com', '1234', '테스트 10'),
('a11@naver.com', '1234', '테스트 11'),
('a12@naver.com', '1234', '테스트 12'),
('a13@naver.com', '1234', '테스트 13'),
('a14@naver.com', '1234', '테스트 14'),
('a15@naver.com', '1234', '테스트 15'),
('a16@naver.com', '1234', '테스트 16');


insert into works
(user_id, contents, end_date, is_complete)
values
(1, '1 할일은 무엇이지', '2024-08-20 11:30', 0),
(1, '2 할일은 무엇이지', '2023-07-20 14:30', 0),
(1, '3 오늘 할일은 무엇이지', '2023-08-13 16:30', 0),
(1, '4 오늘 할일은 무엇이지', '2022-08-20 10:30', 1),
(1, '5 오늘 할일은 무엇이지', '2021-08-20 11:30', 1),
(1, '6 오늘 할일은 무엇이지', '2024-08-20 15:30', 0),
(1, '7 오늘 할일은 무엇이지', '2024-05-20 09:30', 0),
(1, '오늘 할일은 무엇이지', '2024-03-20 18:30', 0),
(2, '2번의 1번 할일은 무엇이지', '2024-08-20 11:30', 1),
(2, '2번의 2번 오늘 할일은 무엇이지', '2020-08-20 11:30', 0),
(2, '2번의 3번 오늘 할일은 무엇이지', '2021-08-20 11:30', 0),
(2, '2번의 4번 오늘 할일은 무엇이지', '2023-08-20 11:30', 0),
(2, '2번의 5번 오늘 할일은 무엇이지', '2023-06-20 11:30', 0),
(3, '3번의 1번 오늘 할일은 무엇이지', '2023-07-20 11:30', 0),
(3, '3번의 2번 오늘 할일은 무엇이지', '2022-08-20 11:30', 0),
(3, '3번의 3번 오늘 할일은 무엇이지', '2023-09-20 11:30', 0),
(4, '4번의 1번 오늘 할일은 무엇이지', '2022-08-20 11:30', 0),
(4, '4번의 2번 오늘 할일은 무엇이지', '2023-08-20 11:30', 0),
(4, '4번의 3번 오늘 할일은 무엇이지', '2024-08-20 11:30', 0),
(4, '4번의 4번 오늘 할일은 무엇이지', '2024-12-20 11:30', 0),
(5, '5번의 1번 오늘 할일은 무엇이지', '2022-08-20 11:30', 0),
(5, '5번의 2번 오늘 할일은 무엇이지', '2023-08-20 11:30', 0);

insert into firends
(my_id, firend_id)
values
(1, 2),
(1, 3),
(1, 4),
(2, 3),
(2, 4);

select * from users;


-- 내 일정 화면
-- 내 할일 내용, 완료할 기한, 완료 여부 표시
-- 25개씩 가장 먼 미래의 일정 부터 차례로 보여준다.
select id, contents, end_date, is_complete
from works
where user_id = 1
order by end_date desc
limit 1, 25;

-- 친구들의 일정 목록
-- 친구 추가하면, 친구들의 일정을 확인 가능하다.

-- 현재 시간 기준, 지나지 않은 일정을 가져온다.
select firend_id, nickname, contents, end_date, is_complete
from firends f
	join works w
    on f.firend_id = w.user_id
    join users u
    on w.user_id = u.id
where my_id = 1 and w.end_date >= now()
order by end_date desc;

-- 현재 시간 이전의 지난 일정을 가져옴
select firend_id, nickname, contents, end_date, is_complete
from firends f
	join works w
    on f.firend_id = w.user_id
    join users u
    on w.user_id = u.id
where my_id = 1 and w.end_date < now()
order by end_date desc;
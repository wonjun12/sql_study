use yhdb;

insert into people
(first_name, last_name, age)
values
('Tina', 'Belcher', 13),
('Bob', 'Belcher', 42);

insert into people
(first_name, last_name, age)
values
('Linda', 'Belcher', 45),
('Phillip', 'Frond', 38),
('Calvin', 'Fischoeder', 70);

select * from people;

-- 특정 값이 없이, 인서트 하는 경우
insert into cats
(name)
values
('키티');

select * from cats;

-- default 값을 성절 한 후
insert into cats
(name)
values
('키티');

insert into cats
()
values
();



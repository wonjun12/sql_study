-- cats 테이블에 데이터 넣기

insert into yhdb.cats -- 그냥 실행하면 테이블을 찾지 못한다. 찾기전 스키마를 찾아야함
(name, age)
values
( '냥이', 7);


-- 테이블 작업전, 데이터베이스 알려주고 작업하는 방법
use yhdb; -- 테이블 선택
insert into cats
(age, name)
values
(3 , 'Victoya');

-- 한번의 SQL 문으로, 데이터 여러개 인서트
insert into cats
(name, age)
values
('고양이', 10), 
('캣츠', 6),
('Sadie', 4);


-- 프라이머리 키가 적용된 테이블에 데이터 넣기
insert into yhdb.cats2
(name, age)
values
( '냥이', 7);

insert into cats2
(name, age)
values
('고양이', 10), 
('캣츠', 6),
('Sadie', 4);


select * from cats2;
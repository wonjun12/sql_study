INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);


-- 위의 데이터를 집어 넣는데 어떻게 테이블을 만들어야하나.
select * from students;
select * from papers;

select first_name, title, grade
from students s
	join papers p
    on s.id = p.student_id
order by grade desc;
    
select first_name, title, grade
from students s
	left join papers p
    on s.id = p.student_id;

select first_name, ifnull(title, 'MISSING') , ifnull(grade, 0)
from students s
	left join papers p
    on s.id = p.student_id;
    
select first_name, ifnull(avg(grade), 0) as average
from students s
	left join papers p
    on s.id = p.student_id
group by s.first_name
order by average desc;

select first_name, ifnull(avg(grade), 0) as average, 
if(avg(grade) >= 75, 'PASSING', 'FAILING') as passing_status
from students s
	left join papers p
    on s.id = p.student_id
group by s.first_name
order by average desc;

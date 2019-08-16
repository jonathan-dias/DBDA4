use university;

select * from student join takes on student.ID = takes.ID;

select * from student natural left outer join takes where takes.course_id is null;

select * from student natural left join takes;
select * from student natural left outer join takes;

select * from student natural right outer join takes where takes.course_id is null;

select * from (select * from student where student.dept_name = 'comp.Sci') 
as st_left natural left outer join (select * from takes where semester = 'Spring' and year = 2009) as ta_left
union
select * from
(select * from student where student.dept_name = 'compt.Sci') as st_right
natural right outer join (select * from takes where semester = 'Spring' and year = 2009) as ta_right;

create view faculty as
select ID, name, dept_name from instructor;

select name from faculty where dept_name = 'Biology';

create view departments_total_salary(dept_name, total_salary) as 
select dept_name, sum(salary) from instructor group by dept_name;

select * from departments_total_salary;


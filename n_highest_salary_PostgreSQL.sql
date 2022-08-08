create table employee_sal 
( emp_name varchar(100) , 
emp_sal int )

select * from employee_sal

insert into employee_sal 
(emp_name, emp_sal)
values ('Ganesh' , 920000)


select * from employee_sal order by emp_sal desc;

set n = n - 1;

select 
distinct emp_sal from employee_sal order by emp_sal desc 
offset 2 limit 1

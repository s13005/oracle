create table emp_copy as select * from employees
/

update employees
set deptno = 10
where deptno is null
/

select deptno
from employees
/

rollback
/

select deptno
from employees
/

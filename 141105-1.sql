create table emp_copy as select * from employees
/

update emp_copy
set deptno = 10
where deptno is null
/

select deptno
from emp_copy
/

rollback
/

select deptno
from emp_copy
/

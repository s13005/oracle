update emp_copy
set deptno = null
where empno = 1013 or empno = 1014
/
select deptno
from emp_copy
/
rollback
/
select deptno
from emp_copy
/

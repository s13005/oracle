update emp_copy
set ename = '林', empno = 20
where empno = 1012
/
select ename, deptno
from emp_copy
/
rollback
/
select ename, deptno
from emp_copy
/

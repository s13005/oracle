update emp_copy
set job = (select job from employees where empno = 1010),
 sal = (select sal from employees where empno = 1010)
where empno = (select empno from employees where ename = '加藤')
/
select job, sal, empno
from emp_copy
/
rollback
/
select job, sal, empno
from emp_copy
/

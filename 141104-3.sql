INSERT INTO employees(empno, ename, hiredate)
VALUES (&&empno,'&ename', '&hiredate')
/
select empno, ename, hiredate
from employees
/
rollback
/
select empno, ename, hiredate
from employees
/

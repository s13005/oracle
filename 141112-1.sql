create view v_emp_dept
as select empno, ename, dname
from employees natural join departments
where deptno = 10
/
select *
from v_emp_dept
/
drop view v_emp_dept
/

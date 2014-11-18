select e.empno,e.ename, e.job, m.ename,dname, loc
from employees e left outer join employees m 
ON e.mgr = m.empno
join departments d
on e.deptno = d.deptno
/

select e.empno,e.ename, e.job, m.ename,d.dname, d.loc, e.sal, s.grade
from employees e left join employees m 
ON e.mgr = m.empno
join departments d
on e.deptno = d.deptno join salgrades s
on e.sal between s.losal and s.hisal
/

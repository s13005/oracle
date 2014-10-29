SELECT e.empno, e.ename, m.empno, m.ename
from employees e JOIN employees m
ON e.mgr = m.empno
where e.empno IN
         (select m.mgr
          from employees m
          where ename IN ('山田', '伊藤'))
/

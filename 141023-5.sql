SELECT e.empno, e.ename, m.empno, m.ename
FROM employees e JOIN employees m
ON e.mgr = m.empno
/

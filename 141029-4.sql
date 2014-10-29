SELECT deptno, dname, avg(sal)
FROM employees JOIN departments
USING (deptno)
GROUP BY deptno,dname
HAVING AVG(sal) >
                (select avg(sal)
                 from employees)
/

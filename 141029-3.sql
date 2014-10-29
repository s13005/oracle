SELECT empno, ename, sal,deptno
FROM employees
WHERE sal >=
             (SELECT deptno
              FROM employees
              WHERE empno = 1003)
AND   deptno =       (SELECT deptno
              FROM departments
              WHERE dname = '営業')
/

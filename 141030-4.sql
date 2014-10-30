SELECT deptno, empno, ename
FROM employees
WHERE deptno =10 OR deptno =20
MINUS
SELECT deptno, empno, ename
FROM employees
WHERE deptno =30 OR deptno =20 
/

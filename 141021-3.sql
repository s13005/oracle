SELECT ename, sal, comm, COALESCE(sal+comm, sal)
FROM employees
/

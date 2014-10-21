SELECT ename, sal, comm, NVL2(sal+comm, sal+comm, sal)
FROM employees
/

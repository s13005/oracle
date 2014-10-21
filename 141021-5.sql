SELECT ename,
       DECODE(deptno, 10, 1.10*sal,
                      20, 1.20*sal,
             sal)
       NEW_SAL
FROM employees
/

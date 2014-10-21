SELECT ename,
       CASE deptno WHEN 10 THEN 1.10*sal
                   WHEN 20 THEN 1.20*sal
       ELSE   sal END    "NEW_SAL"
FROM employees
/

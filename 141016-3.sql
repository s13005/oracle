alter session set nls_date_format = 'DD-MON-RR'
/
alter session set nls_date_language = 'AMERICAN'
/
SELECT ename,TO_CHAR(hiredate,'DD"TH of" Month')
FROM employees
/

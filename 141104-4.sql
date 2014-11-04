INSERT INTO dept_copy
SELECT deptno+1,dname,loc
FROM departments
/

select *
FROM dept_copy
/
rollback
/

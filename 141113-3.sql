create table emp3(empno primary key, ename not null, sal, deptno)
as select empno, ename, sal, deptno from employees
/
create index idx_emp3_ename
on emp3(ename)
/
select table_name, column_name, index_name, index_type
from user_indexes natural join user_ind_columns
where table_name = 'EMP3'
/
drop index idx_emp3_ename
/

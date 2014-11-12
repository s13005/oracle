create table emp2(empno primary key, ename not null, sal, deptno)
as select empno, ename, sal, deptno from employees
/
create view v_emp
as select empno, ename,sal,deptno
from emp2
/
delete v_emp
where empno = 1014
/
update v_emp
set sal = 300000
where  empno = 1013
/
insert into v_emp
(empno,ename,sal,deptno)
values
(1030,'山口',200000,null)
/
select *
from v_emp
/
rollback
/
drop view v_emp
/

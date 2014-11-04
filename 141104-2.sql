insert into departments
(deptno, dname, loc)
values
(60,'経理',null)
/
select deptno,dname,loc
from departments
/
ROLLBACK
/
select deptno, dname, loc
from departments
/

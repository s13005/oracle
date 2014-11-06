insert into dept_copy(deptno, dname,loc)
values(70, '海外', '浦添')
/
savepoint tanuki
/
insert into dept_copy(deptno, dname,loc)
values(80, '製造', 'うるま')
/
select deptno, dname,loc
from dept_copy
/
rollback to tanuki 
/
select deptno, dname,loc
from dept_copy
/

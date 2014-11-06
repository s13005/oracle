INSERT INTO dept_copy(deptno, dname,loc)
values(50, '教育', '大手町')
/
INSERT INTO dept_copy(deptno,dname,loc)
values (60,'システム','横浜')
/
select deptno,dname,loc
from dept_copy
/
rollback
/
select deptno,dname,loc
from dept_copy
/

INSERT INTO dept_copy(deptno, dname,loc)
values(50, '教育', '大手町')
/
INSERT INTO dept_copy(deptno,dname,loc)
values (60,'システム','横浜')
/
select deptno,dname,loc
from dept_copy
/
commit
/
rollback
/
select deptno,dname,loc
from dept_copy
/

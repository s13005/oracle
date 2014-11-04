INSERT INTO departments
(deptno,dname,loc)
VALUES
(50,'教育','大手町')
/
select deptno, dname,loc
from departments
/
ROLLBACK
/
select deptno, dname, loc
from departments
/

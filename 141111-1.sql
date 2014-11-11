create table dept1 (
deptno number(4) constraint dept1_deptno_pk primary key,
dname varchar2(10) not null,
loc varchar2(10))
/
insert into dept1(deptno,dname) values (4,10)
/
insert into dept1(deptno,dname) values (4,10)
/
insert into dept1(deptno,dname) values (10,null)
/
drop table dept1
/

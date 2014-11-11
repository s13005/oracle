create table dept1 (
deptno number(4) constraint dept1_deptno_pk primary key,
dname varchar2(10) not null,
loc varchar2(10))
/
create table emp1( 
empno number(4) constraint emp1_deptno_pk primary key,
ename varchar2(10) constraint emp1_ename_nn not null,
deptno number(4), constraint emp1_dept1_deptno_fk foreign key (deptno)
REFERENCES dept1(deptno))
/
insert into emp1(empno,ename) values (4,10)
/
insert into emp1(empno,ename) values (4,10)
/
insert into emp1(empno,ename) values (10,null)
/
insert into emp1(empno,ename,deptno) values (10,20,null)
/
insert into emp1(empno,ename,deptno) values (10,20,null)
/
drop table emp1
/

create sequence s_ord
/
select s_ord.nextval from employees
/
alter sequence s_ord
increment by 10
/
select s_ord.nextval from employees
/
drop sequence s_ord
/

/*
 View:
 create view ViewName as Statement;

 replace or update view:
 create or replace view ViewName as Statement;

 dropping view:
 drop view ViewName

 */

select * from EMPLOYEES;

select FIRST_NAME || ' ' || LAST_NAME as "Full Name" from EMPLOYEES;

-- create view
create view EmployeeInfo as select FIRST_NAME || ' '|| LAST_NAME as FullName from EMPLOYEES;

select * from EMPLOYEEINFO;


select FIRST_NAME || ' ' || LAST_NAME as FullName, lower(email || '@cydeo.com' ) as Email from EMPLOYEES;
-- update view
create or replace view EMPLOYEEINFO as
select FIRST_NAME || ' ' || LAST_NAME as FullName, lower(email || '@cydeo.com' ) as Email from EMPLOYEES;

select * from EMPLOYEEINFO;

select * from EMPLOYEEINFO;
drop view EMPLOYEEINFO;








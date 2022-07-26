select * from EMPLOYEES;

create view EmployeesInfo as
select substr(FIRST_NAME,1,1)||'.'||substr(LAST_NAME,1,1)||'.' as initials  ,
       FIRST_NAME||' makes ' || salary as Employees_salary  from EMPLOYEES;

select * from EmployeesInfo;

select Employees_salary from EmployeesInfo;

select initials from EMPLOYEESINFO;

drop view EMPLOYEESINFO;

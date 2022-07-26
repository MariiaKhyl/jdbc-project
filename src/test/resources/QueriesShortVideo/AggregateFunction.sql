/*
 Aggregate Functions:
 min() : selects the min value from the column
    select min(columnName) from TableName;

 max() : selects the max value from the column
    select max(columnName) from TableName;

 avg() : selects the average value from the column
     select avg(columnName) from TableName;

 sum() : selects the sum value from the column
     select sum(columnName) from TableName;

 count () :
     select count(ColumnName) from TableMane where Condition;

 Round()  : used for decimal format
     select Round(avg(columnName), 2) from Table;
 */






select min(LOCATION_ID) from DEPARTMENTS; -- 1400
select * from DEPARTMENTS where LOCATION_ID = 1400;
select * from DEPARTMENTS where LOCATION_ID = (select min(LOCATION_ID) from DEPARTMENTS); -- 1400


select max(LOCATION_ID) from DEPARTMENTS;
select * from DEPARTMENTS where LOCATION_ID = 2700;
select * from DEPARTMENTS where LOCATION_ID = (select max(LOCATION_ID) from DEPARTMENTS);

select max(SALARY) from EMPLOYEES;
select * from EMPLOYEES where SALARY = (select max(SALARY) from EMPLOYEES);

select * from EMPLOYEES where SALARY = (select min(SALARY) from EMPLOYEES);


select avg(SALARY) from EMPLOYEES;
select round(avg(SALARY), 5) from EMPLOYEES;  -- avr numbers after coma

select sum(SALARY) from EMPLOYEES; -- returns sum value

select count(*) from EMPLOYEES where MANAGER_ID = 100;
select count(*) from EMPLOYEES where SALARY < 10000;




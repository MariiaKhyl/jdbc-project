/*

 Select statement:

 1. Selecting entire columns from a table:
 select * from TableName;

 2. Selecting a single column from a table:
 select ColumnName TableName;

 3. Selecting Multiple Columns from a table:
 select ColumnName1, ColumnName2 .. from TableName;

 4. Selecting Column(s) from Multiple tables
 Select TableName1.ColumnName1, TableName2.ColumnName2 from TableName1, TableName2;

 */



Select * from DEPARTMENTS;
select DEPARTMENT_NAME from DEPARTMENTS;

select DEPARTMENT_NAME,DEPARTMENT_ID from DEPARTMENTS;  -- ctrl+ space
select DEPARTMENT_NAME,DEPARTMENT_ID from DEPARTMENTS;

select * from EMPLOYEES;
select * from DEPARTMENTS;
select * from EMPLOYEES, DEPARTMENTS;

select EMPLOYEES.EMPLOYEE_ID, DEPARTMENTS.DEPARTMENT_ID from EMPLOYEES, DEPARTMENTS;

/*
 distinct keyword - to display the results without duplicates. Only unique
 */

select distinct DEPARTMENT_ID from DEPARTMENTS;
select distinct SALARY from EMPLOYEES;

select distinct MAX_SALARY from JOBS;



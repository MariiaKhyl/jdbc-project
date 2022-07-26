
/*
 Where clause: used as the filter option

 select column(s) from Table(s) where Conditions;

 Operators:
      <, >, >=, <=, =, !=, or, and
 */

select SALARY from EMPLOYEES where SALARY < 5000;
select * from EMPLOYEES where  SALARY > 5000;
select * from EMPLOYEES where SALARY < 5000 and MANAGER_ID = 114;



/*
 between statement: for specifying the range of the condition
 value between Lowest and Highest;
 */

 select * from DEPARTMENTS where LOCATION_ID between 1800 and 2400;

select * from EMPLOYEES where SALARY between 3500 and 5000;



/*
 in () statement : used for specifying the range of the condition
 */

select * from EMPLOYEES where DEPARTMENT_ID in (30,60,110);

select * from COUNTRIES where REGION_ID in (1, 4);
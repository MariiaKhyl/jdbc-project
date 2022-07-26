-- 1. display full addresses from locations table in a single column
select STREET_ADDRESS || ' ' || CITY || ' ' || STATE_PROVINCE || ' ' || COUNTRY_ID || ' ' ||
       POSTAL_CODE as "FULL_ADDRESS"
from LOCATIONS;

-- 2. display all informations of the employee who has the minimum salary in employees table
select * from EMPLOYEES
where SALARY = (select min(SALARY) from EMPLOYEES);

select * from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES);

-- 3. display the second minimum salary from the employees
--first we need to find first min
select distinct SALARY from (select SALARY from EMPLOYEES where SALARY > (select min(SALARY) from EMPLOYEES) order by SALARY)
where ROWNUM <2;

select * from EMPLOYEES
    order by SALARY desc;

select * from EMPLOYEES
    where SALARY = (select min(SALARY) from EMPLOYEES);

select * from (select * from EMPLOYEES order by SALARY)
where SALARY = (select min(SALARY) from EMPLOYEES
                                   where salary > (select min(SALARY) from EMPLOYEES));

select distinct SALARY from (select SALARY from EMPLOYEES where SALARY > (select min(SALARY) from EMPLOYEES) order by SALARY)
where rownum < 2;

select distinct SALARY from (select SALARY from EMPLOYEES where SALARY > (select min(SALARY) from EMPLOYEES) order by SALARY)
where rownum < 2;


-- 4. display all informations of the employee who has the second minimum salary
select * from (select * from EMPLOYEES where SALARY > (select min(salary) from EMPLOYEES) order by SALARY)
where rownum < 2;

-- 5. list all the employees who are making above the average salary;
select round(avg(SALARY)) from EMPLOYEES;

select * from (select * from EMPLOYEES where SALARY > (select round(avg(SALARY)) from EMPLOYEES) order by SALARY);

-- 6. list all the employees who are making less than the average salary
select * from (select * from EMPLOYEES where SALARY < (select round(avg(SALARY)) from EMPLOYEES) order by SALARY);

-- 7. display manager name of 'Neena'
select MANAGER_ID from EMPLOYEES
where FIRST_NAME = 'Neena';

-- 8. find the 3rd maximum salary from the employees table (do not include duplicates)
select distinct max(salary) from EMPLOYEES;

select min(SALARY) as "minimum" from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where rownum< 4;


-- 9. find the 5th maximum salary from the employees table (do not include duplicates)
select min(salary) as "mimi" from (select distinct SALARY from EMPLOYEES order by SALARY desc)
                                       where rownum < 6;

select * from EMPLOYEES
where SALARY = (select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
                                   where rownum < 6);

-- 10. find the 7th maximum salary from the employees table (do not include duplicates)
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
                                       where rownum< 8;


-- 11. find the 10th maximum salary from the employees table (do not include duplicates)
select min(SALARY) as " almost done" from (select distinct SALARY from EMPLOYEES order by SALARY desc)
                                       where rownum < 11;


-- 12. find the 3rd minimum salary from the employees table (do not include duplicates)
select max(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY)
                                       where rownum < 4;

-- 13. find the 5th minimum salary from the employees table (do not include duplicates)
select max(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY)
where rownum < 6;

-- 14. find the 7th maximum salary from the employees table (do not include duplicates)
select max(SALARY) as "one more" from (select distinct SALARY from EMPLOYEES order by SALARY)
where rownum < 8;


-- 15. find the 10th maximum salary from the employees table (do not include duplicates)
select max(SALARY) from (select distinct salary from EMPLOYEES order by SALARY)
where rownum < 11;

-- 1. Display all first_name and department_name
select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES e
         join DEPARTMENTS d
              on e.department_id = d.DEPARTMENT_ID;

-- 2.Display all first_name and department_name including the department without employee
select FIRST_NAME, DEPARTMENT_NAME, d.DEPARTMENT_ID
from EMPLOYEES e
         right join DEPARTMENTS d
                    on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

select FIRST_NAME, DEPARTMENT_NAME, d.DEPARTMENT_ID
from DEPARTMENTS d
         left join EMPLOYEES e
                   on d.DEPARTMENT_ID = e.DEPARTMENT_ID;

-- 3.Display all first_name and department_name including the employee without department
select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

select FIRST_NAME, DEPARTMENT_NAME
from DEPARTMENTS d right join EMPLOYEES e
on d.DEPARTMENT_ID = e.DEPARTMENT_ID;

-- 4.Display all first_name and department_name including the department without employee  and  employees  without departments
select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES e full join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

-- 5.Display All cities and related country names
select CITY, COUNTRY_NAME
from LOCATIONS l left join COUNTRIES c
on l.COUNTRY_ID = c.COUNTRY_ID;



select CITY, COUNTRY_NAME
from LOCATIONS l inner join COUNTRIES c
                            on l.COUNTRY_ID = c.COUNTRY_ID;

-- 6.Display All cities and related country names  including with countries without city
select CITY, COUNTRY_NAME
from LOCATIONS l right join COUNTRIES c
                            on l.COUNTRY_ID = c.COUNTRY_ID;

-- 7.Display all department name and street addresses
select DEPARTMENT_NAME, STREET_ADDRESS
from DEPARTMENTS d inner join LOCATIONS l
                              on d.LOCATION_ID = l.LOCATION_ID;

select DEPARTMENT_NAME, STREET_ADDRESS
from DEPARTMENTS d left join  LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID;


-- 8.Display first_name,last_name and department_name,city for all employees
select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME
from EMPLOYEES inner join DEPARTMENTS
on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
inner join LOCATIONS
on DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID;


-- 9.Display first_name,last_name and department_name,city,country_name for all employees
select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY, c.COUNTRY_NAME
from EMPLOYEES e inner join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
inner join LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID
inner join COUNTRIES c
on l.COUNTRY_ID = c.COUNTRY_ID;











































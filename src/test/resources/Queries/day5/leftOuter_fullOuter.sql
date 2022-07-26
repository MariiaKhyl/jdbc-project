/*
 LEFT OUTER WITH WHERE
 -- Get me only unique for left table

 NOTE --> If there is a customer with addressID 6 , since there is no matching data
 from address table it will assing NULL value for address table address_id

 That is why we are using WHERE with address.addrees_id IS NULL to get unique for LEFT table
 */

SELECT customer_id, first_name, last_name,customer.ADDRESS_ID,ADDRESS.ADDRESS_ID,phone
FROM customer LEFT OUTER JOIN address
                              ON customer.address_id = address.address_id
WHERE ADDRESS.ADDRESS_ID IS NULL;



/*

 FULL OUTER WITH WHERE
 -- get non-matching part of the tables

 */

SELECT customer_id, first_name, last_name,customer.ADDRESS_ID,ADDRESS.ADDRESS_ID,phone
FROM customer FULL OUTER JOIN address
                              ON customer.address_id = address.address_id
WHERE ADDRESS.ADDRESS_ID IS NULL OR CUSTOMER.ADDRESS_ID IS NULL;

--10.Display first_name,last_name and department_name,city who is living in United Kingdom
select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, city
from EMPLOYEES inner join DEPARTMENTS
on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
inner join LOCATIONS
on DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID
where COUNTRY_ID = 'UK';

select E.FIRST_NAME, E.LAST_NAME, D.DEPARTMENT_NAME, L.CITY, C.COUNTRY_NAME
from EMPLOYEES E INNER JOIN DEPARTMENTS D on E.DEPARTMENT_ID = D.DEPARTMENT_ID INNER JOIN LOCATIONS L on L.LOCATION_ID = D.LOCATION_ID
                 INNER JOIN COUNTRIES C on C.COUNTRY_ID = L.COUNTRY_ID where COUNTRY_NAME in 'United Kingdom';


--11.Display how many employee we have for each country name
select COUNTRY_NAME, count(*)
from EMPLOYEES e inner join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
inner join LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID
inner join COUNTRIES c
on l.COUNTRY_ID = c.COUNTRY_ID
group by COUNTRY_NAME
order by count(*);


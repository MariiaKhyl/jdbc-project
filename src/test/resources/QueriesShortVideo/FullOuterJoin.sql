
-- full outer join without where:
-- displays the matching record from both tables, along with non matching records from the left table
-- and the none matching records from the right table
select * from CUSTOMER c full outer join ADDRESS a
on c.ADDRESS_ID = a.ADDRESS_ID;

select *
from CUSTOMER c full outer join ADDRESS a
on c.ADDRESS_ID = a.ADDRESS_ID;

select c.CUSTOMER_ID, c.FIRST_NAME,c.LAST_NAME, a.ADDRESS, a.PHONE
from CUSTOMER c full outer join ADDRESS a
on c.ADDRESS_ID = a.ADDRESS_ID;

-- full outer join with where: displays the non matching records from the left table, and the none matching records from the right table
select * from CUSTOMER c full outer join ADDRESS a
on c.ADDRESS_ID = a.ADDRESS_ID
where c.ADDRESS_ID is null or a.ADDRESS_ID is null;
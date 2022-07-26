
-- right outer join without where: display the matching record, and none matching records from right table
select * from
CUSTOMER right outer join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

select c.CUSTOMER_ID, c.FIRST_NAME, c.LAST_NAME, a.ADDRESS, a.PHONE
    from CUSTOMER c right outer join ADDRESS a
on C.ADDRESS_ID = A.ADDRESS_ID;

-- right outer join with where: display the none matching record from right table
select c.CUSTOMER_ID, c.FIRST_NAME, c.LAST_NAME,a.ADDRESS, a.PHONE
from CUSTOMER c right outer join ADDRESS a
on c.ADDRESS_ID = a.ADDRESS_ID
where c.ADDRESS_ID is null;

select c.CUSTOMER_ID, c.FIRST_NAME, c.LAST_NAME, a.ADDRESS, a.PHONE
from CUSTOMER C right outer join ADDRESS A
on C.ADDRESS_ID = A.ADDRESS_ID
where c.ADDRESS_ID is null or a.ADDRESS_ID is null;
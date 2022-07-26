select * from CUSTOMER C left outer join ADDRESS A
on C.ADDRESS_ID = A.ADDRESS_ID;

-- left join with where : returns the matching records, and left table' none matching records
select C.CUSTOMER_ID, C.FIRST_NAME, C.LAST_NAME, C.ADDRESS_ID, A.address, A.phone
from CUSTOMER C left outer join ADDRESS A
on C.ADDRESS_ID = a.ADDRESS_ID;

-- left join with where : returns the none matching records from left table
select c.CUSTOMER_ID, c.FIRST_NAME, c.LAST_NAME, a.ADDRESS, a.PHONE
from CUSTOMER c left outer join ADDRESS a
on c.ADDRESS_ID = a.ADDRESS_ID
where c.ADDRESS_ID is null;
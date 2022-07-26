select * from customer inner join ADDRESS
on customer.ADDRESS_ID = address.address_id;

select CUSTOMER.address_id, customer.FIRST_NAME, CUSTOMER.LAST_NAME, ADDRESS.ADDRESS, ADDRESS.PHONE
from CUSTOMER  inner join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

select C.address_id, c.FIRST_NAME, C.LAST_NAME, A.ADDRESS , A.PHONE
from CUSTOMER c inner join ADDRESS a
                          on C.ADDRESS_ID = A.ADDRESS_ID;
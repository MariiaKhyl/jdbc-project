
/*
 Self join: joining the table to itself
  syntax:
 select Columns from Table1 a join Table1 b on a.key = b.key;
 */
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, MANAGER_ID from EMPLOYEES;

select e1.EMPLOYEE_ID, e1.FIRST_NAME, e1.LAST_NAME, e1.MANAGER_ID, e2.FIRST_NAME, e2.LAST_NAME
from EMPLOYEES e1 join EMPLOYEES e2
on e1.MANAGER_ID = e2.MANAGER_ID;

select e2.FIRST_NAME || ' ' ||e2.LAST_NAME as "Manager full name"
from EMPLOYEES e1 join EMPLOYEES e2
                       on e1.MANAGER_ID = e2.MANAGER_ID
group by e2.FIRST_NAME || ' ' ||e2.LAST_NAME ;

select e2.FIRST_NAME || ' ' ||e2.LAST_NAME as "Manager full name", count(*)
from EMPLOYEES e1 join EMPLOYEES e2
                       on e1.MANAGER_ID = e2.MANAGER_ID
group by e2.FIRST_NAME || ' ' ||e2.LAST_NAME ;





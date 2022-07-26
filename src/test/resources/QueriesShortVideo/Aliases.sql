/*
 Aliases: used to give temporary to tables and colums

  Column aliases: we use "As" keyword to give temporary name to the column
         select Column as "name" from Table;

  Table aliases: given with a space
         select Column from TableName Name;
 */


-- column aliases
select FIRST_NAME as "Given Name" from EMPLOYEES;

select FIRST_NAME||' '|| LAST_NAME as "Full name" from EMPLOYEES;

select concat(email,'@gmail.com') as "Email" from EMPLOYEES;

-- table aliases
select * from EMPLOYEES, JOB_HISTORY;
select employees.employee_id, job_history.job_id from EMPLOYEES, JOB_HISTORY;

select E.EMPLOYEE_ID, JH.JOB_ID from EMPLOYEES E ,JOB_HISTORY JH;




select * from EMPLOYEES;

select avg(SALARY) from EMPLOYEES
where JOB_ID= 'IT_PROG';

select FIRST_NAME, avg(SALARY)from EMPLOYEES
where JOB_ID = 'SA_REP'
group by FIRST_NAME
order by FIRST_NAME asc;

select distinct JOB_ID from EMPLOYEES;

select round(avg(SALARY),2), MIN(SALARY), sum(SALARY) from EMPLOYEES;

select JOB_ID, sum(SALARY) from EMPLOYEES
group by JOB_ID;

select JOB_ID,avg(SALARY),min(SALARY),sum(SALARY),max(SALARY),count(*) from EMPLOYEES
group by JOB_ID;

select DEPARTMENT_ID, sum(SALARY) from EMPLOYEES
group by DEPARTMENT_ID order by DEPARTMENT_ID asc;

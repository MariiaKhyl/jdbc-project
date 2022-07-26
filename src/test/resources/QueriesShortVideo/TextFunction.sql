/*
Text Functions: string manipulations
    1. concatenation operator: ||
    2. Concat(Value1,Value2):
    3. Upper(Value):
    4. Lower(Value):
    5. INITCAP(Value):
    6. Length(Value):
    7. replace(columName, oldValue, newValue):
    8. substr(columName, Beg(inning) index, end index)  end index excluded
    9. Trim(Value):

Only Used for the display poption not modify the table
*/

-- concatenation operator: ||
select EMAIL||'@gmail.com' from EMPLOYEES;
select FIRST_NAME||' '||LAST_NAME from EMPLOYEES;

-- concat(Value1, Value2)
select concat(EMAIL,'@gmail.com') from EMPLOYEES;

select concat( concat(FIRST_NAME,' ') ,LAST_NAME) from EMPLOYEES;

-- Upper(Value)
select UPPER(FIRST_NAME) from EMPLOYEES;

-- Lower(Value)
select LOWER(FIRST_NAME) from EMPLOYEES;

-- INITCAP(Value)
select INITCAP(EMAIL) from EMPLOYEES;

-- Length(Value)
select FIRST_NAME, length(FIRST_NAME) from EMPLOYEES order by length(FIRST_NAME) ASC;

-- replace(columName, oldValue, newValue)
select FIRST_NAME from EMPLOYEES;
select replace(FIRST_NAME, 'e', 'E')  from EMPLOYEES;

-- substr(columName, Beg(inning) index, end index)  end index excluded
select * from EMPLOYEES;
select FIRST_NAME, substr(FIRST_NAME, 0 , 1) from EMPLOYEES;

select FIRST_NAME,LAST_NAME, substr(FIRST_NAME, 0 , 1) || substr(LAST_NAME,0,1) from EMPLOYEES;

-- Trim(Value)
select FIRST_NAME from EMPLOYEES;
select concat('       ', FIRST_NAME) from EMPLOYEES;
select trim(concat('       ', FIRST_NAME)) from EMPLOYEES;




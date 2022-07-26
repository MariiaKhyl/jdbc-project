/*
 Like statement: partial search

 starts with: Chars%
 ends with: %Chars
 contains: %Chars%

 syntax: select Column(s) from Table(s) where Value Like '%Chars%'
 */

-- starts with:
select * from COUNTRIES;
select * from COUNTRIES where COUNTRY_NAME like 'A%';
select * from COUNTRIES where COUNTRY_NAME like 'K%';
select * from COUNTRIES where COUNTRY_NAME like 'Au%';

-- ends with:
select COUNT(COUNTRY_NAME) from COUNTRIES where COUNTRY_NAME like '%a';
select count(COUNTRY_NAME) from COUNTRIES where COUNTRY_NAME like '%m';

-- starts with & ends with:
select COUNT(COUNTRY_NAME) from COUNTRIES where COUNTRY_NAME like 'A%' and COUNTRY_NAME like '%a';

-- contains:
select COUNTRY_NAME from COUNTRIES where COUNTRY_NAME like '%b%';
select COUNTRY_NAME from COUNTRIES where COUNTRY_NAME like '%d K%'

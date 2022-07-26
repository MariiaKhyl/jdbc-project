
create table Developers(
                           Id_Number Integer primary key,
                           Names varchar(30),
                           Salary Integer
);
create table Testers(
                        Id_Number Integer primary key,
                        Names varchar(30),
                        Salary Integer
);

insert into developers values (1, 'Mike', 155000);
insert into developers values (2, 'John', 142000);
insert into developers values (3, 'Steven', 850000);
insert into developers values (4, 'Maria', 120000);
insert into testers values (1, 'Steven', 110000);
insert into testers values(2, 'Adam', 105000);
insert into testers values (3, 'Lex', 100000);

commit work;

select * from DEVELOPERS;
select * from TESTERS;

--union all: does not remove duplicated rows and does not sort
--union: removes the duplicated rows, sorts ascending order

select * from DEVELOPERS
union
select * from Testers;

select NAMES from DEVELOPERS
union
select Names from Testers;


select * from DEVELOPERS
union all
select * from Testers;

select Names from DEVELOPERS
union all
select Names from Testers;

-- minus: returns the 1st queries rows that are not matching 2nd queries rows
select * from DEVELOPERS
minus
select * from Testers;

select Names from DEVELOPERS
minus
select Names from Testers;

--intersect: returns the matching rows from two queries

select * from DEVELOPERS
intersect
select * from Testers;

select Names from DEVELOPERS
intersect
select Names from Testers;


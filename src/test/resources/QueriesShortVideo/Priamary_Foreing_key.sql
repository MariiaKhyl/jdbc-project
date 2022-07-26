select * from EMPLOYEES;

create table ClassMates(
    Student_id Integer primary key, -- MUST be unique, cannot be null
    "First Name" varchar(30),
    "Last Name" varchar(30)
);
select * from ClassMates;

create table Coworkers(

    Employee_Id Integer primary key,
    "First Name" varchar(30),
    "Last name" varchar(30),
    personnel_id integer references ClassMAtes(Student_id) -- foreign key, data needs to be matched with the referenced primary key
    -- (can be duplicated and null)
);

-- insert into Coworkers values (1,'John','Eric',2);
insert into Coworkers values (1,'John', 'Eric', null);
select * from Coworkers;

insert into ClassMates values (1,'Aron','Daniel');
select * from ClassMates;

insert into Coworkers values (2,'Jimmy','Rose',1);

-- insert into Coworkers values (3, 'Ahmet','Mamat',2;)
-- foreign key data is not matching with the referenced primary key's data

select * from ClassMates;

update ClassMates set STUDENT_ID = 4 where STUDENT_ID = 1;

alter table ClassMates drop column STUDENT_ID;

truncate table ClassMates;

drop table ClassMates;

alter table Coworkers drop column personnel_id;
update ClassMates set student_id = 4 where STUDENT_ID = 1;
alter table ClassMates drop column student_id;
truncate table ClassMates;
drop table ClassMates;
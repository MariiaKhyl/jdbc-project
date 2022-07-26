
create table address1(
    address_id Integer primary key,
    address varchar (50) not null,
    phone Integer unique
);

select * from address1;

insert into address1(address_id, address, phone)
VALUES (10, '1913 Hanoi Way',  2830338433);

insert into address1(address_id, address, phone)
VALUES (11, '692 Joliet Street',  4484771966);

insert into address1(address_id, address, phone)
VALUES (12, '1566 Inegl Manor',  7058140022);

insert into address1 (address_id, address, phone)
VALUES (13, '1795 Santiago',  8604526244);

insert into address1 (address_id, address, phone)
VALUES (14, '900 Santiago',  1657122088);

create table customer1(
    customer_id Integer primary key,
    firstname varchar(30) null,
    lastname varchar (20) null,
    address_id Integer references address1(address_id)

);

insert into customer1(customer_id, firstname, lastname, address_id)
VALUES (1, 'Mary' ,  'Smith',  10);

insert into customer1(customer_id, firstname, lastname, address_id)
VALUES (2,  'Patricia' ,  'Johnson' ,  NULl);

insert into customer1(customer_id, firstname, lastname, address_id)
VALUES (3,  'Linda' ,  'Williams' ,  11);

insert into customer1(customer_id, firstname, lastname, address_id)
VALUES (4, 'Barbara' ,  'Jones' , 14);

insert into customer1(customer_id, firstname, lastname)
VALUES (5,  'Elizabeth' ,  'Brown');

insert into customer1(customer_id, firstname)
VALUES (6, 'Elizabeth');

select * from address1;
select * from customer1;

update customer1
set customer_id = 0
where address_id = 10;

update customer1
set customer_id = 1000
where lastname = 'Williams';

delete from customer1 where customer_id = 6;

delete from customer1 where customer_id = 4 and address_id = 14;
commit; -- or commit work

select * from customer1;

alter table customer1 add Age Integer;

alter table customer1 rename column Age to ages;

update customer1 set ages = 29 where firstname = 'Mary';
update customer1 set ages = 100 where address_id = 11;

alter table customer1 drop column ages;

alter table customer1 rename to Shoppers;

select * from customer1;
select * from Shoppers;

commit;

drop table Shoppers;

select * from address1;

truncate table address1;

drop table address1;




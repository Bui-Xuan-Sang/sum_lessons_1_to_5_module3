use classicmodels;
select *
from customers
where customerName = 'Land of Toys Inc.';

explain
select *
from customers
where customerName = 'Land of Toys Inc.';

alter table customers
    add index idx_customerName (customerName);

explain
select *
from customers
where customerName = 'Land of Toys Inc.';

alter table customers
    add index idx_full_name (contactFirstName, contactLastName);

explain
select *
from customers
where contactFirstName = 'Jean'
   or contactFirstName = 'King';

alter table customers
drop index idx_full_name;

DELIMITER //
create procedure findAllCustomers()
begin
select * from customers;
END //

DELIMITER ;

call findAllCustomers();

DELIMITER //
drop procedure if exists `findAllCustomers` //
create procedure findAllCustomers()
begin
select * from customers where customerNumber = 175;
end //


DELIMITER //
create procedure getCusById(IN cusNum int(11))
begin
select * from customers where customerNumber = cusNum;
end //
DELIMITER ;

call getCusById(175);

DELIMITER //
create procedure getCustomersCountByCity(IN in_city varchar(50), OUT total int)
begin
select count(customerNumber)
into total
from customers
where city = in_city;
end //
DELIMITER ;

call getCustomersCountByCity('Lyon',@total);
select @total;

DELIMITER //
create procedure SetCounter(
    inout counter int,
    in inc int
)
begin
    set counter = counter + inc;
end //
DELIMITER ;

set @counter = 1;
call SetCounter(@counter,1);
call SetCounter(@counter,1);
call SetCounter(@counter,5);
select @counter;

create view customer_views AS
select customerNumber,customerName,phone
from customers;
select * from customer_views;

create or replace view  customer_views AS
select customerNumber,customerName,contactFirstName,contactLastName,phone
from customers
where city = 'Nantes';

drop view customer_views;


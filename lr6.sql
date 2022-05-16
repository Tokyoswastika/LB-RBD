--1. проекція таблиці клієнтів
drop view view1;
create view view1 as select distinct surname, name, fathername from KLIENT;   
select * from view1;

--2. проекція клієнтів у яких номер починаєтся на 066
drop view view2;
create view view2 as select distinct surname, name, fathername, phone_number from KLIENT
    where phone_number like '066%';   
select * from view2;

--3. селекція клієнтів у яких прізвище починаєтся на Д
select surname, name, fathername from KLIENT
    where surname like 'Д%';
    
    
select * from KLIENT;

--4. Запит на виконання натурального з’єднання у будь-яких таблицях вашої БД.
select Operations.suma, Operations.ddate, Type_Operations.nazva
from Operations, Type_Operations
where Type_Operations.Type_Operations = Operations.type_operations;

--5. Запит на виконання умовного з’єднання для таблиць вашої БД
select Operations.suma, Operations.ddate, Type_Operations.nazva
from Operations, Type_Operations
where Type_Operations.Type_Operations = Operations.type_operations and Operations.klient is null;
--1. Кількість клієнтів
select Count(klient)
from Klient;

--2. Найбільша операція
select Max(suma)
from Operations;

--3. Кількість проведених операцій цього місяця
select Count(operations)
from Operations
where to_char(ddate,'mm') = to_char(SYSDATE,'mm');

--4. Кількість клієнтів з певним віком
select age, Count(klient)
from Klient 
group by age;

--5. Підрахувати кількість типів операцій
select Type_Operations.nazva, Count(Operations.Operations)
from Operations join Type_Operations on Type_Operations.Type_Operations = Operations.type_operations
group by Type_Operations.nazva;
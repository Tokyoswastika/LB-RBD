--1. Оператори у яких побатькові починаєтся на А
select surname, name, father_name from Operator
    where father_name like 'А%';   

--2. Клієнт, у якого прізвище починаєтся на С
select surname, name, fathername from KLIENT
    where surname like 'Д%';   

--3. 3 найстарших оператори
select surname, name, father_name, age
from Operator
order by age desc
fetch first 3 rows only;

--4. Оператори, у яких номер телефона починається на 099
select surname, name, father_name,phone_number from Operator
    where phone_number like '099%';   

--5. Підрахувати кількість типів операцій
select Type_Operations.nazva, Count(Operations.Operations)
from Operations join Type_Operations on Type_Operations.Type_Operations = Operations.type_operations
group by Type_Operations.nazva;

--6. Кількість клієнтів з певним віком
select age, Count(klient)
from Klient 
group by age;

--7. Кількість операцій, здійснених клієнтом
select Klient.name, Count(Operations.klient)
from Operations join Klient on Klient.klient = Operations.klient
group by Klient.name;

--8. Оператори відсортовані за ім'ям
select surname, name, father_name
from Operator
order by name asc;

--9. Наймолодший оператор
select surname, name, father_name, age
from Operator
order by age asc
fetch first 1 rows only;

--10. Клієнт, у якого прізвище починаєтся на Д та ім'я на К
select surname, name, fathername from KLIENT
    where surname like 'Д%' and name like 'К%';   

--11. Відсортувати операторів по рокам
select surname, name, father_name, age
from Operator
order by age desc;

--12. Назва операції, сума та дата проведення
select Operations.suma, Operations.ddate, Type_Operations.nazva
from Operations, Type_Operations
where Type_Operations.Type_Operations = Operations.type_operations
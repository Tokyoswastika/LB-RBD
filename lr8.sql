--1. Відсортувати клієнтів по прізвищу
select surname, name, fathername
from Klient
order by surname asc;

--2. Підрахувати кількість типів операцій
select Type_Operations.nazva, Count(Operations.Operations)
from Operations join Type_Operations on Type_Operations.Type_Operations = Operations.type_operations
group by Type_Operations.nazva;

--3. 3 наймолодших оператори
select surname, name, father_name, age
from Operator
order by age desc
fetch first 3 rows only;

--4. Кількість операцій, здійснених клієнтом
select Klient.name, Count(Operations.klient)
from Operations join Klient on Klient.klient = Operations.klient
group by Klient.name;

--5. Оператори відсортовані за ім'ям та прізвищем
select surname, name, father_name
from Operator
order by name asc, surname asc;

--6. Відсортувати операторів по рокам
select surname, name, father_name, age
from Operator
order by age desc;

--7. Відсортувати валюту по назві
select currency, name_currency, county
from Currency
order by name_currency;

--8. Кількість операцій, здійснених оператором
select Operator.name, Count(Operations.operator)
from Operations join Operator on Operator.operator = Operations.operator
group by Operator.name;

--9. Кількість операторів з певним віком
select age, Count(operator)
from Operator 
group by age;

--10. Найстарший оператор
select surname, name, father_name, age
from Operator
order by age desc
fetch first 1 rows only;
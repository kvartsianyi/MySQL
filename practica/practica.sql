# 1. Вибрати усіх клієнтів, чиє ім'я має менше ніж 6 символів.
-- SELECT * FROM client WHERE LENGTH(FirstName) < 6;

# 2. Вибрати львівські відділення банку.
-- SELECT * FROM department WHERE DepartmentCity = 'Lviv';

# 3. Вибрати клієнтів з вищою освітою та посортувати по прізвищу.
-- SELECT * FROM client WHERE Education = 'high' ORDER BY LastName;

# 4. Виконати сортування у зворотньому порядку над таблицею Заявка і вивести 5 останніх елементів.
-- SELECT * FROM application ORDER BY CreditState DESC LIMIT 5;

# 5. Вивести усіх клієнтів, чиє прізвище закінчується на iv чи riv.
-- SELECT * FROM client WHERE LastName LIKE '%iv' OR '%riv';

# 6. Вивести клієнтів банку, які обслуговуються київськими відділеннями.
-- SELECT * FROM client c 
-- 	JOIN department d ON c.Department_idDepartment = d.idDepartment
-- WHERE DepartmentCity = 'Kyiv';

# 7. Вивести імена клієнтів та їхні номера телефону, погрупувавши їх за іменами.
-- SELECT COUNT(FirstName) AS Count, FirstName, Passport FROM client GROUP BY FirstName, Passport;

# 8. Вивести дані про клієнтів, які мають кредит більше ніж на 5000 тисяч гривень.
-- SELECT * FROM client c 
-- 	JOIN application a ON a.Client_idClient = c.idClient
-- WHERE Sum > 5000;

# 9. Порахувати кількість клієнтів усіх відділень та лише львівських відділень.
-- SELECT COUNT(Department_idDepartment) AS AllDepartmentsClients FROM client
-- UNION
-- SELECT COUNT(Department_idDepartment) AS LvivDepartmentsClients FROM client
-- 	JOIN department d ON client.Department_idDepartment = d.idDepartment
-- WHERE DepartmentCity = 'Lviv';

# 10.  Знайти кредити, які мають найбільшу суму для кожного клієнта окремо.

# 11.  Визначити кількість заявок на кредит для кожного клієнта.

# 12.  Визначити найбільший та найменший кредити.

# 13.  Порахувати кількість кредитів для клієнтів, які мають вищу освіту.

# 14.  Вивести дані про клієнта, в якого середня сума кредитів найвища.

# 15.  Вивести відділення, яке видало в кредити найбільше грошей.

# 16.  Вивести відділення, яке видало найбільший кредит.

# 17.  Усім клієнтам, які мають вищу освіту, встановити усі їхні кредити у розмірі 6000 грн.

# 18.  Усіх клієнтів київських відділень пересилити до Києва.

# 19.  Видалити усі кредити, які є повернені.

# 20.  Видалити кредити клієнтів, в яких друга літера прізвища є голосною.

# 21.  Знайти львівські відділення, які видали кредитів на загальну суму більше ніж 5000.

# 22.  Знайти клієнтів, які повністю погасили кредити на суму більше ніж 5000.

# 23.  Знайти максимальний неповернений кредит.

# 24.  Знайти клієнта, сума кредиту якого найменша.

# 25.  Знайти кредити, сума яких більша за середнє значення усіх кредитів.

# 26.  Знайти клієнтів, які є з того самого міста, що і клієнт, який взяв найбільшу кількість кредитів.

# 27.  Max sum.

# 28.  Місто чувака який набрав найбільше кредитів.
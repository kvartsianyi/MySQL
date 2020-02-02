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
# SELECT COUNT(Department_idDepartment) AS AllDepartmentsClients FROM client UNION ALL SELECT COUNT(Department_idDepartment) AS LvivDepartmentsClients FROM client
# 	JOIN department d ON client.Department_idDepartment = d.idDepartment
# WHERE DepartmentCity = 'Lviv';

# 10.  Знайти кредити, які мають найбільшу суму для кожного клієнта окремо.
# SELECT MAX(Sum) AS MaxCredit, CreditState, FirstName, LastName FROM application a
#     JOIN client c ON a.Client_idClient = c.idClient
# GROUP BY FirstName, LastName
# ORDER BY MaxCredit DESC;

# 11.  Визначити кількість заявок на кредит для кожного клієнта.
# SELECT COUNT(Client_idClient) AS CreditsCount, FirstName, LastName FROM application a
#     JOIN client c on a.Client_idClient = c.idClient
# GROUP BY FirstName, LastName;

# 12.  Визначити найбільший та найменший кредити.
# SELECT MAX(Sum) AS MaxCredit, MIN(Sum) AS MinCredit FROM application;

# 13.  Порахувати кількість кредитів для клієнтів, які мають вищу освіту.
# SELECT COUNT(Client_idClient) AS CreditsCountHighEducation FROM application a
#     JOIN client c on a.Client_idClient = c.idClient
# WHERE Education = 'high';

# 14.  Вивести дані про клієнта, в якого середня сума кредитів найвища.
# SELECT AVG(Sum) AS MaxAvgSum , c.* FROM application a
#     JOIN client c on a.Client_idClient = c.idClient
# GROUP BY idClient, FirstName, LastName, Education, Passport, City, Age, Department_idDepartment
# ORDER BY MaxAvgSum DESC LIMIT 1;

# 15.  Вивести відділення, яке видало в кредити найбільше грошей.
# SELECT SUM(Sum) AS CreditsSum, d.* FROM application a
#     JOIN client c on a.Client_idClient = c.idClient
#     JOIN department d on c.Department_idDepartment = d.idDepartment
# GROUP BY idDepartment, DepartmentCity, CountOfWorkers
# ORDER BY CreditsSum DESC
# LIMIT 1;

# 16.  Вивести відділення, яке видало найбільший кредит.
# SELECT MAX(Sum) MaxCredit, d.* FROM application a
#     JOIN client c on a.Client_idClient = c.idClient
#     JOIN department d on c.Department_idDepartment = d.idDepartment
# GROUP BY idDepartment, DepartmentCity, CountOfWorkers
# ORDER BY MaxCredit DESC
# LIMIT 1;

# 17.  Усім клієнтам, які мають вищу освіту, встановити усі їхні кредити у розмірі 6000 грн.
# UPDATE application
#     JOIN client c ON application.Client_idClient = c.idClient
# SET Sum = 6000
# WHERE Education = 'high';

# 18.  Усіх клієнтів київських відділень пересилити до Києва.
# UPDATE client
#     JOIN department d on client.Department_idDepartment = d.idDepartment
# SET City = 'Kyiv'
# WHERE DepartmentCity = 'Kyiv';

# 19.  Видалити усі кредити, які є повернені.
# DELETE FROM application WHERE CreditState = 'Returned';

# 20.  Видалити кредити клієнтів, в яких друга літера прізвища є голосною.
# ?????????????????????????????????? Kostilno
# DELETE application FROM application
#     JOIN client c ON application.Client_idClient = c.idClient
# WHERE LastName LIKE '_a%' OR LastName LIKE '_e%' OR LastName LIKE '_i%' OR LastName LIKE '_o%' OR LastName LIKE '_u%';


# 21.  Знайти львівські відділення, які видали кредитів на загальну суму більше ніж 5000.
# Тут селект в селекті.
# Внутрішній селект вибирає загальну суму по відділеннях.
# Зовнішній вибирає з тої вибірки тільки ті відділення, які відповідають умові.

# SELECT * FROM (
#         SELECT d.*, SUM(Sum) AS GeneralSum FROM application a
#         JOIN client c on a.Client_idClient = c.idClient
#         JOIN department d on c.Department_idDepartment = d.idDepartment
#     GROUP BY idDepartment, DepartmentCity, CountOfWorkers
#     ) AS LvivDepartments
# WHERE DepartmentCity = 'Lviv' AND GeneralSum > 5000;


# 22.  Знайти клієнтів, які повністю погасили кредити на суму більше ніж 5000.
# Тут у внутрішньому селекті рахуємо суму тільки тих кредитів, які були повернуті.
# Зовнішнім селектом відсіюємо ті, що не відповідають умові

# SELECT * FROM (
#          SELECT c.idClient, c.FirstName, c.LastName, SUM(Sum) AS CreditsSum
#          FROM application a
#                   JOIN client c on a.Client_idClient = c.idClient
#          WHERE CreditState = 'Returned'
#          GROUP BY idClient, FirstName, LastName
#      ) AS GoodClients
# WHERE CreditsSum > 5000;


# 23.  Знайти максимальний неповернений кредит.
# SELECT * FROM application
# WHERE CreditState = 'Not returned'
# ORDER BY Sum DESC LIMIT 1;

# 24.  Знайти клієнта, сума кредиту якого найменша.
# SELECT c.idClient, c.FirstName, c.LastName, SUM(Sum) AS MinCredit FROM application a
#     JOIN client c on a.Client_idClient = c.idClient
# GROUP BY idClient, FirstName, LastName
# ORDER BY MinCredit
# LIMIT 1;

# 25.  Знайти кредити, сума яких більша за середнє значення усіх кредитів.


# 26.  Знайти клієнтів, які є з того самого міста, що і клієнт, який взяв найбільшу кількість кредитів.

# 27.  Max sum.

# 28.  Місто чувака який набрав найбільше кредитів.
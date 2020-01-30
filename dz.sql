# -----------Clients-----------
# Создать скрипт запроса, который :

# - достанет всех клиентов.
# SELECT * FROM client;

# - достанет всех клиентов мужского пола.
# SELECT * FROM client WHERE sex = 'male';

# - достанет всех клиентов женского пола.
# SELECT * FROM client WHERE sex = 'female';

# - достанет всех клиентов старше 18.
# SELECT * FROM client WHERE age > 18;

# - достанет всех клиентов старше 18 и младеше 60.
# SELECT * FROM client WHERE age > 18 AND age < 60;

# - достанет всех клиентов старше 18 и младеше 60 мужского пола.
# SELECT * FROM client WHERE age > 18 AND age < 60 AND sex = 'male';

# - достанет всех клиентов  младеше 60 женского пола.
# SELECT * FROM client WHERE age < 60 AND sex = 'female';

# - достать клиентов с id от 3 до 15.
# SELECT * FROM client WHERE id >= 3 AND id <= 15;

# - достать клиентов с почтой от gmail.
# SELECT * FROM client WHERE email LIKE '%gmail%';
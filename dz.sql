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


# -----------Cars-----------
# Создать скрипт запроса, который:
# - достает все автомобили
# SELECT * FROM car;

# - достает все автомобили типа внедорожник
# SELECT * FROM car WHERE type = 'suv';

# - достает все автомобили типа спорткар
# SELECT * FROM car WHERE type = 'sportcar';

# - достает все автомобили старше 2010
# SELECT * FROM car WHERE year > 2010;

# - достает все автомобили старше 2010 и младше 2020
# SELECT * FROM car WHERE year > 2010 AND year < 2020;

# - достает все автомобили с объемом двигателя менне 2 литров
# SELECT * FROM car WHERE volume < 2;

# - достает все автомобили с объемом двигателя более 2 литров
# SELECT * FROM car WHERE volume > 2;

# - достает все автомобили с объемом двигателя более 2 литров и менее 3х литров
# SELECT * FROM car WHERE volume > 2 AND volume < 3;

# - достает все автомобили мощностью больше 100 лс
# SELECT * FROM car WHERE horse_power > 100;

# - достает все автомобили мощностью больше 100 лс и меньше 200 лс
# SELECT * FROM car WHERE horse_power > 100 AND horse_power < 200;

# - достает все автомобили мощностью больше 100 лс и объемом двигателя менне 2 литров
# SELECT * FROM car WHERE horse_power > 100 AND volume < 2;

# - достает все автомобили мощностью больше 100 лс и объемом двигателя более 2 литров
# SELECT * FROM car WHERE horse_power > 100 AND volume > 2;

# - достает все автомобили марки bmw мощностью больше 100 лс и объемом двигателя более 2 литров
SELECT * FROM car WHERE manufacturer = 'BMW' AND horse_power > 100 AND volume > 2;
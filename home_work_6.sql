-- Создадим базу данных для выполнения задания
CREATE DATABASE shope;
USE shope;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');
  

CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  desription TEXT COMMENT 'Описание',
  price DECIMAL (11,2) COMMENT 'Цена',
  catalog_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_catalog_id (catalog_id)
) COMMENT = 'Товарные позиции';

INSERT INTO products (name, desription, price, catalog_id) VALUES
  ('Intel Core i3-8100', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 7890.00, 1),
  ('Intel Core i5-7400', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 12700.00, 1),
  ('AMD FX-8320E', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 4780.00, 1),
  ('AMD FX-8320', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 7120.00, 1),
  ('ASUS ROG MAXIMUS X HERO', 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX', 19310.00, 2),
  ('Gigabyte H310M S2H', 'Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX', 4790.00, 2),
  ('MSI B250M GAMING PRO', 'Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', 5060.00, 2);
  
 

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id)
) COMMENT = 'Заказы';

INSERT INTO orders (user_id) VALUES
(1),
(2),
(6);


CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела',
  UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина';

INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');
 
 CREATE TABLE flights (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `from` VARCHAR(255),
  `to` VARCHAR(255)
 );
 
 CREATE TABLE cities (
 	lable VARCHAR(255),
 	name VARCHAR(255)
 	);
 
 INSERT INTO flights (`from`, `to`) VALUES
 	('moscow', 'novgorod'),
 	('novgorod', 'kazan'),
 	('ircutsk', 'moscow'),
 	('omsk', 'irkutsk'),
 	('moscow', 'kazan');
 	
 INSERT INTO cities (lable, name) VALUES
 	('moscow', 'Москва'),
 	('irkutsk', 'Иркутск'),
 	('novgorod', 'Новгород'),
 	('kazan', 'Казань'),
 	('omsk', 'Омск');
 
 -- задание 1 
 -- используя вложенный  запрос
 SELECT name FROM users WHERE id IN (SELECT user_id FROM orders);

 -- используя join
SELECT DISTINCT name 
  FROM users 
  INNER JOIN orders  
    ON users.id = orders.user_id;
   
-- задание 2 
SELECT products.name AS product_name, catalogs.name AS product_type 
  FROM products 
  LEFT JOIN catalogs 
    ON products.catalog_id = catalogs.id;  
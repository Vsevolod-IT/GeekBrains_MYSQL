CREATE DATABASE home_work;
USE home_work;

CREATE TABLE users(
	id_user INT UNSIGNED NOT NULL AUTO_INCREMENT,
	name VARCHAR(150) NOT NULL,
	created_at DATE,
	updated_at DATE,
	PRIMARY KEY (id_user)
);


SHOW TABLES;

INSERT INTO users (name) VALUES
	('Alan'),
	('Gon'),
	('Alex'),
	('Shelly');


/* 1 дание */	
SELECT * FROM users;
DESC users;
UPDATE users SET created_at = NOW(); 
UPDATE users SET updated_at = NOW();

ALTER TABLE users MODIFY COLUMN created_at VARCHAR(150);
ALTER TABLE users MODIFY COLUMN updated_at VARCHAR(150);

UPDATE users SET created_at = "20.10.2017 8:10"; 
UPDATE users SET updated_at = "20.10.2018 9:10";



/* второе задание*/
UPDATE users set created_at=STR_TO_DATE(created_at, '%d.%m.%Y %H:%i');
UPDATE users set updated_at=STR_TO_DATE(updated_at, '%d.%m.%Y %H:%i');

ALTER TABLE users MODIFY  created_at DATETIME;
ALTER TABLE users MODIFY  updated_at DATETIME;


/* создаем таблицу для 3 задания так как "процедуры" пока еще не пройдены 
 * то создадим рандомные числа благгодаря 10 вызовам одной строки*/
CREATE TABLE storehouses_products(
	id_product 	INT UNSIGNED NOT NULL AUTO_INCREMENT,
	value INT,
	PRIMARY KEY (id_product));
INSERT INTO storehouses_products SET value =  FLOOR(0 + RAND() * 10);

SELECT * FROM storehouses_products;
SELECT value FROM storehouses_products  ORDER BY CASE WHEN value='0' THEN 1 ELSE 0 END, value;

/*для 4 задания используем базу вк (для большей выборки)*/
USE vk;

SELECT * FROM profiles WHERE DATE_FORMAT(birthday,'%M') in ('may', 'august');


/*5 задание */
SELECT * FROM users WHERE id IN (5, 1, 2) ORDER BY FIELD(id, 5, 1, 2);

/*подсчет среднего возраста*/
SELECT AVG(age) FROM (SELECT YEAR(CURRENT_TIMESTAMP) - YEAR(birthday) as age FROM profiles) AS Avg_age;

SELECT COUNT(*) as stats from (SELECT DAYOFWEEK(CONCAT(YEAR(NOW()),'-',MONTH(birthday),'-',DAYOFMONTH(birthday))) as date from profiles) as stats where date=1;





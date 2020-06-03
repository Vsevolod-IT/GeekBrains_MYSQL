-- Практическое задание по теме “Транзакции, переменные, представления”

-- 1 задание

START TRANSACTION;
INSERT INTO sample.users (SELECT * FROM shop.users WHERE shop.users.id = 1);
COMMIT;


-- 2 задание 9 урока
use shope;
CREATE OR REPLACE VIEW v AS 
  SELECT products.name AS p_name, catalogs.name AS c_name 
    FROM products,catalogs 
      WHERE products.catalog_id = catalogs.id;
      

-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"

-- 1 задание
DELIMITER //

DROP FUNCTION IF EXISTS hello//
CREATE FUNCTION hello() RETURNS TEXT DETERMINISTIC
BEGIN
  RETURN CASE
      WHEN "06:00" <= CURTIME() AND CURTIME() < "12:00" THEN "Good morning"
      WHEN "12:00" <= CURTIME() AND CURTIME() < "18:00" THEN "Good afternoon"
      WHEN "18:00" <= CURTIME() AND CURTIME() < "00:00" THEN "Good evening"
      ELSE "Good night"
    END;
END //

DELIMITER ;

-- 2 задание
USE shope;
DELIMITER //

CREATE TRIGGER desc_and_name_check_before_insert BEFORE INSERT ON products FOR EACH ROW
BEGIN
  IF NEW.name IS NULL AND NEW.description IS NULL
    THEN SIGNAL sqlstate '45001' set message_text = "products name or description can not be NULL"; 
  end if;
 END;
END //

CREATE desc_and_name_check_before_update BEFORE UPDATE ON products FOR EACH ROW
BEGIN
  IF NEW.name IS NULL AND NEW.description IS NULL
    THEN SIGNAL sqlstate '45001' set message_text = "products name or description can not be NULL"; 
  end if;
 END;
END //
DELIMITER ;



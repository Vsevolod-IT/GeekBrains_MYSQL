USE vk;


-- Таблица лайков
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Таблица типов лайков
DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');

-- Заполняем лайки
INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;


-- Создадим таблицу постов
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  community_id INT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  media_id INT UNSIGNED,
  is_public BOOLEAN DEFAULT TRUE,
  is_archived BOOLEAN DEFAULT FALSE,
  views_counter INT UNSIGNED DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


-- внешние ключи в БД vk




ALTER TABLE users 
  ADD CONSTRAINT users_status_id_fk
  FOREIGN KEY (status_id) REFERENCES user_statuses(id)
    ON DELETE SET NULL;
    
ALTER TABLE users MODIFY COLUMN status_id INT UNSIGNED;  





ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
      ON DELETE SET NULL;
 
 ALTER TABLE media 
 	ADD CONSTRAINT media_type_id_fk
 		FOREIGN KEY (media_type_id) REFERENCES media_types(id)
 		ON DELETE CASCADE;
 	
 	
ALTER TABLE friendship 
 	ADD CONSTRAINT friendship_user_id_fk
 		FOREIGN KEY (user_id) REFERENCES users(id)
 		ON DELETE CASCADE;

 	
ALTER TABLE friendship 
 	ADD CONSTRAINT friendship_status_id_fk
 		FOREIGN KEY (status_id) REFERENCES friendship_statuses(id)
 		ON DELETE CASCADE;

 	
ALTER TABLE messages 
 	ADD CONSTRAINT message_from_user_id_fk
 		FOREIGN KEY (from_user_id) REFERENCES profiles(user_id)
 		ON DELETE CASCADE,
 	ADD CONSTRAINT message_to_user_id_fk
 		FOREIGN KEY (to_user_id) REFERENCES profiles(user_id)
 		ON DELETE CASCADE;
 	
ALTER TABLE communities_users 
 	ADD CONSTRAINT communities_id_fk
 		FOREIGN KEY (community_id) REFERENCES communities(id)
 		ON DELETE CASCADE,
 	ADD CONSTRAINT user_community_id_fk
 		FOREIGN KEY (user_id) REFERENCES profiles(user_id)
 		ON DELETE CASCADE;
 	
ALTER TABLE posts 
 	ADD CONSTRAINT post_communities_id_fk
 		FOREIGN KEY (community_id) REFERENCES communities(id)
 		ON DELETE CASCADE,
 	ADD CONSTRAINT post_user_id_fk
 		FOREIGN KEY (user_id) REFERENCES profiles(user_id)
 		ON DELETE CASCADE;
 	
ALTER TABLE likes 
 	ADD CONSTRAINT likes_user_id_fk
 		FOREIGN KEY (user_id) REFERENCES profiles(user_id)
 		ON DELETE CASCADE;

 	
 	-- общее количество лайков самым молодым
SELECT COUNT(id) FROM likes WHERE user_id IN (
  SELECT * FROM (
    SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10
    ) as smth
);

-- кто больше поставил лайков мужчины или женщины
SELECT IF(
	(SELECT COUNT(id) FROM likes WHERE user_id IN (
		SELECT user_id FROM profiles WHERE gender="m")
	) 
	> 
	(SELECT COUNT(id) FROM likes WHERE user_id IN (
		SELECT user_id FROM profiles WHERE gender="f")
	), 
   'male', 'female');

  
-- активность по лайкам
SELECT user_id, COUNT(*) AS count
FROM likes
GROUP BY user_id
ORDER BY count LIMIT 10;
-- активность по наличаю медиа
SELECT user_id, COUNT(*) AS count
FROM media
GROUP BY user_id
ORDER BY count LIMIT 10;
-- меньше всех переписываются
SELECT from_user_id, COUNT(*) AS count
FROM messages
GROUP BY from_user_id
ORDER BY count LIMIT 10;
 	

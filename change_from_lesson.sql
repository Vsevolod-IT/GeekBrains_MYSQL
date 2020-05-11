-- доработка БД по уроку
USE vk;

SHOW TABLES;

SELECT  * FROM  users u  LIMIT 10;

UPDATE users SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at; 

SELECT FLOOR( 1 + RAND() * 3);

UPDATE users  SET status_id  = FLOOR(1 + RAND() * 3 );

SELECT * FROM profiles LIMIT 10;

-- количество строк в таблице
SELECT COUNT(*) FROM media;

UPDATE profiles SET photo_id = FLOOR(1 + RAND() * 100 ) ;

-- ВРЕМЕННАЯ ТАБЛИЦА
CREATE TEMPORARY TABLE genders (name CHAR(1));
INSERT INTO genders VALUES ('m'), ('w');

SELECT  name FROM genders ORDER BY RAND() LIMIT 1; 
UPDATE profiles SET gender = (SELECT name FROM genders ORDER BY RAND() LIMIT 1 );

SELECT * FROM messages LIMIT 10;

UPDATE  messages  SET from_user_id = FLOOR(1 + RAND() * 100 ),
					  to_user_id = FLOOR(1 + RAND() * 100 ); 
					 
SELECT * FROM media LIMIT 10;

UPDATE  media  SET user_id = FLOOR(1 + RAND() * 100 );

CREATE TEMPORARY TABLE extension (name VARCHAR(10));

INSERT INTO extension VALUES ('jpeg'), ('avi'), ('mp4'), ('png');

UPDATE media  SET filename = CONCAT( 
	'https//dropbox.net/vk/',
	filename,
	'.',
	(SELECT name FROM extension ORDER BY RAND() LIMIT 1 ));

UPDATE media SET size = FLOOR(100000 + RAND() * 100000000 ) WHERE  size < 1000;

UPDATE media SET metadata = CONCAT(
	'{"owner":"',
	(SELECT CONCAT(first_name, ' ', last_name) FROM users  WHERE id = user_id),
	'"}');

DESC media;

ALTER TABLE media MODIFY COLUMN metadata JSON;

SELECT * FROM media_types;

DELETE FROM media_types;

INSERT INTO media_types (name ) VALUES 
('photo'),
('video'), 
('audio');

-- сброс счетчика авто и удаление содержимого
TRUNCATE media_types; 

SELECT * FROM media LIMIT 10;

UPDATE media SET media_type_id = FLOOR(1 + RAND() * 3 ); 

SELECT * FROM  friendship LIMIT 10;

UPDATE friendship SET
	user_id = FLOOR(1 + RAND() * 100 ),
	friend_id = FLOOR(1 + RAND() * 100 );

SELECT * FROM friendship_statuses;

TRUNCATE friendship_statuses;

INSERT INTO friendship_statuses (name) VALUES
	('Request'),
	('Confirmed'),
	('Rejected');

UPDATE  friendship SET status_id  = FLOOR(1 + RAND() * 3 ); 

SELECT * FROM communities;

DELETE  FROM communities  WHERE id > 25;

SELECT * FROM communities_users;

SELECT * FROM  communities_users cu  WHERE community_id > 25;

UPDATE  communities_users  SET community_id  = FLOOR(1 + RAND() * 25 ); 

SELECT * FROM profiles LIMIT 10;




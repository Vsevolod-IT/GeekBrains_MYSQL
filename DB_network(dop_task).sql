-- таблица user определяет основную информацию которая хранится
-- на основных серверах и по ней осуществляется поиск
-- при поиске пользователей мы видем именно данную информацию
CREATE TABLE users (
	id  INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	country VARCHAR(130),
	city VARCHAR(130),
	date_birthday DATE
	gender CHAR(1) NOT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP
	);

-- это таблица личной информации пользователь может заполнять ее а может и нет
-- таблица регистрации где необходим номер телефона и почты сюда мы не привязываем
-- так как эта информация необходима только организации управляющей сайтом (соц сетью) 
CREATE TABLE profiles (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	phone VARCHAR(100) NOT NULL UNIQUE,
	mail VARCHAR(100) NOT NULL UNIQUE,
	university VARCHAR(130),
	personal_info VARCHAR(200)
	);
	
-- с медиа файлами было решено поступить следующим образом
-- разделить по типу медиа файлов (как отдельные сущности)
-- таблицы каждой сущности Видео Фото Аудио разделены на три таблицы 1 - таблица общего стека в ней хранятся 
-- все обьекты загружаемые пользователями они индексируются и присваиваются пользователю
-- от которого получены  2ая таблица - хранит технические данные обьектов 
-- (по сути в нее записывается обьект один раз при загрузке) исходя из программного обеспечения
--  файл перекадируется в нужную для сайта кодировку и 3яя таблица - это персональная таблица пользователя
-- она хранит ссылки на те обьекты которые присвоены ему в следсвии чего предпологаю что у пользователя
-- будет легче происходить загрузка 
CREATE TABLE foto_base (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user_id INT UNSIGNED NOT NULL,
	name VARCHAR(130),
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	discribe VARCHAR(200),
	like_ SUM(like_id)
	);
-- во всех таблицах медиа  не хватает еще одной которая хранит Лайки
-- для нее необходимо чтобы она сумировала и хранила всех пользователей
-- которые "лайкнули" запись (я еще не смог ее придумать)
CREATE TABLE foto_data (
	id_foto INT UNSIGNED NOT NULL,
	metadata JSON,
	size INT NOT NULL
	);
	
CREATE TABLE foto_user (
	id_foto INT UNSIGNED NOT NULL,
	name_album VARCHAR(130)
	);
	
CREATE TABLE video_base (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_user INT UNSIGNED NOT NULL,
	name VARCHAR(130),
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	discribe VARCHAR(130),
	like_ SUM(LIKE_ID)
	);
	
CREATE TABLE video_data (
	id_video INT UNSIGNED NOT NULL,
	metadata JSON,
	size INT NOT NULL
	);
	
CREATE TABLE video_user (
	id_video INT UNSIGNED NOT NULL,
	name_album VARCHAR(130)
	);
	
	
CREATE TABLE audio_base (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_user INT UNSIGNED NOT NULL,
	name VARCHAR(130),
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	discribe VARCHAR(130),
	like_ SUM(LIKE_ID)
	);
	
CREATE TABLE audio_data (
	id_audio INT UNSIGNED NOT NULL,
	metadata JSON,
	size INT NOT NULL
	);

CREATE TABLE audio_user (
	id_audio INT UNSIGNED NOT NULL,
	name_album VARCHAR(130)
	);
	

-- сообщения разделены на две таблицы 1 - общая таблица всех пользователей в ней выдается BOX для 
-- каждой пары или группы собеседников она передают ключ к этому боксу в другую таблицу номер 2
-- во 2ой таблице есть атрибуты get send  это bool выражения которые оповещают пользователь что в диалоге сообщение
-- либо пришло, либо он отправил (когда собеселник прочтет send вернется в исходное null что будет означать что сообщение 
-- прочитано)
CREATE TABLE message_box (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	users JSON[user_id, user_id],
	body TEXT NOT NULL
	);
	
CREATE TABLE message_user (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_message_box INT UNSIGNED NOT NULL,
	get_ TRUE FALSE,
	send TRUE FALSE
	);


-- у групп должна быть еще таблица как у пользователей с персональной тнформацией и друзьями
-- в зависимости от кол-ва друзей меняется число folovers
-- а также должна быть таблица типов групп (юмор, политика....)
CREATE TABLE groups_ (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(130),
	type_ INT UNSIGNED NOT NULL,
	folovers SUM(friends)
	);

CREATE TABLE goups_user(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_groups INT UNSIGNED NOT NULL
	);
	

-- и это главная таблица которая отправляет пользователя в зависимости от его нужд
CREATE TABLE user_page(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	users INT UNSIGNED NOT NULL,
	profiles INT UNSIGNED NOT NULL,
	foto INT UNSIGNED NOT NULL,
	video INT UNSIGNED NOT NULL,
	audio INT UNSIGNED NOT NULL,
	message INT UNSIGNED NOT NULL,
	groups_ INT UNSIGNED NOT NULL
	);
	
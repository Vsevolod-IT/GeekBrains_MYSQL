/* создание таблиц для постов - каждый пост получает
 * уникальный номер в котором имеется ссылка на медиа 
 * если она имеется. Плюс добавлены таблицы категорий постов и тегов
 * для облегчения поиска и сортировки для пользователей
 * */

CREATE TABLE posts(
	post_id int(10) unsigned NOT NULL AUTO_INCREMENT,
	user_id int(10) unsigned NOT NULL,
	content text COLLATE utf8_unicode_ci,
	media_id int(10) unsigned,
	`created_at` datetime DEFAULT current_timestamp(),
	PRIMARY KEY (`post_id`)
	);

CREATE TABLE categories(
	categories_id int(10) unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
	PRIMARY KEY (`categories_id`)
	);
	
CREATE TABLE tags(
	tags_id int(10) unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
	PRIMARY KEY (`tags_id`)
	);
	
CREATE TABLE post_category(
	post_category_id int(10) unsigned NOT NULL AUTO_INCREMENT,
	post_id int(10) unsigned NOT NULL,
	categories_id int(10) unsigned NOT NULL
	);
	
CREATE TABLE post_tag(
	post_tag_id int(10) unsigned NOT NULL AUTO_INCREMENT,
	post_id int(10) unsigned NOT NULL,
	tag_id int(10) unsigned NOT NULL
	);

	
	
/*в нашей соц сети возможно ставить лайк следующим сущностям: медиа и пост
 * поэтому в таблицу мы включаем как media_id так и post_id по умолчаниию 
 * они будут иметь значение null и в зависимости от лайка (посту или медиа)
 * будут приобретать его ID (возможно ли указать что 1 из этих 2ух атриботов
 * обязательно должен быть заполнен?) в данной модели исключен вариант дизлайка
 */
CREATE TABLE likes(
	like_id int(10) unsigned NOT NULL AUTO_INCREMENT,
	user_id int(10) unsigned NOT NULL,
	post_id int(10) unsigned NOT NULL,
	media_id int(10) unsigned NOT NULL,
	int(10) unsigned NOT NULL
	);
	
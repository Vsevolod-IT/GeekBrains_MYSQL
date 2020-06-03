use vk;

-- 1 задание
-- чаще настраивают поиск  по дате рождения 
CREATE INDEX profiles_birthday_idx ON profiles(birthday);


-- или ищут сообщения и посты по  тексту  этих сообщений или постов
CREATE INDEX messages_body_idx ON messages(body(10));
CREATE INDEX posts_body_idx ON posts(body(10));
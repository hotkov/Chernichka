-- _аuthor_ Черниченко А.В.
-- ДЗ №3
-- Введение в проектирование БД

-- Написать скрипт, добавляющий в БД vk, которую создали на занятии, 3 новые таблицы (с перечнем полей, указанием индексов и внешних ключей) 

-- Я решил создать три таблицы:
-- 1. comments - для цели хранения комментариев, пользователей под контентом (медиа)
-- 2. termuse_list - для цели хранения перечня правил пользования, вспомогаетльная таблица жалобы 
-- 3. complaint - для цели хранения жалоб на нарушения правил пользования, с указание нарушенного правила а также обвиняющего и назначающего вину пользователя

DROP TABLE IF EXISTS comments;
CREATE TABLE comments(
	id SERIAL,
    user_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW()
);


ALTER TABLE vk.comments 
ADD CONSTRAINT comments_fk 
FOREIGN KEY (media_id) REFERENCES vk.media(id);

ALTER TABLE vk.comments 
ADD CONSTRAINT comments_fk_1 
FOREIGN KEY (user_id) REFERENCES vk.users(id);

DROP TABLE IF EXISTS termsuse_list;
CREATE TABLE termsuse_list(
	id SERIAL,
    name VARCHAR(255), -- записей мало, поэтому в индексе нет необходимости
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS complaint;
CREATE TABLE complaint (
	id SERIAL, -- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
    termsuse_list_id BIGINT UNSIGNED NOT NULL,
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED NOT NULL,
    body TEXT,
    created_at DATETIME DEFAULT NOW(), -- можно будет даже не упоминать это поле при вставке

    FOREIGN KEY (from_user_id) REFERENCES users(id),
    FOREIGN KEY (to_user_id) REFERENCES users(id),
    FOREIGN KEY (termsuse_list_id) REFERENCES termsuse_list(id)
);
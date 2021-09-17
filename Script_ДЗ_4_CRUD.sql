-- _аuthor_ Черниченко А.В.
-- CRUD (create, read, update, delete, truncate)
-- ДЗ №4 
-- i. Заполнить таблицы БД vk данными (по 10-20 записей в каждой таблице)

use vk;

INSERT ignore into users (id, firstname, lastname, email, password_hash, phone)
VALUES
('1', 'Иванов', 'Иван', 'iv@example.org', '1', '9261111111'),
('2', 'Петров', 'Петр', 'petr@example.org', '2', '9261111112'),
('3', 'Сидоров', 'Сидр', 'sidr@example.org', '3', '9261111113'),
('4', 'Козлов', 'Козел', 'kozel@example.org', '4', '9261111114'),
('5', 'Лыжников', 'Лыж', 'lyzh@example.org', '5', '9261111115'),
('6', 'Кучеров', 'Куч', 'kuch@example.org', '6', '9261111116'),
('7', 'Кочергин', 'Киг', 'koch@example.org', '7', '9261111117'),
('8', 'Козич', 'Кел', 'koz@example.org', '8', '9261111118'),
('9', 'Кич', 'оз', 'kich@example.org', '9', '9261111119'),
('10', 'Злович', 'зел', 'Zlov@example.org', '10', '9261111120')
;

insert ignore into communities 
VALUES 
('1','Лента РУ','1'),
('2','РПЛ','2'),
('3','ИТ','3'),
('4','Спорт','4'),
('5','Путешествия','5'),
('6','Знакомства','6'),
('7','Советы','7'),
('8','Сказочный патруль','8'),
('9','ОККО','9'),
('10','СТОП КОРОНОВИРУС','10')
;

-- insert заменял на replace чтобы была возможность запускать запрос без ошибок
REPLACE into users_communities (user_id,community_id)
VALUES 
('1','1'),
('2','2'),
('3','3'),
('4','4'),
('5','5'),
('6','6'),
('7','7'),
('8','8'),
('9','9'),
('10','10')
;

insert ignore into friend_requests (initiator_user_id, target_user_id, status, requested_at,  updated_at)
('1','2','requested','1986-04-20 17:01:49','1998-02-23 02:50:02'),
('2','1','declined','1999-10-21 19:09:48','1995-06-01 12:45:33'),
('3','4','requested','1988-09-10 19:37:10','1995-11-02 02:18:28'),
('4','3','declined','2002-08-09 13:11:34','2001-08-17 11:58:56'),
('5','6','unfriended','2010-11-22 08:19:31','2018-02-14 06:25:03'),
('6','5','declined','2003-11-12 04:37:05','1985-03-31 17:13:11'),
('7','9','unfriended','2020-04-30 18:50:29','2013-12-18 12:44:58'),
('8','10','requested','1988-09-11 02:04:43','1989-08-26 17:25:16'),
('9','8','approved','1995-02-07 13:17:08','2018-05-08 16:41:15'),
('10','7','requested','1995-02-07 15:17:08','1987-08-24 13:45:43')
;

-- insert заменял на replace чтобы была возможность запускать запрос без ошибок
replace INTO `media_types` VALUES ('1','eius','1974-07-12 17:44:08','1986-04-29 15:56:08'),
('2','occaecati','1976-03-13 21:25:30','2013-11-18 22:12:58'),
('3','deserunt','1972-04-27 09:29:42','1992-06-23 16:33:54'),
('4','tempora','1974-10-27 09:47:06','1976-02-06 12:26:26') 
;

insert INTO `media` VALUES ('1','1','1','Architecto est animi facere. Esse quas unde omnis. Corporis et velit sint deserunt.','corrupti','6401',NULL,'1987-03-12 22:24:37','1979-08-29 05:32:34'),
('2','2','2','Temporibus est dignissimos omnis. Recusandae odit facere autem molestiae quis et saepe. Laboriosam et eum iste modi facere maxime. Et non praesentium neque id aspernatur ut et.','ad','318954689',NULL,'2002-05-25 21:39:07','2007-06-06 17:44:42'),
('3','3','3','Aut iure itaque voluptate quaerat odio nisi est qui. Voluptatem quia tenetur dolores ab voluptatem et est. Fugiat vel temporibus quis.','repellat','20',NULL,'2013-06-20 01:35:36','2011-11-28 20:04:34'),
('4','4','4','Velit porro aut dolorum qui consectetur aliquid error. Nemo ea error occaecati ea modi. Voluptas impedit sequi eaque consequuntur accusantium. Facilis reprehenderit rerum ut omnis sint doloremque sunt aut. Nostrum animi sint tempora voluptate.','et','3763348',NULL,'2004-08-07 08:07:37','1985-04-14 22:19:09'),
('5','1','5','Perspiciatis eius autem placeat optio. Voluptatibus et temporibus neque placeat quo necessitatibus. Nobis aut iusto sunt officiis quae accusantium. Velit qui et non iure quia commodi soluta.','aut','9',NULL,'1992-10-10 08:36:26','1985-10-02 16:07:06'),
('6','2','6','Ab occaecati sequi quas explicabo cum laborum. Eligendi nobis sapiente minus aliquam nesciunt unde. Sed sunt expedita voluptatum iusto similique ut.','consequatur','983803906',NULL,'1989-06-30 03:25:19','1980-12-04 05:09:54'),
('7','3','7','Tenetur architecto dolorem voluptates. Blanditiis ut ut quia aliquam voluptatem. Necessitatibus et quos molestiae. Quis ad vero consequuntur occaecati fugiat assumenda sapiente.','reprehenderit','4',NULL,'1972-07-01 22:56:45','1992-06-11 20:36:49'),
('8','4','8','Sunt quia omnis cumque autem vel facilis. Autem doloremque ab ut dolores. Incidunt dolores eum ipsam dolores deserunt rerum hic. Optio voluptates molestias consequuntur aut fugit est fugiat.','odit','96',NULL,'1990-01-29 18:47:01','1991-10-28 22:56:16'),
('9','1','9','Est suscipit iure laboriosam eligendi laborum commodi. Aut fuga deserunt sit et praesentium cupiditate.','recusandae','87723',NULL,'2010-01-12 05:04:04','1986-10-02 19:57:15'),
('10','2','10','Qui facere ratione explicabo quidem. Earum enim eligendi vel magnam.','nam','913',NULL,'1986-06-10 03:28:03','1972-09-24 22:09:31')
;

INSERT INTO `likes` 
VALUES 
('1','1','1','1970-09-25 19:54:11'),
('2','2','2','1977-07-13 14:33:35'),
('3','3','3','1988-11-15 14:07:59'),
('4','4','4','1997-12-10 15:47:27'),
('5','5','5','1975-07-08 06:14:33'),
('6','6','6','2015-09-10 06:39:40'),
('7','7','7','1986-10-21 01:20:16'),
('8','8','8','1997-05-08 01:56:36'),
('9','9','9','1973-03-12 19:39:22'),
('10','10','10','1983-08-05 21:24:24')
;

INSERT ignore INTO `profiles` 
values
('1',NULL,'1996-05-18','1','1997-05-08 20:35:23',NULL),
('2',NULL,'2015-04-25','2','1977-11-05 20:03:53',NULL),
('3',NULL,'1974-02-07','3','1973-11-09 06:38:39',NULL),
('4',NULL,'1980-03-15','4','1971-04-16 17:28:04',NULL),
('5',NULL,'1992-05-05','5','1995-12-03 09:19:25',NULL),
('6',NULL,'1979-07-07','6','1972-10-04 22:32:53',NULL),
('7',NULL,'1995-10-05','7','1976-03-10 17:04:12',NULL),
('8',NULL,'2013-07-10','8','2004-07-01 00:23:16',NULL),
('9',NULL,'2010-05-22','9','1997-10-10 07:21:00',NULL),
('10',NULL,'2010-11-18','10','1980-06-02 12:17:02',NULL)
;

INSERT INTO `messages`
values
('1','1','1','Provident soluta tempore omnis qui repellat dolorum. Vitae aut eligendi voluptatum officiis architecto veritatis. Doloremque rerum molestiae labore autem et nostrum quam. Ut accusamus amet doloremque velit praesentium maxime ratione. Ut ut sit eius quia est autem reprehenderit.','1982-08-19 10:49:08'),
('2','2','2','Praesentium hic adipisci aut quisquam ut qui amet. Sint magni ea ut officiis. Molestiae fuga ipsam exercitationem est temporibus. Placeat magnam eius voluptates voluptas corporis.','2018-10-16 05:18:07'),
('3','3','3','Laudantium quasi et sit nam aliquid maiores sint. Quibusdam sunt molestiae totam odio quae. Voluptatem inventore odit ducimus porro exercitationem et qui possimus.','2018-02-18 04:44:58'),
('4','4','4','Qui praesentium quidem quam doloribus nemo magni in. Voluptatem velit nam aut at neque corporis. Et cupiditate et esse consequatur inventore. Sint temporibus dolores commodi.','1993-02-26 01:35:53'),
('5','5','5','Facere laborum veniam et dolores iusto non accusamus dolorem. Similique vel tenetur aliquam officiis atque ut. Est aut autem perspiciatis aut.','1987-04-21 18:35:21'),
('6','6','6','Minima et magni aut aut qui id laudantium. Enim quia aspernatur repellat vero aliquam magnam id. Minima qui perspiciatis sed et vel accusantium.','1990-05-14 23:46:57'),
('7','7','7','Non reprehenderit error ut exercitationem molestiae asperiores. Et id accusantium similique consequatur iste magni consequuntur. Suscipit ullam earum optio laborum. Consequatur et id alias quia.','2015-06-03 14:34:09'),
('8','8','8','Aut omnis quia non. Vero sint cumque alias quas.','2002-04-28 01:30:51'),
('9','9','9','Laboriosam eligendi tenetur est. Hic harum est sint ut quo excepturi. Voluptates qui dolores rerum porro ad veritatis. Ratione nulla consequatur rerum officia dolorem.','2021-09-04 14:10:46'),
('10','10','10','Explicabo vel et aperiam inventore. Ut dolore est libero cum commodi vitae ea. Sapiente ullam commodi est expedita magni.','2021-09-05 14:10:46')
;

INSERT INTO `photo_albums` 
values
('1','deserunt','1'),
('2','maiores','2'),
('3','tempora','3'),
('4','facere','4'),
('5','accusamus','5'),
('6','blanditiis','6'),
('7','a','7'),
('8','sed','8'),
('9','eum','9'),
('10','tempora','10')
;

-- insert заменял на replace чтобы была возможность запускать запрос без ошибок
replace INTO `photos` 
VALUES ('1','1','1'),
('2','2','2'),
('3','3','3'),
('4','4','4'),
('5','5','5'),
('6','6','6'),
('7','7','7'),
('8','8','8'),
('9','9','9'),
('10','10','10')
; 

INSERT INTO `profiles` 
values
('1',NULL,'1996-05-18','1','1997-05-08 20:35:23',NULL),
('2',NULL,'2015-04-25','2','1977-11-05 20:03:53',NULL),
('3',NULL,'1974-02-07','3','1973-11-09 06:38:39',NULL),
('4',NULL,'1980-03-15','4','1971-04-16 17:28:04',NULL),
('5',NULL,'1992-05-05','5','1995-12-03 09:19:25',NULL),
('6',NULL,'1979-07-07','6','1972-10-04 22:32:53',NULL),
('7',NULL,'1995-10-05','7','1976-03-10 17:04:12',NULL),
('8',NULL,'2013-07-10','8','2004-07-01 00:23:16',NULL),
('9',NULL,'1993-05-22','9','1997-10-10 07:21:00',NULL),
('10',NULL,'1971-11-18','10','1980-06-02 12:17:02',NULL)
;

-- insert заменял на replace чтобы была возможность запускать запрос без ошибок
REPLACE ignore into termsuse_list (id,name,created_at,updated_at)
values
('1','Распространение запрещенной информации и материалов','',''),
('2','Ненадлежащая реклама','1997-10-10 07:21:00','1997-10-10 07:21:00'),
('3','Ущемление личных неимущественных прав','1997-10-10 07:21:00','1997-10-10 07:21:00'),
('4','Размещение рекламы в Сообществах','1997-10-10 07:21:00','1997-10-10 07:21:00'),
('5','удалять Контент и иную информацию со страницы Сообщества','1997-10-10 07:21:00','1997-10-10 07:21:00'),
('6','блокировать доступ конкретных пользователей к странице Сообщества','1997-10-10 07:21:00','1997-10-10 07:21:00')
;

-- insert заменял на replace чтобы была возможность запускать запрос без ошибок
replace INTO `complaint` VALUES ('1','1','1','2','накосячил','1982-08-19 10:49:08'),
('2','1','2','1','накосячил','1982-08-19 10:49:08'),
('3','2','3','4','накосячил','1982-08-19 10:49:08'),
('4','3','4','3','накосячил','1982-08-19 10:49:08'),
('5','3','5','6','накосячил','1982-08-19 10:49:08'),
('6','6','6','5','накосячил','1982-08-19 10:49:08'),
('7','5','7','8','накосячил','1982-08-19 10:49:08'),
('8','4','8','7','накосячил','1982-08-19 10:49:08'),
('9','4','9','10','накосячил','1982-08-19 10:49:08'),
('10','5','10','9','накосячил','1982-08-19 10:49:08')
;

INSERT INTO comments (id,user_id, media_id,created_at)
VALUES ('1','1','2','1979-09-25 19:54:11'),
('2','1','2','2010-06-19 09:45:53'),
('3','3','1','1990-10-09 20:52:33'),
('4','1','1','1992-08-15 09:43:05'),
('5','5','1','1984-02-12 21:13:23'),
('6','1','6','2006-07-13 23:15:47'),
('7','7','1','1979-05-04 12:22:15'),
('8','8','1','1986-02-11 14:17:08'),
('9','1','9','2012-01-26 04:19:36'),
('10','2','10','2005-10-31 14:10:46')
;

-- ii. Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке
select distinct firstname
from users
order by firstname 
;

-- iii. Добавить поле is_active в таблицу profiles со значением по умолчанию = true (или 1)...первично заполнял на 1, сейчас заменил на true
alter table profiles 
add is_active bool default(true) 
;

-- использовал как вспомогательный для тренировки запроса 18+ (iii)
select birthday,is_active
from profiles
;

-- iii. написать скрипт, отмечающий несовершеннолетних пользователей как неактивных (поле is_active=false)
update profiles 
set is_active=true, is_active=false where birthday >= adddate(now(), INTERVAL -18 YEAR)
;

-- использовал как вспомогательный для самоконтроля
select birthday,is_active
from profiles
where is_active =false 
;

-- использовал как вспомогательный для тренировки запросв (iv)
select created_at
from messages
where created_at > now()
;

-- iv. написать скрипт, удаляющий сообщения "из будущего"(дата больше сегодняшней)
delete from messages where created_at > now()
;

-- использовал как вспомогательный для самоконтроля
select created_at
from messages
;

-- v. Название темы курсового проекта "База данных Врача оптометриста"


-- _аuthor_ Черниченко А.В.
-- Практическое задание по теме “Управление БД”

-- 1. Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке
--  C этим ничего не получилось файл описаннного выше содержания создается с расширением txt. 
--  Куда я его только не пихал (и в папку BIN и в папку Баз данных SQL, но результата не было). Консоль требует ввода пароля(
-- [mysql]
-- user=root
-- password=root


-- 2. Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.
show databases;
create database example;

use example;

create table users 
(
Id iNT unsigned,
Name varchar(255)
);

show tables;

-- 3.Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.

-- C:\Program Files\MySQL\MySQL Server 8.0\bin>mysqldump -v -uroot -p example > rezerv.sql

mysql> create database sample;

mysql> use sample;
Database changed

mysql> source rezerv.sql

mysql> show tables;

-- +------------------+
-- | Tables_in_sample |
-- +------------------+
-- | users            |
-- +------------------+
-- 1 row in set (0.00 sec)

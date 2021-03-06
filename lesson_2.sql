--1 Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, 
--задав в нем логин и пароль, который указывался при установке.

[misql]
user=USER
password=1

--2 Создайте базу данных example, разместите в ней таблицу users,
-- состоящую из двух столбцов, числового id и строкового name.
--1)

CREATE DATABASE example;
USE example;

CREATE TABLE IF NOT EXISTS users (
  id SERIAL,
  name VARCHAR(255) NOT NULL UNIQUE
);

--2)

DROP TABLE IF EXISTES users;
CREATE TABLE users (
  id INT UNSIGNED,
  name VARCHAR(255)
  )


-- 3 Создайте дамп базы данных example из предыдущего задания,
--разверните содержимое дампа в новую базу данных sample.

  mysqldump mysql exemple > exemple.sql
  mysql -u root -p -e 'CREATE DATABASE sample'
  mysql -u root -p sample < example.sql
  
  
--4 (по желанию) Ознакомьтесь более подробно с документацией утилиты mysqldump.
--Создайте дамп единственной таблицы help_keyword базы данных mysql.
--Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.
  
 mysqldump mysql help_keyword -where='TRUE LIMIT 100' > help_keyword_DB.sql
 
 mysqldump -u root -h 193.168.0.13 -p -where='teru limit 100' database > elp_keyword_DB.sql
 
 

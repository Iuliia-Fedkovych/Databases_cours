/*1. Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке.
 my.cnf создала и положила в домашнюю папку, но он не заработал. Ввела команду "mysql --help" и узнала откуда подтягиваются defoult options.
 в итоге положила файл сюда C:\Windows
 После этого сработало
 */

/* 2. Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.*/
DROP DATABASE IF EXISTS example;
CREATE DATABASE example;
USE example;

DROP table IF EXISTS users;
CREATE TABLE users (
  id SERIAL primary key,
  name VARCHAR(255) COMMENT 'User name'
) COMMENT='Users';

insert into users (name) values ('Kate');
insert into users (name) values ('Maria');
insert into users (name) values ('Alex');

/* 3. Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.
 - для создания дампа нужно выполнить следующую команду (скопированно из терминала):
C:\Users\Iuliia>mysqldump example > dump21012020.sql
 - Для восстановления нужно выполнить следующую команду (при этом база sample уже должна быть создана, иначе выдаёт ошибку)
C:\Users\Iuliia>mysql sample < dump21012020.sql   
*/

/*4. (по желанию) Ознакомьтесь более подробно с документацией утилиты mysqldump. Создайте дамп единственной таблицы help_keyword базы данных mysql. 
  Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.
 - для создания дампа нужно выполнить следующую команду (скопированно из терминала):
 C:\Users\Iuliia>mysqldump mysql help_keyword --where="true limit 100" > dump_keywords.sql
*/
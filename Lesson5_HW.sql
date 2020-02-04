DROP DATABASE IF EXISTS shop2;
CREATE DATABASE shop2;
USE shop2;

-- создание таблиц

DROP table IF EXISTS users; -- создание таблицы, в которй поля create_at и update_at не заполняются автоматически
CREATE TABLE users (
  id SERIAL primary key,
  name VARCHAR(255) COMMENT 'Customer name',
  birthday_at date COMMENT 'Date of birth',
  create_at DATETIME,
  update_at DATETIME
) COMMENT='Customers';

drop table if exists users2;  -- создала таблицу, где поля с датами типа VARCHAR
CREATE TABLE `users2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Customer name',
  `create_at` varchar(20),
  `update_at` varchar(20),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
);

DROP table IF EXISTS storehouses_poducts;
CREATE TABLE storehouses_poducts (
  id SERIAL primary key,
  storehouse_id INT unsigned,
  product_id INT unsigned,
  qauntity int unsigned COMMENT 'Product quantity in the storehouse',
  create_at DATETIME default current_timestamp,
  update_at DATETIME default current_timestamp on update current_timestamp
) COMMENT='Product quantity';

-- наполнение нужными данными

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');
 
INSERT INTO users2   
(name, create_at, update_at)
VALUES('Ivan', '20.10.2017 8:10', '21.03.2012 05:47'),
		('Makar', '18.12.1987 11:59', '21.03.2012 05:47'),
		('Denis', '03.04.2019 09:42', '18.12.1987 05:26'),
		('Artur', '20.10.2017 8:10', '03.04.2019 08:42');
	
INSERT INTO storehouses_poducts
(storehouse_id, product_id, qauntity)
VALUES(1, 1, 10),
(1, 2, 21),
(1, 3, 0),
(1, 4, 0),
(1, 5, 18),
(1, 6, 39),
(1, 7, 5);
 
/* 1.Пусть в таблице users поля created_at и updated_at оказались незаполненными.
 * Заполните их текущими датой и временем.*/

update users
set create_at = current_timestamp,
    update_at = current_timestamp
where create_at is null and update_at is null;

/* 2. Таблица users была неудачно спроектирована.
 * Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения 
 * в формате "20.10.2017 8:10". Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.*/

update users2  -- преобразование даты в формат подходящий для DATETIME. Но поля всё еще остаются текстовыми
set create_at = str_to_date(create_at, '%d.%m.%Y %h:%i'),
    update_at = str_to_date(update_at, '%d.%m.%Y %h:%i');

   
alter table users2  -- преобразования поля к типу DATETIME
modify column create_at DATETIME,
modify column update_at DATETIME;


/* 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры:
 * 0, если товар закончился и выше нуля, если на складе имеются запасы. 
 * Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value.
 * Однако, нулевые запасы должны выводиться в конце, после всех записей.*/

SELECT 
	id, 
	storehouse_id, 
	product_id, 
	qauntity, 
	if (qauntity = 0, 0, 1) as availability  -- ввела дополнительный столбец чтобы отсортировать по двум параметрам
FROM shop.storehouses_poducts
order by availability desc, qauntity;

-- DROP DATABASE IF EXISTS shop2;
-- CREATE DATABASE shop2;
USE shop2;

-- создание таблиц



-- наполнение нужными данными

/* 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.*/

select * from users where id in (select user_id from orders group by user_id); 

 /* 2. Выведите список товаров products и разделов catalogs, который соответствует товару.*/

-- вариант со вложеным селектом
select 
  products.name,
  (select catalogs.name from catalogs where catalogs.id=products.catalog_id) as catalog_name
from products;


-- вариант с JOIN
select 
  products.name,
  catalogs.name
  from products join catalogs
  on catalogs.id=products.catalog_id
;

/* (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
 Поля from, to и label содержат английские названия городов, поле name — русское.
 Выведите список рейсов flights с русскими названиями городов.*/

select 
    (select cities.name from cities where cities.lable=flights.`from`) as `from`,
    (select cities.name from cities where cities.lable=flights.`to`) as `to`
from flights;


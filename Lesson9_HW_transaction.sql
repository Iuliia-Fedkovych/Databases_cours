/* 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
 * Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.*/

start transaction;
use sample;
INSERT INTO users (name, birthday_at)
select shop2.users.name, shop2.users.birthday_at from shop2.users where shop2.users.id = 1;
use shop2;
delete from users where id=1;
commit;


/* 2. Создайте представление, которое выводит название name товарной позиции из таблицы products 
 и соответствующее название каталога name из таблицы catalogs.*/
use shop2;
CREATE VIEW prod AS
select 
   products.name as name,
   catalogs.name as `catalog`
from products
left join catalogs on products.catalog_id = catalogs.id;

select * from prod;

/* 3. (по желанию) Пусть имеется таблица с календарным полем created_at.
 В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17.
 Составьте запрос, который выводит полный список дат за август,
 выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, если она отсутствует.*/

use sample;

set @dat1:='2018-08-01';
set @dat2:='2018-08-31';

DROP TABLE IF EXISTS temp;
CREATE TEMPORARY TABLE temp ( id SERIAL PRIMARY KEY, date_at DATE);
insert into temp (date_at)
SELECT @dat1 + INTERVAL (6 * a.num + b.num) DAY `date`
 FROM
(SELECT 0 AS num UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5) AS a,
(SELECT 0 AS num UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5) AS b
WHERE @dat1 + INTERVAL (6 * a.num + b.num) DAY <= @dat2
ORDER BY 1;

select 
     date_at,
     if(created_at, 1, 0) as `is in tbl1`
from temp
left join tbl1 on temp.date_at = tbl1.created_at
order by date_at;


/* 4. (по желанию) Пусть имеется любая таблица с календарным полем created_at.
 Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.*/
use sample;
DROP TABLE IF EXISTS temp;
CREATE TEMPORARY TABLE temp  (date_at DATE);
insert into temp (date_at)
select created_at from tbl2 order by created_at desc limit 5;

delete from tbl2 where created_at not in (select * from temp);


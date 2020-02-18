use shop2;

/* 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток.
 С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
 с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
 с 18:00 до 00:00 — "Добрый вечер",
 с 00:00 до 6:00 — "Доброй ночи".*/

delimiter //
drop procedure if exists hello//
create procedure hello (cur_time time)
begin
	if (cur_time >= '06:00') and (cur_time < '12:00') then
	   select 'Доброе утро';
	elseif (cur_time >= '12:00') and (cur_time < '18:00') then
	   select 'Добрый день';
	elseif  (cur_time >= '18:00') and (cur_time <= '23:59') then
	   select 'Добрый вечер';
	elseif  (cur_time >= '00:00') and (cur_time < '06:00') then
	   select 'Доброй ночи';
	end if;
end//
delimiter ;


-- тесты

call hello ('06:05');
call hello ('13:42');
call hello ('19:25');
call hello ('00:30');

/* 2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
 Допустимо присутствие обоих полей или одно из них. 
 Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. Используя триггеры,
 добейтесь того, чтобы одно из этих полей или оба поля были заполнены.
 При попытке присвоить полям NULL-значение необходимо отменить операцию.*/

delimiter //
drop trigger if exists products_update//
create trigger products_update before update on products
for each row begin
	 if new.name is null and new.description is null then
	 SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'update canceled';
     end if;
end//
delimiter ;

UPDATE products
SET 
    name=null,
    description=null
 where id=1;


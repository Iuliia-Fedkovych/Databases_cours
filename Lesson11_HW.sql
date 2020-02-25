/* 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products
 в таблицу logs помещается время и дата создания записи, название таблицы, 
 идентификатор первичного ключа и содержимое поля name.*/

use shop2;
DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
  id SERIAL,
  data_created_at DATETIME,
  table_name VARCHAR(255),
  table_id BIGINT UNSIGNED NOT null,
  name_from_table VARCHAR(255)
) Engine=Archive;

delimiter //
drop trigger if exists creat_log_data_u//
create trigger creat_log_data_u after insert on users
for each row begin
	INSERT INTO logs (data_created_at, table_name, table_id, name_from_table) values
	(new.created_at, 'users', new.id, new.name);
end//
delimiter ;


delimiter //
drop trigger if exists creat_log_data_c//
create trigger creat_log_data_c after insert on catalogs
for each row begin
	INSERT INTO logs (data_created_at, table_name, table_id, name_from_table) values
	(new.created_at, 'catalogs', new.id, new.name);
end//
delimiter ;

delimiter //
drop trigger if exists creat_log_data_p//
create trigger creat_log_data_p after insert on products
for each row begin
	INSERT INTO logs (data_created_at, table_name, table_id, name_from_table) values
	(new.created_at, 'products', new.id, new.name);
end//
delimiter ;

-- tests
INSERT INTO users (name, birthday_at) VALUES
  ('Андрей', '1983-12-08');
  
 
INSERT INTO catalogs(name) VALUES
  ('твердотельный диск');
 
INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  ('Samsung 970 EVO Plus', 'Твердотельный диск', 13650.00, 6);
 
 
 

/*
Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products
в таблицу logs помещается время и дата создания записи, название таблицы,
идентификатор первичного ключа и содержимое поля name.
*/

create table logs (
	tablename varchar(255) comment 'Название таблицы',
	extenal_id int comment 'Первичный ключ таблицы tablename',
	name varchar(255) comment 'Поле name таблицы tablename',
	created_at datetime default current_timestamp
) comment = 'Журнал интернет-магазина' ENGINE=Archive;

delimiter //
create trigger log_after_insert_to_users after insert on users
	for each row begin 
		insert into logs (tablename, extenal_id, name) values('users', NEW.id, NEW.name);
	end//
	
delimiter //
create trigger log_after_insert_to_users after insert on catalogs
	for each row begin 
		insert into logs (tablename, extenal_id, name) values('catalogs', NEW.id, NEW.name);
	end//
	
delimiter //
create trigger log_after_insert_to_users after insert on products
	for each row begin 
		insert into logs (tablename, extenal_id, name) values('products', NEW.id, NEW.name);
	end//

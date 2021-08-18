
/*
�������� ������� logs ���� Archive. ����� ��� ������ �������� ������ � �������� users, catalogs � products
� ������� logs ���������� ����� � ���� �������� ������, �������� �������,
������������� ���������� ����� � ���������� ���� name.
*/

create table logs (
	tablename varchar(255) comment '�������� �������',
	extenal_id int comment '��������� ���� ������� tablename',
	name varchar(255) comment '���� name ������� tablename',
	created_at datetime default current_timestamp
) comment = '������ ��������-��������' ENGINE=Archive;

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

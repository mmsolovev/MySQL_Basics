
/*
� ������� products ���� ��� ��������� ����: name � ��������� ������ � description � ��� ���������.
��������� ����������� ����� ����� ��� ���� �� ���.
��������, ����� ��� ���� ��������� �������������� �������� NULL �����������.
��������� ��������, ��������� ����, ����� ���� �� ���� ����� ��� ��� ���� ���� ���������.
��� ������� ��������� ����� NULL-�������� ���������� �������� ��������.
*/

delimiter //

create trigger check_name_description before insert on products
for each row begin
	if new.name is null and new.description is null then 
		signal sqlstate '45000'
		set message_text = '��� ���� ��������� �������������� �������� NULL';
	end if;
end//

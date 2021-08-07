
/*
¬ таблице products есть два текстовых пол€: name с названием товара и description с его описанием.
ƒопустимо присутствие обоих полей или одно из них.
—итуаци€, когда оба пол€ принимают неопределенное значение NULL неприемлема.
»спользу€ триггеры, добейтесь того, чтобы одно из этих полей или оба пол€ были заполнены.
ѕри попытке присвоить пол€м NULL-значение необходимо отменить операцию.
*/

delimiter //

create trigger check_name_description before insert on products
for each row begin
	if new.name is null and new.description is null then 
		signal sqlstate '45000'
		set message_text = 'ќба пол€ принимают неопределенное значение NULL';
	end if;
end//

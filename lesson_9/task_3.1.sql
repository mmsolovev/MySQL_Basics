
/*
Создайте хранимую функцию hello(), которая будет возвращать приветствие,
в зависимости от текущего времени суток.
С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро",
с 12:00 до 18:00 функция должна возвращать фразу "Добрый день",
с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
*/

delimiter //

create function hello()
returns tinytext not deterministic
begin
	declare hour int;
	set hour = hour(now());
	case
		when hour between 0 and 5 then return 'Доброй ночи';
		when hour between 6 and 11 then return 'Доброе утро';
		when hour between 12 and 17 then return 'Добрый день';
		when hour between 18 and 23 then return 'Добрый вечер';
	end case;
end//


/*
ѕри помощи базы данных Redis решите задачу поиска имени пользовател€ по электронному адресу и наоборот,
поиск электронного адреса пользовател€ по его имени.
*/

HSET emails 'mikhail' 'mikhail@mail.com'
HSET emails 'aleksey' 'aleksey@mail.com'
HSET emails 'sergey' 'sergey@mail.com'

HGET emails 'sergey'

HSET users 'mikhail@mail.com' 'mikhail'
HSET users 'aleksey@mail.com' 'aleksey'
HSET users 'sergey@mail.com' 'sergey'

HGET users 'mikhail@mail.com'

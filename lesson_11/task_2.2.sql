
/*
��� ������ ���� ������ Redis ������ ������ ������ ����� ������������ �� ������������ ������ � ��������,
����� ������������ ������ ������������ �� ��� �����.
*/

HSET emails 'mikhail' 'mikhail@mail.com'
HSET emails 'aleksey' 'aleksey@mail.com'
HSET emails 'sergey' 'sergey@mail.com'

HGET emails 'sergey'

HSET users 'mikhail@mail.com' 'mikhail'
HSET users 'aleksey@mail.com' 'aleksey'
HSET users 'sergey@mail.com' 'sergey'

HGET users 'mikhail@mail.com'

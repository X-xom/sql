select
	(select name from person where id= person_id) as person_name,
    (select case when name='Denis' then 'true' else 'false' end from person where id= person_id) as check_name
from person_order
where order_date = '2022-01-07' and( menu_id = 13 or menu_id = 14 or menu_id = 18)
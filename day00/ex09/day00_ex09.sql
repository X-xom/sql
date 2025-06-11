select 
	(select name from person where id = person_id) as person_name,
    (select name from pizzeria where id = pizzeria_id) as pizzeria_name
from (SELECT person_id, pizzeria_id FROM person_visits WHERE visit_date BETWEEN '2022-01-07' and '2022-01-09') AS pv 
order by person_name, pizzeria_name asc;
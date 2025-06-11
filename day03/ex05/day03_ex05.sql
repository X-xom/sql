WITH vp as (
		SELECT person_visits.pizzeria_id
  		FROM person_visits
  		JOIN person
  		on person.id = person_visits.person_id
		WHERE person.name = 'Andrey'),
     op as (
       	SELECT menu.pizzeria_id
       	FROM person_order
     	JOIN menu
       	ON person_order.menu_id = menu.id
       	join person
       	on person.id = person_order.person_id
     	WHERE person.name = 'Andrey'),
     vno as (
       	SELECT *
		FROM vp
		EXCEPT
		SELECT *
		FROM op)
SELECT pizzeria.name as pizzeria_name
FROM pizzeria
join vno
on pizzeria.id = vno.pizzeria_id
ORDER by pizzeria_name
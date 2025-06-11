WITH kv as (
		SELECT person_visits.visit_date, person_visits.pizzeria_id
  		FROM person_visits
  		JOIN person
  		on person.id = person_visits.person_id
  		WHERE person.name = 'Kate'),
     ppp as (
       	SELECT menu.pizza_name, menu.price, pizzeria.name as pizzeria_name, pizzeria.id as pizzeria_id
       	FROM menu
       	JOIN pizzeria
       	on menu.pizzeria_id = pizzeria.id)
SELECT ppp.pizza_name, ppp.price, ppp.pizzeria_name, kv.visit_date
FROM ppp
join kv
on kv.pizzeria_id = ppp.pizzeria_id
WHERE price BETWEEN 800 AND 1000
ORDER by pizza_name, price, pizzeria_name
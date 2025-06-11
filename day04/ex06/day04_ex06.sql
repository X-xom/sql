CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
with dv AS (
		SELECT person_visits.pizzeria_id
  		FROM person_visits
  		JOIN person
  		on person_visits.person_id = person.id
		WHERE person.name = 'Dmitriy' AND person_visits.visit_date = '2022-01-08'),
     pm as (
       	SELECT pizzeria.name, menu.pizzeria_id
       	FROM pizzeria
       	JOIN menu
       	on pizzeria.id = menu.pizzeria_id
       	where menu.price < 800)
SELECT pm.name AS pizzeria
FROM dv
JOIN pm
on pm.pizzeria_id = dv.pizzeria_id
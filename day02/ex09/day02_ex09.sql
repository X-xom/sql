WITH cte_persons AS (
    SELECT person.name AS name,
           gender,
           menu.pizza_name AS pizza_name
    FROM person
    JOIN person_order ON person.id = person_order.person_id
    JOIN menu ON person_order.menu_id = menu.id
    WHERE person.gender = 'female'
)
SELECT name
FROM cte_persons
WHERE pizza_name = 'pepperoni pizza'
INTERSECT
SELECT name
FROM cte_persons
WHERE pizza_name = 'cheese pizza'
ORDER BY name;
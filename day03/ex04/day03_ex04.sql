SELECT DISTINCT pizzeria.name AS pizzeria_name
FROM pizzeria
WHERE EXISTS (
    SELECT 1
    FROM menu
    JOIN person_order ON person_order.menu_id = menu.id
    JOIN person ON person.id = person_order.person_id
    WHERE pizzeria.id = menu.pizzeria_id
    AND person.gender = 'female'
)
AND NOT EXISTS (
    SELECT 1
    FROM menu
    JOIN person_order ON person_order.menu_id = menu.id
    JOIN person ON person.id = person_order.person_id
    WHERE pizzeria.id = menu.pizzeria_id
    AND person.gender = 'male'
)
UNION
SELECT DISTINCT pizzeria.name AS pizzeria_name
FROM pizzeria
WHERE EXISTS (
    SELECT 1
    FROM menu
    JOIN person_order ON person_order.menu_id = menu.id
    JOIN person ON person.id = person_order.person_id
    WHERE pizzeria.id = menu.pizzeria_id
    AND person.gender = 'male'
)
AND NOT EXISTS (
    SELECT 1
    FROM menu
    JOIN person_order ON person_order.menu_id = menu.id
    JOIN person ON person.id = person_order.person_id
    WHERE pizzeria.id = menu.pizzeria_id
    AND person.gender = 'female'
);
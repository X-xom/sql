SELECT
    menu.pizza_name,
    menu.price,
    pizzeria.name AS pizzeria_name
FROM menu
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE menu.id IN (
    SELECT menu.id AS menu_id
    FROM menu
    WHERE menu.id NOT IN (
        SELECT person_order.menu_id
        FROM person_order
    )
    ORDER BY menu.id
)
ORDER BY menu.pizza_name, menu.price;
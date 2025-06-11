CREATE VIEW v_price_with_discount as
WITH om as (
		SELECT person_order.person_id, menu.pizza_name, menu.price
  		FROM person_order
  		JOIN menu
  		on menu.id = person_order.menu_id),
     pom as (
       	SELECT person.name, om.pizza_name, om.price, CAST(FLOOR(om.price * 0.9) AS INT)
       	FROM person
       	JOIN om
       	ON om.person_id = person.id)
SELECT *
FROM pom
ORDER by name, pizza_name;
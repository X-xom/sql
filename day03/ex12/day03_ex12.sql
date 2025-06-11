INSERT into person_order
SELECT (SELECT MAX(id) FROM person_order) + id,
	   id,
       (SELECT id FROM menu WHERE pizza_name = 'greek pizza'),
       DATE '2022-02-25'
FROM person
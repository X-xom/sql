WITH mpi as (
		SELECT menu.id, menu.pizza_name, menu.price, pizzeria.name as pizzeria_name
  		FROM menu
  		JOIN pizzeria
  		on menu.pizzeria_id = pizzeria.id),
     mp as (
		SELECT menu.id, menu.pizza_name, menu.price, pizzeria.name as pizzeria_name
  		FROM menu
  		JOIN pizzeria
  		on menu.pizzeria_id = pizzeria.id)
SELECT mpi.pizza_name, mpi.pizzeria_name AS pizzeria_name_1, mp.pizzeria_name AS pizzeria_name_2, mpi.price
FROM mpi
join mp
on mpi.pizza_name = mp.pizza_name AND mpi.pizzeria_name < mp.pizzeria_name
where mpi.price = mp.price
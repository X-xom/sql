UPDATE menu
SET price = FLOOR(price * 0.9)
WHERE pizza_name = 'greek pizza';
SELECT name
FROM v_persons_female
UNION
SELECT name
FROM v_persons_male
order BY name
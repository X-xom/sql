SELECT
    (CASE WHEN person.name IS NULL THEN '-' ELSE person.name END) AS person_name,
    visit_date,
    (CASE WHEN pizzeria.name IS NULL THEN '-' ELSE pizzeria.name END) AS pizzeria_name
FROM person
FULL JOIN (
    SELECT person_id, pizzeria_id, visit_date
    FROM person_visits
    WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03'
) AS visits ON person.id = visits.person_id
FULL JOIN pizzeria ON visits.pizzeria_id = pizzeria.id
ORDER BY person_name, visit_date, pizzeria_name;
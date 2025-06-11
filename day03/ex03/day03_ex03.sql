WITH pp as (
		SELECT person.name, person.gender, person_visits.id, person_visits.pizzeria_id
  		FROM person
  		JOIN person_visits
  		on person.id = person_visits.person_id), 
     pg as (
       	SELECT pizzeria.name as pizzeria_name, 
		COUNT(CASE WHEN pp.gender = 'female' THEN 1 END) AS females,
    	COUNT(CASE WHEN pp.gender = 'male' THEN 1 END) AS males
		FROM pizzeria
		JOIN pp
		on pp.pizzeria_id = pizzeria.id
		GROUP by pizzeria_name)
SELECT pizzeria_name
FROM pg
WHERE females != males
ORDER by pizzeria_name
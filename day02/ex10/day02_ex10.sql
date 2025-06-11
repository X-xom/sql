SELECT person_one.name AS person_name1,
       person_two.name AS person_name2,
       person_one.address AS common_address
FROM person AS person_one,
     person AS person_two
WHERE person_one.id > person_two.id AND person_one.address = person_two.address
ORDER BY person_one.name,
         person_two.name,
         person_one.address;
SELECT
    order_date,
    name || ' (age:' || age || ')' AS person_information
FROM
    person_order
NATURAL JOIN
    (select p.id as person_id,
     name,
     age
from person p) as P
ORDER BY
    order_date,
    name;
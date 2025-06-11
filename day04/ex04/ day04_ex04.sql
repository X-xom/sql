CREATE VIEW v_symmetric_union AS
SELECT person_id
FROM person_visits
WHERE visit_date = '2022-01-02'
UNION
SELECT person_id
FROM person_visits
WHERE visit_date = '2022-01-06'
order by person_id;
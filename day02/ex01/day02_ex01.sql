SELECT missing_date::date
FROM generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day') AS missing_date
LEFT JOIN
    (SELECT * FROM person_visits WHERE person_id = 1 OR person_id = 2) ON missing_date = visit_date
WHERe visit_date IS NULL
ORDER BY missing_date;
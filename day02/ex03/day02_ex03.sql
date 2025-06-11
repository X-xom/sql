WITH missing_dates AS (
    SELECT generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day'::interval) AS missing_date
)
SELECT missing_dates.missing_date::date
FROM missing_dates
LEFT JOIN person_visits
    ON missing_dates.missing_date = person_visits.visit_date
    AND (person_visits.person_id = 1 OR person_visits.person_id = 2)
WHERE person_visits.visit_date IS NULL
ORDER BY missing_dates.missing_date ASC;


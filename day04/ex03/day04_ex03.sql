SELECT generate_series as missing_date
FROM v_generated_dates
EXCEPT
SELECT DISTINCT visit_date
FROM person_visits
ORDER by missing_date
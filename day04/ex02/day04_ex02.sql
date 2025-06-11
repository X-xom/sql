CREATE VIEW v_generated_dates AS
SELECT generate_series(
  		DATE '2022-01-01',
        DATE '2022-01-31',
        INTERVAL '1 day'
    	)::date
ORDER BY generate_series
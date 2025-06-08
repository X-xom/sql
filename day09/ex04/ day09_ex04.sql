CREATE OR REPLACE FUNCTION fnc_persons_female() 
RETURNS SETOF person 
AS $female$
BEGIN
    RETURN QUERY 
    SELECT * FROM person 
    WHERE gender = 'female';
END;
$female$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION fnc_persons_male() 
RETURNS SETOF person 
AS $male$
BEGIN
    RETURN QUERY 
    SELECT * FROM person 
    WHERE gender = 'male';
END;
$male$ LANGUAGE plpgsql;

-- Примеры использования
SELECT * FROM fnc_persons_female();
SELECT * FROM fnc_persons_male();
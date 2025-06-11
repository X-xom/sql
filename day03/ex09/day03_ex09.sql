INSERT INTO person_visits
VALUES ((SELECT max(person_visits.id) + 1 FROM person_visits),
        (SELECT id FROM person WHERE name = 'Denis'),
        (SELECT id FROM pizzeria WHERE name = 'Dominos'),
        DATE '2022-02-24');

INSERT INTO person_visits
VALUES ((SELECT max(person_visits.id) + 1 FROM person_visits),
        (SELECT id FROM person WHERE name = 'Irina'),
        (SELECT id FROM pizzeria WHERE name = 'Dominos'),
        DATE '2022-02-24');
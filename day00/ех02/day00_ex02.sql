SELECT name, RATING
FROM pizzeria
WHERE rating>=3.5 and rating<=5
ORDER by rating;

SELECT name, RATING
FROM pizzeria
WHERE rating BETWEEN 3.5 and 5
ORDER by rating;
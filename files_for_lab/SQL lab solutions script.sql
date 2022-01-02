-- SQL Lab 7
-- 1. In the table actor, which are the actors whose last names are not repeated?
SELECT
    first_name,
    last_name
FROM
    actor
GROUP BY
    last_name
HAVING
    count(last_name) = 1;
-- 2. Which last names appear more than once?
SELECT
    first_name,
    last_name
FROM
    actor
GROUP BY
    last_name
HAVING
    count(last_name) > 1;
-- 3. Using the rental table, find out how many rentals were processed by each employee
SELECT
    count(*) AS total_rental_processed,
    staff_id
FROM
    rental
GROUP BY
    staff_id;
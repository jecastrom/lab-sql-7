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
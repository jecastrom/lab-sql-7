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
-- 4. Using the film table, find out how many films were released each year
SELECT
    release_year,
    count(*) AS number_of_films_released
FROM
    film
GROUP BY
    1;
-- 5- Using the film table, find out for each rating how many films were there
SELECT
    rating,
    count(*) AS count_of_films_per_rating
FROM
    film
GROUP BY
    1;
-- 6. What is the mean length of the film for each rating type?
SELECT
    rating,
    floor(avg(length)) AS film_mean_length_in_min
FROM
    film
GROUP BY
    1;
--7. Which kind of movies (rating) have a mean duration of more than two hours?
SELECT
    rating
FROM
    film
GROUP BY
    1
HAVING
    avg(length) > 2 * 60;
USE sakila;

# Get film ratings.

SELECT DISTINCT rating FROM film;

# Get release years.

SELECT DISTINCT release_year FROM film;

# Get all films with ARMAGEDDON in the title.

SELECT title FROM film
WHERE title regexp "ARMAGEDDON";

# Get all films with APOLLO in the title

SELECT title FROM film
WHERE title regexp "APOLLO";

# Get all films which title ends with APOLLO.
SELECT title FROM film
WHERE title regexp "APOLLO$";

# Get all films with word DATE in the title.
SELECT title FROM film
WHERE title regexp "DATE";

# Get 10 films with the longest title.
SELECT title, length(title) FROM film
ORDER BY length(title) DESC
LIMIT 10;

# Get 10 the longest films.

SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;

# How many films include Behind the Scenes content?
SELECT COUNT(film_id) FROM film
WHERE special_features regexp "Behind the Scenes";

# List films ordered by release year and title in alphabetical order.

SELECT * FROM film
ORDER BY release_year ASC, title DESC;


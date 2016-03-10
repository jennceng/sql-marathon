-- SELECT * FROM movies WHERE year<2000;

SELECT * FROM categories;

SELECT * FROM movies
WHERE id = 4;

SELECT *
FROM movies
ORDER BY movies.title, movies.year;

SELECT * FROM movies
ORDER BY movies.year DESC
LIMIT 5;

SELECT movies.title AS movie, categories.name AS category
FROM movies
JOIN categories ON movies.category_id = categories.id
ORDER BY movies.title;

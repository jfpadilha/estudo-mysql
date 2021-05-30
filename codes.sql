-- Selec simples
SELECT * 
FROM address;

SELECT * 
FROM film 
WHERE film_id = 3;

-- ordenação
SELECT *
FROM film
ORDER BY title desc; -- decrescente

SELECT *
FROM film
ORDER BY title asc; -- crescente

-- COUNT  e GROUP BY (contar e agrupar)
SELECT rental_rate, count(*)
FROM film
GROUP BY rental_rate
ORDER BY special_features;

SELECT *, COUNT(*)
FROM film
GROUP BY rental_duration;





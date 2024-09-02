-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

SELECT category, tyre_size, name , price
FROM bike
WHERE price < 500
ORDER BY category ASC, price DESC;
-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

SELECT COUNT(DISTINCT potato_id) AS number_of_varieties
FROM breeder
ORDER BY breeder_id
;
-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

SELECT breeder_name
FROM breeder
WHERE country IN ('Germany', 'Finland')
ORDER BY breeder_name
;
-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

SELECT DISTINCT potato.potato_id, potato_name
FROM potato
    JOIN breeds ON potato.potato_id = breeds.potato_id
ORDER BY potato.potato_id
;
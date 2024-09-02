-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

SELECT potato_name, breeder_name
FROM breeds
JOIN potato ON breeds.potato_id = potato.potato_id
JOIN breeder ON breeds.breeder_id = breeder.breeder_id
ORDER BY potato_name, breeder_name
;
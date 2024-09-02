-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

SELECT breeder_name
FROM breeder
    LEFT JOIN potato ON breeds.potato_id = potato.potato_id
    LEFT JOIN breeds ON breeds.breeder_id = breeder.breeder_id
WHERE potato_name='Dunbar Rover'
ORDER BY breeder_name
;
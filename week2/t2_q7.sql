-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

SELECT potato_name, breeder_name
FROM potato
    LEFT JOIN breeds 
    ON potato.potato_id = breeds.potato_id
    LEFT JOIN breeder 
    ON breeds.breeder_id = breeder.breeder_id
ORDER BY potato_name, breeder_name
;
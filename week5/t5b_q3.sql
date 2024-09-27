-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

-- Retrieve potato breeder IDs and the number of potato varieties for each potato breeder in the breeds table. 

SELECT  breeder_id,
        COUNT(DISTINCT potato_id) AS number_of_varieties
FROM breeds
GROUP BY breeder_id
ORDER BY breeder_id
;
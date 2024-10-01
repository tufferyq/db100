-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

-- having the average of annual breeding quantities (tonnes_per_year) 
-- of potato varieties 
-- higher than the average of all annual breeding quantities.

SELECT br.breeder_name
FROM breeder br
    INNER JOIN breeds b ON br.breeder_id = b.breeder_id
GROUP BY breeder_name 
HAVING AVG(tonnes_per_year) > (SELECT AVG(tonnes_per_year) FROM breeds)
ORDER BY br.breeder_name
;
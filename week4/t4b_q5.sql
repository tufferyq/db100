-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

SELECT agent_name, breeder_name, country
FROM breeder b INNER JOIN agent a ON b.agent_id = a.agent_id
WHERE country = 'Finland' OR country = 'Germany'
ORDER BY agent_name, breeder_name ASC
;
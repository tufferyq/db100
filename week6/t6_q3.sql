-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

SELECT
    a.agent_id,
    a.agent_name
FROM agent a
WHERE EXISTS 
    (SELECT b.agent_id 
    FROM breeder b
    WHERE b.agent_id = a.agent_id)
;

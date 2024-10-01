-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

SELECT 
    a.agent_id,
    a.agent_name
FROM agent a
WHERE a.agent_id IN (SELECT b.agent_id FROM breeder b)
;

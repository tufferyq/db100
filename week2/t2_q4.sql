-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

SELECT breeder_id, breeder_name, agent_name
FROM breeder
JOIN agent ON breeder.agent_id = agent.agent_id
WHERE country='Finland'
ORDER BY breeder_id
;
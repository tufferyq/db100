-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

--Retrieve for each agent ID, name, number of potato breeders 
--and number of different potato varieties bred by breeders.
--Sort the result rows in ascending order based on the agent ID.

SELECT 
    a.agent_id,
    a.agent_name,
    COUNT(DISTINCT br.breeder_id) AS breeders,
    COUNT(DISTINCT b.potato_id) AS potatoes
FROM agent a
LEFT OUTER JOIN breeder br ON a.agent_id = br.agent_id
LEFT OUTER JOIN  breeds b ON br.breeder_id = b.breeder_id
GROUP BY a.agent_id
ORDER BY a.agent_id
;
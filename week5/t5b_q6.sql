-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

--Retrieve the following information for all agents: agent ID, agent name and the number of potato breeders represented by the agent. 
--Sort the result rows in ascending order by the agent ID. 


SELECT  a.agent_id,
        agent_name,
        COUNT(breeder_id) AS number_of_breeders
FROM agent a
LEFT JOIN breeder b ON a.agent_id = b.agent_id
GROUP BY a.agent_id
ORDER BY a.agent_id
;
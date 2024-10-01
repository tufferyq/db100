-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:


--breeder_id  breeder_name      agent_name          number_of_breeders
----------  ----------------  ------------------  ------------------
--1           Chips             Potatis Institutet  1
--2           Sipsix            Perunatukku         1
--3           Kartoffelmeister  Agrico              2
--4           Penan pottu       Agrico              2

--Retrieve the following information for each potato breeder:
--ID,
--name,
--agent name, and 
--number of potato breeders represented by the agent.
--Sort the result rows by the potato breeder id in ascending order.

SELECT 
    br.breeder_id,
    br.breeder_name,
    a.agent_name,
    (SELECT COUNT(*) 
    FROM breeder br
    WHERE a.agent_id = br.agent_id) AS number_of_breeders
FROM agent a 
JOIN breeder br ON a.agent_id = br.agent_id
GROUP BY br.breeder_id
ORDER BY br.breeder_id
;
-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

--Retrieve the following information for breeders that breed one potato variety: breeder ID, name and agent name. 
--Sort the result rows in ascending order by breeder ID. 

--breeder_id | breeder_name | agent_name 




SELECT  br.breeder_id,
        br.breeder_name,
        a.agent_name
FROM breeder br
LEFT JOIN breeds b ON br.breeder_id = b.breeder_id
LEFT JOIN agent a ON a.agent_id = br.agent_id
GROUP BY br.breeder_id
HAVING COUNT(potato_id) = 1
ORDER BY br.breeder_id
;
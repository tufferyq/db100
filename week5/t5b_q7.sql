-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

--Retrieve the following information for potato breeders that breed one potato variety: breeder ID and name. 


SELECT  br.breeder_id,
        br.breeder_name
FROM breeder br
LEFT JOIN breeds b ON br.breeder_id = b.breeder_id
GROUP BY br.breeder_id
HAVING COUNT(potato_id) = 1
ORDER BY br.breeder_id
;
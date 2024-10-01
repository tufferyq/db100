-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

--Retrieve the name, introduction year 
--and name of the breeder for the potato variety 
--with the latest introduction year.

SELECT 
    p.potato_name, 
    p.introduction_year,
    br.breeder_name
FROM breeds b
    INNER JOIN potato p ON p.potato_id = b.potato_id
    INNER JOIN breeder br ON br.breeder_id = b.breeder_id
GROUP BY p.potato_name
HAVING MAX(introduction_year) = (SELECT MAX(introduction_year) FROM potato)
;
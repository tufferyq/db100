-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

-- Retrieve the following information for potato varieties which have a breeder in the breeds table: potato variety ID and name, as well as the number breeders, minimum breeding amount (tonnes_per_year), maximum breeding amount and total breeding amount.
--Sort the result rows in ascending order by potato variety ID. 

--potato_id | potato_name | number_of_breeders | min_tonnes | max_tonnes | total_tonnes

SELECT  p.potato_id, 
        potato_name, 
        COUNT(breeder_id) AS number_of_breeders,
        MIN(tonnes_per_year) AS min_tonnes,
        MAX(tonnes_per_year) AS max_tonnes,
        SUM(tonnes_per_year) AS total_tonnes
FROM potato p
LEFT JOIN breeds b ON p.potato_id = b.potato_id
GROUP BY p.potato_id
ORDER BY p.potato_id
;
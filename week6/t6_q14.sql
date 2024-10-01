-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

--For the potato breeder named Chips, 
--retrieve the name of each potato variety bred 
--and its yearly breeding quantity increased by 10%.
--Sort the result rows in ascending order by potato variety name.

--potato_name   increased_tonnes
------------  ----------------
--Cara          83.6
---Duke of York  88.0
--Dunbar Rover  77.0

SELECT 
    p.potato_name,
    (tonnes_per_year * 1.1) AS increased_tonnes
FROM breeds b
    INNER JOIN potato p ON p.potato_id = b.potato_id
    INNER JOIN breeder br ON br.breeder_id = b.breeder_id
WHERE br.breeder_name = 'Chips'
GROUP BY potato_name
ORDER BY potato_name
;
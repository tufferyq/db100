-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

--Retrieve all potato variety names that contain the string "li".
--Sort the result rows in ascending order by potato variety name.

SELECT potato_name
FROM potato
WHERE potato_name LIKE '%li%'
ORDER BY potato_name
;
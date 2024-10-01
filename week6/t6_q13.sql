-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

--Retrieve the names for potato varieties with introduction year 
--between 2000 and 2010.  Use the BETWEEN operator.
--Sort the result rows in ascending order by potato variety name.

SELECT potato_name
FROM potato
WHERE introduction_year BETWEEN 2000 AND 2010
ORDER BY potato_name
;


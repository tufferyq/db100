
--Retrieve the name and introduction year 
--of the potato variety having the latest introduction year.

SELECT p.potato_name, p.introduction_year
FROM potato p
GROUP BY p.potato_name
HAVING MAX(introduction_year) = (SELECT MAX(introduction_year) FROM potato)
;
-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

SELECT b.breeder_id, br.breeder_name
FROM breeds b
  JOIN breeder br ON b.breeder_id = br.breeder_id
  JOIN potato p ON b.potato_id = p.potato_id
WHERE p.potato_name IN ('Dunbar Rover','Duke of York')
GROUP BY b.breeder_id, br.breeder_name
HAVING COUNT(DISTINCT b.potato_id) = 2
ORDER BY b.breeder_id
;
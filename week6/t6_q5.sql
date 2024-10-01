-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

SELECT 
    br.breeder_id,
    br.breeder_name
FROM 
    breeds b
    INNER JOIN breeder br ON b.breeder_id = br.breeder_id
    INNER JOIN potato p ON b.potato_id = p.potato_id
WHERE p.potato_name = 'Dunbar Rover'

INTERSECT

SELECT 
    br.breeder_id,
    br.breeder_name
FROM 
    breeds b
    INNER JOIN breeder br ON b.breeder_id = br.breeder_id
    INNER JOIN potato p ON b.potato_id = p.potato_id
WHERE p.potato_name = 'Cara'

ORDER BY br.breeder_id
;
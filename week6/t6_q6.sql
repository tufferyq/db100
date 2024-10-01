
--Retrieve IDs and names for those breeders who breed the potato variety named Dunbar Rover but do not breed the potato variety named Cara.
--Sort the result rows in ascending order by breeder ID.

SELECT 
    br.breeder_id,
    br.breeder_name
FROM 
    breeds b
    INNER JOIN breeder br ON b.breeder_id = br.breeder_id
    INNER JOIN potato p ON b.potato_id = p.potato_id
WHERE p.potato_name = 'Dunbar Rover'

EXCEPT

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
-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

--SELECT b1.breeder_id, breeder.breeder_name
select *
FROM breeds b1
    JOIN breeder ON breeder.breeder_id = b1.breeder_id
    JOIN potato ON potato.potato_id = b1.potato_id
    JOIN breeds b2 ON b2.potato_id = b1.potato_id
WHERE b1.potato_id = 1
  AND b2.potato_id = 4
ORDER BY b1.breeder_id; 
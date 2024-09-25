-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

SELECT m.name, p.name AS predecessor_name
FROM monarch m, monarch p
WHERE m.predecessor_id = p.id
;
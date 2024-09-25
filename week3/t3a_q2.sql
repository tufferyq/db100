-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

SELECT m.name, p.name AS predecessor_name
FROM monarch m LEFT OUTER JOIN monarch p
    ON m.predecessor_id = p.id
ORDER BY m.id
;
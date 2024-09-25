-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

SELECT m.name, s.name AS successor_name
FROM monarch m LEFT OUTER JOIN monarch s
    ON s.predecessor_id = m.id
ORDER BY m.id
;
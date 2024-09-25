-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statement below:

SELECT potato_id, potato_name, potato_type, introduction_year FROM potato
WHERE potato_type = 'smooth' AND introduction_year < 2000
;
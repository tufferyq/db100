-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statements below:

CREATE TABLE board_game (
    id int NOT NULL,
    name varchar(255) NOT NULL UNIQUE,
    players varchar(255) NOT NULL,
    ages varchar(255),
    price DECIMAL (4,2),
    UNIQUE (name)
    PRIMARY KEY (id));

INSERT INTO board_game VALUES (1, 'Balloon PoP', '2-4', '8+', 35);
INSERT INTO board_game VALUES (2, 'Mysterium', '2-7', '10+', 49.95);
INSERT INTO board_game VALUES (5, 'Carcassonne', '2-5', '7+', 33.5);
INSERT INTO board_game VALUES (6, 'Trivial Pursuit', '2-36', '16+', 50);

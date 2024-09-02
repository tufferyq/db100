
PRAGMA foreign_keys = ON;

-- Kirjoita SQL-lauseesi alle:
-- Write your SQL statements below:

CREATE TABLE bike_shop ( 
id INT NOT NULL,
name VARCHAR NOT NULL,
address VARCHAR,
PRIMARY KEY (id),
UNIQUE(name)
);

INSERT INTO bike_shop VALUES (1, 'biketopia', '15 bike lane, 33720 Tampere');
INSERT INTO bike_shop VALUES (2, 'ilovebikes', '26 bike lane, 33720 Tampere');
INSERT INTO bike_shop VALUES (3, 'thebestbikeshop', '33 bike lane, 33720 Tampere');
INSERT INTO bike_shop VALUES (4, 'itsnotabike', '47 bike lane, 33720 Tampere');

CREATE TABLE sells ( 
bike_shop INT NOT NULL,
bike INT NOT NULL,
PRIMARY KEY (bike_shop, bike),
FOREIGN KEY (bike_shop) REFERENCES bike_shop(id),
FOREIGN KEY (bike) REFERENCES bike(id),
UNIQUE (bike_shop, bike)
);

INSERT INTO sells VALUES (1,2);
INSERT INTO sells VALUES (1,1);
INSERT INTO sells VALUES (3,2);
DROP TABLE owned_magical_items;
DROP TABLE wizards;
DROP TABLE magical_items;

CREATE TABLE wizards(
id serial4 PRIMARY KEY,
name VARCHAR(255)
);

CREATE TABLE magical_items(
id serial4 PRIMARY KEY,
name VARCHAR(255)
);

CREATE TABLE owned_magical_items(
id SERIAL4 PRIMARY KEY,
wizard_id INT4 REFERENCES wizards(id) ON DELETE CASCADE,
magical_items_id INT4 REFERENCES magical_items(id) ON DELETE CASCADE
);
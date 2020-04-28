CREATE DATABASE example;
USE example;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name CHAR(10)
);

INSERT INTO users(name) VALUES
  ('Anna'),
  ('Robert'),
  ('Alan'),
  ('Engel Haus');
 
	
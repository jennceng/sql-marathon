DROP TABLE IF EXISTS movies, categories CASCADE;

CREATE TABLE categories(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) UNIQUE
);

CREATE TABLE movies(
  id SERIAL PRIMARY KEY,
  title VARCHAR(225) NOT NULL,
  year INTEGER,
  category_id INTEGER REFERENCES categories(id)
);

CREATE UNIQUE INDEX ON movies(title, year);

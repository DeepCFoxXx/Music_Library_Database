DROP TABLE albums;
DROP TABLE artists;

CREATE TABLE artists (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE albums (
  id SERIAL4 PRIMARY KEY ,
  name VARCHAR(255),
  artist_id int4 REFERENCES artists(id)
);

--  createdb bounty_hunter
--  psql -d bounty_hunter -f db/bounty_hunter.sql
--  ruby db/console.rb

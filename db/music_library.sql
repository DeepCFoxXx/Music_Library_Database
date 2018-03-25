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

--  createdb music_library
--  psql -d music_library -f db/music_library.sql
--  ruby db/console.rb

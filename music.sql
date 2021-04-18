/*
Part I ­ Music Database
In this part, we will model the domain of music with a relational database. In this domain, we want to model
music artists, the albums they create and the songs that appear on those albums. Artists are simple to
model, as we only really care about the name of the artist. Albums are also simple to model: every album
has a name and an associated artist who created the album (lets keep things simple and assume that every
album has one and only one artist). Songs are a little more complicated to model, as we want to record the
name of the song, the associated album this song appears on, the track number of the song, and how long
the song is (in seconds).
Your tasks is to think about this model, and come up with a set of relational tables that will sufficiently model
what was described above. You must submit a file named music.sql, with SQL CREATE queries that will
create the tables with the proper schema of your model.
*/


CREATE TABLE IF NOT EXISTS artists (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL);
	
CREATE TABLE IF NOT EXISTS albums (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	artist_id INT NOT NULL);

CREATE TABLE IF NOT EXISTS songs (
	id SERIAL PRIMARY KEY,
	name TEXT,
	track_num INT,
	len_in_sec INT,
	album_id INT NOT NULL);
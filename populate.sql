-- ------------------------
-- Populate Place table
-- ------------------------
INSERT INTO Place(place_id, place_city, place_country)
VALUES('0', 'Turin', 'Italy');
INSERT INTO Place(place_id, place_city, place_country)
VALUES('1', 'Turin', 'Italy');
INSERT INTO Place(place_id, place_city, place_country)
VALUES('2', 'Turin', 'Italy');
INSERT INTO Place(place_id, place_city, place_country)
VALUES('3', 'Rotterdam', 'Netherlands');
INSERT INTO Place(place_id, place_city, place_country)
VALUES('4', 'Rotterdam', 'Netherlands');
INSERT INTO Place(place_id, place_city, place_country)
VALUES('5', 'Tel Aviv', 'Israel');

-- ----------------------
-- Populate Eurovision table
-- ----------------------
INSERT INTO Eurovision(eurovision_id, eurovision_name, place_id)
VALUES('0', 'Turin 2022', '0');
INSERT INTO Eurovision(eurovision_id, eurovision_name, place_id)
VALUES('1', 'Turin 2022', '1');
INSERT INTO Eurovision(eurovision_id, eurovision_name, place_id)
VALUES('2', 'Turin 2022', '2');
INSERT INTO Eurovision(eurovision_id, eurovision_name, place_id)
VALUES('3', 'Rotterdam 2021', '3');
INSERT INTO Eurovision(eurovision_id, eurovision_name, place_id)
VALUES('4', 'Rotterdam 2021', '4');
INSERT INTO Eurovision(eurovision_id, eurovision_name, place_id)
VALUES('5', 'Tel Aviv 2019', '5');


-- -----------------------
-- Populate Artist table
-- -----------------------
INSERT INTO Artist(artist_id, artist_name, artist_country, artist_points, eurovision_id)
VALUES('0', 'Kalush Orchestra', 'Ukraine', 337, '0');
INSERT INTO Artist(artist_id, artist_name, artist_country, artist_points, eurovision_id)
VALUES('1', 'S10', 'Netherlands', 221, '1');
INSERT INTO Artist(artist_id, artist_name, artist_country, artist_points, eurovision_id)
VALUES('2', 'Amanda Georgiadi Tenfjord', 'Greece', 211, '2');
INSERT INTO Artist(artist_id, artist_name, artist_country, artist_points, eurovision_id)
VALUES('3', 'Destiny', 'Malta', 325, '3');
INSERT INTO Artist(artist_id, artist_name, artist_country, artist_points, eurovision_id)
VALUES('4', 'Go_A', 'Ukraine', 267, '4');
INSERT INTO Artist(artist_id, artist_name, artist_country, artist_points, eurovision_id)
VALUES('5', 'Kate Miller-Heidke', 'Australia', 261, '5');

-- ---------------------
-- Populate Song table
-- ---------------------
INSERT INTO Song(song_id, song_name, artist_id)
VALUES('0', 'Stefania', '0');
INSERT INTO Song(song_id, song_name, artist_id)
VALUES('1', 'De Diepte', '1');
INSERT INTO Song(song_id, song_name, artist_id)
VALUES('2', 'Die Together', '2');
INSERT INTO Song(song_id, song_name, artist_id)
VALUES('3', 'Je Me Casse', '3');
INSERT INTO Song(song_id, song_name, artist_id)
VALUES('4', 'Shum', '4');
INSERT INTO Song(song_id, song_name, artist_id)
VALUES('5', 'Zero Gravity', '5');


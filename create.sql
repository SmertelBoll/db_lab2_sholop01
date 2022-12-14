CREATE TABLE Place
(
	place_id       char(10)  NOT NULL,
	place_city     char(50)  NOT NULL,
	place_country  char(50)  NOT NULL
);

CREATE TABLE Eurovision
(
	eurovision_id       char(10)  NOT NULL,
	eurovision_name     char(50)  NOT NULL,
	place_id            char(10)  NOT NULL
);

CREATE TABLE Artist
(
	artist_id        char(10)  NOT NULL,
	artist_name      char(50)  NOT NULL,
	artist_country   char(50)  NOT NULL,
	artist_points    int       NOT NULL,
	eurovision_id    char(10)  NOT NULL
);

CREATE TABLE Song
(
	song_id    char(10)   NOT NULL,
	song_name  char(100)  NOT NULL,
	artist_id  char(10)   NOT NULL
);

-- -------------------
-- Define primary keys
-- -------------------
ALTER TABLE Place ADD PRIMARY KEY (place_id);
ALTER TABLE Eurovision ADD PRIMARY KEY (eurovision_id);
ALTER TABLE Artist ADD PRIMARY KEY (artist_id);
ALTER TABLE Song ADD PRIMARY KEY (song_id);


-- -------------------
-- Define foreign keys
-- -------------------
ALTER TABLE Eurovision ADD CONSTRAINT FK_Eurovision_Place FOREIGN KEY (place_id) REFERENCES Place (place_id);
ALTER TABLE Artist ADD CONSTRAINT FK_Artist_Eurovision FOREIGN KEY (eurovision_id) REFERENCES Eurovision (eurovision_id);
ALTER TABLE Song ADD CONSTRAINT FK_Song_Artist FOREIGN KEY (artist_id) REFERENCES Artist (artist_id);
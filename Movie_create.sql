CREATE TABLE actor(
act_id	integer	NOT NULL,
act_fname	char(20) NOT NULL,
act_lname	char(20)	NOT NULL,
act_gender	char(1) NULL,
CONSTRAINT	actor_PK	PRIMARY KEY(act_id)
);

CREATE TABLE director(
dir_id	integer	NOT NULL,
dir_fname	char(20)	NOT NULL,
dir_lname	char(20)	NOT NULL,
CONSTRAINT	director_PK	PRIMARY KEY(dir_id)
);

CREATE TABLE movie(
mov_id	integer	NOT NULL,
mov_title	char(50)	NOT NULL,
mov_year	integer	NOT NULL,
mov_time	integer NULL,
mov_lang	char(50)	NOT NULL,
mov_dt_rel	date	NOT NULL,
mov_rel_country	char(50)	NULL,
CONSTRAINT	movie_PK	PRIMARY KEY(mov_id)
);

CREATE TABLE reviewer(
rev_id	integer	NOT NULL,
rev_name	char(30)	NULL,
CONSTRAINT	reviewer_PK	PRIMARY KEY(rev_id)
);

CREATE TABLE genres(
gen_id	integer	NOT NULL,
gen_title char(20)	NULL,
CONSTRAINT	genres_PK	PRIMARY KEY(gen_id)
);

CREATE TABLE movie_direction(
dir_id	integer	NOT NULL,
mov_id	integer	NOT NULL,
CONSTRAINT	pk_movie_direction	PRIMARY KEY(dir_id, mov_id),
CONSTRAINT fk_dir_id	FOREIGN KEY(dir_id)	REFERENCES director(dir_id),
CONSTRAINT fk_mov_id	FOREIGN KEY(mov_id)	REFERENCES	movie(mov_id)
);

CREATE TABLE movie_cast(
act_id	integer	NOT NULL,
mov_id	integer	NOT NULL,
roles	char(50)	NULL,
CONSTRAINT	pk_movie_cast	PRIMARY KEY(act_id, mov_id),
CONSTRAINT	fk_movie_cast	FOREIGN KEY(act_id)	REFERENCES	actor(act_id),
CONSTRAINT	fk_movi_cast	FOREIGN KEY(mov_id)	REFERENCES	movie(mov_id)
);

CREATE TABLE movie_genres(
mov_id	integer	NOT NULL,
gen_id	integer	NOT NULL,
CONSTRAINT	pk_movie_genres	PRIMARY KEY(mov_id, gen_id),
CONSTRAINT	movie_genres_FK	FOREIGN KEY(mov_id)	REFERENCES	movie(mov_id),
CONSTRAINT  fk_movie_genres	FOREIGN KEY(gen_id) REFERENCES	genres(gen_id)
);

CREATE TABLE rating(
mov_id	integer NOT NULL,
rev_id	integer	NOT NULL,
rev_stars	integer	NULL,
num_o_ratings	integer	NULL,
CONSTRAINT	pk_rating	PRIMARY KEY(mov_id, rev_id),
CONSTRAINT	fk_rating	FOREIGN KEY(mov_id)	REFERENCES	movie(mov_id),
CONSTRAINT	rating_FK	FOREIGN KEY(rev_id)	REFERENCES	reviewer(rev_id)
);

DROP TABLE	movie_direction;
DROP TABLE	movie_cast;
DROP TABLE	movie_genres;
DROP TABLE	rating;
INSERT INTO actor VALUES
(001,	"James",	"Oyedepo",	"M"),
(002,	"Son",	"Kolawole",	"F"),
(003,	"Biola",	"Ogundipe",	"M"),
(004,	"Kunle",	"Medinah",	"F"),
(005,	"Ramson",	"Noah",	"M"),
(006,	"Opeyemi",	"Aiyeola",	"F"),
(007,	"Jason",	"Stantham",	"M"),
(008,	"Bimpe",	"Fashola",	"F"),
(009,	"Ajanlekoko",	"Toyin",	"F"),
(010,	"Uwagboi",	"Joshua",	"M");

INSERT INTO director VALUES
(001,	"Tom",	"Edinson"),
(002,	"Jimoh",	"Adams"),
(003,	"Florence",	"Onyaka"),
(004,	"Bimpe",	"Tomori"),
(005,	"Alinko",	"Director"),
(006,	"Wale",	"Adenuga"),
(007,	"Liadi",	"Azeezat"),
(008,	"Funke",	"Adeleke"),
(009,	"Bola",	"Ojindo"),
(010,	"Funke",	"Akinola");

INSERT INTO genres VALUES
(001,	"Love"),
(002,	"Action"),
(003,	"Comedy"),
(004,	"Love"),
(005,	"Thriller"),
(006,	"Action"),
(007,	"Love"),
(008,	"Comedy"),
(009,	"Action"),
(010,	"Thriller");

INSERT INTO movie VALUES
("001",	"American Beauty",	1998,	180,	"English",	"1998-08-01", "USA"),
("002",	"Eyes Wide Shut",	1999,	165,	"English",	"1999-08-12",	"USA"),
("003",	"Jelili",	1997,	120,	"Yoruba",	"1997-01-01",	"NGR"),
("004",	"Walk Alone",	1998,	180,	"English",	"1998-08-01",	"USA"),
("005",	"Black America",	1997,	115,	"English",	"1997-03-01",	"USA"),
("006",	"Kabhi Kabhi",	1999,	175,	"India",	"1999-06-10",	"IND"),
("007",	"Naija Babe",	1998,	120,	"English",	"1998-07-11",	"NGR"),
("008",	"Kuch Kabhi",	1997,	120,	"India",	"1997-03-24",	"IND"),
("009",	"Anna",	1999,	180,	"English",	"1999-04-04",	"USA"),
("010",	"Gemini Man",	1998,	200,	"English",	"1998-01-02",	"USA");

INSERT INTO movie_cast VALUES
(001,	002, ""),
(002,	001, "Boss and maid"),
(003,	004, ""),
(004,	003, ""),
(005,	006, ""),
(006,	005, ""),
(007,	008, ""),
(008,	007, ""),
(009,	010, ""),
(010,	009, "");

INSERT INTO movie_direction VALUES
(001, 002),
(002, 001),
(003, 004),
(004, 003),
(005, 006),
(006, 005),
(007, 008),
(008, 007),
(009, 010),
(010, 009);

INSERT INTO movie_genres VALUES
(001, 002),
(002, 001),
(003, 004),
(004, 003),
(005, 006),
(006, 005),
(007, 008),
(008, 007),
(009, 010),
(010, 009);

INSERT INTO rating VALUES
(001, 002,	7, 7),
(002, 001,	7, 7),
(003, 004,	8, 8),
(004, 003,	1, 1),
(005, 006,	5, 7),
(006, 005,	6, 9),
(007, 008,	9, 9),
(008, 007,	6, 4),
(009, 010,	2, 6),
(010, 009,	8, 9);

INSERT INTO reviewer VALUES
(001,	"James"),
(002,	"Tolu"),
(003,	"Bimpe"),
(004,	"Kemi"),
(005,	"Bola"),
(006,	"Bukky"),
(007,	"Funke"),
(008,	"Kike"),
(009,	"Jide"),
(010,	"Jamiu");
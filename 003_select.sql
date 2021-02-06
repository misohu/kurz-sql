DROP TABLE IF EXISTS "Track" CASCADE;

CREATE TABLE "Track"
(
    "TrackId" INT NOT NULL,
    "Name" VARCHAR(200) NOT NULL,
    "AlbumId" INT,
    "MediaTypeId" INT NOT NULL,
    "GenreId" INT,
    "Composer" VARCHAR(220),
    "Milliseconds" INT NOT NULL,
    "Bytes" INT,
    "UnitPrice" NUMERIC(10,2) NOT NULL,
    CONSTRAINT "PK_Track" PRIMARY KEY  ("TrackId")
);


INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (1, N'For Those About To Rock (We Salute You)', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 343719, 11170334, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Milliseconds", "Bytes", "UnitPrice") VALUES (2, N'Balls to the Wall', 2, 2, 1, 342562, 5510424, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (3, N'Fast As a Shark', 3, 2, 1, N'F. Baltes, S. Kaufman, U. Dirkscneider & W. Hoffman', 230619, 3990994, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (4, N'Restless and Wild', 3, 2, 1, N'F. Baltes, R.A. Smith-Diesel, S. Kaufman, U. Dirkscneider & W. Hoffman', 252051, 4331779, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (5, N'Princess of the Dawn', 3, 2, 1, N'Deaffy & R.A. Smith-Diesel', 375418, 6290521, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (6, N'Put The Finger On You', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 205662, 6713451, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (7, N'Let''s Get It Up', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 233926, 7636561, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (8, N'Inject The Venom', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 210834, 6852860, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (9, N'Snowballed', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 203102, 6599424, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (10, N'Evil Walks', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 263497, 8611245, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (11, N'C.O.D.', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 199836, 6566314, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (12, N'Breaking The Rules', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 263288, 8596840, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (13, N'Night Of The Long Knives', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 205688, 6706347, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (14, N'Spellbound', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 270863, 8817038, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (15, N'Go Down', 4, 1, 1, N'AC/DC', 331180, 10847611, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (16, N'Dog Eat Dog', 4, 1, 1, N'AC/DC', 215196, 7032162, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (17, N'Let There Be Rock', 4, 1, 1, N'AC/DC', 366654, 12021261, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (18, N'Bad Boy Boogie', 4, 1, 1, N'AC/DC', 267728, 8776140, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (19, N'Problem Child', 4, 1, 1, N'AC/DC', 325041, 10617116, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (20, N'Overdose', 4, 1, 1, N'AC/DC', 369319, 12066294, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (21, N'Hell Ain''t A Bad Place To Be', 4, 1, 1, N'AC/DC', 254380, 8331286, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (22, N'Whole Lotta Rosie', 4, 1, 1, N'AC/DC', 323761, 10547154, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (23, N'Walk On Water', 5, 1, 1, N'Steven Tyler, Joe Perry, Jack Blades, Tommy Shaw', 295680, 9719579, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (24, N'Love In An Elevator', 5, 1, 1, N'Steven Tyler, Joe Perry', 321828, 10552051, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (25, N'Rag Doll', 5, 1, 1, N'Steven Tyler, Joe Perry, Jim Vallance, Holly Knight', 264698, 8675345, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (26, N'What It Takes', 5, 1, 1, N'Steven Tyler, Joe Perry, Desmond Child', 310622, 10144730, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (27, N'Dude (Looks Like A Lady)', 5, 1, 1, N'Steven Tyler, Joe Perry, Desmond Child', 264855, 8679940, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (28, N'Janie''s Got A Gun', 5, 1, 1, N'Steven Tyler, Tom Hamilton', 330736, 10869391, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (29, N'Cryin''', 5, 1, 1, N'Steven Tyler, Joe Perry, Taylor Rhodes', 309263, 10056995, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (30, N'Amazing', 5, 1, 1, N'Steven Tyler, Richie Supa', 356519, 11616195, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (31, N'Blind Man', 5, 1, 1, N'Steven Tyler, Joe Perry, Taylor Rhodes', 240718, 7877453, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (32, N'Deuces Are Wild', 5, 1, 1, N'Steven Tyler, Jim Vallance', 215875, 7074167, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (33, N'The Other Side', 5, 1, 1, N'Steven Tyler, Jim Vallance', 244375, 7983270, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (34, N'Crazy', 5, 1, 1, N'Steven Tyler, Joe Perry, Desmond Child', 316656, 10402398, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (35, N'Eat The Rich', 5, 1, 1, N'Steven Tyler, Joe Perry, Jim Vallance', 251036, 8262039, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (36, N'Angel', 5, 1, 1, N'Steven Tyler, Desmond Child', 307617, 9989331, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (37, N'Livin'' On The Edge', 5, 1, 1, N'Steven Tyler, Joe Perry, Mark Hudson', 381231, 12374569, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (38, N'All I Really Want', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 284891, 9375567, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (39, N'You Oughta Know', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 249234, 8196916, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (40, N'Perfect', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 188133, 6145404, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (41, N'Hand In My Pocket', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 221570, 7224246, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (42, N'Right Through You', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 176117, 5793082, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (43, N'Forgiven', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 300355, 9753256, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (44, N'You Learn', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 239699, 7824837, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (45, N'Head Over Feet', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 267493, 8758008, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (46, N'Mary Jane', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 280607, 9163588, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (47, N'Ironic', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 229825, 7598866, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (48, N'Not The Doctor', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 227631, 7604601, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (49, N'Wake Up', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 293485, 9703359, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (50, N'You Oughta Know (Alternate)', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 491885, 16008629, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (51, N'We Die Young', 7, 1, 1, N'Jerry Cantrell', 152084, 4925362, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (52, N'Man In The Box', 7, 1, 1, N'Jerry Cantrell, Layne Staley', 286641, 9310272, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (53, N'Sea Of Sorrow', 7, 1, 1, N'Jerry Cantrell', 349831, 11316328, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (54, N'Bleed The Freak', 7, 1, 1, N'Jerry Cantrell', 241946, 7847716, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (55, N'I Can''t Remember', 7, 1, 1, N'Jerry Cantrell, Layne Staley', 222955, 7302550, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (56, N'Love, Hate, Love', 7, 1, 1, N'Jerry Cantrell, Layne Staley', 387134, 12575396, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (57, N'It Ain''t Like That', 7, 1, 1, N'Jerry Cantrell, Michael Starr, Sean Kinney', 277577, 8993793, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (58, N'Sunshine', 7, 1, 1, N'Jerry Cantrell', 284969, 9216057, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (59, N'Put You Down', 7, 1, 1, N'Jerry Cantrell', 196231, 6420530, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (60, N'Confusion', 7, 1, 1, N'Jerry Cantrell, Michael Starr, Layne Staley', 344163, 11183647, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (61, N'I Know Somethin (Bout You)', 7, 1, 1, N'Jerry Cantrell', 261955, 8497788, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (62, N'Real Thing', 7, 1, 1, N'Jerry Cantrell, Layne Staley', 243879, 7937731, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Milliseconds", "Bytes", "UnitPrice") VALUES (63, N'Desafinado', 8, 1, 2, 185338, 5990473, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Milliseconds", "Bytes", "UnitPrice") VALUES (64, N'Garota De Ipanema', 8, 1, 2, 285048, 9348428, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Milliseconds", "Bytes", "UnitPrice") VALUES (65, N'Samba De Uma Nota Só (One Note Samba)', 8, 1, 2, 137273, 4535401, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Milliseconds", "Bytes", "UnitPrice") VALUES (66, N'Por Causa De Você', 8, 1, 2, 169900, 5536496, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Milliseconds", "Bytes", "UnitPrice") VALUES (67, N'Ligia', 8, 1, 2, 251977, 8226934, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Milliseconds", "Bytes", "UnitPrice") VALUES (68, N'Fotografia', 8, 1, 2, 129227, 4198774, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Milliseconds", "Bytes", "UnitPrice") VALUES (69, N'Dindi (Dindi)', 8, 1, 2, 253178, 8149148, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Milliseconds", "Bytes", "UnitPrice") VALUES (70, N'Se Todos Fossem Iguais A Você (Instrumental)', 8, 1, 2, 134948, 4393377, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Milliseconds", "Bytes", "UnitPrice") VALUES (71, N'Falando De Amor', 8, 1, 2, 219663, 7121735, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Milliseconds", "Bytes", "UnitPrice") VALUES (72, N'Angela', 8, 1, 2, 169508, 5574957, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Milliseconds", "Bytes", "UnitPrice") VALUES (73, N'Corcovado (Quiet Nights Of Quiet Stars)', 8, 1, 2, 205662, 6687994, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Milliseconds", "Bytes", "UnitPrice") VALUES (74, N'Outra Vez', 8, 1, 2, 126511, 4110053, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Milliseconds", "Bytes", "UnitPrice") VALUES (75, N'O Boto (Bôto)', 8, 1, 2, 366837, 12089673, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Milliseconds", "Bytes", "UnitPrice") VALUES (76, N'Canta, Canta Mais', 8, 1, 2, 271856, 8719426, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (77, N'Enter Sandman', 9, 1, 3, N'Apocalyptica', 221701, 7286305, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (78, N'Master Of Puppets', 9, 1, 3, N'Apocalyptica', 436453, 14375310, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (79, N'Harvester Of Sorrow', 9, 1, 3, N'Apocalyptica', 374543, 12372536, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (80, N'The Unforgiven', 9, 1, 3, N'Apocalyptica', 322925, 10422447, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (81, N'Sad But True', 9, 1, 3, N'Apocalyptica', 288208, 9405526, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (82, N'Creeping Death', 9, 1, 3, N'Apocalyptica', 308035, 10110980, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (83, N'Wherever I May Roam', 9, 1, 3, N'Apocalyptica', 369345, 12033110, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (84, N'Welcome Home (Sanitarium)', 9, 1, 3, N'Apocalyptica', 350197, 11406431, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (85, N'Cochise', 10, 1, 1, N'Audioslave/Chris Cornell', 222380, 5339931, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (86, N'Show Me How to Live', 10, 1, 1, N'Audioslave/Chris Cornell', 277890, 6672176, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (87, N'Gasoline', 10, 1, 1, N'Audioslave/Chris Cornell', 279457, 6709793, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (88, N'What You Are', 10, 1, 1, N'Audioslave/Chris Cornell', 249391, 5988186, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (89, N'Like a Stone', 10, 1, 1, N'Audioslave/Chris Cornell', 294034, 7059624, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (90, N'Set It Off', 10, 1, 1, N'Audioslave/Chris Cornell', 263262, 6321091, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (91, N'Shadow on the Sun', 10, 1, 1, N'Audioslave/Chris Cornell', 343457, 8245793, 0.99);
INSERT INTO "Track" ("TrackId", "Name", "AlbumId", "MediaTypeId", "GenreId", "Composer", "Milliseconds", "Bytes", "UnitPrice") VALUES (92, N'I am the Highway', 10, 1, 1, N'Audioslave/Chris Cornell', 334942, 8041411, 0.99);

-- Select tricks 
SELECT * FROM "Track";
-- Matematicke operacie
-- Kolko milisekund trva jeden byte pesnicky
SELECT "Milliseconds", "Bytes", "Milliseconds"::decimal / "Bytes" 
FROM "Track"
-- Pomocou dvoch dvojbodiek som precastoval integer na float 
-- postgresql nevie delit dva integery 
SELECT "Milliseconds", "Bytes", "Milliseconds" / CAST("Bytes" AS DECIMAL), "Milliseconds"::decimal / "Bytes"
FROM "Track"

-- Premenovanie stlpcov pomocou as aliasu alebo inplicitne bez as 
SELECT "Milliseconds" as Milisekundy, "Bytes" as b, "Milliseconds" / CAST("Bytes" AS DECIMAL)as podiel
FROM "Track"

-- Nasobenie celym cislom
SELECT * 
FROM "Track"

SELECT "Milliseconds" * 10, "Milliseconds" as original
FROM "Track"


-- Spajanie textov
SELECT * 
FROM "Track"

SELECT "Name", "Composer", "Name" || ' ' || "Composer" as concatenation
FROM "Track"

-- Spajat vime aj non text columns ked ich castneme na string
-- SELECT "AlbumId" || "MediaTypeId"
-- FROM "Track"
-- toto by vratilo error lebo oba su integer
SELECT "AlbumId"::varchar || "MediaTypeId", "AlbumId", "MediaTypeId"
FROM "Track"

-- SELECT DISTINCT
SELECT * 
FROM "Track"
-- sluzi na vyfiltrovanie unikatnych zaznamov
SELECT DISTINCT "MediaTypeId"
FROM "Track"
-- vieme pouzit aj nad skupinou stlpcov
SELECT DISTINCT "MediaTypeId", "GenreId"
FROM "Track"

DROP TABLE IF EXISTS "Track" CASCADE;





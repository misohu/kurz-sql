DROP TABLE IF EXISTS test1;
DROP TABLE IF EXISTS test2;

CREATE TABLE test1 (
    user_id_test1 INT PRIMARY KEY,
    username VARCHAR (100) NOT NULL
);

CREATE TABLE test2 (
    user_id_test2 INT PRIMARY KEY,
	username VARCHAR (100) NOT NULL
);

INSERT INTO test1 (user_id_test1, username)
VALUES
    (1, 'Jano'),
    (2, 'Miso'),
    (3, 'Fero'),
    (4, 'Juro'),
	(5, 'Palo'),
	(6, 'Matej');

INSERT INTO test2 (user_id_test2, username)
VALUES
    (1, 'Fero'),
    (2, 'Palo'),
    (3, 'Miso'),
    (4, 'Karol'),
	(5, 'Patrik'),
	(6, 'Matej');
	

SELECT *
FROM test1;

SELECT *
FROM test2;

-- INNER JOIN/JOIN
-- Chcem vediet ktory ziaci boli na prvom aj druhom teste
SELECT * 
FROM test1
INNER JOIN test2
	ON test1.username=test2.username

-- LEFT JOIN/LEFT OUTER JOIN
-- Z tych co boli na prvom teste chcem vediet co mali na druhom teste aj ked na nom neboli
SELECT * 
FROM test1
LEFT JOIN test2
	ON test1.username=test2.username
	
-- RIGHT JOIN/RIGHT OUTER JOIN 
-- Z tych co boli na druhom teste chcem vediet co mali na prvom teste aj ked na nom neboli
SELECT * 
FROM test1
RIGHT JOIN test2
	ON test1.username=test2.username


-- Kazdy ziak z prveho z kazdym ziakom z druheho tetsu a ak niekto chyba daj NULL
SELECT * 
FROM test1
FULL OUTER JOIN test2
	ON test1.username=test2.username
	
-- Toto je specialny pripad takzvany karteziansky sucin kde kombinujeme kazdy zaznam s kazdym 
SELECT * 
FROM test1
CROSS JOIN test2


-- UNION alebo zjednotenie 
SELECT *
FROM test1
UNION 
SELECT *
FROM test2

-- BONUS co sa stane ked nesedia stlpce ?
-- pocet stlpcov a datovy typ musia byt tie iste 
DROP TABLE IF EXISTS test3;
CREATE TABLE test3 (
    user_id_test3 INT PRIMARY KEY,
	username VARCHAR (100) NOT NULL,
	car varchar(256) NOT NULL
);

INSERT INTO test3 (user_id_test3, username, car)
VALUES
    (1, 'Jano', 'BMW'),
    (2, 'Miso', 'BMW'),
    (3, 'Fero', 'BMW');
	
-- SELECT *
-- FROM test1
-- UNION 
-- SELECT *
-- FROM test3
-- TOTO spravi chybu
-- UNION maze dupllikaty vo vysledku ak ichc chceme zachovat musime pouzit UNION ALL

--INTERSECT prienik
SELECT *
FROM test1
INTERSECT 
SELECT *
FROM test2

-- EXCEPT zvysok 
SELECT *
FROM test1
EXCEPT 
SELECT *
FROM test2

-- Na konci zmazeme tabulky
DROP TABLE IF EXISTS test1;
DROP TABLE IF EXISTS test2;


	
	


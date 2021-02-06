-- V tejto lekcii si ukazeme ako vieme pridavat a mazat tabulky v postgresql

-- CREATE TABLE [IF NOT EXISTS] table_name (
--    column1 datatype(length) column_contraint,
--    column2 datatype(length) column_contraint,
--    column3 datatype(length) column_contraint,
--    table_constraints
-- );

-- CREATE TABLE dokumentacia https://www.postgresql.org/docs/12/sql-createtable.html
-- Datove typy najdete tu https://www.postgresql.org/docs/12/datatype.html
-- Nazvy klucovych slov SQL budeme pisat velkymi pismenami 
-- na konci kazdeho vyrazu ide bodkociarka ... niekedy na to zabudnem :) 

DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS student;

CREATE TABLE students (
	student_id serial PRIMARY KEY,
	username VARCHAR (128) UNIQUE NOT NULL,
	password VARCHAR (128) NOT NULL,
	is_new BOOLEAN,
	year_born INTEGER NOT NULL,
	created_on TIMESTAMP NOT NULL,
    last_login TIMESTAMP 
);

-- Ak tabulka existuje postgres vrati error
CREATE TABLE students (
	student_id serial PRIMARY KEY,
	username VARCHAR (128) UNIQUE NOT NULL,
	password VARCHAR (128) NOT NULL,
	is_new BOOLEAN,
	year_born INTEGER NOT NULL,
	created_on TIMESTAMP NOT NULL,
    last_login TIMESTAMP 
);

-- Konvencie 
-- Nazov tabulky s snake_case singular 
-- Nazov stlpca snake_case singular

-- DROP TABLE [IF EXISTS] table_name 
-- [CASCADE | RESTRICT];
-- CASCADE - zmaze tabulku a vsetky jej zavislosti viac sa dozvieme neskor
-- RESTRICT - zmaze tabulku len ak nema zavislosti ... tot je default

DROP TABLE IF EXISTS students
RESTRICT;

CREATE TABLE student (
	student_id serial PRIMARY KEY,
	username VARCHAR (128) UNIQUE NOT NULL,
	password VARCHAR (128) NOT NULL,
	is_new BOOLEAN,
	year_born INTEGER NOT NULL,
	created_on TIMESTAMP NOT NULL,
    updated_on TIMESTAMP
)

DROP TABLE Student

-- Single quote vs double quote
-- Ked vytvorime tabulku s velkym pismenom
CREATE TABLE TestTable();
-- Tabulka sa ulozi s malymi pismenami lebo pomenovania su case insensitive 
-- Preto toto je ten isty create a vrati to erro
CREATE TABLE TESTTable();
-- To iste plati aj pre nazvy stlpcov v tabulke 
DROP TABLE IF EXISTS TESTTABLE;
CREATE TABLE IF NOT EXISTS testtable(
	COLMUN_NAME varchar(256) NOT NULL
);
-- Stlpec bude s malymi pismenami 
-- Ak chceme pouzit velke pismena musime pouzit dvojite uvodzovky 
DROP TABLE IF EXISTS TESTTABLE;
CREATE TABLE IF NOT EXISTS "TESTTABLE"(
	"COLMUN_NAME" varchar(256) NOT NULL
);
-- TERAZ VSAK VZDY MUSIME POUZIT DVOJITE UVODZOVKY NA TO ABY SME MOHLI PRACOVAT S TABULKKOU
-- Preot toto vratichybu 
DROP TABLE TESTTABLE;
-- A toto prejde
DROP TABLE "TESTTABLE";

-- Toto plati pre akekolvek klucove slovo v sql mozeme ho pisat velkym alebo malym
CreaTe TaBLE TesTtABle (
	TesTINg_COlumN VarchaR(256) nOT Null
);
DROP TABLE "testtable";
-- Preto potrebujeme konvencie!!!!!
-- Vsetky klucove slova jazyka budeme pisat velkym nazvy stlpcov a tabulke sme si uz definovali 

DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS student;

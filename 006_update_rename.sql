DROP TABLE IF EXISTS "Customer" CASCADE;

CREATE TABLE "Customer"
(
    "CustomerId" INT NOT NULL,
    "FirstName" VARCHAR(40) NOT NULL,
    "LastName" VARCHAR(20) NOT NULL,
    "Company" VARCHAR(80),
    "Address" VARCHAR(70),
    "City" VARCHAR(40),
    "State" VARCHAR(40),
    "Country" VARCHAR(40),
    "PostalCode" VARCHAR(10),
    "Phone" VARCHAR(24),
    "Fax" VARCHAR(24),
    "Email" VARCHAR(60) NOT NULL,
    "SupportRepId" INT,
    CONSTRAINT "PK_Customer" PRIMARY KEY  ("CustomerId")
);

INSERT INTO "Customer" ("CustomerId", "FirstName", "LastName", "Company", "Address", "City", "State", "Country", "PostalCode", "Phone", "Fax", "Email", "SupportRepId") VALUES (1, N'Luís', N'Gonçalves', N'Embraer - Empresa Brasileira de Aeronáutica S.A.', N'Av. Brigadeiro Faria Lima, 2170', N'São José dos Campos', N'SP', N'Brazil', N'12227-000', N'+55 (12) 3923-5555', N'+55 (12) 3923-5566', N'luisg@embraer.com.br', 3);
INSERT INTO "Customer" ("CustomerId", "FirstName", "LastName", "Address", "City", "Country", "PostalCode", "Phone", "Email", "SupportRepId") VALUES (2, N'Leonie', N'Köhler', N'Theodor-Heuss-Straße 34', N'Stuttgart', N'Germany', N'70174', N'+49 0711 2842222', N'leonekohler@surfeu.de', 5);
INSERT INTO "Customer" ("CustomerId", "FirstName", "LastName", "Address", "City", "State", "Country", "PostalCode", "Phone", "Email", "SupportRepId") VALUES (3, N'François', N'Tremblay', N'1498 rue Bélanger', N'Montréal', N'QC', N'Canada', N'H2G 1A7', N'+1 (514) 721-4711', N'ftremblay@gmail.com', 3);
INSERT INTO "Customer" ("CustomerId", "FirstName", "LastName", "Address", "City", "Country", "PostalCode", "Phone", "Email", "SupportRepId") VALUES (4, N'Bjørn', N'Hansen', N'Ullevålsveien 14', N'Oslo', N'Norway', N'0171', N'+47 22 44 22 22', N'bjorn.hansen@yahoo.no', 4);
INSERT INTO "Customer" ("CustomerId", "FirstName", "LastName", "Company", "Address", "City", "Country", "PostalCode", "Phone", "Fax", "Email", "SupportRepId") VALUES (5, N'Frantiek', N'Wichterlová', N'JetBrains s.r.o.', N'Klanova 9/506', N'Prague', N'Czech Republic', N'14700', N'+420 2 4172 5555', N'+420 2 4172 5555', N'frantisekw@jetbrains.com', 4);

ALTER TABLE IF EXISTS "Customer"
RENAME TO customer;

ALTER TABLE customer 
RENAME COLUMN "CustomerId" TO customer_id;
ALTER TABLE customer 
RENAME COLUMN "FirstName" TO first_name;

-- UPDATE riadkov
SELECT * 
FROM customer

UPDATE customer
SET first_name = 'Someone',
	"LastName" = 'else'
WHERE customer_id = 1;
-- Vrati to UPDATE pocet_upravenych_riadkov

UPDATE customer
SET first_name = 'Someone',
	"LastName" = 'else'
WHERE customer_id < 3;

-- Pridanie stlpca
-- Ako vyfiltrujem nazvy stlpcov
SELECT column_name
  FROM information_schema.columns
 WHERE table_schema = 'public'
   AND table_name   = 'customer';
-- Vzdy specifikujte aj schemu niekedy moze byt  viac napr prod test dev ... 

-- Pridanie prazdneho stlpca (vzdy na koniec neda sa to nastavit inak)
ALTER TABLE customer
ADD COLUMN test_column VARCHAR(256);
-- Co ak chceme nejaku hodnotu?
-- ALTER TABLE customer
-- ADD COLUMN test_column_not_bull VARCHAR(256) NOT NULL;
-- ERROR lebo tam su uz data. Ako na to?
-- 1) Vytvorime prazdny stlpec 
ALTER TABLE customer
ADD COLUMN test_column_not_bull VARCHAR(256);
-- 2) Pridame hodnoty 
UPDATE customer
SET test_column_not_bull = 'not null';
-- 3) Pridame CONSTRAINT
ALTER TABLE customer
ALTER COLUMN test_column_not_bull SET NOT NULL;

-- DOMACA ULOHA zistite ako zmenime datovy typ existujuceho stlpca, ktory uz ma nejake data :) (kludne ich aj zmazte).
DROP TABLE IF EXISTS "Customer" CASCADE;
DROP TABLE IF EXISTS customer CASCADE;






DROP TABLE IF EXISTS "Customer" CASCADE;
DROP TABLE IF EXISTS "Invoice" CASCADE;

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

-- Najprv vytvorime tabulku kde sa nachadza specifikacia stlpaca pre customer
CREATE TABLE "Invoice"
(
    "InvoiceId" INT NOT NULL,
    "CustomerId" INT NOT NULL,
    "InvoiceDate" TIMESTAMP NOT NULL,
    "BillingAddress" VARCHAR(70),
    "BillingCity" VARCHAR(40),
    "BillingState" VARCHAR(40),
    "BillingCountry" VARCHAR(40),
    "BillingPostalCode" VARCHAR(10),
    "Total" NUMERIC(10,2) NOT NULL,
    CONSTRAINT "PK_Invoice" PRIMARY KEY  ("InvoiceId")
);

-- Nasledne vytvorime CONSTRAIN alebo obmedzenie kde specifikujeme foreign key 
-- Foreign key vie byt specifikovany aj na viac ako jeden stlpec (stlpec1, stlpec2)
-- Za REFERENCE specifikujeme rodicovsku triedu
ALTER TABLE "Invoice" ADD CONSTRAINT "FK_InvoiceCustomerId"
    FOREIGN KEY ("CustomerId") REFERENCES "Customer" ("CustomerId") ON DELETE NO ACTION ON UPDATE NO ACTION;
-- Na konci obmedzenia vieme specifikovat co sa ma stat ked sa dany kluc zmaze z rodicovskej triedy ... cize ked rodic zanikne v tomto pripade zakaznik
-- Moznosti:
-- SET NULL
-- SET DEFAULT 
-- NO ACTION 
-- CASCADE - zmaze sa aj invoice ak sa zmaze zakaznik 

--- FOREIGN KEy sa da specifikovat aj v create table v casi constrain na konci 
DROP TABLE IF EXISTS car;
CREATE TABLE car (
	car_id INT NOT NULL,
	brand VARCHAR(128) NOT NULL,
	customer_id INT NOT NULL,
	CONSTRAINT pk_car PRIMARY KEY (car_id),
	CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES "Customer" ("CustomerId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

INSERT INTO "Customer" ("CustomerId", "FirstName", "LastName", "Company", "Address", "City", "State", "Country", "PostalCode", "Phone", "Fax", "Email", "SupportRepId") VALUES (1, N'Luís', N'Gonçalves', N'Embraer - Empresa Brasileira de Aeronáutica S.A.', N'Av. Brigadeiro Faria Lima, 2170', N'São José dos Campos', N'SP', N'Brazil', N'12227-000', N'+55 (12) 3923-5555', N'+55 (12) 3923-5566', N'luisg@embraer.com.br', 3);
-- vsimnite si ze ked vytvaram auto musim specifikovat private key lebo pri vytvarani tabulky som nespecifikoval SERIAL datovy typ
-- musim specifikovat aj customer_id
INSERT INTO car (car_id, brand, customer_id) VALUES (1, 'BMW', 1);
-- Mame tu problem nevieme zmazat zakanika lebo foreign key mal nastaveny no action ON DELETE
-- DELETE FROM "Customer" where "CustomerId" = 1;
-- potrebujeme ho zmenit
ALTER TABLE car 
	DROP CONSTRAINT fk_customer,
	ADD CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES "Customer" ("CustomerId") ON DELETE CASCADE ON UPDATE NO ACTION
DELETE FROM "Customer" where "CustomerId" = 1;
-- Teraz sa zmaze aj auto aj zakaznik teda vsetko co je spolocne so zakaznikom
-- To iste plati aj pre foreign key zmenu ... co ked sa customer id zmeni ak je nastaveny NO ACTION nastane chyba


DROP TABLE IF EXISTS "Customer" CASCADE;
DROP TABLE IF EXISTS "Invoice" CASCADE;
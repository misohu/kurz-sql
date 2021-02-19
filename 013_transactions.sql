DROP TABLE IF EXISTS account;

CREATE TABLE account (
	account_id SERIAL PRIMARY KEY,
	username VARCHAR(128) NOT NULL,
	balance INT NOT NULL
);

INSERT INTO account(username, balance) VALUES ('Miso', 120);
INSERT INTO account(username, balance) VALUES ('Jano', 150);
INSERT INTO account(username, balance) VALUES ('Fero', 150);

SELECT * 
FROM account

-- Uloha: chceme aby sa tieto operacie vykonali naraz
-- UPDATE account
-- SET balance=100
-- WHERE username='Miso'

-- UPDATE account
-- SET balance=170
-- WHERE username='Jano'

BEGIN; 
-- alebo BEGIN TRANSACTION;
-- alebo BEIGN WORK;

UPDATE account
SET balance=100
WHERE username='Miso';

UPDATE account
SET balance=170
WHERE username='Jano';

COMMIT;
-- alebo COMMIT TRANSACTION;
-- alebo COMMIT WORK;

-- Pomocou prikazu ROLLBACK vieme vratit spat transakciu 
BEGIN;

UPDATE account 
SET balance=balance+1000000
WHERE username='Miso';

ROLLBACK;
-- Tato transakcia sa nikdy nevykonala 

-- Telo transakcie nie je viditelne conku pokym sa necommitne
BEGIN; 

UPDATE account 
SET balance=balance+1000000
WHERE username='Miso';

SELECT *
FROM account;
-- otvorte si teraz novy query tool a skuste tam dat ten select 
COMMIT;
-- az teraz bude zmena viditelna

DROP TABLE IF EXISTS account;

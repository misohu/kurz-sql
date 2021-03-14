psql -d school -U michal -W
# -d specifikuje meno databazy
# -U specifikuje pouzivatela
# -W prinuti vypytanie hesla 

# Prikazy v psql
\l # Vylistuje vsetky dostupne db 
\c <nazovdb> <user> # Prepne na danu db pre daneho usera
\dt # Vylistuje tabulky v aktualnej db
\d <tabulka> # opise danu tabulku 
\dn # vypise schemy v databaze
\s # vypise historiu prikazov na servery nie len v psql

# SQL prikazy sa spustaju rovnako ako v pgadmin4 je dobre ich oddelovat ;
\q # vypne psql
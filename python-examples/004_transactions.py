import psycopg2
import psycopg2.extras
import os
import datetime

from utils import consts

def get_cars(curr, conn):
    curr.execute("SELECT * FROM car;")
    results=curr.fetchall()
    return results

def insert_car(curr, conn, brand):
    curr.execute("INSERT INTO car (brand) VALUES (%s)", (brand, ))

if __name__ == "__main__":
    conn=psycopg2.connect(
        host=os.getenv("POSTGRES_HOST", "localhost"),
        database=os.getenv("POSTGRES_DATABASE", "postgres"),
        user=os.getenv("POSTGRES_USER", "postgres"),
        password=os.getenv("POSTGRES_PASSWORD", "postgres")
    )
    conn.autocommit = True
    cursor=conn.cursor(cursor_factory=psycopg2.extras.DictCursor)
    cars=get_cars(cursor, conn)
    print(cars)
    insert_car(cursor, conn, 'Audi')
    cars=get_cars(cursor, conn)
    print(cars)
    cursor.close()
    conn.close() # automatiky spravi rollback

    # Ak nechceme stale commitovat vsetky query mozemenastavit autocommit, teraz je kazdy execute jedna transakcia
    # conn.autocommit = True

    
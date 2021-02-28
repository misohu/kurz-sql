import psycopg2
import psycopg2.extras

from psycopg2 import sql
from utils import consts


def get_students(curr, conn):
    curr.execute("""
    SELECT * 
    FROM student
    WHERE name like %s
    """, ("Andrej",))
    results=curr.fetchall() # POZOR TOTO stale nie je idealne riesenie. Viac v nasledujucom videu
    return results

# Osobitne premenne
conn=psycopg2.connect(
    host=consts.POSTGRES_HOST,
    database=consts.POSTGRES_DATABASE,
    user=consts.POSTGRES_USER,
    password=consts.POSTGRES_PASSWORD
)

cursor=conn.cursor(cursor_factory=psycopg2.extras.DictCursor)
students=get_students(cursor, conn)
print(students)
cursor.close()
conn.close()

# Connection string metoda 
conn=psycopg2.connect(
    consts.POSTGRES_CONNECTION_STRING
)
cursor=conn.cursor(cursor_factory=psycopg2.extras.DictCursor)
students=get_students(cursor, conn)
print(students)
cursor.close()
conn.close()

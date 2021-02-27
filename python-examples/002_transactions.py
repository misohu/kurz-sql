import psycopg2
import psycopg2.extras

from utils import consts

def get_students(curr, conn):
    curr.execute("SELECT name, surname FROM student;")
    results=curr.fetchall()
    conn.commit()
    return results

def insert_student(curr, conn, name, surname):
    curr.execute("INSERT INTO student (name, surname) VALUES (%s, %s)", (name, surname))
    conn.commit()

if __name__ == "__main__":
    conn=psycopg2.connect(
        host=consts.POSTGRES_HOST,
        database=consts.POSTGRES_DATABASE,
        user=consts.POSTGRES_USER,
        password=consts.POSTGRES_PASSWORD
    )
    cursor=conn.cursor(cursor_factory=psycopg2.extras.DictCursor)
    students=get_students(cursor, conn)
    print(len(students))
    insert_student(cursor, conn, 'test', 'test')
    students=get_students(cursor, conn)
    print(len(students))
    cursor.close()
    conn.close() # automatiky spravi rollback

    # Ak nechceme stale commitovat vsetky query mozemenastavit autocommit, teraz je kazdy execute jedna transakcia
    # conn.autocommit = True

    
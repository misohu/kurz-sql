import psycopg2

from utils import consts

def insert_student_query(name, surname):
    return f"INSERT INTO student(name, surname) VALUES ('{name}', '{surname}')"

def insert_student_query_error(name, surname):
    return f"INSERT IFTO student(name, surname) VALUES ('{name}', '{surname}')"

def execute_in_transaction(conn, queries): 
    with conn, conn.cursor() as cur:
        for query in queries:
            cur.execute(query)

if __name__ == "__main__":
    conn=psycopg2.connect(
        host=consts.POSTGRES_HOST,
        database=consts.POSTGRES_DATABASE,
        user=consts.POSTGRES_USER,
        password=consts.POSTGRES_PASSWORD
    )
    execute_in_transaction(conn, [
        insert_student_query("Janko", "Hrasko"),
        insert_student_query_error("Jazko", "Mrkvicka"),
    ])
    conn.close() # vzdy zatvarajte connection !!!!
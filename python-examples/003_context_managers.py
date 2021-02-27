import psycopg2
from utils import consts

conn=psycopg2.connect(
        host=consts.POSTGRES_HOST,
        database=consts.POSTGRES_DATABASE,
        user=consts.POSTGRES_USER,
        password=consts.POSTGRES_PASSWORD
    )

if __name__ == '__main__':
    with conn:
        with conn.cursor() as cur:
            cur.execute("INSERT INTO student (name, surname) VALUES (%s, %s)", ('test_student', 'test_student'))
    print("DONE")

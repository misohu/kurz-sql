import psycopg2
import pandas as pd

from utils import consts

conn=psycopg2.connect(
    host=consts.POSTGRES_HOST,
    database=consts.POSTGRES_DATABASE,
    user=consts.POSTGRES_USER,
    password=consts.POSTGRES_PASSWORD
)

if __name__ == "__main__":
    cursor=conn.cursor()
    cursor.execute(
        """
        SELECT * 
        FROM student
        """
    )
    x=cursor.fetchall()
    print(x)
    cursor.close()
    conn.close()
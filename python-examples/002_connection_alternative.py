import os 
import psycopg2
import psycopg2.extras

conn=psycopg2.connect(
    host=os.getenv("POSTGRES_HOST", "localhost"),
    database=os.getenv("POSTGRES_DATABASE", "postgres"),
    user=os.getenv("POSTGRES_USER", "postgres"),
    password=os.getenv("POSTGRES_PASSWORD", "postgres")
)

cursor=conn.cursor(cursor_factory=psycopg2.extras.DictCursor)
cursor.execute(
    "SELECT * FROM student;"
)
students=cursor.fetchall()
target_student=students[0]
print(f"Name is {target_student['username']}")
cursor.close()
conn.close()

# conn=psycopg2.connect(
#     os.getenv("POSTGRES_CONNECTION_STRING", "dbname=postgres user=postgres password=postgres host=localhost port=5432")
# )

# cursor=conn.cursor(cursor_factory=psycopg2.extras.DictCursor)
# cursor.execute(
#     "SELECT * FROM student;"
# )
# students=cursor.fetchall()
# target_student=students[0]
# print(f"Name is {target_student['username']}")
# cursor.close()
# conn.close()
import psycopg2

conn=psycopg2.connect(
    host="localhost",
    database="postgres",
    user="postgres",
    password="postgres"
)

cursor=conn.cursor()
cursor.execute(
    "SELECT * FROM student;"
)
students=cursor.fetchall()
print(students)
cursor.close()
conn.close()
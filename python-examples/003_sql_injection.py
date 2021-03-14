import os 
import psycopg2
import psycopg2.extras

from psycopg2 import sql

conn=psycopg2.connect(
    host=os.getenv("POSTGRES_HOST", "localhost"),
    database=os.getenv("POSTGRES_DATABASE", "postgres"),
    user=os.getenv("POSTGRES_USER", "postgres"),
    password=os.getenv("POSTGRES_PASSWORD", "postgres")
)

# toto sa nazyva dynamická query
student_id="1"
# student_id="1 OR 1=1" # toto je priklad nebezpecneho SQL injection 
# student_id="1; DROP TABLE student" # toto je priklad este nebezpecnejsieho SQL injection

cursor=conn.cursor(cursor_factory=psycopg2.extras.DictCursor)

# Ukazaka nebezpecneho pouzitie execute
cursor.execute(
    "SELECT * FROM student WHERE student_id="+student_id
) 
# Ine nebezpecne zapisy query 
# cursor.execute("SELECT * FROM student WHERE student_id=%s" %student_id)
# cursor.execute(f"SELECT * FROM student WHERE student_id={student_id}")
# cursor.execute("SELECT * FROM student WHERE student_id={}".format(student_id))

# Spravne zapisy query
# cursor.execute("SELECT * FROM student WHERE student_id=%s", (student_id, ))
# cursor.execute("SELECT * FROM student WHERE student_id=%(student_id)s", {"student_id": student_id})

# Co ked chcem poskytnut ako parameter nazov tabulky alebo stlpca (pouzitie identifikatorov a literalov)
table="student"
cursor.execute(
    "SELECT * FROM %s WHERE student_id=1", (table,)
) # toto nebude fungovat

# Spravne pouzitie konstruktoru SQL
select_sql=sql.SQL(
    """
    SELECT * 
    FROM {table}
    WHERE student_id={student_id}
    """
).format(
    table=sql.Identifier(table),
    student_id=sql.Literal(student_id)
)
cursor.execute(select_sql)

table="Test"
select_sql=sql.SQL(
    """
    SELECT * 
    FROM {table}
    """
).format(
    table=sql.Identifier(table),
)
print(select_sql)
cursor.execute(select_sql)

students=cursor.fetchall()
print(students)
cursor.close()
conn.close()
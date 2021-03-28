import os
import psycopg2

from psycopg2 import sql

if __name__ == "__main__":
    print("-----TABLES WILL BE CREATED-----")
    conn=psycopg2.connect(
        host=os.getenv("POSTGRES_HOST", "localhost"),
        database=os.getenv("POSTGRES_DATABASE", "school"),
        user=os.getenv("POSTGRES_USER", "michal"),
        password=os.getenv("POSTGRES_PASSWORD", "michal"),
    )
    print("-----CONNECTED-----")
    with conn, conn.cursor() as cur:
        create_student_table_query=sql.SQL(
            """
            DROP TABLE IF EXISTS student;
            CREATE TABLE student (
                student_id SERIAL PRIMARY KEY,
                name VARCHAR(128),
                surname VARCHAR(128),
                grade INT
            );
            """
        )
        print(create_student_table_query.as_string(cur)) 
        cur.execute(create_student_table_query)

        create_teacher_table_query=sql.SQL(
            """
            DROP TABLE IF EXISTS teacher;
            CREATE TABLE teacher (
                teacher_id SERIAL PRIMARY KEY,
                name VARCHAR(128),
                surname VARCHAR(128),
                degree VARCHAR(128)
            );
            """
        )
        print(create_teacher_table_query.as_string(cur)) 
        cur.execute(create_teacher_table_query)

        create_course_table_query=sql.SQL(
            """
            DROP TABLE IF EXISTS course;
            CREATE TABLE course (
                course_id SERIAL PRIMARY KEY,
                name VARCHAR(128),
                teacher_id INT
            );
            """
        )
        print(create_course_table_query.as_string(cur)) 
        cur.execute(create_course_table_query)

        create_course_student_table_query=sql.SQL(
            """
            DROP TABLE IF EXISTS course_student;
            CREATE TABLE course_student (
                course_id INT NOT NULL,
                student_id INT NOT NULL,
                CONSTRAINT "PK_course_student" PRIMARY KEY (course_id, student_id)
            );
            """
        )
        print(create_course_student_table_query.as_string(cur)) 
        cur.execute(create_course_student_table_query)
    conn.close()
    print("-----TABLE CREATED-----")

        

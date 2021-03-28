import os

STUDENT_TABLE=os.getenv("STUDENT_TABLE", "student")
TEACHER_TABLE=os.getenv("TEACHER_TABLE", "teacher")
COURSE_TABLE=os.getenv("COURSE_TABLE", "course")
COURSE_STUDENT_TABLE=os.getenv("COURSE_STUDENT_TABLE", "course_student")

POSTGRES_HOST=os.getenv("POSTGRES_HOST", "localhost")
POSTGRES_DATABASE=os.getenv("POSTGRES_DATABASE", "school")
POSTGRES_USER=os.getenv("POSTGRES_USER", "michal")
POSTGRES_PASSWORD=os.getenv("POSTGRES_PASSWORD", "michal")
import os

from src.information_system import InformationSystem
from src.utils.postgres_handler import PostgresHandler

pg_handler=PostgresHandler(
    host=os.getenv("POSTGRES_HOST", "localhost"),
    database=os.getenv("POSTGRES_DATABASE", "postgres"),
    user=os.getenv("POSTGRES_USER", "postgres"),
    password=os.getenv("POSTGRES_PASSWORD", "postgres"),
)

information_system=InformationSystem(db_handler=pg_handler)

def print_menu():
    print("\n*******************************************")
    print("WELCOME")
    print("Menu options:")
    print("\t[0] to insert a teacher")
    print("\t[1] to insert a course")
    print("\t[2] to insert a student")
    print("\t[3] to terminate")
    print("\t[4] to list courses")
    print("\t[5] to list students")
    print("\t[6] to list teachers")

def create_teacher(information_system: InformationSystem):
    print("Teacher details:")
    while True:
        try:
            name=input("Name: ")
            surname=input("Surname: ")
            degree=input("Degree: ")
        except Exception as e:
            print(e)
            print("Error during teacher creation please renter details")
            continue
        break
    information_system.insert_teacher({"name": name, "surname": surname, "degree": degree})

def create_course(information_system: InformationSystem): 
    teachers=information_system.get_teachers()
    if not teachers:
        print("Sorry first you need to have teachers!!!")
    while True:
        try:
            name=input("Name: ")
            counter = 0 
            print("Choose your teacher")
            for teacher in teachers:
                print(f"{counter}, {teacher['degree']}. {teacher['name']} {teacher['surname']}")
                counter +=1
            teacher_id=int(input("Teacher id: "))
            if teacher_id <0 or teacher_id>=len(teachers):
                print("Please choose teachers from above")
        except Exception as e:
            print(e)
            print("Error during teacher creation please reenter details")
            continue
        break
    information_system.insert_course({"name": name, "teacher_id": teachers[teacher_id]['teacher_id']})

def create_student(information_system: InformationSystem):
    courses=information_system.get_courses()
    while True:
        try:
            name=input("Name: ")
            surname=input("Surname: ")
            grade=input("Grade: ")
            print("Choose courses to join (press -1 to finish adding)")
            selected_courses=[]
            selected_courses_ids=[]
            while True:
                print(f"Selected courses are {selected_courses_ids}")
                for counter, course in enumerate(courses):
                    print(f"{counter}, {course['name']}")
                course_id=int(input("Course id: "))
                if course_id == -1:
                    break
                if course_id <0 or course_id>=len(courses):
                    print("Please choose course from above")
                    continue
                selected_courses.append(courses[course_id])
                selected_courses_ids.append(course_id)
                if len(selected_courses) == len(courses):
                    break
            break
        except Exception as e:
            print(e)
            print("Error during student creation please renter details")
            continue
    student=information_system.insert_student({"name": name, "surname": surname, "grade": grade})
    print(f"Student is {student}")
    print(f"Selected course list is {selected_courses}")
    for course in selected_courses:
        information_system.insert_student_to_course(student['student_id'], course['course_id'])

def get_courses(information_system: InformationSystem):
    print("Courses List:")
    result_data=information_system.get_courses_detailed()
    for key, value in result_data.items():
        formated_students=", ".join(map(lambda x: student_dict_to_string(x), value['students']))
        print(f"Subject: {key}\n\tTeacher: {teacher_dict_to_string(value['teacher'])}\n\tStudents: {formated_students}")

def teacher_dict_to_string(teacher_dict):
    return f"{teacher_dict['degree']}. {teacher_dict['name']} {teacher_dict['surname']}"

def student_dict_to_string(student_dict):
    return f"{student_dict['name']} {student_dict['surname']} ({student_dict['grade']})"

def get_students(information_system: InformationSystem):
    result_data=information_system.get_students()
    print("Students List:")
    for student in result_data:
        print(student_dict_to_string(student))

def get_teachers(information_system: InformationSystem):
    result_data=information_system.get_teachers()
    print("Teacher List:")
    for teacher in result_data:
        print(teacher_dict_to_string(teacher))

if __name__ == "__main__":  
    while True:  
        while True:
            try:
                print_menu()
                menu_choice=int(input("Menu choice: "))
                if menu_choice<0 or menu_choice >=7:
                    raise Exception("Wrong menu choice")
                break
            except Exception as e:
                print(e)
                print("Please choose valid menu choice")

        if menu_choice == 3:
            print("Bye!!")
            break
        if menu_choice == 0:
            create_teacher(information_system)
        if menu_choice == 1:
            create_course(information_system)
        if menu_choice == 2:
            create_student(information_system)
        if menu_choice == 4:
            get_courses(information_system)
        if menu_choice ==5: 
            get_students(information_system)
        if menu_choice ==6: 
            get_teachers(information_system)

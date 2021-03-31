from .config import consts
from .utils.postgres_handler import PostgresHandler

class InformationSystem:
    def __init__(self, db_handler: PostgresHandler):
        self.db_handler=db_handler 
    
    def get_students(self):
        students=self.db_handler.get_data_simple_condition(consts.STUDENT_TABLE, ["name", "surname", "grade"])
        return students
    
    def insert_student(self, data_dict):
        return self.db_handler.insert_data(consts.STUDENT_TABLE, data_dict)

    def get_teachers(self):
        teachers=self.db_handler.get_data_simple_condition(consts.TEACHER_TABLE, ["teacher_id", "name", "surname", "degree"])
        return teachers
    
    def insert_teacher(self, data_dict):
        self.db_handler.insert_data(consts.TEACHER_TABLE, data_dict)
    
    def get_courses(self):
        courses=self.db_handler.get_data_simple_condition(consts.COURSE_TABLE, ["course_id", "name", "teacher_id"])
        return courses
    
    def insert_course(self, data_dict):
        self.db_handler.insert_data(consts.COURSE_TABLE, data_dict)
    
    def insert_student_to_course(self, student_id, course_id):
        self.db_handler.insert_data(consts.COURSE_STUDENT_TABLE, {"student_id": student_id, "course_id": course_id})
    
    def get_courses_detailed(self):
        course_list=self.db_handler.get_data_simple_condition(consts.COURSE_TABLE, ["course_id", "name", "teacher_id"])
        course_student_list=self.db_handler.get_join_results(consts.STUDENT_TABLE, consts.COURSE_STUDENT_TABLE, "student_id")

        result_dict={}
        for course in course_list: 
            course_teacher=self.db_handler.get_data_simple_condition(consts.TEACHER_TABLE, ['name', 'surname', 'degree'], "teacher_id", str(course['teacher_id']))[0]
            target_students=list(filter(lambda course_student: course_student['course_id'] == course['course_id'], course_student_list))
            result_dict[course['name']]={
                "teacher": course_teacher,
                "students": target_students
            }
        return result_dict
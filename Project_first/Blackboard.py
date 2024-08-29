# Person


# Student
    # Attributes:
        # Student's name
        # Student's ID
        # Courses

# Instructor
    # Attributes:
        # Instructor's name
        # Instructor's ID
        # Courses

# Course
    # Atrributes: Instructor, students

# Student management system (Blackboard):
     #Manage Students
    # Manage Courses
    # Manage Enrollments

# Setting up the classes

class Person:
    def __init__(self, name, id_number):
        self.name = name
        self.id_number = id_number

    def __str__(self):
         return f"Students: {self.name}, ID:{self.id_number}"
       

class Student(Person):
    def __init__(self, id_number, name, major):
        super().__init__(id_number, name)
        self.major = major
        self.course_list = []

    def __str__(self) -> str:
         return f"Students: {self.name}, ID:{self.id_number}, Major:{self.major}"
    

class Instructor(Person):
    def __init__(self, id_number, name, department):
        super().__init__(id_number,name)
        self.department = department
        self.course_list = []
    

    def __str__(self) -> str:
         return f"Students: {self.name}, ID:{self.id_number}, Major:{self.department}"



class Course:
    def __init__(self, course_name, course_id):
        self.course_name = course_name
        self.course_id = course_id
        self.enrolled_students = []
        pass

    def add_student(self, student):
        if student not in self.enrolled_students:
            self.enrolled_students.append(student)
            pass
        else:
            print("Student already entrolled")

    def remove_student(self, student):
        if student in self.enrolled_students:
            self.enrolled_students.remove(student)
            pass
        else:
            print("student not found")
            pass
        pass

    def __str__(self) -> str:
         return f"Students: {self.name}, ID:{self.course_id}"
     
 
class Enrollments:
    def __init__(self, student, grade):
        self.student = student
        self.grade = grade
        self.grade = None
        pass

    def assign_grades(self, grade):
        self.grade = grade
        pass

    def __str__(self) -> str:
         return f"Students: {self.name}, ID:{self.course_id}, Grade: {self.grade}"
   


class Blackboard:
    def __init__(self):
        pass

    def add_student():
        pass

    def remove_student():
        pass

    def update_student():
        pass

    def add_instructor():
        pass

    def remove_instructor():
        pass

    def update_instructor():
        pass

    def add_courses():
        pass

    def remove_courses():
        pass

    def update_courses():
        pass

    

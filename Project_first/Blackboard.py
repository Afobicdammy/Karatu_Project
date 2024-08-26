# Student management system:
     #Manage Students
    # Manage Courses
    # Manage Enrollments

# Setting upn the classes

class Person:
    def __init__(self, name, id_number):
        self.name = name
        self.ID_number = id_number

class Student(Person):
    def __init__(self, name, id_number):
        super().__init__(name, id_number)
        pass

    
    def course_list():
        pass


class Instructor(Person):
    def __init__(self, name, ID_number):
        super().__init__(name, ID_number)
    

    def department():
        pass



class Course:
    def __init__(self, course_name, course_id):
        pass
    
    def enroll():
        pass

    def student_list():
        pass

class Enrollments:
    def __init__(self):
        pass

    def assign_grades():
        pass

    
   


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

    

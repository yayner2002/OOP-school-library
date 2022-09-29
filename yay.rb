require './classroom'
require './student'

room20 = Classroom.new(20)
yay = Student.new(20, 30)

room20.add_student(yay)
p room20.students
p yay.classroom

# student = Student.new()
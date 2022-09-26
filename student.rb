require './person'

class Student < Person # student class inherits from person
  def initialize(classroom)
    @classroom = classroom
    super(name, age, parent_permission)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
  
end

require './person'

# student class inherits from person
class Student < Person
  def initialize(classroom)
    @classroom = classroom
    super(name, age, parent_permission)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

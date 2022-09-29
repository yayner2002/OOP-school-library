require './person'

# student is kind of person thus, inherits properties from person
class Student < Person

  def initialize(classroom, age, name: 'Unkown', parent_permission: true)
    super(name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

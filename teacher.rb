require './person'

# teacher is kind of person, thus inherits properties of a Person
class Teacher < Person
  def initialize(specialization, age, parent_permission: true, name: 'Unknown')
    super(name, age, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

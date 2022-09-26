require './person'

# teacher is kind of person, thus inherits properties of a Person
class Teacher < Person
  def initialize(specialization)
    super(name, age, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

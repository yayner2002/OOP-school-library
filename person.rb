require './nameable'

class Person < Nameable
  # A constructor initialize with init parameters that any new instance of class should have
  def initialize(age, name: 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission

    @rental = []
    super()
  end

  def correct_name
    @name
  end

  attr_reader :id, rental # getter
  attr_accessor :name, :age # getter and setter

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || @parent_permission == true
  end
  private :of_age?
end

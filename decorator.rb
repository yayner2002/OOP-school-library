require './nameable'

# global decorator class
class Decorator < Nameable
  attr_accessor :nameable # getter and setter for nameable instance var

  # constructor
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  # the decorator delegates all work to the nameable
  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

class TrimmerDecorator < Decorator
  def correct_name
    if @nameable.correct_name.length > 10
      @nameable.correct_name.slice(0..10)
    else
      @nameable.correct_name
    end
  end
end

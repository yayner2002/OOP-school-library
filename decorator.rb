require './nameable'

class Decorator < Nameable # glocal decorator class
  attr_accessor :nameable # getter and setter for nameable instance var

  def initialize(nameable) # constructor
    super()
    @nameable = nameable
  end

  def correct_name # the decorator delegates all work to the nameable
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
  end
  else
    @nameable.correct_name
  
end
end
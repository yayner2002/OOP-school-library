require './nameable'

class Decorator < Nameable # glocal decorator class

  def initialize(nameable) # constructor
    super()
    @nameable = nameable
  end

  attr_accessor :nameable # getter and setter for nameable instance var

  def correct_name
    @nameable.correct_name
  end

  
  
end
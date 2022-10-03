require './app'

class Main
  def initialize
    @apps = Apps.new
  end


  def main_menu
    puts "
    1 - list all books.
    2 - list all people.
    3 - create a person.
    4 - create a book.
    5 - create a rental.
    6 - list all rental for a given person id.
    7 - Exit"
  end
    
  

end


  

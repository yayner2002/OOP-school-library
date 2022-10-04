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

  def intro
    puts 'welcome to our school library app !'
    puts "\n"
    puts 'please choose an option by entering a number :'

    loop do
      main_menu
      user_preference = gets.chomp.to_i
      break if user_preference == 7

      @apps.switch_option(user_preference)
    end
    puts 'thanks for using our APP'
  end
end

main = Main.new
main.intro
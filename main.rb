require './app'

class App
  def self.main_menu
    puts 'welcome to our school library app !'
    puts "\n"
    puts 'please choose an option by entering a number :'

    @list = {
      '1' => 'list all books',
      '2' => 'list all people',
      '3' => 'create a person',
      '4' => 'create a book',
      '5' => 'create a rental',
      '6' => 'list all rental for a given person id',
      '7' => 'Exit'
    }

    @list.each do |key, value|
      puts "#{key} - #{value}"
    end

    Integer(gets.chomp)
  end

  run = Apps.new

  loop do
    case main_menu
    when 1
      run.list_books
    when 2
      run.list_people
    when 3
      run.create_person
    when 4
      run.create_new_book
    when 5
      run.create_rental
    when 6
      run.rent_list_by_id
    when 7
      puts 'Goodbye and thanks for using our app'
      exit
    else
      puts 'invalid entry, please choose only from the menu'
    end
  end
end

def main
  App.new
end

main


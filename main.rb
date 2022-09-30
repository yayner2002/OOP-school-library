require './app'

def menu_option(number)
  case number
  when 1
    list_books
  when 2
    list_people
  when 3
    create_person
  when 4
    create_new_book
  when 5
    create_rental
  when 6
    rent_list_by_id
  end
end

def user_input
  puts "
    please choose an option by entering a number from the list below: \n
    1 - list all books
    2 - list all people
    3 - create a person
    4 - create a book
    5 - create a rental
    6 - list all rental for a given peson (id)
    7 - Exit"

  user_opt_num = gets.chomp.to_i
  menu_option(user_opt_num)
  if user_opt_num == 7
    puts '------Good bye and thanks for using our library app ------'
  else
    menu_option(user_opt_num)
  end
end

def main
  puts "Wellcome to the School library app!\n"
  app = App.new
  app.run
end

main

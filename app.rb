require './person'
require './teacher'
require './student'
require './book'
require './rental'
require 'date'
require './classroom'

class Apps

  attr_accessor :books, :people
  def initialize
    @rentals = []
    @people = []
    @books = []
    @teachers = []
    @students = []
  end

  def run
    user_input
  end

  def list_books
    puts '----Books shielf----------'
    if @books.empty?
      puts 'No Available books in the shielf'
    else
    @books.each_with_index do |book, index|
      puts " #{index + 1} - Title: \"#{book.title}\", Author: #{book.author}"
    end
   end
   puts '-----------------------------'
  end

  def list_people
    puts '---------list of people----'
    if @people.empty?
      puts 'No person available'
    else
    @people.each_with_index do |person, index|
      if person.instance_of?(Student)
        puts "#{idex + 1} - [Student] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      else
        puts "#{index + 1} - [Teacher] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
    end
  end
  puts '-----------------------'
end

def create_person
  print 'Do you want to create a student (1) or a teacher (2) [input the number]'
  input = gets.chomp
  case input.to_i
  when 1
    teacher_option
  when 2
    student_option
  else
    puts 'you entered invalid in put! Please try again:'
    create_person
  end
end
end

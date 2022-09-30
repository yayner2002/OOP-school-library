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

def permission?(parent_permission)
  print 'Has parent permission? [Y/N]: '
  permission = gets.chomp
  case permission
  when 'n', 'N'
    !parent_permission
  when 'y', 'Y'
    parent_permission
  else
    permission?(parent_permission)
  end
end

def create_student(classroom, age, name, parent_permission)
  student = Student.new(classroom, age, name, parent_permission: parent_permission)
  @people << student unless @people.include?(student)
  @students << student unless @students.include?(student)
end

def create_teacher(specialization, age, name)
  teacher = Teacher.new(specialization, age, name)
  @people << teacher unless @people.include?(teacher)
  @teachers << teacher unless @teachers.include?(teacher)
end

def student_option
  print ' Enter student Name : '
  name = gets.chomp
  print ' Enter student Age : '
  age = gets.chomp
  print ' Enter student Classroom <number> : '
  classroom = gets.chomp
  parent_permission = true
  permission?(parent_permission)
  create_student(classroom.to_i, age.to_i, name, parent_permission)
  puts "---------  New student Added!  ----------- \n
  #{name} is #{age} years old in classroom #{classroom.to_i}"
  puts '-------------------------------- '
end



end

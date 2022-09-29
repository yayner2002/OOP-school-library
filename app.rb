require './person'
require './teacher'
require './student'
require './book'
require './rental'
require 'date'

class Apps
  def initialize
    @rentals = []
    @peole = []
    @books = []
  end

  def list_books
    if @books.empty?
      puts 'No Available books in the store'
      return
    end
    @books.map do |book|
      puts "Title: \"#{book.title}\", Author: #{book.author}"
    end
  end

  
end


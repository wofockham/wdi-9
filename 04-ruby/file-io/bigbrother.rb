require 'pry'

class Person
  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def to_s
    "#{ @name } is a #{ @age } year old #{ @gender }."
  end
end


##### Crappy database persistence #####
db = File.new('database.txt', 'a+') # a+ is append and create if file does not exist

print "Would you like to add someone to the database? (y/n) "
response = gets.chomp.downcase

while response == 'y'
  print 'Enter name, age, gender (separated with commas and spaces): '
  db.puts gets.chomp

  print "Would you like to add someone to the database? (y/n) "
  response = gets.chomp.downcase
end

db.close



db = File.open('database.txt', 'r') # r: read mode
db.each do |line|

  binding.pry

end




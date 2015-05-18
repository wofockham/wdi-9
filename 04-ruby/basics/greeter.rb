# Initial greeting.
puts "What is your first name?"
first_name = gets.chomp # Trim off the newline character at the end.
puts "You first name is #{ first_name }."

puts "What is your surname?"
surname = gets.chomp
puts "Your surname is #{ surname }."

puts "Your full name is #{ first_name } #{ surname }"
fullname = "#{ first_name } #{ surname }"

puts "What is your address?"
address = gets.chomp
puts "Your name is #{fullname} and you live at #{address}"

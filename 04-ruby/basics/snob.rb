# - Create a program that asks what suburbs you live in.
# - Depending on the answer, print an appropriate response of your choosing

print "In which suburb do you live: "
suburb = gets.chomp.upcase

case suburb
when 'ZETLAND'
  puts "I get lost in you"
when 'BONDI'
  puts "I am not allowed in you"
when 'NEWTOWN'
  puts "Arts students"
else
  puts "I'm sure that's a nice place to live"
end

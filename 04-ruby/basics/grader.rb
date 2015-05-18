# Case statement example
# grade = 'A'

# if grade == 'A'
#   puts "Great job"
# elsif grade == 'B'
#   puts "Good job"
# elsif grade == 'C'
#   puts "Adequate job, I guess"
# else
#   puts "Talk to the hand"
# end

grade = 'B'
case grade
when 'A'
  puts "Great job"
when 'B'
  puts "Good job"
when 'C'
  puts "Adequate job"
else
  puts "Talk to the hand"
end

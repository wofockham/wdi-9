# [8] Extra credit exercise: write a program that prints out any input line that mentions both wilma and fred.

# Line reader
ARGF.each do |line|
  # puts line if line =~ /(fred.*wilma|wilma.*fred)/
  puts line if line =~ /fred/ && line =~ /wilma/
end

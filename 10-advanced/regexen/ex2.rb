# Modify the previous program to allow Fred to match as well. Does it match now if your input string is Fred, frederick, or Alfred? (Add lines with these names to the text file.)

# Line reader
ARGF.each do |line|
  puts line if line =~ /[Ff]red/
end

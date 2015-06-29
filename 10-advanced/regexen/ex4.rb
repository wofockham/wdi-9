# Make a program that prints each line that has a word that is capitalized but not ALL capitalized. Does it match Fred but neither fred nor FRED?

# Line reader
ARGF.each do |line|
  puts line if line =~ /[A-Z][a-z]/ # Character class range.
end

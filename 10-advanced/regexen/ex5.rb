# [8] Make a program that prints each line that has a two of the same nonwhitespace characters next to each other. It should match lines that contain words such as Mississippi, Bamm-Bamm, or llama.

# Line reader
ARGF.each do |line|
  puts line if line =~ /(\S)\1/ # \S is the character class of all non-whitespace characters
end

# Using the pattern test program, make a pattern that matches if any word (in the \w sense of word) ends with the letter a. Does it match wilma but not barney? Does it match Mrs. Wilma Flintstone? What about wilma&fred? Try it on the sample text file from the last exercises (and add these test strings if they weren’t already in there).
ARGF.each do |line|
  if (line.chomp =~ /\w+a\b/)
    puts "Matched: |#{$`}<#{$&}>#{$'}|"
  end
end

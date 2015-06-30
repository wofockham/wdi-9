# Modify the program from the previous exercise so that the word ending with the letter a is captured into $1. Update the code to display that variable’s contents in single quotes, something like $1 contains 'Wilma'.

ARGF.each do |line|
  if (line.chomp =~ /(\w+a)\b/)
    puts "Matched: |#{$`}<#{$&}>#{$'}|"
    puts "$1 contains '#{ $1 }'"
  end
end

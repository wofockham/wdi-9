# Modify the program from the previous exercise to use named captures instead of relying on $1. Update the code to display that label name, something like 'word' contains 'Wilma'.

ARGF.each do |line|
  if (line.chomp =~ /(?<word>\w+a)\b/)
    puts "Matched: |#{$`}<#{$&}>#{$'}|"
    puts "$~[:word] contains '#{ $~[:word] }'"
  end
end

# Pattern Testing Program
ARGF.each do |line|
  if (line.chomp =~ /match/)
    puts "Matched: |#{$`}<#{$&}>#{$'}|"
  end
end

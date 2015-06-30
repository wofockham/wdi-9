# Pattern Testing Program
ARGF.each do |line|
  if (line =~ /YOURMATCHHERE/)
    puts "Matched: |#{$`}<#{$&}>#{$'}|"
  end
end

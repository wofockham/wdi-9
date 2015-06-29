# Line reader
ARGF.each do |line|
  puts line unless line =~ /fred/
end

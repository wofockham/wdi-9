# Make a program that prints each line of its input that contains a period (.), ignoring other lines of input. Try it on the small text file from the previous exercise: does it notice Mr. Slate?

# Line reader
ARGF.each do |line|
  puts line if line =~ /\./ # Escape special characters with \backslash.
end

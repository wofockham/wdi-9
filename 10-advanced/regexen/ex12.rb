# Write a new program (not the test program!) that prints out any input line ending with whitespace (other than just a newline). Put a marker character at the end of the output line so as to make the whitespace visible.

ARGF.each do |line|
  if (line.chomp =~ /\s$/)
    puts "#{line.chomp}%"
  end
end

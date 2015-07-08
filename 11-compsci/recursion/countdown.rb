def countdown(count)
  # while count >= 0
  #   puts count
  #   count -= 1
  # end
  count.downto(0) do |i|
    puts i
  end

  puts "Blastoff!"
end

countdown(25)


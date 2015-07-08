# recursive call to itself
# moves towards the base case/end condition
# recognise the end condiition

def countdown_recursive(count)
  if count < 0 # base case
    puts "Blastoff!"
  else
    puts count
    countdown_recursive count - 1 # recursive call + move towards the end condition
  end
end

countdown_recursive(25)

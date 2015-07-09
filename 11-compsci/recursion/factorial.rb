# factorial(7): 5040
# factorial(12): 479001600

# def factorial(n)
#   product = 1

#   n.downto(1) do |i|
#     product *= i
#   end

#   product
# end

def factorial(n)
  if n <= 1
    1
  else
    n * factorial(n - 1)
  end
end

puts factorial(12)

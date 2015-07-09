def fibonacci(n)
  a = 1
  b = 1

  while n > 1
    a, b = b, a + b # Sorry about this.
    n -= 1
  end

  a
end

# 1000.times do |i|
#   puts "fibonacci(#{ i }) = #{ fibonacci(i) }"
# end

def fibonacci_slow(n)
  if (n <= 2)
    1
  else
    fibonacci_slow(n - 1) + fibonacci_slow(n - 2) # Try memoising this.
  end
end

# 100.times do |i|
#   puts "fibonacci_slow(#{ i }) = #{ fibonacci_slow(i) }"
# end


def fibonacci_fast(n, a=1, b=1)
  if n <= 1
    a
  else
    fibonacci_fast(n - 1, b, a + b)
  end
end

100.times do |i|
  puts "fibonacci_fast(#{ i }) = #{ fibonacci_fast(i) }"
end












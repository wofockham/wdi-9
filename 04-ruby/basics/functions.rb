require 'pry'

# calculates area of a rectangle
def area(length, width)
  length * width # Implicit return
end

def volume(length, width, height)
  length * width * height
end

def double(n)
  n * 2
end

def square(n)
  n * n # n ** 2
end

def cube(n)
  n * n * n # n ** 3
end

def name_tag_generator(first, last, gender, age)
  if gender == 'f'
    if age < 19
      "Miss #{ first } #{ last }"
    else
      "Ms #{ first } #{ last }"
    end
  else
    "Mr #{ first } #{ last }"
  end
end

def tag_generator(tag, content)
  "<#{ tag }>#{ content }</#{ tag }>"
end

puts tag_generator('p', 'hello world');

puts name_tag_generator('Norbert', 'Luethy', 'm', 60)

binding.pry # equivalent to debugger; in JS

puts "The area of a 5x32 meter rectangle is #{ area(5, 32) }"


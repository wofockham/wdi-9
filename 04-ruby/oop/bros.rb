###### Hash for each brother ######
groucho = {
  :instrument => 'guitar',
  :vice => 'cigars'
}

harpo = {
  :instrument => 'harp',
  :vice => 'mutism'
}

chico = {
  :instrument => 'piano',
  :vice => 'hijinx'
}

###### Alternatively, a hash for each property #######

vices = {
  :groucho => 'cigars',
  :harpo => 'mutism',
  :chico => 'hijinx'
}

instruments = {
  :groucho => 'guitar',
  :harpo => 'harp',
  :chico => 'piano'
}

def plays(h)
  h.each do |brother, instrument|
    puts "#{brother.capitalize} plays the #{instrument}."
  end
end

def enjoys(h)
  h.each do |brother, vice|
    puts "#{brother.capitalize} enjoys #{vice}."
  end
end

plays(instruments) # Makes sense
enjoys(vices) # Makes sense

plays(vices) # Huh?
enjoys(instruments) # What are you doing?


###### JS-style OOP: Plain old objects, a lot of repetition ######

groucho = Object.new

def groucho.vice # These methods are kind of like read-only key/value pairs in hashes.
  'cigars'
end

def groucho.instrument
  'guitar'
end

def groucho.play
  "Groucho plays the #{ instrument }."
end

def groucho.enjoy
  "Groucho enjoys #{ vice }."
end

def groucho.act
  "Look at me everyone, I am acting"
end


harpo = Object.new

def harpo.vice
  'mutism'
end

def harpo.instrument
  'harp'
end

def harpo.play
  "Harpo plays the #{ instrument }."
end

def harpo.enjoy
  "Harpo enjoys #{ vice }."
end

def harpo.act
  "Look at me everyone, I am acting WITHOUT SPEAKING"
end


###### OOP Ruby: The Right Way ######

class MarxBrother
  attr_accessor :name, :vice, :instrument # This creates getter and setter methods for you.

  def initialize(name, instrument, vice)
    @name = name
    @instrument = instrument
    @vice = vice
  end

  def play
    "#{@name} plays the #{@instrument}."
  end

  def enjoy
    "#{@name} enjoys #{@vice}."
  end

  def act
    "Look at me everyone, I am acting!"
  end
end

groucho = MarxBrother.new 'Groucho', 'guitar', 'cigars'
harpo = MarxBrother.new 'Harpo', 'harp', 'mutism'

puts harpo.play
puts groucho.enjoy

# You can still override the methods from the class:
def harpo.act
  "Look at me everyone, I am acting!"
end

require 'pry'
binding.pry

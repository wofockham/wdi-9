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

###### Alternatively #######

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

plays(instruments)

def enjoys(h)
  h.each do |brother, vice|
    puts "#{brother.capitalize} enjoys #{vice}."
  end
end

enjoys(vices)

###### JS: Plain old objects ######

groucho = Object.new

def groucho.vice
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


###### Factory ######

class MarxBrother
  # Ruby: please write these getters and setters for me!
  attr_accessor :name, :vice, :instrument

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

require 'pry'
binding.pry

















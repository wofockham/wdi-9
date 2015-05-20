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
  def name=(name) # Setter
    @name = name
  end

  def name # Getter
    @name
  end

  def vice=(vice) # Setter
    @vice = vice
  end

  def vice # Getter
    @vice
  end

  def instrument=(instrument) # Setter
    @instrument = instrument
  end

  def instrument
    @instrument
  end

  def play
    "#{@name} plays the #{@instrument}."
  end

  def enjoy
    "#{@name} enjoys #{@vice}."
  end

  def acting
    "Look at me everyone, I am acting!"
  end
end

require 'pry'
binding.pry

















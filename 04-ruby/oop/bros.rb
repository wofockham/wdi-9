groucho = {
  :instrument => 'guitar',
  :vice => 'cigars'
}

harpo = {
  :instrument => 'harp',
  :vice => 'mutism'
}


###### Alternatively #######

vices = {
  :groucho => 'cigars',
  :harpo => 'mutism'
}

instruments = {
  :groucho => 'guitar',
  :harpo => 'harp'
}

def plays(h)
  h.each do |brother, instrument|
    puts "#{brother.capitalize} plays the #{instrument}."
  end
end

plays(instruments)

require 'pry'
binding.pry


require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'active_record'

# Sets up our connection to the database.db we have created.
ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'database.db'
)

ActiveRecord::Base.logger = Logger.new(STDERR) # Logs out the AR generated SQL in the terminal.

# Load these after we have connected to the database or it won't work.
require_relative 'butterfly'
require_relative 'plant'

before do
  @families = Butterfly.select(:family).uniq
end

after do
  ActiveRecord::Base.connection.close
end

get '/pry' do
  require 'pry'
  binding.pry
end

get '/' do
  erb :home
end

get '/butterflies' do
  @butterflies = Butterfly.all
  erb :butterflies_index
end

post '/butterflies' do
  butterfly = Butterfly.new

  butterfly.name = params[:name]
  butterfly.family = params[:family]
  butterfly.image = params[:image]
  butterfly.plant_id = params[:plant_id]

  butterfly.save

  redirect to("/butterflies/#{ butterfly.id }")
end

get '/butterflies/new' do
  erb :butterflies_new
end

get '/butterflies/:id' do
  @butterfly = Butterfly.find params[:id] # No array unwrapping needed: returns a single butterfly object.
  erb :butterflies_show
end

get '/butterflies/:id/edit' do
  @butterfly = Butterfly.find params[:id]
  erb :butterflies_edit
end

post '/butterflies/:id' do
  butterfly = Butterfly.find params[:id]

  butterfly.name = params[:name]
  butterfly.family = params[:family]
  butterfly.image = params[:image]
  butterfly.plant_id = params[:plant_id]

  butterfly.save

  redirect to("/butterflies/#{ params[:id] }")
end

get '/butterflies/:id/delete' do
  butterfly = Butterfly.find params[:id]
  butterfly.destroy
  redirect to('/butterflies')
end

get '/butterflies/family/:family' do
  @butterflies = Butterfly.where(:family => params[:family])
  erb :butterflies_index
end

get '/plants' do
  @plants = Plant.all
  erb :plants_index
end

post '/plants' do
  plant = Plant.new

  plant.name = params[:name]
  plant.image = params[:image]

  plant.save

  redirect to("/plants/#{ plant.id }")
end

# This needs to come before /plants/:id so it is caught earlier and not interpreted as
# GET me the plant with id='new'
get '/plants/new' do
  erb :plants_new
end

get '/plants/:id' do
  @plant = Plant.find params[:id]
  erb :plants_show
end

get '/plants/:id/delete' do
  plant = Plant.find params[:id]
  plant.destroy

  redirect to('/plants')
end

get '/plants/:id/edit' do
  @plant = Plant.find params[:id]
  erb :plants_edit
end

post '/plants/:id' do
  plant = Plant.find params[:id]

  plant.name = params[:name]
  plant.image = params[:image]

  plant.save

  redirect to("/plants/#{ plant.id }")
end






















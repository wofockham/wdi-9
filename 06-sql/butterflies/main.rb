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

class Butterfly < ActiveRecord::Base
end

class Plant < ActiveRecord::Base
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

  butterfly.save

  redirect to("/butterflies/#{ params[:id] }")
end

get '/butterflies/:id/delete' do
  butterfly = Butterfly.find params[:id]
  butterfly.destroy
  redirect to('/butterflies')
end

get '/plants' do
  @plants = Plant.all
  erb :plants_index
end









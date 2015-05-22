require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

get '/' do
  erb :home
end

get '/butterflies' do
  db = SQLite3::Database.new 'database.db'
  db.results_as_hash = true
  @butterflies = db.execute "SELECT * FROM butterflies"

  erb :butterflies_index
end

get '/butterflies/new' do
  erb :butterflies_new
end

get '/butterflies/:id' do
  db = SQLite3::Database.new 'database.db'
  db.results_as_hash = true
  @butterfly = db.execute "SELECT * FROM butterflies WHERE id = #{ params[:id] }"
  @butterfly = @butterfly.first # Get the single butterfly out of the array.

  erb :butterflies_show
end


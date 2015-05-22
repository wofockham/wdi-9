require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

get '/' do
  erb :home
end

get '/butterflies' do
  @butterflies = db_query "SELECT * FROM butterflies"
  erb :butterflies_index
end

post '/butterflies' do
  q = "INSERT INTO butterflies (name, family, image) VALUES ('#{ params['name'] }', '#{ params['family'] }', '#{ params['image'] }')"
  db_query q
  redirect to('/butterflies')
end

get '/butterflies/new' do
  erb :butterflies_new
end

get '/butterflies/:id' do
  @butterfly = db_query "SELECT * FROM butterflies WHERE id = #{ params[:id] }"
  @butterfly = @butterfly.first # Get the single butterfly out of the array.
  erb :butterflies_show
end

get '/butterflies/:id/edit' do
  @butterfly = db_query "SELECT * FROM butterflies WHERE id = #{ params[:id] }"
  @butterfly = @butterfly.first
  erb :butterflies_edit
end

post '/butterflies/:id' do
  q = "UPDATE butterflies SET name='#{ params[:name] }', family='#{ params[:family] }', image='#{ params[:image] }' WHERE id=#{params[:id]}"
  db_query q
  redirect to("/butterflies/#{ params[:id] }")
end

get '/butterflies/:id/delete' do
  db_query "DELETE FROM butterflies WHERE id = #{ params[:id] }"
  redirect to('/butterflies')
end

def db_query(sql)
  db = SQLite3::Database.new 'database.db'
  db.results_as_hash = true

  result = db.execute sql

  db.close

  result
end








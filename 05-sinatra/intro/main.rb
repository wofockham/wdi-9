require 'sinatra'
require 'sinatra/reloader' # Automatically restart the server when the files are changed.

get '/' do
  "Welcome to the home page"
end

get '/hello' do
  "Hello world"
end

get '/mother' do
  "Look ma, I made a web server"
end

get '/name/:first' do
  "Hello #{ params[:first].capitalize }"
end

get '/name/:first/:surname' do
  "Hello #{ params[:first].capitalize } #{ params[:surname].upcase }"
end

# multiply(x, y)
get '/multiply/:x/:y' do
  result = params[:x].to_f * params[:y].to_f
  "the result is #{ result }"
end
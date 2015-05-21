require 'sinatra'
require 'sinatra/reloader'

get '/calc' do
  @x = params[:x].to_f
  @y = params[:y].to_f

  @result = case params[:operator]
  when '+' then @x + @y
  when '-' then @x - @y
  when '*' then @x * @y
  when '/' then @x / @y
  end

  erb :calc
end

get '/calc/multiply/:x/:y' do
  @result = params[:x].to_f * params[:y].to_f
  erb :calc
end

get '/calc/add/:x/:y' do
  @result = params[:x].to_f + params[:y].to_f
  erb :calc
end

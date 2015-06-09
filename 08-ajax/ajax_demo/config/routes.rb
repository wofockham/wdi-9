Rails.application.routes.draw do
  root :to => 'pages#landing'
  get '/random' => 'pages#random'
  get '/time' => 'pages#time'
  get '/uptime' => 'pages#uptime'

  get '/info' => 'pages#info'
end

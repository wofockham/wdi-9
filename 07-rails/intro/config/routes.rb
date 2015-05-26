Rails.application.routes.draw do
  root :to => 'pages#home'

  # "Static" pages
  get '/home' => 'pages#home'
  get '/about' => 'pages#about'
  get '/faq' => 'pages#faq'

  # Dynamic routes with variable bit in params, just like Sinatra.
  get '/auto/:color' => 'auto#color'
  get '/auto/:hp/:torque' => 'auto#engine'

  get '/calc/:x/:y/:operator' => 'calc#calculate'

  get '/funny' => 'pages#lol'
end

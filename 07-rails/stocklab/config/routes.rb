Rails.application.routes.draw do
  root :to => 'stock#landing' # '/'
  get '/quote' => 'stock#quote'
end

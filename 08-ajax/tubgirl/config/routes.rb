Rails.application.routes.draw do
  root :to => 'pages#landing'
  get '/groucho' => 'pages#groucho'
  get '/harpo' => 'pages#harpo'
  get '/chico' => 'pages#chico'
end

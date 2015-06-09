Rails.application.routes.draw do
  root :to => 'pages#landing'
  get '/random' => 'pages#random'
end

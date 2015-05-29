# == Route Map
#

Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/haml' => 'pages#hamldemo'

  resources :users, :except => [:edit, :show] do
    collection do
      get '/edit' => 'users#edit'
    end
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end

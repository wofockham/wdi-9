Rails.application.routes.draw do
  root :to => 'sneakies#landing'
  resources :sneakies
end

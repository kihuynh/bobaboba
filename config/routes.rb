Rails.application.routes.draw do
  root :to => 'layouts#main'

  devise_for :users
  resources :users
end

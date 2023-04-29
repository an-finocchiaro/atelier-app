Rails.application.routes.draw do
  devise_for :users

  root to: "home#index"

  get '/admin', to: 'admin#index'

  resources :artists, only: [:new, :create, :index, :show] 
  resources :canvas, only: [:new, :create, :index, :show]
  
end

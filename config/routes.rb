Rails.application.routes.draw do
  devise_for :users

  root to: "home#index"

  get '/admin', to: 'admin#index'

  resources :artists, only: [:new, :create, :index, :show] 
  resources :canvas, only: [:new, :create, :index, :show] do
    post 'available', on: :member
    post 'collection', on: :member
    post 'sold', on: :member
    post 'hide', on: :member
    post 'exhibit', on: :member
  end
end

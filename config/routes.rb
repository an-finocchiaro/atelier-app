Rails.application.routes.draw do
  devise_for :users

  root to: "home#index"

  get '/admin', to: 'admin#index'
  get '/admin/telas', to: 'admin#show'
  get '/isabelle-tuchband', to: 'artists#isabelle'
  get '/emile-tuchband',  to: 'artists#emile'
  get '/verena-matzen',  to: 'artists#verena'

  resources :artists, only: [:new, :create, :index, :show] 

  resources :canvas, only: [:new, :create, :index, :show, :edit, :update] do
    post 'available', on: :member
    post 'collection', on: :member
    post 'sold', on: :member
    post 'hide', on: :member
    post 'exhibit', on: :member
  end

  resources :products, only: [:new, :create, :index]
end

Rails.application.routes.draw do
  devise_for :users

  root to: "home#index"

  get '/admin', to: 'admin#index'
  get '/admin/telas', to: 'admin#show'
  get '/isabelle-tuchband', to: 'artists#isabelle'
  get '/isabelle-tuchband/bio', to: 'artists#isabelle_bio'
  get '/emile-tuchband',  to: 'artists#emile'
  get '/emile-tuchband/bio', to: 'artists#emile_bio'
  get '/verena-matzen',  to: 'artists#verena'
  get '/verena-matzen/bio', to: 'artists#verena_bio'
  get '/emile-tuchband-price-list', to: 'artists#emile_tuchband_price_list'
  get '/isabelle-tuchband-price-list', to: 'artists#isabelle_tuchband_price_list'
  get '/verena-matzen-price-list', to: 'artists#verena_matzen_price_list'
  
  resources :contacts, only: [:new, :create ]
  get '/contacts', to: 'contacts#new', as: 'contact'
  get 'contacts/sent', to: 'contacts#sent'
 
  resources :artists, only: [:new, :create, :index, :show] 

  resources :canvas, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
    post 'available', on: :member
    post 'collection', on: :member
    post 'sold', on: :member
    post 'hide', on: :member
    post 'exhibit', on: :member
  end

  resources :products, only: [:new, :create, :index, :show, :edit, :update, :destroy]
end

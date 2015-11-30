Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :ingredients
  resources :products

  get '/pedidos' => 'orders#new', as: 'pedidos'
  get '/ingredientes' => 'ingredients#new', as: 'ingredientes'
  get '/produtos' => 'products#new', as: 'produtos'

  get "/contato" => "pages#contact", :as => 'contato'
  get "/sobre" => "pages#about", :as => 'sobre'
end

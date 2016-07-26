Rails.application.routes.draw do
  
  get 'admin/index'

  root "welcome#index"
  get 'welcome/index'

  get '/users/search', to: 'users#show'
  post '/users/search', to: 'users#show'
   
  devise_for :users 
  resources :users 
  resources :admin
  resources :shops
  resources :items
  resources :hitcounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

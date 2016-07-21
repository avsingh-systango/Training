Rails.application.routes.draw do
  get 'admin/index'

  root "welcome#index"
  get 'welcome/index'
  #post "shops/new"
  
  devise_for :users 
  resources :users 
  resources :admin
  resources :shops
  resources :items

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
